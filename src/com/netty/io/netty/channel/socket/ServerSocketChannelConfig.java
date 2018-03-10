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
package com.netty.io.netty.channel.socket;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.*;
import io.netty.channel.socket.ServerSocketChannel;

import java.net.ServerSocket;
import java.net.StandardSocketOptions;

/**
 * A {@link ChannelConfig} for a {@link ServerSocketChannel}.
 *
 * <h3>Available options</h3>
 *
 * In addition to the options provided by {@link ChannelConfig},
 * {@link io.netty.channel.socket.ServerSocketChannelConfig} allows the following options in the
 * option map:
 *
 * <table border="1" cellspacing="0" cellpadding="6">
 * <tr>
 * <th>Name</th><th>Associated setter method</th>
 * </tr><tr>
 * <td>{@code "backlog"}</td><td>{@link #setBacklog(int)}</td>
 * </tr><tr>
 * <td>{@code "reuseAddress"}</td><td>{@link #setReuseAddress(boolean)}</td>
 * </tr><tr>
 * <td>{@code "receiveBufferSize"}</td><td>{@link #setReceiveBufferSize(int)}</td>
 * </tr>
 * </table>
 */
public interface ServerSocketChannelConfig extends ChannelConfig {

    /**
     * Gets the backlog value to specify when the channel binds to a local
     * address.
     */
    int getBacklog();

    /**
     * Sets the backlog value to specify when the channel binds to a local
     * address.
     */
    io.netty.channel.socket.ServerSocketChannelConfig setBacklog(int backlog);

    /**
     * Gets the {@link StandardSocketOptions#SO_REUSEADDR} option.
     */
    boolean isReuseAddress();

    /**
     * Sets the {@link StandardSocketOptions#SO_REUSEADDR} option.
     */
    io.netty.channel.socket.ServerSocketChannelConfig setReuseAddress(boolean reuseAddress);

    /**
     * Gets the {@link StandardSocketOptions#SO_RCVBUF} option.
     */
    int getReceiveBufferSize();

    /**
     * Gets the {@link StandardSocketOptions#SO_SNDBUF} option.
     */
    io.netty.channel.socket.ServerSocketChannelConfig setReceiveBufferSize(int receiveBufferSize);

    /**
     * Sets the performance preferences as specified in
     * {@link ServerSocket#setPerformancePreferences(int, int, int)}.
     */
    io.netty.channel.socket.ServerSocketChannelConfig setPerformancePreferences(int connectionTime, int latency, int bandwidth);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    @Deprecated
    io.netty.channel.socket.ServerSocketChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setWriteBufferHighWaterMark(int writeBufferHighWaterMark);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setWriteBufferLowWaterMark(int writeBufferLowWaterMark);

    @Override
    io.netty.channel.socket.ServerSocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

}
