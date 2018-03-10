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
package com.netty.io.netty.channel;

import io.netty.channel.ChannelFuture;
import io.netty.channel.FileRegion;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ProgressiveFuture;

/**
 * An special {@link ChannelFuture} which is used to indicate the {@link FileRegion} transfer progress
 */
public interface ChannelProgressiveFuture extends ChannelFuture, ProgressiveFuture<Void> {
    @Override
    io.netty.channel.ChannelProgressiveFuture addListener(GenericFutureListener<? extends Future<? super Void>> listener);

    @Override
    io.netty.channel.ChannelProgressiveFuture addListeners(GenericFutureListener<? extends Future<? super Void>>... listeners);

    @Override
    io.netty.channel.ChannelProgressiveFuture removeListener(GenericFutureListener<? extends Future<? super Void>> listener);

    @Override
    io.netty.channel.ChannelProgressiveFuture removeListeners(GenericFutureListener<? extends Future<? super Void>>... listeners);

    @Override
    io.netty.channel.ChannelProgressiveFuture sync() throws InterruptedException;

    @Override
    io.netty.channel.ChannelProgressiveFuture syncUninterruptibly();

    @Override
    io.netty.channel.ChannelProgressiveFuture await() throws InterruptedException;

    @Override
    io.netty.channel.ChannelProgressiveFuture awaitUninterruptibly();
}
