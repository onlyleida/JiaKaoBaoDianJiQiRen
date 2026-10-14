package com.blankj.utilcode.util;

import java.util.Objects;
import java.util.concurrent.LinkedBlockingQueue;

/* JADX INFO: loaded from: classes5.dex */
final class ThreadUtils$LinkedBlockingQueue4Util extends LinkedBlockingQueue<Runnable> {
    private int mCapacity;
    private volatile j mPool;

    ThreadUtils$LinkedBlockingQueue4Util() {
        this.mCapacity = Integer.MAX_VALUE;
    }

    @Override // java.util.concurrent.LinkedBlockingQueue, java.util.Queue, java.util.concurrent.BlockingQueue
    public boolean offer(Runnable runnable) {
        Objects.requireNonNull(runnable, "Argument 'runnable' of type Runnable (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        if (this.mCapacity > size() || this.mPool == null || this.mPool.getPoolSize() >= this.mPool.getMaximumPoolSize()) {
            return super.offer(runnable);
        }
        return false;
    }

    ThreadUtils$LinkedBlockingQueue4Util(boolean z) {
        this.mCapacity = Integer.MAX_VALUE;
        if (z) {
            this.mCapacity = 0;
        }
    }

    ThreadUtils$LinkedBlockingQueue4Util(int i) {
        this.mCapacity = Integer.MAX_VALUE;
        this.mCapacity = i;
    }
}
