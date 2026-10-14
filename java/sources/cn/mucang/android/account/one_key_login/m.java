package cn.mucang.android.account.one_key_login;

import android.content.Context;
import android.text.TextUtils;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.api.data.AliSecretResponse;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.one_key_login.activity.AliOneKeyLoginPage;
import cn.mucang.android.account.p000one_key_login.model.QuickLoginModel;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.s;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import com.mobile.auth.gatewayauth.PhoneNumberAuthHelper;
import com.mobile.auth.gatewayauth.PreLoginResultListener;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.TokenResultListener;
import com.mobile.auth.gatewayauth.model.TokenRet;
import java.util.HashMap;

/* JADX INFO: loaded from: classes.dex */
public class m {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static PhoneNumberAuthHelper f2199a = null;
    private static boolean b = false;

    class a implements TokenResultListener {
        a() {
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String str) {
            boolean unused = m.b = false;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String str) {
            if (ResultCode.CODE_ERROR_ENV_CHECK_SUCCESS.equals(TokenRet.fromJson(str).getCode())) {
                boolean unused = m.b = true;
                m.a();
            }
        }
    }

    class b implements PreLoginResultListener {
        b() {
        }

        @Override // com.mobile.auth.gatewayauth.PreLoginResultListener
        public void onTokenFailed(String str, String str2) {
        }

        @Override // com.mobile.auth.gatewayauth.PreLoginResultListener
        public void onTokenSuccess(String str) {
        }
    }

    public static void a() {
        f2199a.accelerateLoginPage(5000, new b());
    }

    private static QuickLoginModel c(LoginSmsModel loginSmsModel, QuickLoginModel quickLoginModel) {
        if (loginSmsModel == null) {
            return quickLoginModel;
        }
        quickLoginModel.setExtraData(loginSmsModel.getExtraData());
        quickLoginModel.setSkipAuthRealName(loginSmsModel.isSkipAuthRealName());
        quickLoginModel.setSkipBindThird(loginSmsModel.isSkipBindThird());
        return quickLoginModel;
    }

    public static void d() {
        if (e()) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.j.f
                @Override // java.lang.Runnable
                public final void run() {
                    m.f();
                }
            });
        }
    }

    public static boolean e() {
        return s.h().d("ali_quick_login", true);
    }

    static /* synthetic */ void f() {
        try {
            AliSecretResponse aliSecretResponseC = new cn.mucang.android.account.one_key_login.api.a().c();
            if (aliSecretResponseC != null && !TextUtils.isEmpty(aliSecretResponseC.getSecret())) {
                j0.k("core_ali", "ali_secret", aliSecretResponseC.getSecret());
                if (AccountManager.h().l()) {
                    return;
                }
                PhoneNumberAuthHelper phoneNumberAuthHelper = PhoneNumberAuthHelper.getInstance(MucangConfig.getContext(), new a());
                f2199a = phoneNumberAuthHelper;
                phoneNumberAuthHelper.getReporter().setLoggerEnable(MucangConfig.v());
                f2199a.setAuthSDKInfo(aliSecretResponseC.getSecret());
                f2199a.checkEnvAvailable(2);
                return;
            }
            j0.k("core_ali", "ali_secret", "");
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static void h(String str, String str2, String str3) {
        HashMap map = new HashMap();
        if (n0.g(str2)) {
            map.put("str1", str2);
        }
        if (n0.g(str3)) {
            map.put("str2", str3);
        }
        HashMap map2 = new HashMap();
        map2.put("common", map);
        l0.b(cn.mucang.android.account.utils.a.f2250a, str, map2, 0L);
    }

    public static void i(Context context, LoginSmsModel loginSmsModel) {
        j(context, loginSmsModel, new n());
    }

    public static void j(Context context, LoginSmsModel loginSmsModel, j jVar) {
        k(context, loginSmsModel, jVar, null);
    }

    public static void k(final Context context, final LoginSmsModel loginSmsModel, final j jVar, final l lVar) {
        if (!a0.e()) {
            QuickLoginMultiProcessSupport.b(context, loginSmsModel, jVar, lVar);
            return;
        }
        if (!u.b()) {
            u.c(new Runnable() { // from class: cn.mucang.android.account.j.g
                @Override // java.lang.Runnable
                public final void run() {
                    m.k(context, loginSmsModel, jVar, lVar);
                }
            });
            return;
        }
        if (!b || !e()) {
            jVar.a(context, loginSmsModel);
            return;
        }
        String strF = j0.f("core_ali", "ali_secret", "");
        if (TextUtils.isEmpty(strF)) {
            jVar.a(context, loginSmsModel);
            return;
        }
        AliOneKeyLoginPage aliOneKeyLoginPage = AliOneKeyLoginPage.f2212a;
        QuickLoginModel quickLoginModel = new QuickLoginModel(strF);
        c(loginSmsModel, quickLoginModel);
        aliOneKeyLoginPage.u(context, quickLoginModel, loginSmsModel, jVar, lVar);
    }

    public static boolean l() {
        return b && e() && n0.g(j0.f("core_ali", "ali_secret", ""));
    }
}
