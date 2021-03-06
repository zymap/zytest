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
package com.netty.io.netty.handler.codec.spdy;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.handler.codec.spdy.*;
import io.netty.handler.codec.spdy.SpdyHeaderBlockJZlibEncoder;
import io.netty.handler.codec.spdy.SpdyHeaderBlockZlibEncoder;
import io.netty.handler.codec.spdy.SpdyHeadersFrame;
import io.netty.handler.codec.spdy.SpdyVersion;
import io.netty.util.internal.PlatformDependent;

abstract class SpdyHeaderBlockEncoder {

    static io.netty.handler.codec.spdy.SpdyHeaderBlockEncoder newInstance(
            SpdyVersion version, int compressionLevel, int windowBits, int memLevel) {

        if (PlatformDependent.javaVersion() >= 7) {
            return new io.netty.handler.codec.spdy.SpdyHeaderBlockZlibEncoder(
                    version, compressionLevel);
        } else {
            return new io.netty.handler.codec.spdy.SpdyHeaderBlockJZlibEncoder(
                    version, compressionLevel, windowBits, memLevel);
        }
    }

    abstract ByteBuf encode(ByteBufAllocator alloc, SpdyHeadersFrame frame) throws Exception;
    abstract void end();
}
