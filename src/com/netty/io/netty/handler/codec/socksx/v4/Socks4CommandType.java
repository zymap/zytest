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
package com.netty.io.netty.handler.codec.socksx.v4;

import io.netty.handler.codec.socksx.v4.Socks4CommandRequest;

/**
 * The type of {@link Socks4CommandRequest}.
 */
public class Socks4CommandType implements Comparable<io.netty.handler.codec.socksx.v4.Socks4CommandType> {

    public static final io.netty.handler.codec.socksx.v4.Socks4CommandType CONNECT = new io.netty.handler.codec.socksx.v4.Socks4CommandType(0x01, "CONNECT");
    public static final io.netty.handler.codec.socksx.v4.Socks4CommandType BIND = new io.netty.handler.codec.socksx.v4.Socks4CommandType(0x02, "BIND");

    public static io.netty.handler.codec.socksx.v4.Socks4CommandType valueOf(byte b) {
        switch (b) {
        case 0x01:
            return CONNECT;
        case 0x02:
            return BIND;
        }

        return new io.netty.handler.codec.socksx.v4.Socks4CommandType(b);
    }

    private final byte byteValue;
    private final String name;
    private String text;

    public Socks4CommandType(int byteValue) {
        this(byteValue, "UNKNOWN");
    }

    public Socks4CommandType(int byteValue, String name) {
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
        if (!(obj instanceof io.netty.handler.codec.socksx.v4.Socks4CommandType)) {
            return false;
        }

        return byteValue == ((io.netty.handler.codec.socksx.v4.Socks4CommandType) obj).byteValue;
    }

    @Override
    public int compareTo(io.netty.handler.codec.socksx.v4.Socks4CommandType o) {
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
