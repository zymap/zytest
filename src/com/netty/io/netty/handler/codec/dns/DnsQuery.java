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

import io.netty.handler.codec.dns.*;
import io.netty.handler.codec.dns.DnsMessage;
import io.netty.handler.codec.dns.DnsOpCode;
import io.netty.handler.codec.dns.DnsRecord;
import io.netty.handler.codec.dns.DnsSection;
import io.netty.util.internal.UnstableApi;

/**
 * A DNS query message.
 */
@UnstableApi
public interface DnsQuery extends DnsMessage {
    @Override
    io.netty.handler.codec.dns.DnsQuery setId(int id);

    @Override
    io.netty.handler.codec.dns.DnsQuery setOpCode(DnsOpCode opCode);

    @Override
    io.netty.handler.codec.dns.DnsQuery setRecursionDesired(boolean recursionDesired);

    @Override
    io.netty.handler.codec.dns.DnsQuery setZ(int z);

    @Override
    io.netty.handler.codec.dns.DnsQuery setRecord(DnsSection section, DnsRecord record);

    @Override
    io.netty.handler.codec.dns.DnsQuery addRecord(DnsSection section, DnsRecord record);

    @Override
    io.netty.handler.codec.dns.DnsQuery addRecord(DnsSection section, int index, DnsRecord record);

    @Override
    io.netty.handler.codec.dns.DnsQuery clear(DnsSection section);

    @Override
    io.netty.handler.codec.dns.DnsQuery clear();

    @Override
    io.netty.handler.codec.dns.DnsQuery touch();

    @Override
    io.netty.handler.codec.dns.DnsQuery touch(Object hint);

    @Override
    io.netty.handler.codec.dns.DnsQuery retain();

    @Override
    io.netty.handler.codec.dns.DnsQuery retain(int increment);
}
