package cn.mucang.android.account.l;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.webview.core.d;
import cn.mucang.android.core.webview.core.l;
import com.alibaba.fastjson.JSON;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static a f2243a = new a();

    /* JADX INFO: renamed from: cn.mucang.android.account.l.a$a, reason: collision with other inner class name */
    class C0061a implements d.a {
        C0061a(a aVar) {
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            String str = map.get("authUser");
            if (n0.e(str)) {
                return d.f("", -1);
            }
            try {
                AccountManager.h().y((UserInfoResponse) JSON.parseObject(str, UserInfoResponse.class));
                return d.j(null, "");
            } catch (Exception unused) {
                t.h("WebProtocolManager", "web login register loinsuccess params is error");
                return d.f("", -1);
            }
        }
    }

    private a() {
    }

    public static a a() {
        return f2243a;
    }

    public void b() {
        l.d().i("/user/onLoginSuccess", new C0061a(this));
    }
}
