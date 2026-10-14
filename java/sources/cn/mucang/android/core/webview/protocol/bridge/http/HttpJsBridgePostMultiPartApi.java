package cn.mucang.android.core.webview.protocol.bridge.http;

import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgePostMultiPartParams;
import com.iflytek.cloud.SpeechConstant;
import java.nio.charset.Charset;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.Charsets;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.q, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\u0006\u001a\u00020\u0007H\u0014J\n\u0010\b\u001a\u0004\u0018\u00010\u0007H\u0014J\b\u0010\t\u001a\u00020\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\n"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgePostMultiPartApi;", "Lcn/mucang/android/core/api/BaseApi;", "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;", SpeechConstant.PARAMS, "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostMultiPartParams;", "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgePostMultiPartParams;)V", "getApiHost", "", "getSignKey", "httpRequest", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpJsBridgePostMultiPartApi extends cn.mucang.android.core.api.a implements HttpJsBridgeApi {
    private final HttpJsBridgePostMultiPartParams b;

    public HttpJsBridgePostMultiPartApi(HttpJsBridgePostMultiPartParams params) {
        r.e(params, "params");
        this.b = params;
        HttpJsBridgeApi.f2854a.a(this, params);
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.http.HttpJsBridgeApi
    public String a() {
        if (this.b.getF2862g()) {
            String rawString = super.httpPostEncrypted(this.b.getB(), this.b.getF2865h()).getRawString();
            r.d(rawString, "{\n            super.http…    ).rawString\n        }");
            return rawString;
        }
        String b = this.b.getB();
        String f2865h = this.b.getF2865h();
        Charset charset = Charsets.f15811a;
        Objects.requireNonNull(f2865h, "null cannot be cast to non-null type java.lang.String");
        byte[] bytes = f2865h.getBytes(charset);
        r.d(bytes, "(this as java.lang.String).getBytes(charset)");
        String rawString2 = super.httpPost(b, bytes, true).getRawString();
        r.d(rawString2, "{\n            super.http…    ).rawString\n        }");
        return rawString2;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return this.b.getF2858a();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return this.b.getF2859d();
    }
}
