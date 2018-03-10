/*
 * Copyright 2012 The Netty Project
 *
 * The Netty Project licenses this file to you under the Apache License,
 * version 2.0 (the "License"); you may not use this file except in compliance
 * with the License. You may obtain a copy of the License at:
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS, WITHOUT
 * WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. See the
 * License for the specific language governing permissions and limitations
 * under the License.
 */
package com.netty.io.netty.channel.udt.nio;

import com.barchart.udt.TypeUDT;
import io.netty.channel.udt.UdtMessage;
import io.netty.channel.udt.nio.NioUdtMessageConnectorChannel;
import io.netty.channel.udt.nio.NioUdtProvider;

/**
 * Message Rendezvous for UDT Datagrams.
 * <p>
 * Note: send/receive must use {@link UdtMessage} in the pipeline
 *
 * @deprecated The UDT transport is no longer maintained and will be removed.
 */
@Deprecated
public class NioUdtMessageRendezvousChannel extends NioUdtMessageConnectorChannel {

    public NioUdtMessageRendezvousChannel() {
        super(NioUdtProvider.newRendezvousChannelUDT(TypeUDT.DATAGRAM));
    }
}
