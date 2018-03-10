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

import java.util.Set;

/**
 * An interface defining an
 * <a href="http://en.wikipedia.org/wiki/HTTP_cookie">HTTP cookie</a>.
 * @deprecated Use {@link io.netty.handler.codec.http.cookie.Cookie} instead.
 */
@Deprecated
public interface Cookie extends io.netty.handler.codec.http.cookie.Cookie {

    /**
     * @deprecated Use {@link #name()} instead.
     */
    @Deprecated
    String getName();

    /**
     * @deprecated Use {@link #value()} instead.
     */
    @Deprecated
    String getValue();

    /**
     * @deprecated Use {@link #domain()} instead.
     */
    @Deprecated
    String getDomain();

    /**
     * @deprecated Use {@link #path()} instead.
     */
    @Deprecated
    String getPath();

    /**
     * @deprecated Use {@link #comment()} instead.
     */
    @Deprecated
    String getComment();

    /**
     * Returns the comment of this {@link io.netty.handler.codec.http.Cookie}.
     *
     * @return The comment of this {@link io.netty.handler.codec.http.Cookie}
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    String comment();

    /**
     * Sets the comment of this {@link io.netty.handler.codec.http.Cookie}.
     *
     * @param comment The comment to use
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    void setComment(String comment);

    /**
     * @deprecated Use {@link #maxAge()} instead.
     */
    @Deprecated
    long getMaxAge();

    /**
     * Returns the maximum age of this {@link io.netty.handler.codec.http.Cookie} in seconds or {@link Long#MIN_VALUE} if unspecified
     *
     * @return The maximum age of this {@link io.netty.handler.codec.http.Cookie}
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    @Override
    long maxAge();

    /**
     * Sets the maximum age of this {@link io.netty.handler.codec.http.Cookie} in seconds.
     * If an age of {@code 0} is specified, this {@link io.netty.handler.codec.http.Cookie} will be
     * automatically removed by browser because it will expire immediately.
     * If {@link Long#MIN_VALUE} is specified, this {@link io.netty.handler.codec.http.Cookie} will be removed when the
     * browser is closed.
     *
     * @param maxAge The maximum age of this {@link io.netty.handler.codec.http.Cookie} in seconds
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    @Override
    void setMaxAge(long maxAge);

    /**
     * @deprecated Use {@link #version()} instead.
     */
    @Deprecated
    int getVersion();

    /**
     * Returns the version of this {@link io.netty.handler.codec.http.Cookie}.
     *
     * @return The version of this {@link io.netty.handler.codec.http.Cookie}
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    int version();

    /**
     * Sets the version of this {@link io.netty.handler.codec.http.Cookie}.
     *
     * @param version The new version to use
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    void setVersion(int version);

    /**
     * @deprecated Use {@link #commentUrl()} instead.
     */
    @Deprecated
    String getCommentUrl();

    /**
     * Returns the comment URL of this {@link io.netty.handler.codec.http.Cookie}.
     *
     * @return The comment URL of this {@link io.netty.handler.codec.http.Cookie}
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    String commentUrl();

    /**
     * Sets the comment URL of this {@link io.netty.handler.codec.http.Cookie}.
     *
     * @param commentUrl The comment URL to use
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    void setCommentUrl(String commentUrl);

    /**
     * Checks to see if this {@link io.netty.handler.codec.http.Cookie} is to be discarded by the browser
     * at the end of the current session.
     *
     * @return True if this {@link io.netty.handler.codec.http.Cookie} is to be discarded, otherwise false
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    boolean isDiscard();

    /**
     * Sets the discard flag of this {@link io.netty.handler.codec.http.Cookie}.
     * If set to true, this {@link io.netty.handler.codec.http.Cookie} will be discarded by the browser
     * at the end of the current session
     *
     * @param discard True if the {@link io.netty.handler.codec.http.Cookie} is to be discarded
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    void setDiscard(boolean discard);

    /**
     * @deprecated Use {@link #ports()} instead.
     */
    @Deprecated
    Set<Integer> getPorts();

    /**
     * Returns the ports that this {@link io.netty.handler.codec.http.Cookie} can be accessed on.
     *
     * @return The {@link Set} of ports that this {@link io.netty.handler.codec.http.Cookie} can use
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    Set<Integer> ports();

    /**
     * Sets the ports that this {@link io.netty.handler.codec.http.Cookie} can be accessed on.
     *
     * @param ports The ports that this {@link io.netty.handler.codec.http.Cookie} can be accessed on
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    void setPorts(int... ports);

    /**
     * Sets the ports that this {@link io.netty.handler.codec.http.Cookie} can be accessed on.
     *
     * @param ports The {@link Iterable} collection of ports that this
     *              {@link io.netty.handler.codec.http.Cookie} can be accessed on.
     *
     * @deprecated Not part of RFC6265
     */
    @Deprecated
    void setPorts(Iterable<Integer> ports);
}
