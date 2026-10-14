package cn.mucang.android.core.webview.protocol.bridge.http;

import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeBaseParams;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\ba\u0018\u0000 \u00042\u00020\u0001:\u0001\u0004J\b\u0010\u0002\u001a\u00020\u0003H&¨\u0006\u0005"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;", "", "httpRequest", "", "Companion", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public interface HttpJsBridgeApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f2854a = a.f2855a;

    /* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.j$a */
    @Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0016\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0006\u0010\u0007\u001a\u00020\b¨\u0006\t"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi$Companion;", "", "()V", "enableJsBridgePostInterceptor", "", "api", "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;", "httpParams", "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeBaseParams;", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f2855a = new a();

        private a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(final HttpJsBridgeBaseParams httpParams, final cn.mucang.android.core.api.request.c cVar) {
            r.e(httpParams, "$httpParams");
            cn.mucang.android.core.api.request.e.c cVarC = cVar.c();
            if (cVarC != null) {
                cVarC.j(httpParams.getF2861f());
            }
            for (MucangNameValuePair mucangNameValuePair : httpParams.b()) {
                cVar.a(mucangNameValuePair.getName(), mucangNameValuePair.getValue());
            }
            cVar.q(new cn.mucang.android.core.api.request.c.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.d
                @Override // cn.mucang.android.core.api.request.c.a
                public final String a() {
                    return HttpJsBridgeApi.a.c(cVar, httpParams);
                }
            });
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final String c(cn.mucang.android.core.api.request.c cVar, HttpJsBridgeBaseParams httpParams) {
            r.e(httpParams, "$httpParams");
            StringBuilder sb = new StringBuilder(r.m(cVar.d(), cVar.e()));
            return cn.mucang.android.core.api.request.f.a.g(httpParams.getF2860e() ? cn.mucang.android.core.api.url.c.a(sb.toString(), null, null) : sb.toString(), httpParams.getF2859d());
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final void a(HttpJsBridgeApi api, final HttpJsBridgeBaseParams httpParams) {
            r.e(api, "api");
            r.e(httpParams, "httpParams");
            if (api instanceof cn.mucang.android.core.api.a) {
                ((cn.mucang.android.core.api.a) api).addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.c
                    @Override // cn.mucang.android.core.api.request.d.a
                    public final void a(cn.mucang.android.core.api.request.c cVar) {
                        HttpJsBridgeApi.a.b(httpParams, cVar);
                    }
                });
            }
        }
    }

    String a();
}
