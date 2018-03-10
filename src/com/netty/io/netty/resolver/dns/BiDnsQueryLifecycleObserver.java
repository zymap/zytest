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
package com.netty.io.netty.resolver.dns;

import io.netty.channel.ChannelFuture;
import io.netty.handler.codec.dns.DnsQuestion;
import io.netty.handler.codec.dns.DnsResponseCode;
import io.netty.resolver.dns.*;
import io.netty.resolver.dns.DnsQueryLifecycleObserver;
import io.netty.util.internal.UnstableApi;

import java.net.InetSocketAddress;
import java.util.List;

import static io.netty.util.internal.ObjectUtil.checkNotNull;

/**
 * Combines two {@link io.netty.resolver.dns.DnsQueryLifecycleObserver} into a single {@link io.netty.resolver.dns.DnsQueryLifecycleObserver}.
 */
@UnstableApi
public final class BiDnsQueryLifecycleObserver implements io.netty.resolver.dns.DnsQueryLifecycleObserver {
    private final io.netty.resolver.dns.DnsQueryLifecycleObserver a;
    private final io.netty.resolver.dns.DnsQueryLifecycleObserver b;

    /**
     * Create a new instance.
     * @param a The {@link io.netty.resolver.dns.DnsQueryLifecycleObserver} that will receive events first.
     * @param b The {@link io.netty.resolver.dns.DnsQueryLifecycleObserver} that will receive events second.
     */
    public BiDnsQueryLifecycleObserver(io.netty.resolver.dns.DnsQueryLifecycleObserver a, io.netty.resolver.dns.DnsQueryLifecycleObserver b) {
        this.a = checkNotNull(a, "a");
        this.b = checkNotNull(b, "b");
    }

    @Override
    public void queryWritten(InetSocketAddress dnsServerAddress, ChannelFuture future) {
        try {
            a.queryWritten(dnsServerAddress, future);
        } finally {
            b.queryWritten(dnsServerAddress, future);
        }
    }

    @Override
    public void queryCancelled(int queriesRemaining) {
        try {
            a.queryCancelled(queriesRemaining);
        } finally {
            b.queryCancelled(queriesRemaining);
        }
    }

    @Override
    public io.netty.resolver.dns.DnsQueryLifecycleObserver queryRedirected(List<InetSocketAddress> nameServers) {
        try {
            a.queryRedirected(nameServers);
        } finally {
            b.queryRedirected(nameServers);
        }
        return this;
    }

    @Override
    public io.netty.resolver.dns.DnsQueryLifecycleObserver queryCNAMEd(DnsQuestion cnameQuestion) {
        try {
            a.queryCNAMEd(cnameQuestion);
        } finally {
            b.queryCNAMEd(cnameQuestion);
        }
        return this;
    }

    @Override
    public DnsQueryLifecycleObserver queryNoAnswer(DnsResponseCode code) {
        try {
            a.queryNoAnswer(code);
        } finally {
            b.queryNoAnswer(code);
        }
        return this;
    }

    @Override
    public void queryFailed(Throwable cause) {
        try {
            a.queryFailed(cause);
        } finally {
            b.queryFailed(cause);
        }
    }

    @Override
    public void querySucceed() {
        try {
            a.querySucceed();
        } finally {
            b.querySucceed();
        }
    }
}
