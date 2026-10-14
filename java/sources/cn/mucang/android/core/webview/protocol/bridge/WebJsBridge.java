package cn.mucang.android.core.webview.protocol.bridge;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.webview.HTML5Activity;
import cn.mucang.android.core.webview.HtmlExtra;
import cn.mucang.android.core.webview.MenuOptions;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.core.webview.core.page.AsteroidManager;
import com.alibaba.fastjson.JSON;
import com.mobile.auth.gatewayauth.Constant;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class WebJsBridge extends k0 {
    public static final String ACTION_SHOW_MENU_DIALOG = "cn.mucang.android.web.SHOW_MENU_DIALOG";
    public static final String ACTION_UPDATE_WEBVIEW_CONFIG = "cn.mucang.android.web.WEB_SETTING";
    private static final String BACK = "/web/back";
    private static final String CLOSE = "/web/close";
    public static final String EXTRA_CURRENT_WEBVIEW_ID = "__extra_current_webivew_id";
    private static final String INTERCEPT_CLOSE = "/web/requestInterceptClose";
    private static final String MENU = "/web/menu";
    private static final String OPEN = "/web/open";
    private static final String SAFE_AREA_INSET = "/web/getSafeAreaInset";
    private static final String SETTING = "/web/setting";
    private static final String SET_STATUS_BAR_THEME = "/web/setStatusBarTheme";

    public WebJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
    }

    private String back() {
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.core.webview.protocol.bridge.z
            @Override // java.lang.Runnable
            public final void run() {
                this.f2889a.m();
            }
        });
        return null;
    }

    private String close() {
        Context context = this.webView.getContext();
        if (!(context instanceof Activity)) {
            return null;
        }
        ((Activity) context).finish();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String e(Map map) {
        return back();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String g(Map map) {
        return close();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String i(Map map) {
        return menu();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String k(Map map) {
        this.webView.setInterceptClose(true);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m() {
        if (this.webView.canGoBack()) {
            this.webView.goBack();
        } else {
            close();
        }
    }

    private String menu() {
        Intent intent = new Intent(ACTION_SHOW_MENU_DIALOG);
        intent.putExtra(EXTRA_CURRENT_WEBVIEW_ID, this.webView.hashCode());
        androidx.localbroadcastmanager.a.a.b(MucangConfig.getContext()).d(intent);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String open(Map<String, String> map) {
        if (map == null) {
            return null;
        }
        String str = map.get("url");
        if (n0.e(str) || f.a.a.a.activity.h.f(str, false)) {
            return null;
        }
        if (cn.mucang.android.core.webview.core.page.e.h(str)) {
            AsteroidManager.d().h(MucangConfig.getContext(), str);
            return null;
        }
        String str2 = map.get(Constant.PROTOCOL_WEBVIEW_ORIENTATION);
        boolean zK = cn.mucang.android.core.webview.protocol.e.a.k(map.get("titleBar"), true);
        String str3 = map.get("title");
        String str4 = map.get("button");
        String str5 = map.get("menu");
        boolean zK2 = cn.mucang.android.core.webview.protocol.e.a.k(map.get("async"), true);
        boolean zK3 = cn.mucang.android.core.webview.protocol.e.a.k(str5, true);
        String str6 = map.get("httpHeader");
        boolean zEquals = "1".equals(map.get("closeCurrent"));
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.J(str);
        bVar.L(zK);
        bVar.I(str3);
        bVar.E(str2);
        bVar.B(MenuOptions.form(str4));
        bVar.K(zK3);
        bVar.D(zK2);
        bVar.A(n0.e(str6) ? null : (Map) JSON.parseObject(str6, Map.class));
        HTML5Activity.i(this.webView.getContext(), bVar.y());
        if (zEquals && (this.webView.getContext() instanceof Activity)) {
            ((Activity) this.webView.getContext()).finish();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String safeInset(Map<String, String> map) {
        HashMap map2 = new HashMap();
        map2.put("top", o0.r() + "");
        return cn.mucang.android.core.webview.core.d.j(map2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String setStatusBarTheme(Map<String, String> map) {
        final Activity activityI = MucangConfig.i();
        if (activityI != null && !cn.mucang.android.core.utils.d.d(activityI)) {
            final boolean zEquals = "dark".equals(map.get("theme"));
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.core.webview.protocol.bridge.i0
                @Override // java.lang.Runnable
                public final void run() {
                    o0.z(zEquals, activityI);
                }
            });
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String webSetting(Map<String, String> map) {
        String str = map.get("title");
        String str2 = map.get(Constant.PROTOCOL_WEBVIEW_ORIENTATION);
        String str3 = map.get("titleBar");
        boolean zEquals = "true".equals(map.get("noTopInset"));
        Intent intent = new Intent(ACTION_UPDATE_WEBVIEW_CONFIG);
        boolean zK = n0.g(str3) ? cn.mucang.android.core.webview.protocol.e.a.k(str3, true) : true;
        String str4 = map.get("button");
        boolean zK2 = cn.mucang.android.core.webview.protocol.e.a.k(map.get("menu"), true);
        HtmlExtra.b bVar = new HtmlExtra.b();
        bVar.I(str);
        bVar.E(str2);
        bVar.L(zK);
        bVar.B(MenuOptions.form(str4));
        bVar.K(zK2);
        bVar.C(zEquals);
        intent.putExtra("__core__extra_html__", bVar.y());
        intent.putExtra(EXTRA_CURRENT_WEBVIEW_ID, this.webView.hashCode());
        androidx.localbroadcastmanager.a.a.b(this.webView.getContext()).d(intent);
        return null;
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(OPEN, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.a0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2824a.open(map);
            }
        });
        this.bridge.a(SETTING, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.c0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2828a.webSetting(map);
            }
        });
        this.bridge.a(BACK, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.f0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2834a.e(map);
            }
        });
        this.bridge.a(CLOSE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.e0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2832a.g(map);
            }
        });
        this.bridge.a(MENU, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.b0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2826a.i(map);
            }
        });
        this.bridge.a(SAFE_AREA_INSET, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.h0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2838a.safeInset(map);
            }
        });
        this.bridge.a(SET_STATUS_BAR_THEME, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.d0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2830a.setStatusBarTheme(map);
            }
        });
        this.bridge.a(INTERCEPT_CLOSE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.g0
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2836a.k(map);
            }
        });
    }
}
