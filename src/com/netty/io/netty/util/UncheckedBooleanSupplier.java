/*
 * Copyright 2017 The Netty Project
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
import io.netty.util.BooleanSupplier;

/**
 * Represents a supplier of {@code boolean}-valued results which doesn't throw any checked exceptions.
 */
public interface UncheckedBooleanSupplier extends BooleanSupplier {
    /**
     * Gets a boolean value.
     * @return a boolean value.
     */
    @Override
    boolean get();

    /**
     * A supplier which always returns {@code false} and never throws.
     */
    io.netty.util.UncheckedBooleanSupplier FALSE_SUPPLIER = new io.netty.util.UncheckedBooleanSupplier() {
        @Override
        public boolean get() {
            return false;
        }
    };

    /**
     * A supplier which always returns {@code true} and never throws.
     */
    io.netty.util.UncheckedBooleanSupplier TRUE_SUPPLIER = new io.netty.util.UncheckedBooleanSupplier() {
        @Override
        public boolean get() {
            return true;
        }
    };
}
