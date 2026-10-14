package com.coloros.ocs.base.common.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.coloros.ocs.base.common.c.a.c;
import com.coloros.ocs.base.common.c.c;

/* JADX INFO: loaded from: classes5.dex */
public abstract class c<O extends a.c, R extends c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f11675a;
    private a<O> b;
    O c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private j f11676d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private g.b.a.a.d.a f11677e;

    public c(Context context, a<O> aVar, O o, g.b.a.a.d.a aVar2) {
        g.b.a.a.c.b.a(context, "Null context is not permitted.");
        g.b.a.a.c.b.a(aVar, "Api must not be null.");
        Context applicationContext = context.getApplicationContext();
        this.f11675a = applicationContext;
        g.b.a.a.c.a.a(applicationContext);
        this.b = aVar;
        this.c = o;
        this.f11677e = aVar2;
        j jVarB = j.b(this.f11675a);
        this.f11676d = jVarB;
        jVarB.g(this, this.f11677e);
    }

    public R a(f fVar) {
        b(fVar, new Handler(Looper.getMainLooper()));
        return this;
    }

    public R b(f fVar, Handler handler) {
        this.f11676d.e(this, fVar, handler);
        return this;
    }

    protected <TResult> g.b.a.a.e.a<TResult> c(Looper looper, g.b<TResult> bVar, g.a<TResult> aVar) {
        g.b.a.a.c.a.b("color doRegisterListener");
        g.b.a.a.e.b bVar2 = new g.b.a.a.e.b();
        j.f(this, new g(looper, bVar2, bVar, aVar));
        return bVar2;
    }

    protected a<O> d() {
        return this.b;
    }

    protected boolean e() {
        return j.i(this);
    }
}
