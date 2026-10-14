package org.libpag;

import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;

/* JADX INFO: loaded from: classes6.dex */
class d implements Runnable {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Runnable f16284a;
    final /* synthetic */ HandlerThread b;
    final /* synthetic */ HardwareDecoder c;

    d(HardwareDecoder hardwareDecoder, Runnable runnable, HandlerThread handlerThread) {
        this.c = hardwareDecoder;
        this.f16284a = runnable;
        this.b = handlerThread;
    }

    @Override // java.lang.Runnable
    public void run() {
        this.f16284a.run();
        HardwareDecoder.f16251a.getAndDecrement();
        new Handler(Looper.getMainLooper()).post(new c(this));
    }
}
