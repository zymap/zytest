/*
 * Copyright 2015 The Netty Project
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
package com.netty.io.netty.handler.codec.dns;

import io.netty.channel.AddressedEnvelope;
import io.netty.handler.codec.dns.*;
import io.netty.handler.codec.dns.DefaultDnsResponse;
import io.netty.handler.codec.dns.DnsOpCode;
import io.netty.handler.codec.dns.DnsRecord;
import io.netty.handler.codec.dns.DnsResponseCode;
import io.netty.handler.codec.dns.DnsSection;
import io.netty.util.internal.UnstableApi;

import java.net.InetSocketAddress;
import java.net.SocketAddress;

/**
 * A {@link DnsResponse} implementation for UDP/IP.
 */
@UnstableApi
public class DatagramDnsResponse extends DefaultDnsResponse
        implements AddressedEnvelope<io.netty.handler.codec.dns.DatagramDnsResponse, InetSocketAddress> {

    private final InetSocketAddress sender;
    private final InetSocketAddress recipient;

    /**
     * Creates a new instance with the {@link DnsOpCode#QUERY} {@code opCode} and
     * the {@link DnsResponseCode#NOERROR} {@code RCODE}.
     *
     * @param sender the address of the sender
     * @param recipient the address of the recipient
     * @param id the {@code ID} of the DNS response
     */
    public DatagramDnsResponse(InetSocketAddress sender, InetSocketAddress recipient, int id) {
        this(sender, recipient, id, DnsOpCode.QUERY, DnsResponseCode.NOERROR);
    }

    /**
     * Creates a new instance with the {@link DnsResponseCode#NOERROR} responseCode.
     *
     * @param sender the address of the sender
     * @param recipient the address of the recipient
     * @param id the {@code ID} of the DNS response
     * @param opCode the {@code opCode} of the DNS response
     */
    public DatagramDnsResponse(InetSocketAddress sender, InetSocketAddress recipient, int id, DnsOpCode opCode) {
        this(sender, recipient, id, opCode, DnsResponseCode.NOERROR);
    }

    /**
     * Creates a new instance.
     *
     * @param sender the address of the sender
     * @param recipient the address of the recipient
     * @param id the {@code ID} of the DNS response
     * @param opCode the {@code opCode} of the DNS response
     * @param responseCode the {@code RCODE} of the DNS response
     */
    public DatagramDnsResponse(
            InetSocketAddress sender, InetSocketAddress recipient,
            int id, DnsOpCode opCode, DnsResponseCode responseCode) {
        super(id, opCode, responseCode);

        if (recipient == null && sender == null) {
            throw new NullPointerException("recipient and sender");
        }

        this.sender = sender;
        this.recipient = recipient;
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse content() {
        return this;
    }

    @Override
    public InetSocketAddress sender() {
        return sender;
    }

    @Override
    public InetSocketAddress recipient() {
        return recipient;
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setAuthoritativeAnswer(boolean authoritativeAnswer) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setAuthoritativeAnswer(authoritativeAnswer);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setTruncated(boolean truncated) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setTruncated(truncated);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setRecursionAvailable(boolean recursionAvailable) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setRecursionAvailable(recursionAvailable);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setCode(DnsResponseCode code) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setCode(code);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setId(int id) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setId(id);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setOpCode(DnsOpCode opCode) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setOpCode(opCode);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setRecursionDesired(boolean recursionDesired) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setRecursionDesired(recursionDesired);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setZ(int z) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setZ(z);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse setRecord(DnsSection section, DnsRecord record) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.setRecord(section, record);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse addRecord(DnsSection section, DnsRecord record) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.addRecord(section, record);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse addRecord(DnsSection section, int index, DnsRecord record) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.addRecord(section, index, record);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse clear(DnsSection section) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.clear(section);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse clear() {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.clear();
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse touch() {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.touch();
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse touch(Object hint) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.touch(hint);
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse retain() {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.retain();
    }

    @Override
    public io.netty.handler.codec.dns.DatagramDnsResponse retain(int increment) {
        return (io.netty.handler.codec.dns.DatagramDnsResponse) super.retain(increment);
    }

    @Override
    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }

        if (!super.equals(obj)) {
            return false;
        }

        if (!(obj instanceof AddressedEnvelope)) {
            return false;
        }

        @SuppressWarnings("unchecked")
        final AddressedEnvelope<?, SocketAddress> that = (AddressedEnvelope<?, SocketAddress>) obj;
        if (sender() == null) {
            if (that.sender() != null) {
                return false;
            }
        } else if (!sender().equals(that.sender())) {
            return false;
        }

        if (recipient() == null) {
            if (that.recipient() != null) {
                return false;
            }
        } else if (!recipient().equals(that.recipient())) {
            return false;
        }

        return true;
    }

    @Override
    public int hashCode() {
        int hashCode = super.hashCode();
        if (sender() != null) {
            hashCode = hashCode * 31 + sender().hashCode();
        }
        if (recipient() != null) {
            hashCode = hashCode * 31 + recipient().hashCode();
        }
        return hashCode;
    }
}
