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

import com.barchart.udt.OptionUDT;
import com.barchart.udt.TypeUDT;
import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.ChannelConfig;
import io.netty.channel.ChannelException;
import io.netty.channel.ChannelOption;
import io.netty.channel.MessageSizeEstimator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.channel.WriteBufferWaterMark;
import io.netty.channel.udt.*;
import io.netty.channel.udt.UdtChannel;
import io.netty.channel.udt.UdtChannelOption;

/**
 * A {@link ChannelConfig} for a {@link UdtChannel}.
 * <p>
 * <h3>Available options</h3>
 * In addition to the options provided by {@link ChannelConfig},
 * {@link io.netty.channel.udt.UdtChannelConfig} allows the following options in the option map:
 * <p>
 * <table border="1" cellspacing="0" cellpadding="6">
 * <tr>
 * <th>Name</th>
 * <th>Associated setter method</th>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_REUSEADDR}</td><td>{@link #setReuseAddress(boolean)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_RCVBUF}</td><td>{@link #setReceiveBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_SNDBUF}</td><td>{@link #setSendBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_REUSEADDR}</td><td>{@link #setReuseAddress(boolean)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_LINGER}</td><td>{@link #setSoLinger(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_RCVBUF}</td><td>{@link #setReceiveBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link ChannelOption#SO_SNDBUF}</td><td>{@link #setSendBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link UdtChannelOption#PROTOCOL_RECEIVE_BUFFER_SIZE}</td>
 * <td>{@link #setProtocolReceiveBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link UdtChannelOption#PROTOCOL_SEND_BUFFER_SIZE}</td>
 * <td>{@link #setProtocolSendBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link UdtChannelOption#SYSTEM_RECEIVE_BUFFER_SIZE}</td>
 * <td>{@link #setSystemReceiveBufferSize(int)}</td>
 * </tr><tr>
 * <td>{@link UdtChannelOption#SYSTEM_SEND_BUFFER_SIZE}</td>
 * <td>{@link #setSystemSendBufferSize(int)}</td>

 * </tr>
 * </table>
 * <p>
 * Note that {@link TypeUDT#DATAGRAM} message oriented channels treat
 * {@code "receiveBufferSize"} and {@code "sendBufferSize"} as maximum message
 * size. If received or sent message does not fit specified sizes,
 * {@link ChannelException} will be thrown.
 *
 * @deprecated The UDT transport is no longer maintained and will be removed.
 */
@Deprecated
public interface UdtChannelConfig extends ChannelConfig {

    /**
     * Gets {@link OptionUDT#Protocol_Receive_Buffer_Size}
     */
    int getProtocolReceiveBufferSize();

    /**
     * Gets {@link OptionUDT#Protocol_Send_Buffer_Size}
     */
    int getProtocolSendBufferSize();

    /**
     * Gets the {@link ChannelOption#SO_RCVBUF} option.
     */
    int getReceiveBufferSize();

    /**
     * Gets the {@link ChannelOption#SO_SNDBUF} option.
     */
    int getSendBufferSize();

    /**
     * Gets the {@link ChannelOption#SO_LINGER} option.
     */
    int getSoLinger();

    /**
     * Gets {@link OptionUDT#System_Receive_Buffer_Size}
     */
    int getSystemReceiveBufferSize();

    /**
     * Gets {@link OptionUDT#System_Send_Buffer_Size}
     */
    int getSystemSendBufferSize();

    /**
     * Gets the {@link ChannelOption#SO_REUSEADDR} option.
     */
    boolean isReuseAddress();

    @Override
    io.netty.channel.udt.UdtChannelConfig setConnectTimeoutMillis(int connectTimeoutMillis);

    @Override
    @Deprecated
    io.netty.channel.udt.UdtChannelConfig setMaxMessagesPerRead(int maxMessagesPerRead);

    @Override
    io.netty.channel.udt.UdtChannelConfig setWriteSpinCount(int writeSpinCount);

    @Override
    io.netty.channel.udt.UdtChannelConfig setAllocator(ByteBufAllocator allocator);

    @Override
    io.netty.channel.udt.UdtChannelConfig setRecvByteBufAllocator(RecvByteBufAllocator allocator);

    @Override
    io.netty.channel.udt.UdtChannelConfig setAutoRead(boolean autoRead);

    @Override
    io.netty.channel.udt.UdtChannelConfig setAutoClose(boolean autoClose);

    @Override
    io.netty.channel.udt.UdtChannelConfig setWriteBufferHighWaterMark(int writeBufferHighWaterMark);

    @Override
    io.netty.channel.udt.UdtChannelConfig setWriteBufferLowWaterMark(int writeBufferLowWaterMark);

    @Override
    io.netty.channel.udt.UdtChannelConfig setWriteBufferWaterMark(WriteBufferWaterMark writeBufferWaterMark);

    @Override
    io.netty.channel.udt.UdtChannelConfig setMessageSizeEstimator(MessageSizeEstimator estimator);

    /**
     * Sets {@link OptionUDT#Protocol_Receive_Buffer_Size}
     */
    io.netty.channel.udt.UdtChannelConfig setProtocolReceiveBufferSize(int size);

    /**
     * Sets {@link OptionUDT#Protocol_Send_Buffer_Size}
     */
    io.netty.channel.udt.UdtChannelConfig setProtocolSendBufferSize(int size);

    /**
     * Sets the {@link ChannelOption#SO_RCVBUF} option.
     */
    io.netty.channel.udt.UdtChannelConfig setReceiveBufferSize(int receiveBufferSize);

    /**
     * Sets the {@link ChannelOption#SO_REUSEADDR} option.
     */
    io.netty.channel.udt.UdtChannelConfig setReuseAddress(boolean reuseAddress);

    /**
     * Sets the {@link ChannelOption#SO_SNDBUF} option.
     */
    io.netty.channel.udt.UdtChannelConfig setSendBufferSize(int sendBufferSize);

    /**
     * Sets the {@link ChannelOption#SO_LINGER} option.
     */
    io.netty.channel.udt.UdtChannelConfig setSoLinger(int soLinger);

    /**
     * Sets {@link OptionUDT#System_Receive_Buffer_Size}
     */
    io.netty.channel.udt.UdtChannelConfig setSystemReceiveBufferSize(int size);

    /**
     * Sets {@link OptionUDT#System_Send_Buffer_Size}
     */
    io.netty.channel.udt.UdtChannelConfig setSystemSendBufferSize(int size);
}
