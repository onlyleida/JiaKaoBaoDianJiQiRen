package cn.mucang.android.core.webview.protocol.bridge.http;

import android.net.Uri;
import cn.mucang.android.core.api.url.ApiUrlBuilder;
import cn.mucang.android.core.api.url.BasicParamsBuilder;
import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeGetParams;
import com.iflytek.cloud.SpeechConstant;
import java.util.HashMap;
import java.util.Set;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.m, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000(\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\n\u001a\u00020\u000bH\u0002J\u0006\u0010\f\u001a\u00020\bJ\b\u0010\r\u001a\u0004\u0018\u00010\bR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeGetApiLogic;", "", SpeechConstant.PARAMS, "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;", "api", "Lcn/mucang/android/core/api/BaseApi;", "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;Lcn/mucang/android/core/api/BaseApi;)V", "buildEncryptedUrl", "", "createGetUrlBuilder", "builder", "Lcn/mucang/android/core/api/request/MucangRequestBuilder;", "getApiHost", "getSignKey", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpJsBridgeGetApiLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HttpJsBridgeGetParams f2857a;

    public HttpJsBridgeGetApiLogic(HttpJsBridgeGetParams params, cn.mucang.android.core.api.a api) {
        r.e(params, "params");
        r.e(api, "api");
        this.f2857a = params;
        api.addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.f
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(cn.mucang.android.core.api.request.c cVar) {
                HttpJsBridgeGetApiLogic.a(this.f2846a, cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(final HttpJsBridgeGetApiLogic this$0, final cn.mucang.android.core.api.request.c cVar) {
        r.e(this$0, "this$0");
        for (MucangNameValuePair mucangNameValuePair : this$0.f2857a.b()) {
            cVar.a(mucangNameValuePair.getName(), mucangNameValuePair.getValue());
        }
        cVar.q(new cn.mucang.android.core.api.request.c.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.e
            @Override // cn.mucang.android.core.api.request.c.a
            public final String a() {
                return HttpJsBridgeGetApiLogic.h(this.f2845a, cVar);
            }
        });
    }

    private final String b() {
        Uri uri = Uri.parse(r.m(this.f2857a.getF2858a(), this.f2857a.getB()));
        HashMap map = new HashMap();
        HashMap map2 = new HashMap();
        Set<String> queryParameterNames = uri.getQueryParameterNames();
        r.d(queryParameterNames, "uri.queryParameterNames");
        for (String key : queryParameterNames) {
            String queryParameter = uri.getQueryParameter(key);
            if (!(key == null || t.r(key))) {
                BasicParamsBuilder.a aVar = BasicParamsBuilder.i;
                r.d(key, "key");
                if (aVar.f(key)) {
                    if (queryParameter == null) {
                        queryParameter = "";
                    }
                    map2.put(key, queryParameter);
                } else {
                    if (queryParameter == null) {
                        queryParameter = "";
                    }
                    map.put(key, queryParameter);
                }
            }
        }
        BasicParamsBuilder basicParamsBuilderD = BasicParamsBuilder.i.d();
        basicParamsBuilderD.k(map);
        basicParamsBuilderD.c(map2);
        ApiUrlBuilder apiUrlBuilderC = ApiUrlBuilder.c.c();
        apiUrlBuilderC.l(basicParamsBuilderD);
        return apiUrlBuilderC.c(r.m(this.f2857a.getF2858a(), uri.getPath()));
    }

    private final String c(cn.mucang.android.core.api.request.c cVar) {
        String strM = r.m(cVar.d(), cVar.e());
        cn.mucang.android.core.api.request.e.c cVarC = cVar.c();
        if (cVarC != null) {
            cVarC.j(this.f2857a.getF2861f());
        }
        if (this.f2857a.getF2860e()) {
            strM = this.f2857a.getF2862g() ? b() : cn.mucang.android.core.api.url.c.a(strM, null, null);
        }
        return cn.mucang.android.core.api.request.f.a.g(strM, this.f2857a.getF2859d());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String h(HttpJsBridgeGetApiLogic this$0, cn.mucang.android.core.api.request.c builder) {
        r.e(this$0, "this$0");
        r.d(builder, "builder");
        return this$0.c(builder);
    }

    public final String d() {
        return this.f2857a.getF2858a();
    }

    public final String e() {
        return this.f2857a.getF2859d();
    }
}
