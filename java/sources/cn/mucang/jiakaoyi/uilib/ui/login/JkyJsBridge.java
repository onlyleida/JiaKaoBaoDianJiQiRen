package cn.mucang.jiakaoyi.uilib.ui.login;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.webview.core.l;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import com.iflytek.cloud.SpeechConstant;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.login.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\"\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\n\u001a\u00020\u000bH\u0007J\u0018\u0010\f\u001a\u00020\u000b2\u000e\u0010\r\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\tX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/jiakaoyi/uilib/ui/login/JkyJsBridge;", "", "()V", "JS_BRIDGE", "", "LOGIN", "PAY", "TAG", "loginCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "registerJsBridge", "", "setLoginCallback", "cb", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class JkyJsBridge {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final JkyJsBridge f9868a = new JkyJsBridge();
    private static cn.mucang.android.jiakaoyi.framework.h.b<String> b;

    /* JADX INFO: renamed from: cn.mucang.jiakaoyi.uilib.ui.login.g$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010%\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001e\u0010\u0002\u001a\u00020\u00032\u0014\u0010\u0004\u001a\u0010\u0012\u0004\u0012\u00020\u0003\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u0005H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/jiakaoyi/uilib/ui/login/JkyJsBridge$registerJsBridge$1", "Lcn/mucang/android/core/webview/core/JsBridge$JsFunction;", "call", "", SpeechConstant.PARAMS, "", "uilib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.core.webview.core.d.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void b(String authToken) {
            r.e(authToken, "$authToken");
            cn.mucang.android.jiakaoyi.framework.h.b bVar = JkyJsBridge.b;
            if (bVar == null) {
                return;
            }
            bVar.callback(authToken);
        }

        @Override // cn.mucang.android.core.webview.core.d.a
        public String a(Map<String, String> map) {
            if (map != null) {
                try {
                    final String str = map.get("authToken");
                    if (str != null) {
                        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.login.d
                            @Override // java.lang.Runnable
                            public final void run() {
                                JkyJsBridge.a.b(str);
                            }
                        });
                        String strJ = cn.mucang.android.core.webview.core.d.j(null, "");
                        r.d(strJ, "success(null, \"\")");
                        return strJ;
                    }
                } catch (Exception e2) {
                    t.e("JkyJsBridge", "registerJsBridge", e2);
                }
            }
            String strJ2 = cn.mucang.android.core.webview.core.d.j(null, "");
            r.d(strJ2, "success(null, \"\")");
            return strJ2;
        }
    }

    private JkyJsBridge() {
    }

    public static final void c() {
        cn.mucang.android.core.webview.core.d dVar = new cn.mucang.android.core.webview.core.d("jky.luban.mucang.cn");
        dVar.a("/user/login", new a());
        dVar.a("/pay/success", new cn.mucang.android.core.webview.core.d.a() { // from class: cn.mucang.jiakaoyi.uilib.ui.login.c
            @Override // cn.mucang.android.core.webview.core.d.a
            public final String a(Map map) {
                return JkyJsBridge.d(map);
            }
        });
        l.d().h(dVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final String d(Map map) {
        LiveBus.c(new PaySuccess());
        return cn.mucang.android.core.webview.core.d.j(null, "");
    }

    public static final void e(cn.mucang.android.jiakaoyi.framework.h.b<String> bVar) {
        b = bVar;
    }
}
