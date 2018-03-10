/*
 * Copyright 2016 The Netty Project
 *
 * The Netty Project licenses this file to you under the Apache License, version 2.0 (the
 * "License"); you may not use this file except in compliance with the License. You may obtain a
 * copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software distributed under the License
 * is distributed on an "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express
 * or implied. See the License for the specific language governing permissions and limitations under
 * the License.
 */

package com.netty.io.netty.handler.codec.redis;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.DefaultByteBufHolder;
import io.netty.buffer.Unpooled;
import io.netty.handler.codec.redis.*;
import io.netty.handler.codec.redis.LastBulkStringRedisContent;
import io.netty.util.internal.StringUtil;
import io.netty.util.internal.UnstableApi;

/**
 * An aggregated bulk string of <a href="http://redis.io/topics/protocol">RESP</a>.
 */
@UnstableApi
public class FullBulkStringRedisMessage extends DefaultByteBufHolder implements LastBulkStringRedisContent {

    private FullBulkStringRedisMessage() {
        this(Unpooled.EMPTY_BUFFER);
    }

    /**
     * Creates a {@link io.netty.handler.codec.redis.FullBulkStringRedisMessage} for the given {@code content}.
     *
     * @param content the content, must not be {@code null}. If content is null or empty,
     * use {@link io.netty.handler.codec.redis.FullBulkStringRedisMessage#NULL_INSTANCE} or {@link io.netty.handler.codec.redis.FullBulkStringRedisMessage#EMPTY_INSTANCE}
     * instead of constructor.
     */
    public FullBulkStringRedisMessage(ByteBuf content) {
        super(content);
    }

    /**
     * Returns whether the content of this message is {@code null}.
     *
     * @return indicates whether the content of this message is {@code null}.
     */
    public boolean isNull() {
        return false;
    }

    @Override
    public String toString() {
        return new StringBuilder(StringUtil.simpleClassName(this))
                .append('[')
                .append("content=")
                .append(content())
                .append(']').toString();
    }

    /**
     * A predefined null instance of {@link io.netty.handler.codec.redis.FullBulkStringRedisMessage}.
     */
    public static final io.netty.handler.codec.redis.FullBulkStringRedisMessage NULL_INSTANCE = new io.netty.handler.codec.redis.FullBulkStringRedisMessage() {
        @Override
        public boolean isNull() {
            return true;
        }

        @Override
        public ByteBuf content() {
            return Unpooled.EMPTY_BUFFER;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage copy() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage duplicate() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage retainedDuplicate() {
            return this;
        }

        @Override
        public int refCnt() {
            return 1;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage retain() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage retain(int increment) {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage touch() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage touch(Object hint) {
            return this;
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

    /**
     * A predefined empty instance of {@link io.netty.handler.codec.redis.FullBulkStringRedisMessage}.
     */
    public static final io.netty.handler.codec.redis.FullBulkStringRedisMessage EMPTY_INSTANCE = new io.netty.handler.codec.redis.FullBulkStringRedisMessage() {
        @Override
        public ByteBuf content() {
            return Unpooled.EMPTY_BUFFER;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage copy() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage duplicate() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage retainedDuplicate() {
            return this;
        }

        @Override
        public int refCnt() {
            return 1;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage retain() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage retain(int increment) {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage touch() {
            return this;
        }

        @Override
        public io.netty.handler.codec.redis.FullBulkStringRedisMessage touch(Object hint) {
            return this;
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
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage copy() {
        return (io.netty.handler.codec.redis.FullBulkStringRedisMessage) super.copy();
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage duplicate() {
        return (io.netty.handler.codec.redis.FullBulkStringRedisMessage) super.duplicate();
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage retainedDuplicate() {
        return (io.netty.handler.codec.redis.FullBulkStringRedisMessage) super.retainedDuplicate();
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage replace(ByteBuf content) {
        return new io.netty.handler.codec.redis.FullBulkStringRedisMessage(content);
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage retain() {
        super.retain();
        return this;
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage retain(int increment) {
        super.retain(increment);
        return this;
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage touch() {
        super.touch();
        return this;
    }

    @Override
    public io.netty.handler.codec.redis.FullBulkStringRedisMessage touch(Object hint) {
        super.touch(hint);
        return this;
    }
}
