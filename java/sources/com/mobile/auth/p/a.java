package com.mobile.auth.p;

import android.content.Context;
import com.mobile.auth.gatewayauth.utils.EncryptUtils;
import com.mobile.auth.u.a;
import com.nirvana.tools.requestqueue.TimeoutCallable;

/* JADX INFO: loaded from: classes5.dex */
public abstract class a<T extends com.mobile.auth.u.a> implements TimeoutCallable<com.mobile.auth.u.a> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private Context f13543a;
    private com.mobile.auth.gatewayauth.manager.b b;

    public a(Context context, com.mobile.auth.gatewayauth.manager.b bVar) {
        this.f13543a = context.getApplicationContext();
        this.b = bVar;
    }

    public abstract T a();

    public abstract T a(String str);

    public com.mobile.auth.u.a b() {
        try {
            if (this.b.k()) {
                return a();
            }
            this.b.l();
            return a(EncryptUtils.generateAesKey());
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public Context c() {
        try {
            return this.f13543a;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    @Override // java.util.concurrent.Callable
    public /* synthetic */ Object call() throws Exception {
        try {
            return b();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
