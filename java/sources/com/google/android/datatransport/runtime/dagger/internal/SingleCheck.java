package com.google.android.datatransport.runtime.dagger.internal;

import h.a.a;

/* JADX INFO: loaded from: classes5.dex */
public final class SingleCheck<T> implements a<T> {
    static final /* synthetic */ boolean $assertionsDisabled = false;
    private static final Object UNINITIALIZED = new Object();
    private volatile Object instance = UNINITIALIZED;
    private volatile a<T> provider;

    private SingleCheck(a<T> aVar) {
        this.provider = aVar;
    }

    public static <P extends a<T>, T> a<T> provider(P p) {
        return ((p instanceof SingleCheck) || (p instanceof DoubleCheck)) ? p : new SingleCheck((a) Preconditions.checkNotNull(p));
    }

    @Override // h.a.a
    public T get() {
        T t = (T) this.instance;
        if (t != UNINITIALIZED) {
            return t;
        }
        a<T> aVar = this.provider;
        if (aVar == null) {
            return (T) this.instance;
        }
        T t2 = aVar.get();
        this.instance = t2;
        this.provider = null;
        return t2;
    }
}
