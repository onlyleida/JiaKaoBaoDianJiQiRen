package cn.mucang.android.core.webview.protocol.bridge.http;

import cn.mucang.android.core.webview.protocol.bridge.http.params.HttpJsBridgeGetParams;
import com.iflytek.cloud.SpeechConstant;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.protocol.bridge.http.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0001\u0018\u00002\u00020\u00012\u00020\u0002B\r\u0012\u0006\u0010\u0003\u001a\u00020\u0004¢\u0006\u0002\u0010\u0005J\b\u0010\b\u001a\u00020\tH\u0014J\n\u0010\n\u001a\u0004\u0018\u00010\tH\u0014J\b\u0010\u000b\u001a\u00020\tH\u0016R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeGetApi;", "Lcn/mucang/android/core/api/BaseApi;", "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeApi;", SpeechConstant.PARAMS, "Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;", "(Lcn/mucang/android/core/webview/protocol/bridge/http/params/HttpJsBridgeGetParams;)V", "logic", "Lcn/mucang/android/core/webview/protocol/bridge/http/HttpJsBridgeGetApiLogic;", "getApiHost", "", "getSignKey", "httpRequest", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpJsBridgeGetApi extends cn.mucang.android.core.api.a implements HttpJsBridgeApi {
    private final HttpJsBridgeGetParams b;
    private final HttpJsBridgeGetApiLogic c;

    public HttpJsBridgeGetApi(HttpJsBridgeGetParams params) {
        r.e(params, "params");
        this.b = params;
        this.c = new HttpJsBridgeGetApiLogic(params, this);
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.http.HttpJsBridgeApi
    public String a() {
        String rawString = super.httpGet(this.b.getB()).getRawString();
        r.d(rawString, "super.httpGet(params.path).rawString");
        return rawString;
    }

    @Override // cn.mucang.android.core.api.a
    protected String getApiHost() {
        return this.c.d();
    }

    @Override // cn.mucang.android.core.api.a
    protected String getSignKey() {
        return this.c.e();
    }
}
