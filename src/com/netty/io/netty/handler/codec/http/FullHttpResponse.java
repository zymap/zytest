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
package com.netty.io.netty.handler.codec.http;

import io.netty.buffer.ByteBuf;
import io.netty.handler.codec.http.FullHttpMessage;
import io.netty.handler.codec.http.HttpResponse;
import io.netty.handler.codec.http.HttpResponseStatus;
import io.netty.handler.codec.http.HttpVersion;

/**
 * Combination of a {@link HttpResponse} and {@link FullHttpMessage}.
 * So it represent a <i>complete</i> http response.
 */
public interface FullHttpResponse extends HttpResponse, FullHttpMessage {
    @Override
    io.netty.handler.codec.http.FullHttpResponse copy();

    @Override
    io.netty.handler.codec.http.FullHttpResponse duplicate();

    @Override
    io.netty.handler.codec.http.FullHttpResponse retainedDuplicate();

    @Override
    io.netty.handler.codec.http.FullHttpResponse replace(ByteBuf content);

    @Override
    io.netty.handler.codec.http.FullHttpResponse retain(int increment);

    @Override
    io.netty.handler.codec.http.FullHttpResponse retain();

    @Override
    io.netty.handler.codec.http.FullHttpResponse touch();

    @Override
    io.netty.handler.codec.http.FullHttpResponse touch(Object hint);

    @Override
    io.netty.handler.codec.http.FullHttpResponse setProtocolVersion(HttpVersion version);

    @Override
    io.netty.handler.codec.http.FullHttpResponse setStatus(HttpResponseStatus status);
}
