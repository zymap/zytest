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
import io.netty.util.Attribute;
import io.netty.util.AttributeKey;

/**
 * Holds {@link io.netty.util.Attribute}s which can be accessed via {@link AttributeKey}.
 *
 * Implementations must be Thread-safe.
 */
public interface AttributeMap {
    /**
     * Get the {@link io.netty.util.Attribute} for the given {@link AttributeKey}. This method will never return null, but may return
     * an {@link io.netty.util.Attribute} which does not have a value set yet.
     */
    <T> io.netty.util.Attribute<T> attr(AttributeKey<T> key);

    /**
     * Returns {@code} true if and only if the given {@link Attribute} exists in this {@link io.netty.util.AttributeMap}.
     */
    <T> boolean hasAttr(AttributeKey<T> key);
}
