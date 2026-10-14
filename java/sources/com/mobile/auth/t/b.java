package com.mobile.auth.t;

import com.nirvana.tools.requestqueue.Callback;
import com.nirvana.tools.requestqueue.Request;
import com.nirvana.tools.requestqueue.TimeoutCallable;
import com.nirvana.tools.requestqueue.strategy.CallbackStrategy;
import com.nirvana.tools.requestqueue.strategy.ExecuteStrategy;
import com.nirvana.tools.requestqueue.strategy.ThreadStrategy;

/* JADX INFO: loaded from: classes5.dex */
public class b extends Request<com.mobile.auth.u.d> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final String f13595a = "com.mobile.auth.t.b";

    public b(Callback<com.mobile.auth.u.d> callback, TimeoutCallable<com.mobile.auth.u.d> timeoutCallable) {
        super(callback, timeoutCallable, ThreadStrategy.THREAD, ExecuteStrategy.USE_PREV, CallbackStrategy.LIST, 500L, com.mobile.auth.u.d.class);
    }

    @Override // com.nirvana.tools.requestqueue.Request
    public String getKey() {
        try {
            return f13595a;
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
