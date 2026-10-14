package com.serenegiant.utils;

import android.annotation.TargetApi;
import java.lang.AutoCloseable;

/* JADX INFO: loaded from: classes6.dex */
@TargetApi(19)
public class RefCountedAutoCloseable<T extends AutoCloseable> implements AutoCloseable {
    private T mObject;
    private long mRefCount = 0;

    public RefCountedAutoCloseable(T t) {
        this.mObject = t;
    }

    @Override // java.lang.AutoCloseable
    public synchronized void close() {
        long j = this.mRefCount;
        if (j >= 0) {
            long j2 = j - 1;
            this.mRefCount = j2;
            if (j2 < 0) {
                try {
                    try {
                        this.mObject.close();
                        this.mObject = null;
                    } catch (Exception e2) {
                        throw new RuntimeException(e2);
                    }
                } catch (Throwable th) {
                    this.mObject = null;
                    throw th;
                }
            }
        }
    }

    public synchronized T get() {
        return this.mObject;
    }

    public synchronized T getAndRetain() {
        long j = this.mRefCount;
        if (j < 0) {
            return null;
        }
        this.mRefCount = j + 1;
        return this.mObject;
    }
}
