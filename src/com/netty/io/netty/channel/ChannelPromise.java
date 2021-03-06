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

import io.netty.channel.*;
import io.netty.channel.Channel;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.Promise;

/**
 * Special {@link ChannelFuture} which is writable.
 */
public interface ChannelPromise extends ChannelFuture, Promise<Void> {

    @Override
    Channel channel();

    @Override
    io.netty.channel.ChannelPromise setSuccess(Void result);

    io.netty.channel.ChannelPromise setSuccess();

    boolean trySuccess();

    @Override
    io.netty.channel.ChannelPromise setFailure(Throwable cause);

    @Override
    io.netty.channel.ChannelPromise addListener(GenericFutureListener<? extends Future<? super Void>> listener);

    @Override
    io.netty.channel.ChannelPromise addListeners(GenericFutureListener<? extends Future<? super Void>>... listeners);

    @Override
    io.netty.channel.ChannelPromise removeListener(GenericFutureListener<? extends Future<? super Void>> listener);

    @Override
    io.netty.channel.ChannelPromise removeListeners(GenericFutureListener<? extends Future<? super Void>>... listeners);

    @Override
    io.netty.channel.ChannelPromise sync() throws InterruptedException;

    @Override
    io.netty.channel.ChannelPromise syncUninterruptibly();

    @Override
    io.netty.channel.ChannelPromise await() throws InterruptedException;

    @Override
    io.netty.channel.ChannelPromise awaitUninterruptibly();

    /**
     * Returns a new {@link io.netty.channel.ChannelPromise} if {@link #isVoid()} returns {@code true} otherwise itself.
     */
    io.netty.channel.ChannelPromise unvoid();
}
