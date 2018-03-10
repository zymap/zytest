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

package com.netty.io.netty.handler.codec.socksx.v5;

import io.netty.handler.codec.socksx.v5.Socks5CommandRequest;
import io.netty.handler.codec.socksx.v5.Socks5CommandResponse;

/**
 * The type of address in {@link Socks5CommandRequest} and {@link Socks5CommandResponse}.
 */
public class Socks5AddressType implements Comparable<io.netty.handler.codec.socksx.v5.Socks5AddressType> {

    public static final io.netty.handler.codec.socksx.v5.Socks5AddressType IPv4 = new io.netty.handler.codec.socksx.v5.Socks5AddressType(0x01, "IPv4");
    public static final io.netty.handler.codec.socksx.v5.Socks5AddressType DOMAIN = new io.netty.handler.codec.socksx.v5.Socks5AddressType(0x03, "DOMAIN");
    public static final io.netty.handler.codec.socksx.v5.Socks5AddressType IPv6 = new io.netty.handler.codec.socksx.v5.Socks5AddressType(0x04, "IPv6");

    public static io.netty.handler.codec.socksx.v5.Socks5AddressType valueOf(byte b) {
        switch (b) {
        case 0x01:
            return IPv4;
        case 0x03:
            return DOMAIN;
        case 0x04:
            return IPv6;
        }

        return new io.netty.handler.codec.socksx.v5.Socks5AddressType(b);
    }

    private final byte byteValue;
    private final String name;
    private String text;

    public Socks5AddressType(int byteValue) {
        this(byteValue, "UNKNOWN");
    }

    public Socks5AddressType(int byteValue, String name) {
        if (name == null) {
            throw new NullPointerException("name");
        }

        this.byteValue = (byte) byteValue;
        this.name = name;
    }

    public byte byteValue() {
        return byteValue;
    }

    @Override
    public int hashCode() {
        return byteValue;
    }

    @Override
    public boolean equals(Object obj) {
        if (!(obj instanceof io.netty.handler.codec.socksx.v5.Socks5AddressType)) {
            return false;
        }

        return byteValue == ((io.netty.handler.codec.socksx.v5.Socks5AddressType) obj).byteValue;
    }

    @Override
    public int compareTo(io.netty.handler.codec.socksx.v5.Socks5AddressType o) {
        return byteValue - o.byteValue;
    }

    @Override
    public String toString() {
        String text = this.text;
        if (text == null) {
            this.text = text = name + '(' + (byteValue & 0xFF) + ')';
        }
        return text;
    }
}
