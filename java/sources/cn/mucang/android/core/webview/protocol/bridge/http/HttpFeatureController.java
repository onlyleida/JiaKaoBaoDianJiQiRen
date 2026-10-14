package cn.mucang.android.core.webview.protocol.bridge.http;

import android.graphics.Bitmap;
import android.webkit.WebView;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__IndentKt;

/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 \u000f2\u00020\u0001:\u0001\u000fB\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J&\u0010\u0007\u001a\u00020\b2\b\u0010\t\u001a\u0004\u0018\u00010\n2\b\u0010\u000b\u001a\u0004\u0018\u00010\f2\b\u0010\r\u001a\u0004\u0018\u00010\u000eH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0010"}, d2 = {"Lcn/mucang/android/core/webview/protocol/bridge/http/HttpFeatureController;", "Lcn/mucang/android/core/webview/core/EmptyWebViewController;", "coreJsBridge", "Lcn/mucang/android/core/webview/core/JsBridge;", "protocolHandler", "Lcn/mucang/android/core/webview/core/ProtocolHandler;", "(Lcn/mucang/android/core/webview/core/JsBridge;Lcn/mucang/android/core/webview/core/ProtocolHandler;)V", "onPageStarted", "", "view", "Landroid/webkit/WebView;", "url", "", "favicon", "Landroid/graphics/Bitmap;", "Companion", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HttpFeatureController extends cn.mucang.android.core.webview.core.c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final cn.mucang.android.core.webview.core.d f2839a;
    private final cn.mucang.android.core.webview.core.j b;

    public HttpFeatureController(cn.mucang.android.core.webview.core.d coreJsBridge, cn.mucang.android.core.webview.core.j protocolHandler) {
        r.e(coreJsBridge, "coreJsBridge");
        r.e(protocolHandler, "protocolHandler");
        this.f2839a = coreJsBridge;
        this.b = protocolHandler;
    }

    @Override // cn.mucang.android.core.webview.core.c, cn.mucang.android.core.webview.core.m
    public void a(WebView webView, String str, Bitmap bitmap) {
        super.a(webView, str, bitmap);
        Collection<cn.mucang.android.core.webview.core.d> collectionE = this.b.e();
        List listO0 = collectionE == null ? null : CollectionsKt___CollectionsKt.O0(collectionE);
        if (listO0 == null) {
            listO0 = new ArrayList();
        }
        listO0.add(this.f2839a);
        ArrayList arrayList = new ArrayList(v.u(listO0, 10));
        Iterator it = listO0.iterator();
        while (it.hasNext()) {
            arrayList.add(((cn.mucang.android.core.webview.core.d) it.next()).g());
        }
        List listO1 = CollectionsKt___CollectionsKt.O0(CollectionsKt___CollectionsKt.T(v.x(arrayList)));
        listO1.add("listener.luban.mucang.cn/onWebviewClose");
        listO1.add("listener.luban.mucang.cn/hide");
        listO1.add("listener.luban.mucang.cn/show");
        listO1.add("listener.luban.mucang.cn/shareChannel");
        String strM0 = CollectionsKt___CollectionsKt.m0(listO1, ",", null, null, 0, null, new Function1<String, CharSequence>() { // from class: cn.mucang.android.core.webview.protocol.bridge.http.HttpFeatureController$onPageStarted$featureJsArray$1
            @Override // kotlin.jvm.functions.Function1
            public final CharSequence invoke(String str2) {
                StringBuilder sb = new StringBuilder();
                sb.append('\'');
                sb.append((Object) str2);
                sb.append('\'');
                return sb.toString();
            }
        }, 30, null);
        if (webView == null) {
            return;
        }
        webView.evaluateJavascript(StringsKt__IndentKt.e("\n                javascript:(function() { \n                     window.mucang.features = new Array(" + strM0 + ");\n                   })()\n            "), null);
    }
}
