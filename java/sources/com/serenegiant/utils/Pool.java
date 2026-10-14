package com.serenegiant.utils;

import java.util.ArrayList;
import java.util.Collection;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public abstract class Pool<T> {
    private int mCreatedObjects;
    private final int mInitNum;
    private final int mLimitNum;
    private final int mMaxNumInPool;
    private final List<T> mPool;

    public Pool(int i, int i2) {
        this(i, i2, i2);
    }

    public void clear() {
        synchronized (this.mPool) {
            this.mPool.clear();
            this.mCreatedObjects = 0;
        }
    }

    protected abstract T createObject(Object... objArr);

    public void init() {
        clear();
        for (int i = 0; i < this.mInitNum && i < this.mMaxNumInPool; i++) {
            T tCreateObject = createObject(new Object[0]);
            if (tCreateObject != null) {
                this.mPool.add(tCreateObject);
                this.mCreatedObjects++;
            }
        }
    }

    public T obtain(Object... objArr) {
        T tCreateObject;
        synchronized (this.mPool) {
            if (this.mPool.isEmpty()) {
                tCreateObject = null;
            } else {
                List<T> list = this.mPool;
                tCreateObject = list.remove(list.size() - 1);
            }
            if (tCreateObject == null && this.mCreatedObjects < this.mLimitNum && (tCreateObject = createObject(objArr)) != null) {
                this.mCreatedObjects++;
            }
        }
        return tCreateObject;
    }

    public void recycle(T t) {
        synchronized (this.mPool) {
            if (this.mPool.size() < this.mMaxNumInPool) {
                this.mPool.add(t);
            } else {
                this.mCreatedObjects--;
            }
        }
    }

    public Pool(int i, int i2, int i3) {
        this.mPool = new ArrayList();
        this.mInitNum = i;
        this.mMaxNumInPool = i2 >= i3 ? i3 : i2;
        this.mLimitNum = i3;
        init();
    }

    public void recycle(Collection<T> collection) {
        for (T t : collection) {
            if (t != null) {
                recycle(t);
            }
        }
    }

    public void recycle(T[] tArr) {
        for (T t : tArr) {
            if (t != null) {
                recycle(t);
            }
        }
    }
}
