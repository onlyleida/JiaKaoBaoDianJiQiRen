package com.google.android.gms.common.api.internal;

import java.util.concurrent.locks.Lock;

/* JADX INFO: loaded from: classes.dex */
abstract class zaav implements Runnable {
    final /* synthetic */ zaaw zab;

    @Override // java.lang.Runnable
    public final void run() {
        Lock lock;
        this.zab.zab.lock();
        try {
            try {
                if (Thread.interrupted()) {
                    lock = this.zab.zab;
                } else {
                    zaa();
                    lock = this.zab.zab;
                }
            } catch (RuntimeException e2) {
                this.zab.zaa.zam(e2);
                lock = this.zab.zab;
            }
            lock.unlock();
        } catch (Throwable th) {
            this.zab.zab.unlock();
            throw th;
        }
    }

    protected abstract void zaa();
}
