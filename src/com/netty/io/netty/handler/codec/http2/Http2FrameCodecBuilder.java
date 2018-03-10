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

package com.netty.io.netty.handler.codec.http2;

import io.netty.handler.codec.http2.*;
import io.netty.handler.codec.http2.AbstractHttp2ConnectionHandlerBuilder;
import io.netty.handler.codec.http2.DefaultHttp2ConnectionDecoder;
import io.netty.handler.codec.http2.DefaultHttp2ConnectionEncoder;
import io.netty.handler.codec.http2.DefaultHttp2FrameReader;
import io.netty.handler.codec.http2.Http2FrameLogger;
import io.netty.handler.codec.http2.Http2HeadersEncoder;
import io.netty.handler.codec.http2.Http2InboundFrameLogger;
import io.netty.handler.codec.http2.Http2OutboundFrameLogger;
import io.netty.util.internal.UnstableApi;

import static io.netty.util.internal.ObjectUtil.checkNotNull;

/**
 * Builder for the {@link Http2FrameCodec}.
 */
@UnstableApi
public class Http2FrameCodecBuilder extends
        AbstractHttp2ConnectionHandlerBuilder<Http2FrameCodec, io.netty.handler.codec.http2.Http2FrameCodecBuilder> {

    private Http2FrameWriter frameWriter;

    Http2FrameCodecBuilder(boolean server) {
        server(server);
    }

    /**
     * Creates a builder for a HTTP/2 client.
     */
    public static io.netty.handler.codec.http2.Http2FrameCodecBuilder forClient() {
        return new io.netty.handler.codec.http2.Http2FrameCodecBuilder(false);
    }

    /**
     * Creates a builder for a HTTP/2 server.
     */
    public static io.netty.handler.codec.http2.Http2FrameCodecBuilder forServer() {
        return new io.netty.handler.codec.http2.Http2FrameCodecBuilder(true);
    }

    // For testing only.
    io.netty.handler.codec.http2.Http2FrameCodecBuilder frameWriter(Http2FrameWriter frameWriter) {
        this.frameWriter = checkNotNull(frameWriter, "frameWriter");
        return this;
    }

    @Override
    public Http2Settings initialSettings() {
        return super.initialSettings();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder initialSettings(Http2Settings settings) {
        return super.initialSettings(settings);
    }

    @Override
    public long gracefulShutdownTimeoutMillis() {
        return super.gracefulShutdownTimeoutMillis();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder gracefulShutdownTimeoutMillis(long gracefulShutdownTimeoutMillis) {
        return super.gracefulShutdownTimeoutMillis(gracefulShutdownTimeoutMillis);
    }

    @Override
    public boolean isServer() {
        return super.isServer();
    }

    @Override
    public int maxReservedStreams() {
        return super.maxReservedStreams();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder maxReservedStreams(int maxReservedStreams) {
        return super.maxReservedStreams(maxReservedStreams);
    }

    @Override
    public boolean isValidateHeaders() {
        return super.isValidateHeaders();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder validateHeaders(boolean validateHeaders) {
        return super.validateHeaders(validateHeaders);
    }

    @Override
    public Http2FrameLogger frameLogger() {
        return super.frameLogger();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder frameLogger(Http2FrameLogger frameLogger) {
        return super.frameLogger(frameLogger);
    }

    @Override
    public boolean encoderEnforceMaxConcurrentStreams() {
        return super.encoderEnforceMaxConcurrentStreams();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder encoderEnforceMaxConcurrentStreams(boolean encoderEnforceMaxConcurrentStreams) {
        return super.encoderEnforceMaxConcurrentStreams(encoderEnforceMaxConcurrentStreams);
    }

    @Override
    public Http2HeadersEncoder.SensitivityDetector headerSensitivityDetector() {
        return super.headerSensitivityDetector();
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder headerSensitivityDetector(
            Http2HeadersEncoder.SensitivityDetector headerSensitivityDetector) {
        return super.headerSensitivityDetector(headerSensitivityDetector);
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder encoderIgnoreMaxHeaderListSize(boolean ignoreMaxHeaderListSize) {
        return super.encoderIgnoreMaxHeaderListSize(ignoreMaxHeaderListSize);
    }

    @Override
    public io.netty.handler.codec.http2.Http2FrameCodecBuilder initialHuffmanDecodeCapacity(int initialHuffmanDecodeCapacity) {
        return super.initialHuffmanDecodeCapacity(initialHuffmanDecodeCapacity);
    }

    /**
     * Build a {@link Http2FrameCodec} object.
     */
    @Override
    public Http2FrameCodec build() {
        Http2FrameWriter frameWriter = this.frameWriter;
        if (frameWriter != null) {
            // This is to support our tests and will never be executed by the user as frameWriter(...)
            // is package-private.
            DefaultHttp2Connection connection = new DefaultHttp2Connection(isServer(), maxReservedStreams());
            Long maxHeaderListSize = initialSettings().maxHeaderListSize();
            Http2FrameReader frameReader = new DefaultHttp2FrameReader(maxHeaderListSize == null ?
                    new DefaultHttp2HeadersDecoder(true) :
                    new DefaultHttp2HeadersDecoder(true, maxHeaderListSize));

            if (frameLogger() != null) {
                frameWriter = new Http2OutboundFrameLogger(frameWriter, frameLogger());
                frameReader = new Http2InboundFrameLogger(frameReader, frameLogger());
            }
            Http2ConnectionEncoder encoder = new DefaultHttp2ConnectionEncoder(connection, frameWriter);
            if (encoderEnforceMaxConcurrentStreams()) {
                encoder = new StreamBufferingEncoder(encoder);
            }
            Http2ConnectionDecoder decoder = new DefaultHttp2ConnectionDecoder(connection, encoder, frameReader);

            return build(decoder, encoder, initialSettings());
        }
        return super.build();
    }

    @Override
    protected Http2FrameCodec build(
            Http2ConnectionDecoder decoder, Http2ConnectionEncoder encoder, Http2Settings initialSettings) {
        return new Http2FrameCodec(encoder, decoder, initialSettings);
    }
}
