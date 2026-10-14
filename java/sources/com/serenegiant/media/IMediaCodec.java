package com.serenegiant.media;

import java.io.IOException;

/* JADX INFO: loaded from: classes6.dex */
public interface IMediaCodec {
    public static final int TIMEOUT_USEC = 10000;

    boolean isPrepared();

    boolean isRunning();

    void prepare() throws IOException;

    void release();

    void start();

    void stop();
}
