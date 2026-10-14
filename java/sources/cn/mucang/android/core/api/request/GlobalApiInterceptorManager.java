package cn.mucang.android.core.api.request;

import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.api.request.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u000e\u0010\u000b\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u000e\u001a\u00020\f2\u0006\u0010\r\u001a\u00020\tJ\u0006\u0010\u000f\u001a\u00020\fJ\u0006\u0010\u0010\u001a\u00020\fJ\u000e\u0010\u0011\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\u0005J\u000e\u0010\u0013\u001a\u00020\u00122\u0006\u0010\r\u001a\u00020\tR\u0017\u0010\u0003\u001a\b\u0012\u0004\u0012\u00020\u00050\u0004¢\u0006\b\n\u0000\u001a\u0004\b\u0006\u0010\u0007R\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0004¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u0007¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/core/api/request/GlobalApiInterceptorManager;", "", "()V", "requestInterceptors", "", "Lcn/mucang/android/core/api/request/interceptor/RequestInterceptor;", "getRequestInterceptors", "()Ljava/util/List;", "responseInterceptors", "Lcn/mucang/android/core/api/request/interceptor/ResponseInterceptor;", "getResponseInterceptors", "addRequestInterceptor", "", "interceptor", "addResponseInterceptor", "clearRequestInterceptor", "clearResponseInterceptor", "removeRequestInterceptor", "", "removeResponseInterceptor", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class GlobalApiInterceptorManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final GlobalApiInterceptorManager f2401a = new GlobalApiInterceptorManager();
    private static final List<cn.mucang.android.core.api.request.d.a> b = new ArrayList();
    private static final List<cn.mucang.android.core.api.request.d.b> c = new ArrayList();

    private GlobalApiInterceptorManager() {
    }

    public final void a(cn.mucang.android.core.api.request.d.a interceptor) {
        r.e(interceptor, "interceptor");
        List<cn.mucang.android.core.api.request.d.a> list = b;
        if (list.contains(interceptor)) {
            return;
        }
        list.add(interceptor);
    }

    public final void b(cn.mucang.android.core.api.request.d.b interceptor) {
        r.e(interceptor, "interceptor");
        List<cn.mucang.android.core.api.request.d.b> list = c;
        if (list.contains(interceptor)) {
            return;
        }
        list.add(interceptor);
    }

    public final List<cn.mucang.android.core.api.request.d.a> c() {
        return b;
    }

    public final List<cn.mucang.android.core.api.request.d.b> d() {
        return c;
    }
}
