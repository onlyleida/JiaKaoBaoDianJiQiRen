package cn.mucang.android.account.one_key_login;

import android.text.TextUtils;
import cn.mucang.android.account.api.data.NumAuthResponse;
import cn.mucang.android.account.one_key_login.api.NumAuthApi;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.j0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import com.google.android.gms.common.internal.ServiceSpecificExtraArgs;
import com.mobile.auth.gatewayauth.PhoneNumberAuthHelper;
import com.mobile.auth.gatewayauth.PnsReporter;
import com.mobile.auth.gatewayauth.ResultCode;
import com.mobile.auth.gatewayauth.TokenResultListener;
import com.mobile.auth.gatewayauth.model.TokenRet;
import kotlin.Metadata;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.account.j.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u000b\u001a\u00020\f2\b\u0010\r\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\b\u0010\u0011\u001a\u00020\fH\u0007J\u0018\u0010\u0012\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u00062\u0006\u0010\u000f\u001a\u00020\u0010H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/account/one_key_login/NumberAuthUtils;", "", "()V", "MAX_TIME_OUT", "", "TAG", "", "isAvailable", "", "mPhoneNumberAuthHelper", "Lcom/mobile/auth/gatewayauth/PhoneNumberAuthHelper;", "getResultWithToken", "", "token", "phoneNumber", ServiceSpecificExtraArgs.CastExtraArgs.LISTENER, "Lcn/mucang/android/account/one_key_login/INumAuthResultListener;", "initNumAuth", "numberAuth", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class NumberAuthUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final NumberAuthUtils f2194a = new NumberAuthUtils();
    private static boolean b = true;
    private static PhoneNumberAuthHelper c;

    /* JADX INFO: renamed from: cn.mucang.android.account.j.i$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/account/one_key_login/NumberAuthUtils$initNumAuth$1$1", "Lcom/mobile/auth/gatewayauth/TokenResultListener;", "onTokenFailed", "", "p0", "", "onTokenSuccess", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements TokenResultListener {
        a() {
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String p0) {
            r.e(p0, "p0");
            NumberAuthUtils numberAuthUtils = NumberAuthUtils.f2194a;
            NumberAuthUtils.b = false;
            t.d("number_auth", r.m("checkEnvAvailable-failed: ", p0));
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String p0) {
            r.e(p0, "p0");
            t.h("number_auth", r.m("checkEnvAvailable-success: ", p0));
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.account.j.i$b */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0002\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016J\u0010\u0010\u0006\u001a\u00020\u00032\u0006\u0010\u0004\u001a\u00020\u0005H\u0016¨\u0006\u0007"}, d2 = {"cn/mucang/android/account/one_key_login/NumberAuthUtils$numberAuth$tokenResultListener$1", "Lcom/mobile/auth/gatewayauth/TokenResultListener;", "onTokenFailed", "", "s", "", "onTokenSuccess", "account_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements TokenResultListener {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f2195a;
        final /* synthetic */ h b;

        b(String str, h hVar) {
            this.f2195a = str;
            this.b = hVar;
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenFailed(String s) {
            r.e(s, "s");
            t.d("number_auth", r.m("获取token失败：", s));
            this.b.a(ResultCode.MSG_GET_TOKEN_FAIL);
        }

        @Override // com.mobile.auth.gatewayauth.TokenResultListener
        public void onTokenSuccess(String s) {
            r.e(s, "s");
            try {
                TokenRet tokenRetFromJson = TokenRet.fromJson(s);
                if (r.a("600000", tokenRetFromJson.getCode()) && !TextUtils.isEmpty(tokenRetFromJson.getToken())) {
                    NumberAuthUtils.f2194a.d(tokenRetFromJson.getToken(), this.f2195a, this.b);
                }
                PhoneNumberAuthHelper phoneNumberAuthHelper = NumberAuthUtils.c;
                if (phoneNumberAuthHelper == null) {
                    return;
                }
                phoneNumberAuthHelper.setAuthListener(null);
            } catch (Exception e2) {
                e2.printStackTrace();
                this.b.a("ERROR");
            }
        }
    }

    private NumberAuthUtils() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void d(final String str, final String str2, final h hVar) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.j.c
            @Override // java.lang.Runnable
            public final void run() {
                NumberAuthUtils.e(str, str2, hVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void e(String str, String phoneNumber, final h listener) {
        T t;
        String str2 = "ERROR";
        r.e(phoneNumber, "$phoneNumber");
        r.e(listener, "$listener");
        final Ref$ObjectRef ref$ObjectRef = new Ref$ObjectRef();
        try {
            NumAuthResponse numAuthResponseB = new NumAuthApi().b(str, phoneNumber);
            if (numAuthResponseB == null) {
                t = str2;
            } else {
                String verifyResult = numAuthResponseB.getVerifyResult();
                if (verifyResult != null) {
                    t = str2;
                    t = verifyResult;
                }
            }
        } catch (Exception e2) {
            t.d("NumberAuthUtils", e2.getMessage());
            t = str2;
        }
        t = str2;
        ref$ObjectRef.element = t;
        u.c(new Runnable() { // from class: cn.mucang.android.account.j.a
            @Override // java.lang.Runnable
            public final void run() {
                NumberAuthUtils.f(listener, ref$ObjectRef);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void f(h listener, Ref$ObjectRef result) {
        r.e(listener, "$listener");
        r.e(result, "$result");
        listener.a((String) result.element);
    }

    public static final void g() {
        if (m.e()) {
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.account.j.b
                @Override // java.lang.Runnable
                public final void run() {
                    NumberAuthUtils.h();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h() {
        PnsReporter reporter;
        try {
            String strF = j0.f("core_ali", "ali_secret", "");
            if (strF == null || strF.length() == 0) {
                strF = new cn.mucang.android.account.one_key_login.api.a().c().getSecret();
            }
            if (strF == null || strF.length() == 0) {
                b = false;
                return;
            }
            PhoneNumberAuthHelper phoneNumberAuthHelper = PhoneNumberAuthHelper.getInstance(MucangConfig.getContext(), new a());
            c = phoneNumberAuthHelper;
            if (phoneNumberAuthHelper != null && (reporter = phoneNumberAuthHelper.getReporter()) != null) {
                reporter.setLoggerEnable(MucangConfig.v());
            }
            PhoneNumberAuthHelper phoneNumberAuthHelper2 = c;
            if (phoneNumberAuthHelper2 != null) {
                phoneNumberAuthHelper2.setAuthSDKInfo(strF);
            }
            PhoneNumberAuthHelper phoneNumberAuthHelper3 = c;
            if (phoneNumberAuthHelper3 == null) {
                return;
            }
            phoneNumberAuthHelper3.checkEnvAvailable(1);
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static final void l(String phoneNumber, h listener) {
        r.e(phoneNumber, "phoneNumber");
        r.e(listener, "listener");
        if (!b || !m.e()) {
            t.d("number_auth", "号码认证不可用");
            listener.a("号码认证不可用");
            return;
        }
        b bVar = new b(phoneNumber, listener);
        PhoneNumberAuthHelper phoneNumberAuthHelper = c;
        if (phoneNumberAuthHelper != null) {
            phoneNumberAuthHelper.setAuthListener(bVar);
        }
        PhoneNumberAuthHelper phoneNumberAuthHelper2 = c;
        if (phoneNumberAuthHelper2 == null) {
            return;
        }
        phoneNumberAuthHelper2.getVerifyToken(5000);
    }
}
