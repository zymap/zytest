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

import io.netty.resolver.dns.*;
import io.netty.resolver.dns.DnsServerAddressStream;
import io.netty.resolver.dns.DnsServerAddressStreamProvider;
import io.netty.util.internal.UnstableApi;

import java.util.List;

/**
 * A {@link io.netty.resolver.dns.DnsServerAddressStreamProvider} which iterates through a collection of
 * {@link io.netty.resolver.dns.DnsServerAddressStreamProvider} until the first non-{@code null} result is found.
 */
@UnstableApi
public final class MultiDnsServerAddressStreamProvider implements io.netty.resolver.dns.DnsServerAddressStreamProvider {
    private final io.netty.resolver.dns.DnsServerAddressStreamProvider[] providers;

    /**
     * Create a new instance.
     * @param providers The providers to use for DNS resolution. They will be queried in order.
     */
    public MultiDnsServerAddressStreamProvider(List<io.netty.resolver.dns.DnsServerAddressStreamProvider> providers) {
        this.providers = providers.toArray(new io.netty.resolver.dns.DnsServerAddressStreamProvider[0]);
    }

    /**
     * Create a new instance.
     * @param providers The providers to use for DNS resolution. They will be queried in order.
     */
    public MultiDnsServerAddressStreamProvider(io.netty.resolver.dns.DnsServerAddressStreamProvider... providers) {
        this.providers = providers.clone();
    }

    @Override
    public DnsServerAddressStream nameServerAddressStream(String hostname) {
        for (DnsServerAddressStreamProvider provider : providers) {
            DnsServerAddressStream stream = provider.nameServerAddressStream(hostname);
            if (stream != null) {
                return stream;
            }
        }
        return null;
    }
}
