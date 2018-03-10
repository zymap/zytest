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

import io.netty.channel.*;
import io.netty.channel.ChannelProgressiveFuture;
import io.netty.util.concurrent.Future;
import io.netty.util.concurrent.GenericFutureListener;
import io.netty.util.concurrent.ProgressivePromise;

/**
 * Special {@link ChannelPromise} which will be notified once the associated bytes is transferring.
 */
public interface ChannelProgressivePromise extends ProgressivePromise<Void>, ChannelProgressiveFuture, ChannelPromise {

    @Override
    io.netty.channel.ChannelProgressivePromise addListener(GenericFutureListener<? extends Future<? super Void>> listener);

    @Override
    io.netty.channel.ChannelProgressivePromise addListeners(GenericFutureListener<? extends Future<? super Void>>... listeners);

    @Override
    io.netty.channel.ChannelProgressivePromise removeListener(GenericFutureListener<? extends Future<? super Void>> listener);

    @Override
    io.netty.channel.ChannelProgressivePromise removeListeners(GenericFutureListener<? extends Future<? super Void>>... listeners);

    @Override
    io.netty.channel.ChannelProgressivePromise sync() throws InterruptedException;

    @Override
    io.netty.channel.ChannelProgressivePromise syncUninterruptibly();

    @Override
    io.netty.channel.ChannelProgressivePromise await() throws InterruptedException;

    @Override
    io.netty.channel.ChannelProgressivePromise awaitUninterruptibly();

    @Override
    io.netty.channel.ChannelProgressivePromise setSuccess(Void result);

    @Override
    io.netty.channel.ChannelProgressivePromise setSuccess();

    @Override
    io.netty.channel.ChannelProgressivePromise setFailure(Throwable cause);

    @Override
    io.netty.channel.ChannelProgressivePromise setProgress(long progress, long total);

    @Override
    io.netty.channel.ChannelProgressivePromise unvoid();
}
