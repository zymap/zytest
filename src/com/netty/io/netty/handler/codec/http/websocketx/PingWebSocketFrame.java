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
package com.netty.io.netty.handler.codec.http.websocketx;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.http.websocketx.WebSocketFrame;

/**
 * Web Socket frame containing binary data
 */
public class PingWebSocketFrame extends WebSocketFrame {

    /**
     * Creates a new empty ping frame.
     */
    public PingWebSocketFrame() {
        super(true, 0, Unpooled.buffer(0));
    }

    /**
     * Creates a new ping frame with the specified binary data.
     *
     * @param binaryData
     *            the content of the frame.
     */
    public PingWebSocketFrame(ByteBuf binaryData) {
        super(binaryData);
    }

    /**
     * Creates a new ping frame with the specified binary data
     *
     * @param finalFragment
     *            flag indicating if this frame is the final fragment
     * @param rsv
     *            reserved bits used for protocol extensions
     * @param binaryData
     *            the content of the frame.
     */
    public PingWebSocketFrame(boolean finalFragment, int rsv, ByteBuf binaryData) {
        super(finalFragment, rsv, binaryData);
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame copy() {
        return (io.netty.handler.codec.http.websocketx.PingWebSocketFrame) super.copy();
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame duplicate() {
        return (io.netty.handler.codec.http.websocketx.PingWebSocketFrame) super.duplicate();
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame retainedDuplicate() {
        return (io.netty.handler.codec.http.websocketx.PingWebSocketFrame) super.retainedDuplicate();
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame replace(ByteBuf content) {
        return new io.netty.handler.codec.http.websocketx.PingWebSocketFrame(isFinalFragment(), rsv(), content);
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame retain() {
        super.retain();
        return this;
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame retain(int increment) {
        super.retain(increment);
        return this;
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame touch() {
        super.touch();
        return this;
    }

    @Override
    public io.netty.handler.codec.http.websocketx.PingWebSocketFrame touch(Object hint) {
        super.touch(hint);
        return this;
    }
}
