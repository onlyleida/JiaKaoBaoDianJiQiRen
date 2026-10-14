package cn.mucang.android.core.webview.protocol.bridge;

import android.app.Activity;
import cn.mucang.android.core.api.url.BasicParamsBuilder;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.identity.PrivacyDataManager;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.webview.core.MucangWebView;
import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONObject;
import com.sixents.sdk.BuildConfig;
import com.tencent.tauth.AuthActivity;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class SystemJsBridge extends k0 {
    private static final String ALERT = "/system/alert";
    private static final String CALL = "/system/call";
    private static final String CONFIRM = "/system/confirm";
    private static final String CONTROL_PRIVACY_DATA = "/system/controlPrivacyData";
    private static final String ENV = "/system/env";
    private static final String GET_CACHE = "/system/getcache";
    private static final String GET_CONFIG = "/system/getconfig";
    private static final String INFO = "/system/info";
    private static final String LOG = "/system/log";
    private static final String SET_CACHE = "/system/setcache";
    private static final String SHARED_PRE_PATH = "__js_cache_path";
    private static final String STAT = "/system/stat";
    private static final String SYSTEM_COPY = "/system/copy";
    private static final String TOAST = "/system/toast";
    private static final String VERSION = "/system/version";

    class a implements cn.mucang.android.core.webview.core.d.a {
        a(SystemJsBridge systemJsBridge) {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            String str = map.get("key");
            String str2 = map.get("value");
            if (n0.e(str)) {
                return cn.mucang.android.core.webview.core.d.f("key不能为空", 0);
            }
            if (n0.e(str2)) {
                SystemJsBridge.setCache(str, "");
            } else {
                SystemJsBridge.setCache(str, str2);
            }
            return cn.mucang.android.core.webview.core.d.k("储存成功");
        }
    }

    class b implements cn.mucang.android.core.webview.core.d.a {
        b(SystemJsBridge systemJsBridge) {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            String str = map.get("key");
            JSONObject jSONObject = new JSONObject();
            jSONObject.put("key", (Object) str);
            jSONObject.put("value", (Object) SystemJsBridge.getCache(str));
            return cn.mucang.android.core.webview.core.d.j(jSONObject, "");
        }
    }

    class c implements cn.mucang.android.core.webview.core.d.a {
        c(SystemJsBridge systemJsBridge) {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            return cn.mucang.android.core.webview.core.d.j(cn.mucang.android.core.config.s.h().e(map.get("key")), "");
        }
    }

    class d implements cn.mucang.android.core.webview.k.b.k {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f2811a;

        d(Map map) {
            this.f2811a = map;
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void a() {
            try {
                JSONObject jSONObjectBuildCallbackData = SystemJsBridge.this.buildCallbackData(Boolean.TRUE, true, 0, "");
                SystemJsBridge.this.webView.getProtocolHandler().c((String) this.f2811a.get(k0.KEY_CALLBACK_NAME), jSONObjectBuildCallbackData.toString());
                cn.mucang.android.core.webview.c.b().c(cn.mucang.android.core.utils.y.g((String) this.f2811a.get("___key_web_view_tag")), (String) this.f2811a.get(k0.KEY_CALLBACK_NAME), jSONObjectBuildCallbackData.toString());
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("默认替换", e2);
            }
        }

        @Override // cn.mucang.android.core.webview.k.b.k
        public void onCancel() {
            try {
                JSONObject jSONObjectBuildCallbackData = SystemJsBridge.this.buildCallbackData(Boolean.FALSE, true, 0, "");
                SystemJsBridge.this.webView.getProtocolHandler().c((String) this.f2811a.get(k0.KEY_CALLBACK_NAME), jSONObjectBuildCallbackData.toString());
                cn.mucang.android.core.webview.c.b().c(cn.mucang.android.core.utils.y.g((String) this.f2811a.get("___key_web_view_tag")), (String) this.f2811a.get(k0.KEY_CALLBACK_NAME), jSONObjectBuildCallbackData.toString());
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("默认替换", e2);
            }
        }
    }

    class e implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Map f2812a;

        e(Map map) {
            this.f2812a = map;
        }

        @Override // java.lang.Runnable
        public void run() {
            String str = (String) this.f2812a.get("text");
            if (n0.g(str)) {
                SystemJsBridge.this.copyString(str);
            }
        }
    }

    class f implements cn.mucang.android.core.webview.core.d.a {
        f() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            SystemJsBridge.this.callPhone(map);
            return null;
        }
    }

    class g implements cn.mucang.android.core.webview.core.d.a {
        g() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            SystemJsBridge.this.log(map);
            return null;
        }
    }

    class h implements cn.mucang.android.core.webview.core.d.a {
        h() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            SystemJsBridge.this.toast(map);
            return null;
        }
    }

    class i implements cn.mucang.android.core.webview.core.d.a {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Map f2817a;

            a(Map map) {
                this.f2817a = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                SystemJsBridge.this.showAlertDialog(this.f2817a);
            }
        }

        i() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            if (cn.mucang.android.core.utils.u.b()) {
                SystemJsBridge.this.showAlertDialog(map);
                return null;
            }
            cn.mucang.android.core.utils.u.c(new a(map));
            return null;
        }
    }

    class j implements cn.mucang.android.core.webview.core.d.a {

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Map f2819a;

            a(Map map) {
                this.f2819a = map;
            }

            @Override // java.lang.Runnable
            public void run() {
                SystemJsBridge.this.showConfirmDialog(this.f2819a);
            }
        }

        j() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            if (cn.mucang.android.core.utils.u.b()) {
                SystemJsBridge.this.showConfirmDialog(map);
                return null;
            }
            cn.mucang.android.core.utils.u.c(new a(map));
            return null;
        }
    }

    class k implements cn.mucang.android.core.webview.core.d.a {
        k(SystemJsBridge systemJsBridge) {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            return cn.mucang.android.core.webview.core.d.j(cn.mucang.android.core.webview.protocol.a.f2807a, "");
        }
    }

    class l implements cn.mucang.android.core.webview.core.d.a {
        l() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            SystemJsBridge.this.copy(map);
            return null;
        }
    }

    class m implements cn.mucang.android.core.webview.core.d.a {
        m() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            return SystemJsBridge.this.getInfo();
        }
    }

    class n implements cn.mucang.android.core.webview.core.d.a {
        n() {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            SystemJsBridge.this.stat(map);
            return null;
        }
    }

    public SystemJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
    }

    static /* synthetic */ String a(Map map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("statusBarHeight", (Object) Integer.valueOf(o0.r()));
        jSONObject.put(BuildConfig.BUILD_TYPE, (Object) Boolean.valueOf(MucangConfig.v()));
        return cn.mucang.android.core.webview.core.d.j(jSONObject, "");
    }

    static /* synthetic */ String b(Map map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("isAutoFillUserData", (Object) Boolean.valueOf(PrivacyDataManager.a()));
        return cn.mucang.android.core.webview.core.d.j(jSONObject, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void callPhone(Map<String, String> map) {
        MucangWebView mucangWebView = this.webView;
        if (mucangWebView == null) {
            return;
        }
        cn.mucang.android.core.webview.k.a.c(map, mucangWebView.getProtocolContext());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copy(Map<String, String> map) {
        cn.mucang.android.core.utils.u.c(new e(map));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void copyString(String str) {
        cn.mucang.android.core.webview.protocol.e.a.a(str);
    }

    public static String getCache(String str) {
        return cn.mucang.android.core.utils.j0.f(SHARED_PRE_PATH, str, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String getInfo() {
        MucangWebView mucangWebView = this.webView;
        if (mucangWebView == null) {
            return buildCallbackData("", true, 0, "非白名单域名").toJSONString();
        }
        if (!cn.mucang.android.core.webview.protocol.e.a.e(mucangWebView.getProtocolContext().a())) {
            return buildCallbackData("", true, 0, "非白名单域名").toJSONString();
        }
        BasicParamsBuilder basicParamsBuilderE = BasicParamsBuilder.e();
        basicParamsBuilderE.i();
        Map<String, String> mapD = basicParamsBuilderE.d();
        mapD.put("_statusBarHeight", String.valueOf(o0.r()));
        return buildCallbackData(new org.json.JSONObject(mapD).toString(), true, 0, "").toJSONString();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void log(Map<String, String> map) {
        cn.mucang.android.core.utils.t.h(map.get("tag"), map.get(ErrorDialogParams.EXTRA_MESSAGE));
    }

    public static void setCache(String str, String str2) {
        cn.mucang.android.core.utils.j0.k(SHARED_PRE_PATH, str, str2);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showAlertDialog(Map<String, String> map) {
        if (this.webView == null) {
            return;
        }
        String str = map.get(ErrorDialogParams.EXTRA_MESSAGE);
        String str2 = map.get("title");
        if (n0.e(str2)) {
            str2 = "提示";
        }
        Activity activityA = cn.mucang.android.core.utils.d.a(this.webView);
        if (activityA == null || activityA.isFinishing()) {
            return;
        }
        cn.mucang.android.core.webview.k.b.a(activityA, str, str2, null).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void showConfirmDialog(Map<String, String> map) {
        if (this.webView == null) {
            return;
        }
        String str = map.get(ErrorDialogParams.EXTRA_MESSAGE);
        String str2 = map.get("title");
        String str3 = map.get(AuthActivity.ACTION_KEY);
        String str4 = map.get("cancel");
        if (n0.f(str3)) {
            str3 = "确定";
        }
        String str5 = str3;
        String str6 = n0.f(str4) ? "取消" : str4;
        Activity activityA = cn.mucang.android.core.utils.d.a(this.webView);
        if (activityA == null || activityA.isFinishing()) {
            return;
        }
        cn.mucang.android.core.webview.k.b.c(activityA, str, str2, str5, str6, false, new d(map)).show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void stat(Map<String, String> map) {
        try {
            String str = map.get("eventId");
            String str2 = map.get("eventName");
            String str3 = map.get("properties");
            boolean z = !"1".equals(map.get("needCommon"));
            if (n0.g(str) && n0.g(str2)) {
                if (!n0.g(str3)) {
                    f.a.a.a.c.m(str, str2);
                    return;
                }
                try {
                    JSONObject object = JSON.parseObject(str3);
                    if (z) {
                        object = object.getJSONObject("common");
                    }
                    HashMap map2 = new HashMap();
                    for (Map.Entry<String, Object> entry : object.entrySet()) {
                        map2.put(entry.getKey(), entry.getValue());
                    }
                    f.a.a.a.c.n(str, str2, map2);
                } catch (Exception unused) {
                    f.a.a.a.c.m(str, str2);
                }
            }
        } catch (Exception e2) {
            cn.mucang.android.core.utils.t.c("默认替换", e2);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void toast(Map<String, String> map) {
        cn.mucang.android.core.utils.u.h(map.get(ErrorDialogParams.EXTRA_MESSAGE));
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(CALL, new f());
        this.bridge.a(LOG, new g());
        this.bridge.a(TOAST, new h());
        this.bridge.a(ALERT, new i());
        this.bridge.a(CONFIRM, new j());
        this.bridge.a(VERSION, new k(this));
        this.bridge.a(SYSTEM_COPY, new l());
        this.bridge.a(INFO, new m());
        this.bridge.a(STAT, new n());
        this.bridge.a(SET_CACHE, new a(this));
        this.bridge.a(GET_CACHE, new b(this));
        this.bridge.a(GET_CONFIG, new c(this));
        this.bridge.a(ENV, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.x
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return SystemJsBridge.a(map);
            }
        });
        this.bridge.a(CONTROL_PRIVACY_DATA, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.y
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return SystemJsBridge.b(map);
            }
        });
    }
}
