/*
 * Copyright 2012 The Netty Project
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
package com.netty.io.netty.handler.codec.serialization;

import io.netty.handler.codec.serialization.*;
import io.netty.handler.codec.serialization.CachingClassResolver;
import io.netty.handler.codec.serialization.ClassLoaderClassResolver;
import io.netty.handler.codec.serialization.ClassResolver;
import io.netty.util.internal.PlatformDependent;

import java.lang.ref.Reference;
import java.util.HashMap;

public final class ClassResolvers {

    /**
     * cache disabled
     * @param classLoader - specific classLoader to use, or null if you want to revert to default
     * @return new instance of class resolver
     */
    public static io.netty.handler.codec.serialization.ClassResolver cacheDisabled(ClassLoader classLoader) {
        return new io.netty.handler.codec.serialization.ClassLoaderClassResolver(defaultClassLoader(classLoader));
    }

    /**
     * non-agressive non-concurrent cache
     * good for non-shared default cache
     *
     * @param classLoader - specific classLoader to use, or null if you want to revert to default
     * @return new instance of class resolver
     */
    public static io.netty.handler.codec.serialization.ClassResolver weakCachingResolver(ClassLoader classLoader) {
        return new io.netty.handler.codec.serialization.CachingClassResolver(
                new io.netty.handler.codec.serialization.ClassLoaderClassResolver(defaultClassLoader(classLoader)),
                new WeakReferenceMap<String, Class<?>>(new HashMap<String, Reference<Class<?>>>()));
    }

    /**
     * agressive non-concurrent cache
     * good for non-shared cache, when we're not worried about class unloading
     *
     * @param classLoader - specific classLoader to use, or null if you want to revert to default
     * @return new instance of class resolver
     */
    public static io.netty.handler.codec.serialization.ClassResolver softCachingResolver(ClassLoader classLoader) {
        return new io.netty.handler.codec.serialization.CachingClassResolver(
                new io.netty.handler.codec.serialization.ClassLoaderClassResolver(defaultClassLoader(classLoader)),
                new SoftReferenceMap<String, Class<?>>(new HashMap<String, Reference<Class<?>>>()));
    }

    /**
     * non-agressive concurrent cache
     * good for shared cache, when we're worried about class unloading
     *
     * @param classLoader - specific classLoader to use, or null if you want to revert to default
     * @return new instance of class resolver
     */
    public static io.netty.handler.codec.serialization.ClassResolver weakCachingConcurrentResolver(ClassLoader classLoader) {
        return new io.netty.handler.codec.serialization.CachingClassResolver(
                new io.netty.handler.codec.serialization.ClassLoaderClassResolver(defaultClassLoader(classLoader)),
                new WeakReferenceMap<String, Class<?>>(
                        PlatformDependent.<String, Reference<Class<?>>>newConcurrentHashMap()));
    }

    /**
     * agressive concurrent cache
     * good for shared cache, when we're not worried about class unloading
     *
     * @param classLoader - specific classLoader to use, or null if you want to revert to default
     * @return new instance of class resolver
     */
    public static ClassResolver softCachingConcurrentResolver(ClassLoader classLoader) {
        return new io.netty.handler.codec.serialization.CachingClassResolver(
                new io.netty.handler.codec.serialization.ClassLoaderClassResolver(defaultClassLoader(classLoader)),
                new SoftReferenceMap<String, Class<?>>(
                        PlatformDependent.<String, Reference<Class<?>>>newConcurrentHashMap()));
    }

    static ClassLoader defaultClassLoader(ClassLoader classLoader) {
        if (classLoader != null) {
            return classLoader;
        }

        final ClassLoader contextClassLoader = PlatformDependent.getContextClassLoader();
        if (contextClassLoader != null) {
            return contextClassLoader;
        }

        return PlatformDependent.getClassLoader(io.netty.handler.codec.serialization.ClassResolvers.class);
    }

    private ClassResolvers() {
        // Unused
    }
}
