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
package com.netty.io.netty.handler.ssl;

import io.netty.handler.ssl.SslCompletionEvent;

/**
 * Event that is fired once the close_notify was received or if an failure happens before it was received.
 */
public final class SslCloseCompletionEvent extends SslCompletionEvent {

    public static final io.netty.handler.ssl.SslCloseCompletionEvent SUCCESS = new io.netty.handler.ssl.SslCloseCompletionEvent();

    /**
     * Creates a new event that indicates a successful receiving of close_notify.
     */
    private SslCloseCompletionEvent() { }

    /**
     * Creates a new event that indicates an close_notify was not received because of an previous error.
     * Use {@link #SUCCESS} to indicate a success.
     */
    public SslCloseCompletionEvent(Throwable cause) {
        super(cause);
    }
}
