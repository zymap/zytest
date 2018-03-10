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
package com.netty.io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufHolder;
import io.netty.channel.ChannelPipeline;
import io.netty.handler.codec.http.*;
import io.netty.handler.codec.http.HttpMessage;
import io.netty.handler.codec.http.HttpObject;
import io.netty.handler.codec.http.HttpObjectAggregator;
import io.netty.handler.codec.http.HttpObjectDecoder;

/**
 * An HTTP chunk which is used for HTTP chunked transfer-encoding.
 * {@link HttpObjectDecoder} generates {@link io.netty.handler.codec.http.HttpContent} after
 * {@link HttpMessage} when the content is large or the encoding of the content
 * is 'chunked.  If you prefer not to receive {@link io.netty.handler.codec.http.HttpContent} in your handler,
 * place {@link HttpObjectAggregator} after {@link HttpObjectDecoder} in the
 * {@link ChannelPipeline}.
 */
public interface HttpContent extends HttpObject, ByteBufHolder {
    @Override
    io.netty.handler.codec.http.HttpContent copy();

    @Override
    io.netty.handler.codec.http.HttpContent duplicate();

    @Override
    io.netty.handler.codec.http.HttpContent retainedDuplicate();

    @Override
    io.netty.handler.codec.http.HttpContent replace(ByteBuf content);

    @Override
    io.netty.handler.codec.http.HttpContent retain();

    @Override
    io.netty.handler.codec.http.HttpContent retain(int increment);

    @Override
    io.netty.handler.codec.http.HttpContent touch();

    @Override
    io.netty.handler.codec.http.HttpContent touch(Object hint);
}
