package cn.mucang.android.account;

import android.content.Context;
import android.net.Uri;
import cn.mucang.android.account.activity.SMSVerifyActivity;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.data.LoginModel;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.p001qrcode.activity.QrCodeAuthActivity;
import cn.mucang.android.core.api.verify.ErrorAction;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import f.a.a.a.activity.h;

/* JADX INFO: loaded from: classes.dex */
public class e {

    class a implements f.a.a.a.activity.c {
        a() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            Uri uri = Uri.parse(str);
            CheckType checkTypeFrom = CheckType.from(e.d(uri, "checkType"));
            if (checkTypeFrom == null) {
                checkTypeFrom = CheckType.FALSE;
            }
            String strD = e.d(uri, "from");
            boolean zBooleanValue = Boolean.valueOf(e.d(uri, "skipAuthRealName")).booleanValue();
            boolean zBooleanValue2 = Boolean.valueOf(e.d(uri, "skipBindThird")).booleanValue();
            String strD2 = e.d(uri, "pageType");
            if ("sms".equals(strD2)) {
                AccountManager.h().G(context, new LoginSmsModel(strD).setSkipAuthRealName(zBooleanValue).setSkipBindThird(zBooleanValue2));
                return true;
            }
            if ("pwd".equals(strD2)) {
                AccountManager.h().F(context, new LoginModel(checkTypeFrom, strD).setSkipAuthRealName(zBooleanValue).setSkipBindThird(zBooleanValue2));
                return true;
            }
            if ("quicklogin".equals(strD2)) {
                AccountManager.h().H(context, new LoginSmsModel(strD).setSkipAuthRealName(zBooleanValue).setSkipBindThird(zBooleanValue2));
                return true;
            }
            AccountManager.h().G(context, new LoginSmsModel(strD).setSkipAuthRealName(zBooleanValue).setSkipBindThird(zBooleanValue2));
            return true;
        }
    }

    class b extends cn.mucang.android.core.api.verify.e {
        b() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            try {
                Uri uri = Uri.parse(str);
                String queryParameter = uri.getQueryParameter("redirectUrl");
                String queryParameter2 = uri.getQueryParameter("from");
                if (AccountManager.h().l()) {
                    h.e(queryParameter);
                } else {
                    AccountManager.h().H(context, new LoginSmsModel(queryParameter2));
                }
                return true;
            } catch (Exception e2) {
                t.c("ActivityStarterRegister[Account]", e2);
                return true;
            }
        }
    }

    class c extends cn.mucang.android.core.api.verify.e {
        c() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            SMSVerifyActivity.v(context, e.d(Uri.parse(str), ErrorDialogParams.EXTRA_MESSAGE));
            return true;
        }
    }

    static /* synthetic */ boolean b(Context context, String str) {
        try {
            QrCodeAuthActivity.B(MucangConfig.getContext(), Uri.parse(str).getQueryParameter("token"));
            return true;
        } catch (Exception e2) {
            t.d("ActivityStarterRegister[Account]", e2.getMessage());
            return false;
        }
    }

    public static void c() {
        h.g("http://account.nav.mucang.cn/login", new a());
        h.g("https://account.nav.mucang.cn/scan/login", new f.a.a.a.activity.c() { // from class: cn.mucang.android.account.b
            @Override // f.a.a.a.activity.c
            public final boolean a(Context context, String str) {
                return e.b(context, str);
            }
        });
        h.g("http://core.nav.mucang.cn/checkLogin", new b());
        h.g(ErrorAction.VERIFY_SMS.url, new c());
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
