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
import io.netty.handler.codec.spdy.SpdyFrame;

/**
 * A SPDY Protocol WINDOW_UPDATE Frame
 */
public interface SpdyWindowUpdateFrame extends SpdyFrame {

    /**
     * Returns the Stream-ID of this frame.
     */
    int streamId();

    /**
     * Sets the Stream-ID of this frame.  The Stream-ID cannot be negative.
     */
    io.netty.handler.codec.spdy.SpdyWindowUpdateFrame setStreamId(int streamID);

    /**
     * Returns the Delta-Window-Size of this frame.
     */
    int deltaWindowSize();

    /**
     * Sets the Delta-Window-Size of this frame.
     * The Delta-Window-Size must be positive.
     */
    io.netty.handler.codec.spdy.SpdyWindowUpdateFrame setDeltaWindowSize(int deltaWindowSize);
}
