/*
 * Copyright 2014 The Netty Project
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
package com.netty.io.netty.handler.codec.stomp;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.stomp.LastStompContentSubframe;
import io.netty.handler.codec.stomp.StompHeadersSubframe;

/**
 * Combines {@link StompHeadersSubframe} and {@link LastStompContentSubframe} into one
 * frame. So it represent a <i>complete</i> STOMP frame.
 */
public interface StompFrame extends StompHeadersSubframe, LastStompContentSubframe {
    @Override
    io.netty.handler.codec.stomp.StompFrame copy();

    @Override
    io.netty.handler.codec.stomp.StompFrame duplicate();

    @Override
    io.netty.handler.codec.stomp.StompFrame retainedDuplicate();

    @Override
    io.netty.handler.codec.stomp.StompFrame replace(ByteBuf content);

    @Override
    io.netty.handler.codec.stomp.StompFrame retain();

    @Override
    io.netty.handler.codec.stomp.StompFrame retain(int increment);

    @Override
    io.netty.handler.codec.stomp.StompFrame touch();

    @Override
    io.netty.handler.codec.stomp.StompFrame touch(Object hint);
}
