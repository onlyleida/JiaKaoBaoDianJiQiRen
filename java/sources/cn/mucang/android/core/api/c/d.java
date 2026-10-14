package cn.mucang.android.core.api.c;

import cn.mucang.android.core.api.exception.WeakRefLostException;
import java.lang.ref.WeakReference;

/* JADX INFO: loaded from: classes.dex */
public abstract class d<A, T> implements a<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private WeakReference<A> f2326a;

    public d(A a2) {
        this.f2326a = new WeakReference<>(a2);
    }

    @Override // cn.mucang.android.core.api.c.a
    public void a() {
    }

    @Override // cn.mucang.android.core.api.c.a
    public void c(Exception exc) {
    }

    @Override // cn.mucang.android.core.api.c.a
    public void d() {
    }

    protected A e() {
        A a2 = this.f2326a.get();
        if (a2 != null) {
            return a2;
        }
        throw new WeakRefLostException(" a is null ");
    }
}
