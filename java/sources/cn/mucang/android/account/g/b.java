package cn.mucang.android.account.g;

import java.util.Iterator;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class b extends cn.mucang.android.core.api.cache.b {
    public b() {
        Iterator<cn.mucang.android.core.api.request.d.a> it = a.d().iterator();
        while (it.hasNext()) {
            addRequestInterceptor(it.next());
        }
        Iterator<cn.mucang.android.core.api.request.d.b> it2 = a.e().iterator();
        while (it2.hasNext()) {
            addResponseInterceptor(it2.next());
        }
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return a.f2152a;
    }

    @Override // cn.mucang.android.core.api.a
    protected Map<String, String> getExtraParams() {
        return a.c();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return a.b;
    }
}
