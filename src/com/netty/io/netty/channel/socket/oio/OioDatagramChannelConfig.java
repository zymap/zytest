/*
 * Copyright 2017 The Netty Project
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
package com.netty.io.netty.channel.socket.oio;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.DatagramChannelConfig;

import java.net.InetAddress;
import java.net.NetworkInterface;

public interface OioDatagramChannelConfig extends DatagramChannelConfig {
    /**
     * Sets the maximal time a operation on the underlying socket may block.
     */
    io.netty.channel.socket.oio.OioDatagramChannelConfig setSoTimeout(int timeout);

    /**
     * Returns the maximal time a operation on the underlying socket may block.
     */
    int getSoTimeout();

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setSendBufferSize(int sendBufferSize);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setReceiveBufferSize(int receiveBufferSize);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setTrafficClass(int trafficClass);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setReuseAddress(boolean reuseAddress);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setBroadcast(boolean broadcast);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setLoopbackModeDisabled(boolean loopbackModeDisabled);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setTimeToLive(int ttl);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setInterface(InetAddress interfaceAddress);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setNetworkInterface(NetworkInterface networkInterface);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setAutoClose(boolean autoClose);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setWriteBufferHighWaterMark(int writeBufferHighWaterMark);

    @Override
    io.netty.channel.socket.oio.OioDatagramChannelConfig setWriteBufferLowWaterMark(int writeBufferLowWaterMark);
}
