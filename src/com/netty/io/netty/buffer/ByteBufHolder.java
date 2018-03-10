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
package com.netty.io.netty.buffer;

import io.netty.buffer.ByteBuf;
import io.netty.util.ReferenceCounted;

/**
 * A packet which is send or receive.
 */
public interface ByteBufHolder extends ReferenceCounted {

    /**
     * Return the data which is held by this {@link io.netty.buffer.ByteBufHolder}.
     */
    ByteBuf content();

    /**
     * Creates a deep copy of this {@link io.netty.buffer.ByteBufHolder}.
     */
    io.netty.buffer.ByteBufHolder copy();

    /**
     * Duplicates this {@link io.netty.buffer.ByteBufHolder}. Be aware that this will not automatically call {@link #retain()}.
     */
    io.netty.buffer.ByteBufHolder duplicate();

    /**
     * Duplicates this {@link io.netty.buffer.ByteBufHolder}. This method returns a retained duplicate unlike {@link #duplicate()}.
     *
     * @see ByteBuf#retainedDuplicate()
     */
    io.netty.buffer.ByteBufHolder retainedDuplicate();

    /**
     * Returns a new {@link io.netty.buffer.ByteBufHolder} which contains the specified {@code content}.
     */
    io.netty.buffer.ByteBufHolder replace(ByteBuf content);

    @Override
    io.netty.buffer.ByteBufHolder retain();

    @Override
    io.netty.buffer.ByteBufHolder retain(int increment);

    @Override
    io.netty.buffer.ByteBufHolder touch();

    @Override
    io.netty.buffer.ByteBufHolder touch(Object hint);
}
