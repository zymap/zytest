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
package com.netty.io.netty.channel.local;

import io.netty.channel.Channel;
import io.netty.channel.ChannelException;
import io.netty.channel.local.*;
import io.netty.channel.local.LocalAddress;
import io.netty.util.internal.PlatformDependent;
import io.netty.util.internal.StringUtil;

import java.net.SocketAddress;
import java.util.concurrent.ConcurrentMap;

final class LocalChannelRegistry {

    private static final ConcurrentMap<io.netty.channel.local.LocalAddress, Channel> boundChannels = PlatformDependent.newConcurrentHashMap();

    static io.netty.channel.local.LocalAddress register(
            Channel channel, io.netty.channel.local.LocalAddress oldLocalAddress, SocketAddress localAddress) {
        if (oldLocalAddress != null) {
            throw new ChannelException("already bound");
        }
        if (!(localAddress instanceof io.netty.channel.local.LocalAddress)) {
            throw new ChannelException("unsupported address type: " + StringUtil.simpleClassName(localAddress));
        }

        io.netty.channel.local.LocalAddress addr = (io.netty.channel.local.LocalAddress) localAddress;
        if (io.netty.channel.local.LocalAddress.ANY.equals(addr)) {
            addr = new io.netty.channel.local.LocalAddress(channel);
        }

        Channel boundChannel = boundChannels.putIfAbsent(addr, channel);
        if (boundChannel != null) {
            throw new ChannelException("address already in use by: " + boundChannel);
        }
        return addr;
    }

    static Channel get(SocketAddress localAddress) {
        return boundChannels.get(localAddress);
    }

    static void unregister(LocalAddress localAddress) {
        boundChannels.remove(localAddress);
    }

    private LocalChannelRegistry() {
        // Unused
    }
}
