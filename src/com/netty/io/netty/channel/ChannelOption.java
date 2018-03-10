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
package com.netty.io.netty.channel;

import io.netty.buffer.ByteBufAllocator;
import io.netty.channel.*;
import io.netty.channel.Channel;
import io.netty.channel.ChannelConfig;
import io.netty.channel.MaxMessagesRecvByteBufAllocator;
import io.netty.channel.RecvByteBufAllocator;
import io.netty.util.AbstractConstant;
import io.netty.util.ConstantPool;

import java.net.InetAddress;
import java.net.NetworkInterface;

/**
 * A {@link io.netty.channel.ChannelOption} allows to configure a {@link io.netty.channel.ChannelConfig} in a type-safe
 * way. Which {@link io.netty.channel.ChannelOption} is supported depends on the actual implementation
 * of {@link ChannelConfig} and may depend on the nature of the transport it belongs
 * to.
 *
 * @param <T>   the type of the value which is valid for the {@link io.netty.channel.ChannelOption}
 */
public class ChannelOption<T> extends AbstractConstant<io.netty.channel.ChannelOption<T>> {

    private static final ConstantPool<io.netty.channel.ChannelOption<Object>> pool = new ConstantPool<io.netty.channel.ChannelOption<Object>>() {
        @Override
        protected io.netty.channel.ChannelOption<Object> newConstant(int id, String name) {
            return new io.netty.channel.ChannelOption<Object>(id, name);
        }
    };

    /**
     * Returns the {@link io.netty.channel.ChannelOption} of the specified name.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.channel.ChannelOption<T> valueOf(String name) {
        return (io.netty.channel.ChannelOption<T>) pool.valueOf(name);
    }

    /**
     * Shortcut of {@link #valueOf(String) valueOf(firstNameComponent.getName() + "#" + secondNameComponent)}.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.channel.ChannelOption<T> valueOf(Class<?> firstNameComponent, String secondNameComponent) {
        return (io.netty.channel.ChannelOption<T>) pool.valueOf(firstNameComponent, secondNameComponent);
    }

    /**
     * Returns {@code true} if a {@link io.netty.channel.ChannelOption} exists for the given {@code name}.
     */
    public static boolean exists(String name) {
        return pool.exists(name);
    }

    /**
     * Creates a new {@link io.netty.channel.ChannelOption} for the given {@code name} or fail with an
     * {@link IllegalArgumentException} if a {@link io.netty.channel.ChannelOption} for the given {@code name} exists.
     */
    @SuppressWarnings("unchecked")
    public static <T> io.netty.channel.ChannelOption<T> newInstance(String name) {
        return (io.netty.channel.ChannelOption<T>) pool.newInstance(name);
    }

    public static final io.netty.channel.ChannelOption<ByteBufAllocator> ALLOCATOR = valueOf("ALLOCATOR");
    public static final io.netty.channel.ChannelOption<RecvByteBufAllocator> RCVBUF_ALLOCATOR = valueOf("RCVBUF_ALLOCATOR");
    public static final io.netty.channel.ChannelOption<MessageSizeEstimator> MESSAGE_SIZE_ESTIMATOR = valueOf("MESSAGE_SIZE_ESTIMATOR");

    public static final io.netty.channel.ChannelOption<Integer> CONNECT_TIMEOUT_MILLIS = valueOf("CONNECT_TIMEOUT_MILLIS");
    /**
     * @deprecated Use {@link MaxMessagesRecvByteBufAllocator}
     */
    @Deprecated
    public static final io.netty.channel.ChannelOption<Integer> MAX_MESSAGES_PER_READ = valueOf("MAX_MESSAGES_PER_READ");
    public static final io.netty.channel.ChannelOption<Integer> WRITE_SPIN_COUNT = valueOf("WRITE_SPIN_COUNT");
    /**
     * @deprecated Use {@link #WRITE_BUFFER_WATER_MARK}
     */
    @Deprecated
    public static final io.netty.channel.ChannelOption<Integer> WRITE_BUFFER_HIGH_WATER_MARK = valueOf("WRITE_BUFFER_HIGH_WATER_MARK");
    /**
     * @deprecated Use {@link #WRITE_BUFFER_WATER_MARK}
     */
    @Deprecated
    public static final io.netty.channel.ChannelOption<Integer> WRITE_BUFFER_LOW_WATER_MARK = valueOf("WRITE_BUFFER_LOW_WATER_MARK");
    public static final io.netty.channel.ChannelOption<WriteBufferWaterMark> WRITE_BUFFER_WATER_MARK =
            valueOf("WRITE_BUFFER_WATER_MARK");

    public static final io.netty.channel.ChannelOption<Boolean> ALLOW_HALF_CLOSURE = valueOf("ALLOW_HALF_CLOSURE");
    public static final io.netty.channel.ChannelOption<Boolean> AUTO_READ = valueOf("AUTO_READ");

    /**
     * @deprecated  Auto close will be removed in a future release.
     *
     * If {@code true} then the {@link Channel} is closed automatically and immediately on write failure.
     * The default value is {@code true}.
     */
    @Deprecated
    public static final io.netty.channel.ChannelOption<Boolean> AUTO_CLOSE = valueOf("AUTO_CLOSE");

    public static final io.netty.channel.ChannelOption<Boolean> SO_BROADCAST = valueOf("SO_BROADCAST");
    public static final io.netty.channel.ChannelOption<Boolean> SO_KEEPALIVE = valueOf("SO_KEEPALIVE");
    public static final io.netty.channel.ChannelOption<Integer> SO_SNDBUF = valueOf("SO_SNDBUF");
    public static final io.netty.channel.ChannelOption<Integer> SO_RCVBUF = valueOf("SO_RCVBUF");
    public static final io.netty.channel.ChannelOption<Boolean> SO_REUSEADDR = valueOf("SO_REUSEADDR");
    public static final io.netty.channel.ChannelOption<Integer> SO_LINGER = valueOf("SO_LINGER");
    public static final io.netty.channel.ChannelOption<Integer> SO_BACKLOG = valueOf("SO_BACKLOG");
    public static final io.netty.channel.ChannelOption<Integer> SO_TIMEOUT = valueOf("SO_TIMEOUT");

    public static final io.netty.channel.ChannelOption<Integer> IP_TOS = valueOf("IP_TOS");
    public static final io.netty.channel.ChannelOption<InetAddress> IP_MULTICAST_ADDR = valueOf("IP_MULTICAST_ADDR");
    public static final io.netty.channel.ChannelOption<NetworkInterface> IP_MULTICAST_IF = valueOf("IP_MULTICAST_IF");
    public static final io.netty.channel.ChannelOption<Integer> IP_MULTICAST_TTL = valueOf("IP_MULTICAST_TTL");
    public static final io.netty.channel.ChannelOption<Boolean> IP_MULTICAST_LOOP_DISABLED = valueOf("IP_MULTICAST_LOOP_DISABLED");

    public static final io.netty.channel.ChannelOption<Boolean> TCP_NODELAY = valueOf("TCP_NODELAY");

    @Deprecated
    public static final io.netty.channel.ChannelOption<Boolean> DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION =
            valueOf("DATAGRAM_CHANNEL_ACTIVE_ON_REGISTRATION");

    public static final io.netty.channel.ChannelOption<Boolean> SINGLE_EVENTEXECUTOR_PER_GROUP =
            valueOf("SINGLE_EVENTEXECUTOR_PER_GROUP");

    /**
     * Creates a new {@link io.netty.channel.ChannelOption} with the specified unique {@code name}.
     */
    private ChannelOption(int id, String name) {
        super(id, name);
    }

    @Deprecated
    protected ChannelOption(String name) {
        this(pool.nextId(), name);
    }

    /**
     * Validate the value which is set for the {@link io.netty.channel.ChannelOption}. Sub-classes
     * may override this for special checks.
     */
    public void validate(T value) {
        if (value == null) {
            throw new NullPointerException("value");
        }
    }
}
