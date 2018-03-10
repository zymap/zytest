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
import io.netty.channel.ChannelHandlerContext;
import io.netty.channel.ChannelInboundHandler;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.socket.*;
import io.netty.channel.socket.ChannelInputShutdownEvent;

import java.net.Socket;
import java.net.StandardSocketOptions;

/**
 * A {@link ChannelConfig} for a {@link SocketChannel}.
 *
 * <h3>Available options</h3>
 *
 * In addition to the options provided by {@link ChannelConfig},
 * {@link io.netty.channel.socket.SocketChannelConfig} allows the following options in the option map:
 *
 * <table border="1" cellspacing="0" cellpadding="6">
 * <tr>
 * <th>Name</th><th>Associated setter method</th>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_KEEPALIVE}</td><td>{@link #setKeepAlive(boolean)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_REUSEADDR}</td><td>{@link #setReuseAddress(boolean)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_LINGER}</td><td>{@link #setSoLinger(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#TCP_NODELAY}</td><td>{@link #setTcpNoDelay(boolean)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_RCVBUF}</td><td>{@link #setReceiveBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_SNDBUF}</td><td>{@link #setSendBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#IP_TOS}</td><td>{@link #setTrafficClass(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#ALLOW_HALF_CLOSURE}</td><td>{@link #setAllowHalfClosure(boolean)}</td>
 * </tr>
 * </table>
 */
public interface SocketChannelConfig extends ChannelConfig {

    /**
     * Gets the {@link StandardSocketOptions#TCP_NODELAY} option.  Please note that the default value of this option
     * is {@code true} unlike the operating system default ({@code false}). However, for some buggy platforms, such as
     * Android, that shows erratic behavior with Nagle's algorithm disabled, the default value remains to be
     * {@code false}.
     */
    boolean isTcpNoDelay();

    /**
     * Sets the {@link StandardSocketOptions#TCP_NODELAY} option.  Please note that the default value of this option
     * is {@code true} unlike the operating system default ({@code false}). However, for some buggy platforms, such as
     * Android, that shows erratic behavior with Nagle's algorithm disabled, the default value remains to be
     * {@code false}.
     */
    io.netty.channel.socket.SocketChannelConfig setTcpNoDelay(boolean tcpNoDelay);

    /**
     * Gets the {@link StandardSocketOptions#SO_LINGER} option.
     */
    int getSoLinger();

    /**
     * Sets the {@link StandardSocketOptions#SO_LINGER} option.
     */
    io.netty.channel.socket.SocketChannelConfig setSoLinger(int soLinger);

    /**
     * Gets the {@link StandardSocketOptions#SO_SNDBUF} option.
     */
    int getSendBufferSize();

    /**
     * Sets the {@link StandardSocketOptions#SO_SNDBUF} option.
     */
    io.netty.channel.socket.SocketChannelConfig setSendBufferSize(int sendBufferSize);

    /**
     * Gets the {@link StandardSocketOptions#SO_RCVBUF} option.
     */
    int getReceiveBufferSize();

    /**
     * Sets the {@link StandardSocketOptions#SO_RCVBUF} option.
     */
    io.netty.channel.socket.SocketChannelConfig setReceiveBufferSize(int receiveBufferSize);

    /**
     * Gets the {@link StandardSocketOptions#SO_KEEPALIVE} option.
     */
    boolean isKeepAlive();

    /**
     * Sets the {@link StandardSocketOptions#SO_KEEPALIVE} option.
     */
    io.netty.channel.socket.SocketChannelConfig setKeepAlive(boolean keepAlive);

    /**
     * Gets the {@link StandardSocketOptions#IP_TOS} option.
     */
    int getTrafficClass();

    /**
     * Sets the {@link StandardSocketOptions#IP_TOS} option.
     */
    io.netty.channel.socket.SocketChannelConfig setTrafficClass(int trafficClass);

    /**
     * Gets the {@link StandardSocketOptions#SO_REUSEADDR} option.
     */
    boolean isReuseAddress();

    /**
     * Sets the {@link StandardSocketOptions#SO_REUSEADDR} option.
     */
    io.netty.channel.socket.SocketChannelConfig setReuseAddress(boolean reuseAddress);

    /**
     * Sets the performance preferences as specified in
     * {@link Socket#setPerformancePreferences(int, int, int)}.
     */
    io.netty.channel.socket.SocketChannelConfig setPerformancePreferences(int connectionTime, int latency, int bandwidth);

    /**
     * Returns {@code true} if and only if the channel should not close itself when its remote
     * peer shuts down output to make the connection half-closed.  If {@code false}, the connection
     * is closed automatically when the remote peer shuts down output.
     */
    boolean isAllowHalfClosure();

    /**
     * Sets whether the channel should not close itself when its remote peer shuts down output to
     * make the connection half-closed.  If {@code true} the connection is not closed when the
     * remote peer shuts down output. Instead,
     * {@link ChannelInboundHandler#userEventTriggered(ChannelHandlerContext, Object)}
     * is invoked with a {@link ChannelInputShutdownEvent} object. If {@code false}, the connection
     * is closed automatically.
     */
    io.netty.channel.socket.SocketChannelConfig setAllowHalfClosure(boolean allowHalfClosure);

    @Override
    io.netty.channel.socket.SocketChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    @Deprecated
    io.netty.channel.socket.SocketChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.socket.SocketChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.socket.SocketChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.SocketChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.socket.SocketChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.socket.SocketChannelConfig setAutoClose(boolean autoClose);

    @Override
    io.netty.channel.socket.SocketChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);

    @Override
    io.netty.channel.socket.SocketChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

}
