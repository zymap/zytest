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
package com.netty.io.netty.handler.codec.memcache;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.memcache.*;
import io.netty.handler.codec.memcache.LastMemcacheContent;
import io.netty.handler.codec.memcache.MemcacheMessage;
import io.netty.util.internal.UnstableApi;

/**
 * Combines {@link io.netty.handler.codec.memcache.MemcacheMessage} and {@link LastMemcacheContent} into one
 * message. So it represent a <i>complete</i> memcache message.
 */
@UnstableApi
public interface FullMemcacheMessage extends MemcacheMessage, LastMemcacheContent {

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage copy();

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage duplicate();

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage retainedDuplicate();

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage replace(ByteBuf content);

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage retain(int increment);

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage retain();

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage touch();

    @Override
    io.netty.handler.codec.memcache.FullMemcacheMessage touch(Object hint);
}
