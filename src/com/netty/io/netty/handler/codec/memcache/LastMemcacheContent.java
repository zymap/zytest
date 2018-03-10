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
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.DecoderResult;
import io.netty.handler.codec.memcache.DefaultLastMemcacheContent;
import io.netty.handler.codec.memcache.MemcacheContent;
import io.netty.util.internal.UnstableApi;

/**
 * The {@link MemcacheContent} which signals the end of the content batch.
 * <p/>
 * Note that by design, even when no content is emitted by the protocol, an
 * empty {@link io.netty.handler.codec.memcache.LastMemcacheContent} is issued to make the upstream parsing
 * easier.
 */
@UnstableApi
public interface LastMemcacheContent extends MemcacheContent {

    io.netty.handler.codec.memcache.LastMemcacheContent EMPTY_LAST_CONTENT = new io.netty.handler.codec.memcache.LastMemcacheContent() {

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent copy() {
            return EMPTY_LAST_CONTENT;
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent duplicate() {
            return this;
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent retainedDuplicate() {
            return this;
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent replace(ByteBuf content) {
            return new DefaultLastMemcacheContent(content);
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent retain(int increment) {
            return this;
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent retain() {
            return this;
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent touch() {
            return this;
        }

        @Override
        public io.netty.handler.codec.memcache.LastMemcacheContent touch(Object hint) {
            return this;
        }

        @Override
        public ByteBuf content() {
            return Unpooled.EMPTY_BUFFER;
        }

        @Override
        public DecoderResult decoderResult() {
            return DecoderResult.SUCCESS;
        }

        @Override
        public void setDecoderResult(DecoderResult result) {
            throw new UnsupportedOperationException("read only");
        }

        @Override
        public int refCnt() {
            return 1;
        }

        @Override
        public boolean release() {
            return false;
        }

        @Override
        public boolean release(int decrement) {
            return false;
        }
    };

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent copy();

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent duplicate();

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent retainedDuplicate();

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent replace(ByteBuf content);

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent retain(int increment);

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent retain();

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent touch();

    @Override
    io.netty.handler.codec.memcache.LastMemcacheContent touch(Object hint);
}
