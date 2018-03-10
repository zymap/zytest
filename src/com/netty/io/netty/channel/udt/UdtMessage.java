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
package com.netty.io.netty.channel.udt;

import com.barchart.udt.TypeUDT;
import io.netty.buffer.ByteBuf;
import io.netty.buffer.DefaultByteBufHolder;
import io.netty.channel.udt.nio.NioUdtProvider;

/**
 * The message container that is used for {@link TypeUDT#DATAGRAM} messages.
 * @see NioUdtProvider#MESSAGE_CONNECTOR
 * @see NioUdtProvider#MESSAGE_RENDEZVOUS
 *
 * @deprecated The UDT transport is no longer maintained and will be removed.
 */
@Deprecated
public final class UdtMessage extends DefaultByteBufHolder {

    public UdtMessage(final ByteBuf data) {
        super(data);
    }

    @Override
    public io.netty.channel.udt.UdtMessage copy() {
        return (io.netty.channel.udt.UdtMessage) super.copy();
    }

    @Override
    public io.netty.channel.udt.UdtMessage duplicate() {
        return (io.netty.channel.udt.UdtMessage) super.duplicate();
    }

    @Override
    public io.netty.channel.udt.UdtMessage retainedDuplicate() {
        return (io.netty.channel.udt.UdtMessage) super.retainedDuplicate();
    }

    @Override
    public io.netty.channel.udt.UdtMessage replace(ByteBuf content) {
        return new io.netty.channel.udt.UdtMessage(content);
    }

    @Override
    public io.netty.channel.udt.UdtMessage retain() {
        super.retain();
        return this;
    }

    @Override
    public io.netty.channel.udt.UdtMessage retain(int increment) {
        super.retain(increment);
        return this;
    }

    @Override
    public io.netty.channel.udt.UdtMessage touch() {
        super.touch();
        return this;
    }

    @Override
    public io.netty.channel.udt.UdtMessage touch(Object hint) {
        super.touch(hint);
        return this;
    }
}
