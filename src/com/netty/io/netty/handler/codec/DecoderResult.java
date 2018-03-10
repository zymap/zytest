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
package com.netty.io.netty.handler.codec;

import io.netty.util.Signal;

public class DecoderResult {

    protected static final Signal SIGNAL_UNFINISHED = Signal.valueOf(io.netty.handler.codec.DecoderResult.class, "UNFINISHED");
    protected static final Signal SIGNAL_SUCCESS = Signal.valueOf(io.netty.handler.codec.DecoderResult.class, "SUCCESS");

    public static final io.netty.handler.codec.DecoderResult UNFINISHED = new io.netty.handler.codec.DecoderResult(SIGNAL_UNFINISHED);
    public static final io.netty.handler.codec.DecoderResult SUCCESS = new io.netty.handler.codec.DecoderResult(SIGNAL_SUCCESS);

    public static io.netty.handler.codec.DecoderResult failure(Throwable cause) {
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        return new io.netty.handler.codec.DecoderResult(cause);
    }

    private final Throwable cause;

    protected DecoderResult(Throwable cause) {
        if (cause == null) {
            throw new NullPointerException("cause");
        }
        this.cause = cause;
    }

    public boolean isFinished() {
        return cause != SIGNAL_UNFINISHED;
    }

    public boolean isSuccess() {
        return cause == SIGNAL_SUCCESS;
    }

    public boolean isFailure() {
        return cause != SIGNAL_SUCCESS && cause != SIGNAL_UNFINISHED;
    }

    public Throwable cause() {
        if (isFailure()) {
            return cause;
        } else {
            return null;
        }
    }

    @Override
    public String toString() {
        if (isFinished()) {
            if (isSuccess()) {
                return "success";
            }

            String cause = cause().toString();
            return new StringBuilder(cause.length() + 17)
                .append("failure(")
                .append(cause)
                .append(')')
                .toString();
        } else {
            return "unfinished";
        }
    }
}
