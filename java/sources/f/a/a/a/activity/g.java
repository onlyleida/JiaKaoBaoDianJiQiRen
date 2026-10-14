package f.a.a.a.activity;

import android.app.Activity;
import android.content.ActivityNotFoundException;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.mucang.android.core.api.verify.ErrorAction;
import cn.mucang.android.core.api.verify.ErrorDialogActivity;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.api.verify.GeetestVerifyActivity;
import cn.mucang.android.core.api.verify.captcha.CaptchaVerifyActivity;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class g {

    class a extends cn.mucang.android.core.api.verify.e {
        a() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            GeetestVerifyActivity.i(context);
            return true;
        }
    }

    class b extends cn.mucang.android.core.api.verify.e {
        b() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            CaptchaVerifyActivity.launch(context, str);
            return true;
        }
    }

    class c implements f.a.a.a.activity.c {
        c() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            Uri uri = Uri.parse(str);
            ErrorDialogParams.b bVar = new ErrorDialogParams.b();
            bVar.q(g.d(uri, "title"));
            bVar.n(g.d(uri, ErrorDialogParams.EXTRA_MESSAGE));
            bVar.p(g.d(uri, ErrorDialogParams.EXTRA_OK_BUTTON));
            bVar.o(g.d(uri, ErrorDialogParams.EXTRA_OK_ACTION));
            bVar.k(g.d(uri, ErrorDialogParams.EXTRA_CANCEL_BUTTON));
            bVar.j(g.d(uri, ErrorDialogParams.EXTRA_CANCEL_ACTION));
            bVar.m(g.d(uri, ErrorDialogParams.EXTRA_COUNT_DOWN_ACTION));
            try {
                bVar.l(Long.parseLong(g.d(uri, ErrorDialogParams.EXTRA_COUNT_DOWN)));
            } catch (NumberFormatException unused) {
            }
            ErrorDialogActivity.m(context, bVar.i());
            return true;
        }
    }

    class d implements f.a.a.a.activity.c {
        d() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            Uri uri = Uri.parse(str);
            String queryParameter = uri.getQueryParameter("app");
            String queryParameter2 = uri.getQueryParameter("fallbackUrl");
            if (queryParameter != null && queryParameter.startsWith("hap://")) {
                try {
                    Intent intent = new Intent("android.intent.action.VIEW");
                    intent.setData(Uri.parse(queryParameter));
                    if (!(context instanceof Activity)) {
                        intent.addFlags(268435456);
                    }
                    context.startActivity(intent);
                    return true;
                } catch (Exception e2) {
                    t.c("ActivityStarterRegister[Core]", e2);
                }
            }
            if (n0.g(queryParameter2)) {
                return h.e(queryParameter2);
            }
            return false;
        }
    }

    class e implements f.a.a.a.activity.c {
        e() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            try {
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter("packageName");
                String queryParameter2 = uri.getQueryParameter("className");
                String queryParameter3 = uri.getQueryParameter("param");
                String queryParameter4 = uri.getQueryParameter("fallbackUrl");
                if (o0.b(queryParameter)) {
                    Intent intent = new Intent();
                    if (n0.g(queryParameter2)) {
                        intent.setClassName(queryParameter, queryParameter2);
                    } else {
                        intent.setPackage(queryParameter);
                    }
                    intent.putExtras(cn.mucang.android.core.utils.d.i(queryParameter3));
                    intent.addFlags(268435456);
                    try {
                        context.startActivity(intent);
                    } catch (ActivityNotFoundException unused) {
                        if (n0.g(queryParameter4)) {
                            h.d(context, queryParameter4, true);
                        }
                    }
                } else if (n0.g(queryParameter4)) {
                    h.d(context, queryParameter4, true);
                }
                return true;
            } catch (Exception e2) {
                t.c("默认替换", e2);
                return false;
            }
        }
    }

    static /* synthetic */ boolean b(Context context, String str) {
        o0.y(context);
        return true;
    }

    public static void c() {
        h.g(ErrorAction.VERIFY_GEETEST.url, new a());
        h.g(ErrorAction.VERIFY_CAPTCHA.url, new b());
        h.g(ErrorAction.DIALOG_DEFAULT.url, new c());
        h.g("http://system.nav.mucang.cn/notification-setting", new f.a.a.a.activity.c() { // from class: f.a.a.a.i.a
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return g.b(context, str);
            }
        });
        h.g("http://core.nav.mucang.cn/openQuickApp", new d());
        h.g("http://app.nav.mucang.cn/open", new e());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static String d(Uri uri, String str) {
        if (uri == null) {
            return null;
        }
        try {
            return uri.getQueryParameter(str);
        } catch (Exception unused) {
            return "";
        }
    }
}
