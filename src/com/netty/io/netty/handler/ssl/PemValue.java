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
package com.netty.io.netty.handler.ssl;

import io.netty.buffer.ByteBuf;
import io.netty.buffer.ByteBufAllocator;
import io.netty.handler.ssl.PemEncoded;
import io.netty.handler.ssl.PemPrivateKey;
import io.netty.handler.ssl.PemX509Certificate;
import io.netty.handler.ssl.SslUtils;
import io.netty.util.AbstractReferenceCounted;
import io.netty.util.IllegalReferenceCountException;
import io.netty.util.internal.ObjectUtil;

/**
 * A PEM encoded value.
 *
 * @see PemEncoded
 * @see PemPrivateKey#toPEM(ByteBufAllocator, boolean, java.security.PrivateKey)
 * @see PemX509Certificate#toPEM(ByteBufAllocator, boolean, java.security.cert.X509Certificate[])
 */
class PemValue extends AbstractReferenceCounted implements PemEncoded {

    private final ByteBuf content;

    private final boolean sensitive;

    public PemValue(ByteBuf content, boolean sensitive) {
        this.content = ObjectUtil.checkNotNull(content, "content");
        this.sensitive = sensitive;
    }

    @Override
    public boolean isSensitive() {
        return sensitive;
    }

    @Override
    public ByteBuf content() {
        int count = refCnt();
        if (count <= 0) {
            throw new IllegalReferenceCountException(count);
        }

        return content;
    }

    @Override
    public io.netty.handler.ssl.PemValue copy() {
        return replace(content.copy());
    }

    @Override
    public io.netty.handler.ssl.PemValue duplicate() {
        return replace(content.duplicate());
    }

    @Override
    public io.netty.handler.ssl.PemValue retainedDuplicate() {
        return replace(content.retainedDuplicate());
    }

    @Override
    public io.netty.handler.ssl.PemValue replace(ByteBuf content) {
        return new io.netty.handler.ssl.PemValue(content, sensitive);
    }

    @Override
    public io.netty.handler.ssl.PemValue touch() {
        return (io.netty.handler.ssl.PemValue) super.touch();
    }

    @Override
    public io.netty.handler.ssl.PemValue touch(Object hint) {
        content.touch(hint);
        return this;
    }

    @Override
    public io.netty.handler.ssl.PemValue retain() {
        return (io.netty.handler.ssl.PemValue) super.retain();
    }

    @Override
    public io.netty.handler.ssl.PemValue retain(int increment) {
        return (io.netty.handler.ssl.PemValue) super.retain(increment);
    }

    @Override
    protected void deallocate() {
        if (sensitive) {
            SslUtils.zeroout(content);
        }
        content.release();
    }
}
