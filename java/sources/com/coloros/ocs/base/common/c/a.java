package com.coloros.ocs.base.common.c;

import android.content.Context;
import android.os.Handler;
import android.os.Looper;
import com.coloros.ocs.base.common.AuthResult;
import com.coloros.ocs.base.common.c.a.c;

/* JADX INFO: loaded from: classes5.dex */
public class a<O extends c> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private AbstractC0196a<?, O> f11665a;
    private f<?> b;

    /* JADX INFO: renamed from: com.coloros.ocs.base.common.c.a$a, reason: collision with other inner class name */
    public static abstract class AbstractC0196a<T extends e, O> extends d<T, O> {
        public abstract T a(Context context, Looper looper, g.b.a.a.d.a aVar, O o);
    }

    public static class b<C> {
    }

    public interface c {
    }

    public static abstract class d<T, O> {
    }

    public interface e {
        void a(l lVar);

        AuthResult b();

        <T> void c(g<T> gVar);

        void connect();

        void d(com.coloros.ocs.base.common.c.f fVar, Handler handler);

        void disconnect();

        boolean isConnected();
    }

    public static class f<C extends e> extends b<C> {
    }

    /* JADX WARN: Multi-variable type inference failed */
    public <C extends e> a(String str, AbstractC0196a<C, O> abstractC0196a, f<C> fVar) {
        g.b.a.a.c.b.a(abstractC0196a, "can not construct whit the null AbstractClientBuilder");
        g.b.a.a.c.b.a(fVar, "can not construct with the null ClientKey");
        this.f11665a = abstractC0196a;
        this.b = fVar;
    }

    public AbstractC0196a<?, O> a() {
        g.b.a.a.c.b.c(this.f11665a != null, "The ClientBuilder is null");
        return this.f11665a;
    }

    public f<?> b() {
        f<?> fVar = this.b;
        if (fVar != null) {
            return fVar;
        }
        throw new IllegalStateException("This API was constructed with null clientKey.");
    }
}
