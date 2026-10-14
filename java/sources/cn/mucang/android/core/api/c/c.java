package cn.mucang.android.core.api.c;

import cn.mucang.android.core.api.exception.WeakRefLostException;
import cn.mucang.android.core.config.n;

/* JADX INFO: loaded from: classes.dex */
public abstract class c<A extends n, T> extends d<A, T> {
    public c(A a2) {
        super(a2);
    }

    protected A f() {
        A a2 = (A) super.e();
        if (a2.isFinishing()) {
            throw new WeakRefLostException("a is finishing");
        }
        return a2;
    }
}
