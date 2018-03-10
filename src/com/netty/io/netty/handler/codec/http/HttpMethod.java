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

import io.netty.util.AsciiString;

import static io.netty.util.internal.MathUtil.findNextPositivePowerOfTwo;
import static io.netty.util.internal.ObjectUtil.checkNotNull;

/**
 * The request method of HTTP or its derived protocols, such as
 * <a href="http://en.wikipedia.org/wiki/Real_Time_Streaming_Protocol">RTSP</a> and
 * <a href="http://en.wikipedia.org/wiki/Internet_Content_Adaptation_Protocol">ICAP</a>.
 */
public class HttpMethod implements Comparable<io.netty.handler.codec.http.HttpMethod> {
    /**
     * The OPTIONS method represents a request for information about the communication options
     * available on the request/response chain identified by the Request-URI. This method allows
     * the client to determine the options and/or requirements associated with a resource, or the
     * capabilities of a server, without implying a resource action or initiating a resource
     * retrieval.
     */
    public static final io.netty.handler.codec.http.HttpMethod OPTIONS = new io.netty.handler.codec.http.HttpMethod("OPTIONS");

    /**
     * The GET method means retrieve whatever information (in the form of an entity) is identified
     * by the Request-URI.  If the Request-URI refers to a data-producing process, it is the
     * produced data which shall be returned as the entity in the response and not the source text
     * of the process, unless that text happens to be the output of the process.
     */
    public static final io.netty.handler.codec.http.HttpMethod GET = new io.netty.handler.codec.http.HttpMethod("GET");

    /**
     * The HEAD method is identical to GET except that the server MUST NOT return a message-body
     * in the response.
     */
    public static final io.netty.handler.codec.http.HttpMethod HEAD = new io.netty.handler.codec.http.HttpMethod("HEAD");

    /**
     * The POST method is used to request that the origin server accept the entity enclosed in the
     * request as a new subordinate of the resource identified by the Request-URI in the
     * Request-Line.
     */
    public static final io.netty.handler.codec.http.HttpMethod POST = new io.netty.handler.codec.http.HttpMethod("POST");

    /**
     * The PUT method requests that the enclosed entity be stored under the supplied Request-URI.
     */
    public static final io.netty.handler.codec.http.HttpMethod PUT = new io.netty.handler.codec.http.HttpMethod("PUT");

    /**
     * The PATCH method requests that a set of changes described in the
     * request entity be applied to the resource identified by the Request-URI.
     */
    public static final io.netty.handler.codec.http.HttpMethod PATCH = new io.netty.handler.codec.http.HttpMethod("PATCH");

    /**
     * The DELETE method requests that the origin server delete the resource identified by the
     * Request-URI.
     */
    public static final io.netty.handler.codec.http.HttpMethod DELETE = new io.netty.handler.codec.http.HttpMethod("DELETE");

    /**
     * The TRACE method is used to invoke a remote, application-layer loop- back of the request
     * message.
     */
    public static final io.netty.handler.codec.http.HttpMethod TRACE = new io.netty.handler.codec.http.HttpMethod("TRACE");

    /**
     * This specification reserves the method name CONNECT for use with a proxy that can dynamically
     * switch to being a tunnel
     */
    public static final io.netty.handler.codec.http.HttpMethod CONNECT = new io.netty.handler.codec.http.HttpMethod("CONNECT");

    private static final EnumNameMap<io.netty.handler.codec.http.HttpMethod> methodMap;

    static {
        methodMap = new EnumNameMap<io.netty.handler.codec.http.HttpMethod>(
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(OPTIONS.toString(), OPTIONS),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(GET.toString(), GET),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(HEAD.toString(), HEAD),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(POST.toString(), POST),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(PUT.toString(), PUT),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(PATCH.toString(), PATCH),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(DELETE.toString(), DELETE),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(TRACE.toString(), TRACE),
                new EnumNameMap.Node<io.netty.handler.codec.http.HttpMethod>(CONNECT.toString(), CONNECT));
    }

    /**
     * Returns the {@link io.netty.handler.codec.http.HttpMethod} represented by the specified name.
     * If the specified name is a standard HTTP method name, a cached instance
     * will be returned.  Otherwise, a new instance will be returned.
     */
    public static io.netty.handler.codec.http.HttpMethod valueOf(String name) {
        io.netty.handler.codec.http.HttpMethod result = methodMap.get(name);
        return result != null ? result : new io.netty.handler.codec.http.HttpMethod(name);
    }

    private final AsciiString name;

    /**
     * Creates a new HTTP method with the specified name.  You will not need to
     * create a new method unless you are implementing a protocol derived from
     * HTTP, such as
     * <a href="http://en.wikipedia.org/wiki/Real_Time_Streaming_Protocol">RTSP</a> and
     * <a href="http://en.wikipedia.org/wiki/Internet_Content_Adaptation_Protocol">ICAP</a>
     */
    public HttpMethod(String name) {
        name = checkNotNull(name, "name").trim();
        if (name.isEmpty()) {
            throw new IllegalArgumentException("empty name");
        }

        for (int i = 0; i < name.length(); i ++) {
            char c = name.charAt(i);
            if (Character.isISOControl(c) || Character.isWhitespace(c)) {
                throw new IllegalArgumentException("invalid character in name");
            }
        }

        this.name = AsciiString.cached(name);
    }

    /**
     * Returns the name of this method.
     */
    public String name() {
        return name.toString();
    }

    /**
     * Returns the name of this method.
     */
    public AsciiString asciiName() {
        return name;
    }

    @Override
    public int hashCode() {
        return name().hashCode();
    }

    @Override
    public boolean equals(Object o) {
        if (!(o instanceof io.netty.handler.codec.http.HttpMethod)) {
            return false;
        }

        io.netty.handler.codec.http.HttpMethod that = (io.netty.handler.codec.http.HttpMethod) o;
        return name().equals(that.name());
    }

    @Override
    public String toString() {
        return name.toString();
    }

    @Override
    public int compareTo(io.netty.handler.codec.http.HttpMethod o) {
        return name().compareTo(o.name());
    }

    private static final class EnumNameMap<T> {
        private final EnumNameMap.Node<T>[] values;
        private final int valuesMask;

        EnumNameMap(EnumNameMap.Node<T>... nodes) {
            values = (EnumNameMap.Node<T>[]) new EnumNameMap.Node[findNextPositivePowerOfTwo(nodes.length)];
            valuesMask = values.length - 1;
            for (EnumNameMap.Node<T> node : nodes) {
                int i = hashCode(node.key) & valuesMask;
                if (values[i] != null) {
                    throw new IllegalArgumentException("index " + i + " collision between values: [" +
                            values[i].key + ", " + node.key + ']');
                }
                values[i] = node;
            }
        }

        T get(String name) {
            EnumNameMap.Node<T> node = values[hashCode(name) & valuesMask];
            return node == null || !node.key.equals(name) ? null : node.value;
        }

        private static int hashCode(String name) {
            // This hash code needs to produce a unique index in the "values" array for each HttpMethod. If new
            // HttpMethods are added this algorithm will need to be adjusted. The constructor will "fail fast" if there
            // are duplicates detected.
            // For example with the current set of HttpMethods it just so happens that the String hash code value
            // shifted right by 6 bits modulo 16 is unique relative to all other HttpMethod values.
            return name.hashCode() >>> 6;
        }

        private static final class Node<T> {
            final String key;
            final T value;

            Node(String key, T value) {
                this.key = key;
                this.value = value;
            }
        }
    }
}
