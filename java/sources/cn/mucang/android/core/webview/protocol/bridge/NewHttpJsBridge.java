package cn.mucang.android.core.webview.protocol.bridge;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.request.MucangRequest;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.core.webview.protocol.InvalidUrlException;
import cn.mucang.android.core.webview.protocol.bridge.http.HttpJsBridgeApiFactory;
import cn.mucang.android.core.webview.protocol.bridge.http.HttpJsBridgeParamsFactory;
import java.util.Map;
import kotlin.Metadata;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010$\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0019\u0012\b\u0010\u0002\u001a\u0004\u0018\u00010\u0003\u0012\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0007\u001a\u00020\bH\u0014J(\u0010\t\u001a\u00020\n2\u0016\u0010\u000b\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\f2\u0006\u0010\r\u001a\u00020\u000eH\u0002¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/NewHttpJsBridge;", "Lcn/mucang/android/core/webview/protocol/bridge/CoreJsBridge;", "webView", "Lcn/mucang/android/core/webview/core/MucangWebView;", "coreJsBridge", "Lcn/mucang/android/core/webview/core/JsBridge;", "(Lcn/mucang/android/core/webview/core/MucangWebView;Lcn/mucang/android/core/webview/core/JsBridge;)V", "addFunction", "", "httpRequest", "", "requestData", "", "httpMethod", "Lcn/mucang/android/core/api/request/MucangRequest$HttpMethod;", "Companion", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NewHttpJsBridge extends k0 {
    private static final String HTTP_GET = "/http2/get";
    private static final String HTTP_POST = "/http2/post";

    public NewHttpJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addFunction$lambda-0, reason: not valid java name */
    public static final String m1addFunction$lambda0(NewHttpJsBridge this$0, Map params) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(params, "params");
        return this$0.httpRequest(params, MucangRequest.HttpMethod.GET);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: addFunction$lambda-1, reason: not valid java name */
    public static final String m2addFunction$lambda1(NewHttpJsBridge this$0, Map params) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(params, "params");
        return this$0.httpRequest(params, MucangRequest.HttpMethod.POST);
    }

    private final String httpRequest(Map<String, String> requestData, MucangRequest.HttpMethod httpMethod) throws InvalidUrlException {
        try {
            String strJ = cn.mucang.android.core.webview.core.d.j(HttpJsBridgeApiFactory.f2856a.a(HttpJsBridgeParamsFactory.c(requestData, httpMethod)).a(), null);
            kotlin.jvm.internal.r.d(strJ, "{\n            //解析参数\n   …equest(), null)\n        }");
            return strJ;
        } catch (Throwable th) {
            try {
                String strJ2 = th instanceof ApiException ? cn.mucang.android.core.webview.core.d.j(th.getApiResponse().getRawString(), null) : cn.mucang.android.core.webview.core.d.f(th.getMessage(), 0);
                kotlin.jvm.internal.r.d(strJ2, "{\n                if (t …          }\n            }");
                return strJ2;
            } catch (Exception e2) {
                String strF = cn.mucang.android.core.webview.core.d.f(e2.getMessage(), 0);
                kotlin.jvm.internal.r.d(strF, "{\n                JsBrid…message, 0)\n            }");
                return strF;
            }
        }
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(HTTP_GET, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.w
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return NewHttpJsBridge.m1addFunction$lambda0(this.f2886a, map);
            }
        });
        this.bridge.a(HTTP_POST, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.v
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return NewHttpJsBridge.m2addFunction$lambda1(this.f2885a, map);
            }
        });
    }
}
