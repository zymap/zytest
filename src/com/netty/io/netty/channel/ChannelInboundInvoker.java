/*
 * Copyright 2016 The Netty Project
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

public interface ChannelInboundInvoker {

    /**
     * A {@link io.netty.channel.Channel} was registered to its {@link EventLoop}.
     *
     * This will result in having the  {@link ChannelInboundHandler#channelRegistered(ChannelHandlerContext)} method
     * called of the next  {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link io.netty.channel.Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelRegistered();

    /**
     * A {@link io.netty.channel.Channel} was unregistered from its {@link EventLoop}.
     *
     * This will result in having the  {@link ChannelInboundHandler#channelUnregistered(ChannelHandlerContext)} method
     * called of the next  {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link io.netty.channel.Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelUnregistered();

    /**
     * A {@link io.netty.channel.Channel} is active now, which means it is connected.
     *
     * This will result in having the  {@link ChannelInboundHandler#channelActive(ChannelHandlerContext)} method
     * called of the next  {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link io.netty.channel.Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelActive();

    /**
     * A {@link io.netty.channel.Channel} is inactive now, which means it is closed.
     *
     * This will result in having the  {@link ChannelInboundHandler#channelInactive(ChannelHandlerContext)} method
     * called of the next  {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link io.netty.channel.Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelInactive();

    /**
     * A {@link io.netty.channel.Channel} received an {@link Throwable} in one of its inbound operations.
     *
     * This will result in having the  {@link ChannelInboundHandler#exceptionCaught(ChannelHandlerContext, Throwable)}
     * method  called of the next  {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link io.netty.channel.Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireExceptionCaught(Throwable cause);

    /**
     * A {@link io.netty.channel.Channel} received an user defined event.
     *
     * This will result in having the  {@link ChannelInboundHandler#userEventTriggered(ChannelHandlerContext, Object)}
     * method  called of the next  {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link io.netty.channel.Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireUserEventTriggered(Object event);

    /**
     * A {@link io.netty.channel.Channel} received a message.
     *
     * This will result in having the {@link ChannelInboundHandler#channelRead(ChannelHandlerContext, Object)}
     * method  called of the next {@link ChannelInboundHandler} contained in the  {@link ChannelPipeline} of the
     * {@link Channel}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelRead(Object msg);

    /**
     * Triggers an {@link ChannelInboundHandler#channelReadComplete(ChannelHandlerContext)}
     * event to the next {@link ChannelInboundHandler} in the {@link ChannelPipeline}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelReadComplete();

    /**
     * Triggers an {@link ChannelInboundHandler#channelWritabilityChanged(ChannelHandlerContext)}
     * event to the next {@link ChannelInboundHandler} in the {@link ChannelPipeline}.
     */
    io.netty.channel.ChannelInboundInvoker fireChannelWritabilityChanged();
}
