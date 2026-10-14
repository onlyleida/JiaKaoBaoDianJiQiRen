package cn.mucang.android.core.webview.client;

import android.app.Activity;
import android.net.Uri;
import android.view.View;
import android.webkit.GeolocationPermissions;
import android.webkit.JsPromptResult;
import android.webkit.JsResult;
import android.webkit.PermissionRequest;
import android.webkit.ValueCallback;
import android.webkit.WebChromeClient;
import android.webkit.WebView;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.core.utils.z;
import cn.mucang.android.core.webview.HtmlExtra;
import cn.mucang.android.core.webview.core.k;
import cn.mucang.android.core.webview.core.m;
import cn.mucang.android.core.webview.core.n;
import cn.mucang.android.core.webview.core.p;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes.dex */
public class e extends WebChromeClient {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<m> f2698a = new ArrayList();
    private p b;

    class a implements cn.mucang.android.core.webview.k.b.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsResult f2699a;

        a(e eVar, JsResult jsResult) {
            this.f2699a = jsResult;
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void a() {
            this.f2699a.confirm();
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void onCancel() {
            this.f2699a.cancel();
        }
    }

    class b implements cn.mucang.android.core.webview.k.b.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsResult f2700a;

        b(e eVar, JsResult jsResult) {
            this.f2700a = jsResult;
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void a() {
            this.f2700a.confirm();
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void onCancel() {
            this.f2700a.cancel();
        }
    }

    class c implements cn.mucang.android.core.webview.k.b.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ JsPromptResult f2701a;

        c(e eVar, JsPromptResult jsPromptResult) {
            this.f2701a = jsPromptResult;
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void a() {
            this.f2701a.confirm();
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void onCancel() {
            this.f2701a.cancel();
        }
    }

    class d implements cn.mucang.android.core.webview.k.b.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ GeolocationPermissions.Callback f2702a;
        final /* synthetic */ String b;

        d(e eVar, GeolocationPermissions.Callback callback, String str) {
            this.f2702a = callback;
            this.b = str;
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void a() {
            this.f2702a.invoke(this.b, true, true);
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void onCancel() {
            this.f2702a.invoke(this.b, false, false);
        }
    }

    static /* synthetic */ void b(GeolocationPermissions.Callback callback, String str, PermissionsResult permissionsResult) {
        if (permissionsResult == null || !permissionsResult.getGrantedAll()) {
            callback.invoke(str, false, false);
        } else {
            callback.invoke(str, true, true);
        }
    }

    private boolean e(Activity activity) {
        p pVar;
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        return activity.getClass().isAnnotationPresent(k.class) || ((pVar = this.b) != null && pVar.needShowAlertOnOtherActivity());
    }

    public void a(m mVar) {
        if (mVar == null || this.f2698a.contains(mVar)) {
            return;
        }
        this.f2698a.add(mVar);
    }

    @Deprecated
    public void c(m mVar) {
        a(mVar);
    }

    public void d(p pVar) {
        this.b = pVar;
    }

    @Override // android.webkit.WebChromeClient
    public void onGeolocationPermissionsShowPrompt(final String str, final GeolocationPermissions.Callback callback) {
        Activity activityI = MucangConfig.i();
        if (!e(activityI)) {
            super.onGeolocationPermissionsShowPrompt(str, callback);
            return;
        }
        HtmlExtra htmlExtraG = null;
        for (m mVar : this.f2698a) {
            if ((mVar instanceof n) && (htmlExtraG = ((n) mVar).g()) != null) {
                break;
            }
        }
        if (!z.b("android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION") && htmlExtraG != null && htmlExtraG.isSupportNativeRequestLocation()) {
            z.d(activityI, new f.a.a.a.p009n.c.a() { // from class: cn.mucang.android.core.webview.client.a
                @Override // f.a.a.a.p009n.c.a
                public final void permissionsResult(PermissionsResult permissionsResult) {
                    e.b(callback, str, permissionsResult);
                }
            }, "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_FINE_LOCATION");
            return;
        }
        cn.mucang.android.core.webview.k.b.c(activityI, str + "想要使用您的手机的位置信息。", "温馨提示", "允许", "拒绝", false, new d(this, callback, str)).show();
    }

    @Override // android.webkit.WebChromeClient
    public void onHideCustomView() {
        Iterator<m> it = this.f2698a.iterator();
        while (it.hasNext()) {
            it.next().o();
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsAlert(WebView webView, String str, String str2, JsResult jsResult) {
        Activity activityA = cn.mucang.android.core.utils.d.a(webView);
        if (!e(activityA)) {
            return super.onJsAlert(webView, str, str2, jsResult);
        }
        cn.mucang.android.core.webview.k.b.a(activityA, str2, "提示", new a(this, jsResult)).show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsConfirm(WebView webView, String str, String str2, JsResult jsResult) {
        Activity activityA = cn.mucang.android.core.utils.d.a(webView);
        if (!e(activityA)) {
            return super.onJsConfirm(webView, str, str2, jsResult);
        }
        cn.mucang.android.core.webview.k.b.c(activityA, str2, "", "确定", "取消", false, new b(this, jsResult)).show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public boolean onJsPrompt(WebView webView, String str, String str2, String str3, JsPromptResult jsPromptResult) {
        Activity activityA = cn.mucang.android.core.utils.d.a(webView);
        if (!e(activityA)) {
            return super.onJsPrompt(webView, str, str2, str3, jsPromptResult);
        }
        cn.mucang.android.core.webview.k.b.b(activityA, str2, str3, "确定", "取消", new c(this, jsPromptResult)).show();
        return true;
    }

    @Override // android.webkit.WebChromeClient
    public void onPermissionRequest(PermissionRequest permissionRequest) {
        String[] resources = permissionRequest.getResources();
        if (resources != null) {
            ArrayList arrayList = new ArrayList();
            for (String str : resources) {
                if ("android.webkit.resource.AUDIO_CAPTURE".equals(str) && !z.a("android.permission.RECORD_AUDIO")) {
                    arrayList.add("android.permission.RECORD_AUDIO");
                } else if ("android.webkit.resource.VIDEO_CAPTURE".equals(str) && !z.a("android.permission.CAMERA")) {
                    arrayList.add("android.permission.CAMERA");
                }
            }
            if (!arrayList.isEmpty()) {
                permissionRequest.deny();
                return;
            }
        }
        permissionRequest.grant(resources);
    }

    @Override // android.webkit.WebChromeClient
    public void onProgressChanged(WebView webView, int i) {
        Iterator<m> it = this.f2698a.iterator();
        while (it.hasNext()) {
            it.next().n(webView, i);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onReceivedTitle(WebView webView, String str) {
        Iterator<m> it = this.f2698a.iterator();
        while (it.hasNext()) {
            it.next().l(str);
        }
    }

    @Override // android.webkit.WebChromeClient
    public void onShowCustomView(View view, WebChromeClient.CustomViewCallback customViewCallback) {
        Iterator<m> it = this.f2698a.iterator();
        while (it.hasNext()) {
            it.next().b(view, customViewCallback);
        }
    }

    @Override // android.webkit.WebChromeClient
    public boolean onShowFileChooser(WebView webView, ValueCallback<Uri[]> valueCallback, WebChromeClient.FileChooserParams fileChooserParams) {
        Iterator<m> it = this.f2698a.iterator();
        while (it.hasNext()) {
            if (it.next().q(webView, valueCallback, fileChooserParams)) {
                return true;
            }
        }
        return super.onShowFileChooser(webView, valueCallback, fileChooserParams);
    }
}
