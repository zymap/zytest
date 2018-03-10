/*
 * Copyright 2016 The Netty Project
 *
 * The Netty Project licenses this file to you under the Apache License,
 * version 2.0 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at:
 *
 *   http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */

package com.netty.io.netty.util;

import io.netty.util.*;
import io.netty.util.ResourceLeakDetector;
import io.netty.util.internal.ObjectUtil;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.SystemPropertyUtil;
import io.netty.util.internal.logging.InternalLogger;
import io.netty.util.internal.logging.InternalLoggerFactory;

import java.lang.reflect.Constructor;
import java.security.AccessController;
import java.security.PrivilegedAction;

/**
 * This static factory should be used to load {@link io.netty.util.ResourceLeakDetector}s as needed
 */
public abstract class ResourceLeakDetectorFactory {
    private static final InternalLogger logger = InternalLoggerFactory.getInstance(io.netty.util.ResourceLeakDetectorFactory.class);

    private static volatile io.netty.util.ResourceLeakDetectorFactory factoryInstance = new DefaultResourceLeakDetectorFactory();

    /**
     * Get the singleton instance of this factory class.
     *
     * @return the current {@link io.netty.util.ResourceLeakDetectorFactory}
     */
    public static io.netty.util.ResourceLeakDetectorFactory instance() {
        return factoryInstance;
    }

    /**
     * Set the factory's singleton instance. This has to be called before the static initializer of the
     * {@link io.netty.util.ResourceLeakDetector} is called by all the callers of this factory. That is, before initializing a
     * Netty Bootstrap.
     *
     * @param factory the instance that will become the current {@link io.netty.util.ResourceLeakDetectorFactory}'s singleton
     */
    public static void setResourceLeakDetectorFactory(io.netty.util.ResourceLeakDetectorFactory factory) {
        factoryInstance = ObjectUtil.checkNotNull(factory, "factory");
    }

    /**
     * Returns a new instance of a {@link io.netty.util.ResourceLeakDetector} with the given resource class.
     *
     * @param resource the resource class used to initialize the {@link io.netty.util.ResourceLeakDetector}
     * @param <T> the type of the resource class
     * @return a new instance of {@link io.netty.util.ResourceLeakDetector}
     */
    public final <T> io.netty.util.ResourceLeakDetector<T> newResourceLeakDetector(Class<T> resource) {
        return newResourceLeakDetector(resource, io.netty.util.ResourceLeakDetector.DEFAULT_SAMPLING_INTERVAL);
    }

    /**
     * @deprecated Use {@link #newResourceLeakDetector(Class, int)} instead.
     * <p>
     * Returns a new instance of a {@link io.netty.util.ResourceLeakDetector} with the given resource class.
     *
     * @param resource the resource class used to initialize the {@link io.netty.util.ResourceLeakDetector}
     * @param samplingInterval the interval on which sampling takes place
     * @param maxActive This is deprecated and will be ignored.
     * @param <T> the type of the resource class
     * @return a new instance of {@link io.netty.util.ResourceLeakDetector}
     */
    @Deprecated
    public abstract <T> io.netty.util.ResourceLeakDetector<T> newResourceLeakDetector(
            Class<T> resource, int samplingInterval, long maxActive);

    /**
     * Returns a new instance of a {@link io.netty.util.ResourceLeakDetector} with the given resource class.
     *
     * @param resource the resource class used to initialize the {@link io.netty.util.ResourceLeakDetector}
     * @param samplingInterval the interval on which sampling takes place
     * @param <T> the type of the resource class
     * @return a new instance of {@link io.netty.util.ResourceLeakDetector}
     */
    @SuppressWarnings("deprecation")
    public <T> io.netty.util.ResourceLeakDetector<T> newResourceLeakDetector(Class<T> resource, int samplingInterval) {
        return newResourceLeakDetector(resource, io.netty.util.ResourceLeakDetector.DEFAULT_SAMPLING_INTERVAL, Long.MAX_VALUE);
    }

    /**
     * Default implementation that loads custom leak detector via system property
     */
    private static final class DefaultResourceLeakDetectorFactory extends io.netty.util.ResourceLeakDetectorFactory {
        private final Constructor<?> obsoleteCustomClassConstructor;
        private final Constructor<?> customClassConstructor;

        DefaultResourceLeakDetectorFactory() {
            String customLeakDetector;
            try {
                customLeakDetector = AccessController.doPrivileged(new PrivilegedAction<String>() {
                    @Override
                    public String run() {
                        return SystemPropertyUtil.get("io.netty.customResourceLeakDetector");
                    }
                });
            } catch (Throwable cause) {
                logger.error("Could not access System property: io.netty.customResourceLeakDetector", cause);
                customLeakDetector = null;
            }
            if (customLeakDetector == null) {
                obsoleteCustomClassConstructor = customClassConstructor = null;
            } else {
                obsoleteCustomClassConstructor = obsoleteCustomClassConstructor(customLeakDetector);
                customClassConstructor = customClassConstructor(customLeakDetector);
            }
        }

        private static Constructor<?> obsoleteCustomClassConstructor(String customLeakDetector) {
            try {
                final Class<?> detectorClass = Class.forName(customLeakDetector, true,
                        PlatformDependent.getSystemClassLoader());

                if (io.netty.util.ResourceLeakDetector.class.isAssignableFrom(detectorClass)) {
                    return detectorClass.getConstructor(Class.class, int.class, long.class);
                } else {
                    logger.error("Class {} does not inherit from ResourceLeakDetector.", customLeakDetector);
                }
            } catch (Throwable t) {
                logger.error("Could not load custom resource leak detector class provided: {}",
                        customLeakDetector, t);
            }
            return null;
        }

        private static Constructor<?> customClassConstructor(String customLeakDetector) {
            try {
                final Class<?> detectorClass = Class.forName(customLeakDetector, true,
                        PlatformDependent.getSystemClassLoader());

                if (io.netty.util.ResourceLeakDetector.class.isAssignableFrom(detectorClass)) {
                    return detectorClass.getConstructor(Class.class, int.class);
                } else {
                    logger.error("Class {} does not inherit from ResourceLeakDetector.", customLeakDetector);
                }
            } catch (Throwable t) {
                logger.error("Could not load custom resource leak detector class provided: {}",
                        customLeakDetector, t);
            }
            return null;
        }

        @SuppressWarnings("deprecation")
        @Override
        public <T> io.netty.util.ResourceLeakDetector<T> newResourceLeakDetector(Class<T> resource, int samplingInterval,
                                                                                 long maxActive) {
            if (obsoleteCustomClassConstructor != null) {
                try {
                    @SuppressWarnings("unchecked")
                    io.netty.util.ResourceLeakDetector<T> leakDetector =
                            (io.netty.util.ResourceLeakDetector<T>) obsoleteCustomClassConstructor.newInstance(
                                    resource, samplingInterval, maxActive);
                    logger.debug("Loaded custom ResourceLeakDetector: {}",
                            obsoleteCustomClassConstructor.getDeclaringClass().getName());
                    return leakDetector;
                } catch (Throwable t) {
                    logger.error(
                            "Could not load custom resource leak detector provided: {} with the given resource: {}",
                            obsoleteCustomClassConstructor.getDeclaringClass().getName(), resource, t);
                }
            }

            io.netty.util.ResourceLeakDetector<T> resourceLeakDetector = new io.netty.util.ResourceLeakDetector<T>(resource, samplingInterval,
                                                                                       maxActive);
            logger.debug("Loaded default ResourceLeakDetector: {}", resourceLeakDetector);
            return resourceLeakDetector;
        }

        @Override
        public <T> io.netty.util.ResourceLeakDetector<T> newResourceLeakDetector(Class<T> resource, int samplingInterval) {
            if (customClassConstructor != null) {
                try {
                    @SuppressWarnings("unchecked")
                    io.netty.util.ResourceLeakDetector<T> leakDetector =
                            (io.netty.util.ResourceLeakDetector<T>) customClassConstructor.newInstance(resource, samplingInterval);
                    logger.debug("Loaded custom ResourceLeakDetector: {}",
                            customClassConstructor.getDeclaringClass().getName());
                    return leakDetector;
                } catch (Throwable t) {
                    logger.error(
                            "Could not load custom resource leak detector provided: {} with the given resource: {}",
                            customClassConstructor.getDeclaringClass().getName(), resource, t);
                }
            }

            io.netty.util.ResourceLeakDetector<T> resourceLeakDetector = new ResourceLeakDetector<T>(resource, samplingInterval);
            logger.debug("Loaded default ResourceLeakDetector: {}", resourceLeakDetector);
            return resourceLeakDetector;
        }
    }
}
