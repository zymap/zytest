/*
 * Copyright 2013 The Netty Project
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
package com.netty.io.netty.handler.codec.spdy;

import io.netty.handler.codec.spdy.*;
import io.netty.handler.codec.spdy.SpdyHeadersFrame;

/**
 * A SPDY Protocol SYN_STREAM Frame
 */
public interface SpdySynStreamFrame extends SpdyHeadersFrame {

    /**
     * Returns the Associated-To-Stream-ID of this frame.
     */
    int associatedStreamId();

    /**
     * Sets the Associated-To-Stream-ID of this frame.
     * The Associated-To-Stream-ID cannot be negative.
     */
    io.netty.handler.codec.spdy.SpdySynStreamFrame setAssociatedStreamId(int associatedStreamId);

    /**
     * Returns the priority of the stream.
     */
    byte priority();

    /**
     * Sets the priority of the stream.
     * The priority must be between 0 and 7 inclusive.
     */
    io.netty.handler.codec.spdy.SpdySynStreamFrame setPriority(byte priority);

    /**
     * Returns {@code true} if the stream created with this frame is to be
     * considered half-closed to the receiver.
     */
    boolean isUnidirectional();

    /**
     * Sets if the stream created with this frame is to be considered
     * half-closed to the receiver.
     */
    io.netty.handler.codec.spdy.SpdySynStreamFrame setUnidirectional(boolean unidirectional);

    @Override
    io.netty.handler.codec.spdy.SpdySynStreamFrame setStreamId(int streamID);

    @Override
    io.netty.handler.codec.spdy.SpdySynStreamFrame setLast(boolean last);

    @Override
    io.netty.handler.codec.spdy.SpdySynStreamFrame setInvalid();
}
