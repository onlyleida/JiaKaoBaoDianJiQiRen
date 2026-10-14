package com.hw.videoprocessor;

import android.view.Surface;
import java.util.concurrent.CountDownLatch;

/* JADX INFO: loaded from: classes4.dex */
public interface b {
    CountDownLatch a();

    Surface getSurface();

    void setTime(long j);
}
