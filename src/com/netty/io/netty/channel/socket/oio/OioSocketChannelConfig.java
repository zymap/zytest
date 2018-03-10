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
package com.netty.io.netty.channel.socket.oio;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.SocketChannelConfig;
import io.netty.channel.socket.oio.OioSocketChannel;

/**
 * A {@link ChannelConfig} for a {@link OioSocketChannel}.
 *
 * <h3>Available options</h3>
 *
 * In addition to the options provided by {@link SocketChannelConfig},
 * {@link io.netty.channel.socket.oio.OioSocketChannelConfig} allows the following options in the
 * option map:
 *
 * <table border="1" cellspacing="0" cellpadding="6">
 * <tr>
 * <th>Name</th><th>Associated setter method</th>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_TIMEOUT}</td><td>{@link #setSoTimeout(int)}</td>
 * </tr>
 * </table>
 */
public interface OioSocketChannelConfig extends SocketChannelConfig {

    /**
     * Sets the maximal time a operation on the underlying socket may block.
     */
    io.netty.channel.socket.oio.OioSocketChannelConfig setSoTimeout(int timeout);

    /**
     * Returns the maximal time a operation on the underlying socket may block.
     */
    int getSoTimeout();

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setTcpNoDelay(boolean tcpNoDelay);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setSoLinger(int soLinger);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setSendBufferSize(int sendBufferSize);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setReceiveBufferSize(int receiveBufferSize);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setKeepAlive(boolean keepAlive);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setTrafficClass(int trafficClass);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setReuseAddress(boolean reuseAddress);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setPerformancePreferences(int connectionTime, int latency, int bandwidth);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setAllowHalfClosure(boolean allowHalfClosure);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    @Deprecated
    io.netty.channel.socket.oio.OioSocketChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setAutoClose(boolean autoClose);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setWriteBufferHighWaterMark(int writeBufferHighWaterMark);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setWriteBufferLowWaterMark(int writeBufferLowWaterMark);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override
    io.netty.channel.socket.oio.OioSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);
}
