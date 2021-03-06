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

import io.netty.handler.codec.spdy.SpdyHeaders;
import io.netty.handler.codec.spdy.SpdyStreamFrame;

/**
 * A SPDY Protocol HEADERS Frame
 */
public interface SpdyHeadersFrame extends SpdyStreamFrame {

    /**
     * Returns {@code true} if this header block is invalid.
     * A RST_STREAM frame with code PROTOCOL_ERROR should be sent.
     */
    boolean isInvalid();

    /**
     * Marks this header block as invalid.
     */
    io.netty.handler.codec.spdy.SpdyHeadersFrame setInvalid();

    /**
     * Returns {@code true} if this header block has been truncated due to
     * length restrictions.
     */
    boolean isTruncated();

    /**
     * Mark this header block as truncated.
     */
    io.netty.handler.codec.spdy.SpdyHeadersFrame setTruncated();

    /**
     * Returns the {@link SpdyHeaders}.
     */
    SpdyHeaders headers();

    @Override
    io.netty.handler.codec.spdy.SpdyHeadersFrame setStreamId(int streamID);

    @Override
    io.netty.handler.codec.spdy.SpdyHeadersFrame setLast(boolean last);
}
