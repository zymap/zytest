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

import io.netty.handler.codec.spdy.SpdyStreamFrame;
import io.netty.handler.codec.spdy.SpdyStreamStatus;

/**
 * A SPDY Protocol RST_STREAM Frame
 */
public interface SpdyRstStreamFrame extends SpdyStreamFrame {

    /**
     * Returns the status of this frame.
     */
    SpdyStreamStatus status();

    /**
     * Sets the status of this frame.
     */
    io.netty.handler.codec.spdy.SpdyRstStreamFrame setStatus(SpdyStreamStatus status);

    @Override
    io.netty.handler.codec.spdy.SpdyRstStreamFrame setStreamId(int streamId);

    @Override
    io.netty.handler.codec.spdy.SpdyRstStreamFrame setLast(boolean last);
}
