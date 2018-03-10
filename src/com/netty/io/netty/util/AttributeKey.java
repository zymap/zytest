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
package com.netty.io.netty.util;

import io.netty.util.*;
import io.netty.util.ConstantPool;

/**
 * Key which can be used to access {@link Attribute} out of the {@link AttributeMap}. Be aware that it is not be
 * possible to have multiple keys with the same name.
 *
 * @param <T>   the type of the {@link Attribute} which can be accessed via this {@link io.netty.util.AttributeKey}.
 */
@SuppressWarnings("UnusedDeclaration") // 'T' is used only at compile time
public final class AttributeKey<T> extends AbstractConstant<io.netty.util.AttributeKey<T>> {

    private static final io.netty.util.ConstantPool<io.netty.util.AttributeKey<Object>> pool = new ConstantPool<io.netty.util.AttributeKey<Object>>() {
        @Override
        protected io.netty.util.AttributeKey<Object> newConstant(int id, String name) {
            return new io.netty.util.AttributeKey<Object>(id, name);
        }
    };

    /**
     * Returns the singleton instance of the {@link io.netty.util.AttributeKey} which has the specified {@code name}.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.util.AttributeKey<T> valueOf(String name) {
        return (io.netty.util.AttributeKey<T>) pool.valueOf(name);
    }

    /**
     * Returns {@code true} if a {@link io.netty.util.AttributeKey} exists for the given {@code name}.
     */
    public static boolean exists(String name) {
        return pool.exists(name);
    }

    /**
     * Creates a new {@link io.netty.util.AttributeKey} for the given {@code name} or fail with an
     * {@link IllegalArgumentException} if a {@link io.netty.util.AttributeKey} for the given {@code name} exists.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.util.AttributeKey<T> newInstance(String name) {
        return (io.netty.util.AttributeKey<T>) pool.newInstance(name);
    }

    @SuppressWarnings("unchecked")
    public static <T> io.netty.util.AttributeKey<T> valueOf(Class<?> firstNameComponent, String secondNameComponent) {
        return (io.netty.util.AttributeKey<T>) pool.valueOf(firstNameComponent, secondNameComponent);
    }

    private AttributeKey(int id, String name) {
        super(id, name);
    }
}
