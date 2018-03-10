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
package com.netty.io.netty.channel.udt;

import com.barchart.udt.TypeUDT;
import com.barchart.udt.nio.KindUDT;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.udt.UdtChannelConfig;
import io.netty.channel.udt.UdtServerChannel;

/**
 * A {@link ChannelConfig} for a {@link UdtServerChannel}.
 * <p>
 * Note that {@link TypeUDT#DATAGRAM} message oriented channels treat
 * {@code "receiveBufferSize"} and {@code "sendBufferSize"} as maximum message
 * size. If received or sent message does not fit specified sizes,
 * {@link ChannelException} will be thrown.
 *
 * @deprecated The UDT transport is no longer maintained and will be removed.
 */
@Deprecated
public interface UdtServerChannelConfig extends UdtChannelConfig {

    /**
     * Gets {@link KindUDT#ACCEPTOR} channel backlog via
     * {@link ChannelOption#SO_BACKLOG}.
     */
    int getBacklog();

    /**
     * Sets {@link KindUDT#ACCEPTOR} channel backlog via
     * {@link ChannelOption#SO_BACKLOG}.
     */
    io.netty.channel.udt.UdtServerChannelConfig setBacklog(int backlog);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    @Deprecated
    io.netty.channel.udt.UdtServerChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setAutoClose(boolean autoClose);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setProtocolReceiveBufferSize(int size);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setProtocolSendBufferSize(int size);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setReceiveBufferSize(int receiveBufferSize);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setReuseAddress(boolean reuseAddress);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setSendBufferSize(int sendBufferSize);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setSoLinger(int soLinger);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setSystemReceiveBufferSize(int size);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setSystemSendBufferSize(int size);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setWriteBufferHighWaterMark(int writeBufferHighWaterMark);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setWriteBufferLowWaterMark(int writeBufferLowWaterMark);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override
    io.netty.channel.udt.UdtServerChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);
}
