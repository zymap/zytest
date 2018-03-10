/*
 * Copyright 2015 The Netty Project
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
package com.netty.io.netty.handler.codec;

import io.netty.handler.codec.*;
import io.netty.handler.codec.ProtocolDetectionState;

import static io.netty.util.internal.ObjectUtil.checkNotNull;

/**
 * Result of detecting a protocol.
 *
 * @param <T> the type of the protocol
 */
public final class ProtocolDetectionResult<T> {

    @SuppressWarnings({ "rawtypes", "unchecked" })
    private static final io.netty.handler.codec.ProtocolDetectionResult NEEDS_MORE_DATE =
            new io.netty.handler.codec.ProtocolDetectionResult(io.netty.handler.codec.ProtocolDetectionState.NEEDS_MORE_DATA, null);
    @SuppressWarnings({ "rawtypes", "unchecked" })
    private static final io.netty.handler.codec.ProtocolDetectionResult INVALID =
            new io.netty.handler.codec.ProtocolDetectionResult(io.netty.handler.codec.ProtocolDetectionState.INVALID, null);

    private final io.netty.handler.codec.ProtocolDetectionState state;
    private final T result;

    /**
     * Returns a {@link io.netty.handler.codec.ProtocolDetectionResult} that signals that more data is needed to detect the protocol.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.handler.codec.ProtocolDetectionResult<T> needsMoreData() {
        return NEEDS_MORE_DATE;
    }

    /**
     * Returns a {@link io.netty.handler.codec.ProtocolDetectionResult} that signals the data was invalid for the protocol.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.handler.codec.ProtocolDetectionResult<T> invalid() {
        return INVALID;
    }

    /**
     * Returns a {@link io.netty.handler.codec.ProtocolDetectionResult} which holds the detected protocol.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.handler.codec.ProtocolDetectionResult<T> detected(T protocol) {
        return new io.netty.handler.codec.ProtocolDetectionResult<T>(io.netty.handler.codec.ProtocolDetectionState.DETECTED, checkNotNull(protocol, "protocol"));
    }

    private ProtocolDetectionResult(io.netty.handler.codec.ProtocolDetectionState state, T result) {
        this.state = state;
        this.result = result;
    }

    /**
     * Return the {@link io.netty.handler.codec.ProtocolDetectionState}. If the state is {@link io.netty.handler.codec.ProtocolDetectionState#DETECTED} you
     * can retrieve the protocol via {@link #detectedProtocol()}.
     */
    public io.netty.handler.codec.ProtocolDetectionState state() {
        return state;
    }

    /**
     * Returns the protocol if {@link #state()} returns {@link ProtocolDetectionState#DETECTED}, otherwise {@code null}.
     */
    public T detectedProtocol() {
        return result;
    }
}
