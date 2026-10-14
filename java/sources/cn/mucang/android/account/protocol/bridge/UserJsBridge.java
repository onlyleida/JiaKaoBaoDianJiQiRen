package cn.mucang.android.account.protocol.bridge;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.account.data.LoginModel;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.one_key_login.h;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.webview.core.MucangWebView;
import cn.mucang.android.core.webview.protocol.bridge.j0;
import cn.mucang.android.core.webview.protocol.bridge.k0;
import com.alibaba.fastjson.JSONObject;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class UserJsBridge extends k0 {
    private static final String GET = "/user/get";
    private static final String LOGIN = "/user/login";
    private static final String LOGOUT = "/user/logout";
    private static final String NUM_AUTH = "/user/numAuth";
    private static final String QUICK_LOGIN_AVAILABLE = "/user/quickLoginAvailable";
    private static final String TYPE_FIRST_ONE_KEY = "quicklogin";
    private static final String TYPE_NORMAL = "third";
    private static final String TYPE_PWD = "pwd";
    private static final String TYPE_SMS = "sms";
    private String callbackName;
    private cn.mucang.android.account.i.c listener;

    class a implements cn.mucang.android.account.i.c {
        a() {
        }

        @Override // cn.mucang.android.account.i.c
        public void a() {
        }

        @Override // cn.mucang.android.account.i.c
        public void b(AuthUser authUser) {
        }

        @Override // cn.mucang.android.account.i.c
        public void c(AuthUser authUser) {
        }

        @Override // cn.mucang.android.account.i.c
        public void d(AuthUser authUser) {
            if (UserJsBridge.this.callbackName != null) {
                ((j0) UserJsBridge.this).webView.getProtocolHandler().c(UserJsBridge.this.callbackName, UserJsBridge.this.userGet());
                UserJsBridge.this.callbackName = null;
            }
        }

        @Override // cn.mucang.android.account.i.c
        public void e(AuthUser authUser) {
            if (UserJsBridge.this.callbackName != null) {
                ((j0) UserJsBridge.this).webView.getProtocolHandler().c(UserJsBridge.this.callbackName, UserJsBridge.this.userGet());
                UserJsBridge.this.callbackName = null;
            }
        }
    }

    public UserJsBridge(MucangWebView mucangWebView, cn.mucang.android.core.webview.core.d dVar) {
        super(mucangWebView, dVar);
        this.callbackName = null;
        this.listener = new a();
        AccountManager.h().c(this.listener);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Code duplicated, block: B:15:0x004c  */
    /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String b(Map map) {
        String str;
        boolean zK;
        String str2;
        boolean zK2;
        this.callbackName = (String) map.get(k0.KEY_CALLBACK_NAME);
        try {
            zK = cn.mucang.android.core.webview.protocol.e.a.k((String) map.get("skipBindThird"), false);
            try {
                str = (String) map.get("pageType");
                try {
                    str2 = (String) map.get("from");
                    zK2 = cn.mucang.android.core.webview.protocol.e.a.k((String) map.get("skipAuthRealName"), false);
                } catch (Exception unused) {
                    str2 = "";
                    zK2 = false;
                }
            } catch (Exception unused2) {
                str = null;
            }
        } catch (Exception unused3) {
            str = null;
            zK = false;
        }
        if (str == null) {
            str = TYPE_NORMAL;
        }
        str.hashCode();
        switch (str) {
            case "pwd":
                AccountManager.h().F(MucangConfig.i(), new LoginModel(CheckType.FALSE, str2).setSkipAuthRealName(zK2).setSkipBindThird(zK));
                return null;
            case "sms":
                AccountManager.h().G(MucangConfig.i(), new LoginSmsModel(str2).setSkipAuthRealName(zK2).setSkipBindThird(zK));
                return null;
            case "third":
                AccountManager.h().G(MucangConfig.i(), new LoginSmsModel(str2).setSkipAuthRealName(zK2).setSkipBindThird(zK));
                return null;
            case "quicklogin":
                AccountManager.h().H(MucangConfig.i(), new LoginSmsModel(str2).setSkipAuthRealName(zK2).setSkipBindThird(zK));
                return null;
            default:
                AccountManager.h().G(MucangConfig.i(), new LoginSmsModel(str2).setSkipAuthRealName(zK2).setSkipBindThird(zK));
                return null;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String d(Map map) {
        this.callbackName = (String) map.get(k0.KEY_CALLBACK_NAME);
        return userGet();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String f(Map map) {
        this.callbackName = (String) map.get(k0.KEY_CALLBACK_NAME);
        AccountManager.h().m();
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h(String str, String str2) {
        this.webView.getProtocolHandler().c(str, cn.mucang.android.core.webview.core.d.j(str2, ""));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String j(Map map) {
        String str = (String) map.get("phoneNum");
        final String str2 = (String) map.get(k0.KEY_CALLBACK_NAME);
        AccountManager.h().u(str, new h() { // from class: cn.mucang.android.account.protocol.bridge.a
            @Override // cn.mucang.android.account.one_key_login.h
            public final void a(String str3) {
                this.f2257a.h(str2, str3);
            }
        });
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ String l(Map map) {
        this.webView.getProtocolHandler().c((String) map.get(k0.KEY_CALLBACK_NAME), AccountManager.h().v() ? cn.mucang.android.core.webview.core.d.k("") : cn.mucang.android.core.webview.core.d.f("", -1));
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public String userGet() {
        JSONObject jSONObject = new JSONObject();
        if (AccountManager.h().g() != null) {
            buildCallbackData(jSONObject, AccountManager.h().g(), true, 0, "");
        } else {
            buildCallbackData(jSONObject, null, false, 0, "");
        }
        return jSONObject.toString();
    }

    @Override // cn.mucang.android.core.webview.protocol.bridge.k0
    protected void addFunction() {
        this.bridge.a(LOGIN, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.protocol.bridge.f
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2262a.b(map);
            }
        });
        this.bridge.a(GET, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.protocol.bridge.e
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2261a.d(map);
            }
        });
        this.bridge.a(LOGOUT, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.protocol.bridge.d
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2260a.f(map);
            }
        });
        this.bridge.a(NUM_AUTH, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.protocol.bridge.c
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2259a.j(map);
            }
        });
        this.bridge.a(QUICK_LOGIN_AVAILABLE, new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.android.account.protocol.bridge.b
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return this.f2258a.l(map);
            }
        });
    }
}
