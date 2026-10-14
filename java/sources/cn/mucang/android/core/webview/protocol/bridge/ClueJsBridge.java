package cn.mucang.android.core.webview.protocol.bridge;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.webview.core.MucangWebView;
import com.alibaba.fastjson.JSONObject;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class ClueJsBridge extends k0 {
    private static final String GET = "/clue/get";

    @Deprecated
    private static final String GET_NAME = "/clue/getName";

    @Deprecated
    private static final String GET_PHONE = "/clue/getPhone";

    @Deprecated
    private static final String SAVE_NAME = "/clue/saveName";

    @Deprecated
    private static final String SAVE_NAME_AND_PHONE = "/clue/saveNameAndPhone";

    @Deprecated
    private static final String SAVE_PHONE = "/clue/savePhone";
    private static final String SET = "/clue/set";

    public ClueJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String b(Map map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constant.PROTOCOL_WEBVIEW_NAME, (Object) f.a.a.a.k.a.a().b(this.webView.getContext()));
        jSONObject.put("phone", (Object) f.a.a.a.k.a.a().c(this.webView.getContext()));
        return cn.mucang.android.core.webview.core.d.j(jSONObject, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String d(Map map) {
        String str = (String) map.get(Constant.PROTOCOL_WEBVIEW_NAME);
        String str2 = (String) map.get("phone");
        if (n0.g(str) && n0.g(str2)) {
            f.a.a.a.k.a.a().g(this.webView.getContext(), str, str2);
            return null;
        }
        if (n0.g(str)) {
            f.a.a.a.k.a.a().e(this.webView.getContext(), str);
            return null;
        }
        if (!n0.g(str2)) {
            return null;
        }
        f.a.a.a.k.a.a().f(this.webView.getContext(), str2);
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String f(Map map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put(Constant.PROTOCOL_WEBVIEW_NAME, (Object) f.a.a.a.k.a.a().b(this.webView.getContext()));
        return cn.mucang.android.core.webview.core.d.j(jSONObject, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String h(Map map) {
        JSONObject jSONObject = new JSONObject();
        jSONObject.put("phone", (Object) f.a.a.a.k.a.a().c(this.webView.getContext()));
        return cn.mucang.android.core.webview.core.d.j(jSONObject, "");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String j(Map map) {
        f.a.a.a.k.a.a().e(this.webView.getContext(), (String) map.get(Constant.PROTOCOL_WEBVIEW_NAME));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String l(Map map) {
        f.a.a.a.k.a.a().f(this.webView.getContext(), (String) map.get("phone"));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String n(Map map) {
        f.a.a.a.k.a.a().g(this.webView.getContext(), (String) map.get(Constant.PROTOCOL_WEBVIEW_NAME), (String) map.get("phone"));
        return null;
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(GET, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.d
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2829a.b(map);
            }
        });
        this.bridge.a(SET, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.f
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2833a.d(map);
            }
        });
        this.bridge.a(GET_NAME, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.b
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2825a.f(map);
            }
        });
        this.bridge.a(GET_PHONE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.g
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2835a.h(map);
            }
        });
        this.bridge.a(SAVE_NAME, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.e
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2831a.j(map);
            }
        });
        this.bridge.a(SAVE_PHONE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.a
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2823a.l(map);
            }
        });
        this.bridge.a(SAVE_NAME_AND_PHONE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.core.webview.protocol.bridge.c
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2827a.n(map);
            }
        });
    }
}
