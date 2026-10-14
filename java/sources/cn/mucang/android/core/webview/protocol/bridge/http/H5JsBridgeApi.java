package cn.mucang.android.core.webview.protocol.bridge.http;

import cn.mucang.android.core.http.MucangNameValuePair;
import cn.mucang.android.core.utils.k0;
import com.iflytek.cloud.SpeechConstant;
import java.net.URLEncoder;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.t;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.h, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\b\u0001\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\b\u0010\u0005\u001a\u00020\u0006H\u0002J\n\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0014J\n\u0010\b\u001a\u0004\u0018\u00010\u0006H\u0014J\u0006\u0010\t\u001a\u00020\u0006J\u0006\u0010\n\u001a\u00020\u0006R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/H5JsBridgeApi;", "Lcn/mucang/android/core/api/cache/CacheBaseApi;", SpeechConstant.PARAMS, "Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;", "(Lcn/mucang/android/core/webview/protocol/bridge/http/H5HttpRequestParams;)V", "buildGetUrl", "", "getApiHost", "getSignKey", "httpGet", "httpPost", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class H5JsBridgeApi extends cn.mucang.android.core.api.cache.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final H5HttpRequestParams f2853a;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public H5JsBridgeApi(H5HttpRequestParams params) {
        super(i.b(params));
        r.e(params, "params");
        this.f2853a = params;
        addRequestInterceptor(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.a
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(cn.mucang.android.core.api.request.c cVar) {
                H5JsBridgeApi.b(this.f2841a, cVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(final H5JsBridgeApi this$0, final cn.mucang.android.core.api.request.c cVar) {
        r.e(this$0, "this$0");
        for (MucangNameValuePair mucangNameValuePair : this$0.f2853a.d()) {
            cVar.a(mucangNameValuePair.getName(), mucangNameValuePair.getValue());
        }
        cVar.q(new cn.mucang.android.core.api.request.c.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.b
            @Override // cn.mucang.android.core.api.request.c.a
            public final String a() {
                return H5JsBridgeApi.h(cVar, this$0);
            }
        });
    }

    private final String c() {
        String c = this.f2853a.getC();
        if (c == null) {
            c = "";
        }
        StringBuilder sb = new StringBuilder(c);
        for (MucangNameValuePair mucangNameValuePair : this.f2853a.g()) {
            if (StringsKt__StringsKt.G(sb, "?", false, 2, null)) {
                sb.append("&");
            } else {
                sb.append("?");
            }
            sb.append(mucangNameValuePair.getName());
            sb.append("=");
            sb.append(URLEncoder.encode(mucangNameValuePair.getValue(), Charsets.f15811a.name()));
        }
        String string = sb.toString();
        r.d(string, "sb.toString()");
        return string;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String h(cn.mucang.android.core.api.request.c cVar, H5JsBridgeApi this$0) {
        r.e(this$0, "this$0");
        StringBuilder sb = new StringBuilder(r.m(cVar.d(), cVar.e()));
        boolean z = true;
        if (this$0.f2853a.getF2851g()) {
            cn.mucang.android.core.api.url.c.b(sb, "4.3", null, true, null);
        }
        String f2850f = this$0.f2853a.getF2850f();
        if (f2850f != null && !t.r(f2850f)) {
            z = false;
        }
        return !z ? k0.a(sb.toString(), this$0.f2853a.getF2850f()) : sb.toString();
    }

    public final String d() {
        String rawString = super.httpGet(c()).getRawString();
        r.d(rawString, "super.httpGet(buildGetUrl()).rawString");
        return rawString;
    }

    public final String e() {
        String rawString = super.httpPost(this.f2853a.getC(), this.f2853a.g(), this.f2853a.getK()).getRawString();
        r.d(rawString, "super.httpPost(\n        …/是否加密\n        ).rawString");
        return rawString;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return this.f2853a.getB();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return this.f2853a.getF2850f();
    }
}
