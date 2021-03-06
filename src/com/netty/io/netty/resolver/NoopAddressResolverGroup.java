/*
 * Copyright 2014 The Netty Project
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

package com.netty.io.netty.resolver;

import io.netty.resolver.AddressResolver;
import io.netty.resolver.AddressResolverGroup;
import io.netty.resolver.NoopAddressResolver;
import io.netty.util.concurrent.EventExecutor;
import io.netty.util.internal.UnstableApi;

import java.net.SocketAddress;

/**
 * A {@link AddressResolverGroup} of {@link NoopAddressResolver}s.
 */
@UnstableApi
public final class NoopAddressResolverGroup extends AddressResolverGroup<SocketAddress> {

    public static final io.netty.resolver.NoopAddressResolverGroup INSTANCE = new io.netty.resolver.NoopAddressResolverGroup();

    private NoopAddressResolverGroup() { }

    @Override
    protected AddressResolver<SocketAddress> newResolver(EventExecutor executor) throws Exception {
        return new NoopAddressResolver(executor);
    }
}
