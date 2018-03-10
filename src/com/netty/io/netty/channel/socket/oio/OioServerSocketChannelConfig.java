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
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.ServerSocketChannelConfig;
import io.netty.channel.socket.oio.OioServerSocketChannel;


/**
 * A {@link ServerSocketChannelConfig} for a {@link OioServerSocketChannel}.
 *
 * <h3>Available options</h3>
 *
 * In addition to the options provided by {@link ServerSocketChannelConfig},
 * {@link io.netty.channel.socket.oio.OioServerSocketChannelConfig} allows the following options in the
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
public interface OioServerSocketChannelConfig extends ServerSocketChannelConfig {

    /**
     * Sets the maximal time a operation on the underlying socket may block.
     */
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setSoTimeout(int timeout);

    /**
     * Returns the maximal time a operation on the underlying socket may block.
     */
    int getSoTimeout();

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setBacklog(int backlog);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setReuseAddress(boolean reuseAddress);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setReceiveBufferSize(int receiveBufferSize);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setPerformancePreferences(int connectionTime, int latency, int bandwidth);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    @Deprecated
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setAutoClose(boolean autoClose);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setWriteBufferHighWaterMark(int writeBufferHighWaterMark);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setWriteBufferLowWaterMark(int writeBufferLowWaterMark);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override
    io.netty.channel.socket.oio.OioServerSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);
}
