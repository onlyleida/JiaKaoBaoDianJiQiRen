package cn.mucang.android.account;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.content.SharedPreferences;
import android.text.TextUtils;
import cn.mucang.android.account.activity.ChangePhoneTransferActivity;
import cn.mucang.android.account.activity.LoginActivity;
import cn.mucang.android.account.activity.LoginMultiDefaultSmsActivity;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.api.data.Gender;
import cn.mucang.android.account.api.data.UpdateUserInfo;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.account.data.LoginModel;
import cn.mucang.android.account.data.LoginSmsModel;
import cn.mucang.android.account.data.WeChatUserEntity;
import cn.mucang.android.account.g.o;
import cn.mucang.android.account.one_key_login.NumberAuthUtils;
import cn.mucang.android.account.one_key_login.QuickLoginMultiProcessSupport;
import cn.mucang.android.account.one_key_login.h;
import cn.mucang.android.account.one_key_login.j;
import cn.mucang.android.account.one_key_login.m;
import cn.mucang.android.account.protocol.bridge.UserJsBridge;
import cn.mucang.android.account.third.LoginPlatforms;
import cn.mucang.android.account.third.r;
import cn.mucang.android.account.third.z;
import cn.mucang.android.core.api.request.GlobalApiInterceptorManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.MultiProcessBroadcastManager;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.o0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.core.webview.core.l;
import cn.mucang.sundial.library.entity.ExtraKey;
import com.alibaba.fastjson.JSON;
import com.tencent.open.SocialConstants;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import f.a.a.p011d.AssistRespRegister;
import java.lang.ref.WeakReference;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* JADX INFO: loaded from: classes.dex */
public class AccountManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Set<WeakReference<cn.mucang.android.account.i.c>> f1971a;
    private AuthUser b;

    enum ActionType {
        LOGIN_SUCCEED,
        LOGIN_FAILED,
        UPDATE_USER,
        LOGOUT,
        ACCOUNT_VERIFIED
    }

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ AuthUser f1972a;
        final /* synthetic */ boolean b;
        final /* synthetic */ String c;

        a(AuthUser authUser, boolean z, String str) {
            this.f1972a = authUser;
            this.b = z;
            this.c = str;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountManager.this.z(this.f1972a, this.b, this.c);
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ cn.mucang.android.account.i.c f1974a;
        final /* synthetic */ AuthUser b;
        final /* synthetic */ ActionType c;

        b(cn.mucang.android.account.i.c cVar, AuthUser authUser, ActionType actionType) {
            this.f1974a = cVar;
            this.b = authUser;
            this.c = actionType;
        }

        @Override // java.lang.Runnable
        public void run() {
            AccountManager.this.d(this.f1974a, this.b, this.c);
        }
    }

    class c implements cn.mucang.android.core.api.f.c.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f1976a;

        c(AccountManager accountManager, String str) {
            this.f1976a = str;
        }

        @Override // cn.mucang.android.core.api.f.c.a
        public String getValue() {
            return this.f1976a;
        }
    }

    static /* synthetic */ class d {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f1977a;

        static {
            int[] iArr = new int[ActionType.values().length];
            f1977a = iArr;
            try {
                iArr[ActionType.LOGIN_SUCCEED.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f1977a[ActionType.LOGIN_FAILED.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                f1977a[ActionType.LOGOUT.ordinal()] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                f1977a[ActionType.UPDATE_USER.ordinal()] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                f1977a[ActionType.ACCOUNT_VERIFIED.ordinal()] = 5;
            } catch (NoSuchFieldError unused5) {
            }
        }
    }

    private static class e {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final AccountManager f1978a;

        static {
            AccountManager accountManager = new AccountManager(null);
            f1978a = accountManager;
            accountManager.j();
        }
    }

    /* synthetic */ AccountManager(a aVar) {
        this();
    }

    private void A(String str, AuthUser authUser, String str2) {
        Intent intent = new Intent(str);
        intent.putExtra("__user__", authUser);
        intent.putExtra("__user_auth_token__", authUser.getAuthToken());
        if (n0.g(str2)) {
            intent.putExtra("__account_login_extra_data__", str2);
        }
        MultiProcessBroadcastManager.e(intent);
    }

    private static String L(Enum r0) {
        return r0 == null ? "" : r0.name();
    }

    private static String M(String str) {
        return n0.e(str) ? "" : str.trim();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void d(cn.mucang.android.account.i.c cVar, AuthUser authUser, ActionType actionType) {
        int i = d.f1977a[actionType.ordinal()];
        if (i == 1) {
            cVar.e(authUser);
            return;
        }
        if (i == 2) {
            cVar.a();
            return;
        }
        if (i == 3) {
            cVar.d(authUser);
        } else if (i == 4) {
            cVar.b(authUser);
        } else {
            if (i != 5) {
                return;
            }
            cVar.c(authUser);
        }
    }

    private AuthUser e() {
        SharedPreferences sharedPreferences = MucangConfig.getContext().getSharedPreferences("_am_am_.db", 0);
        String string = sharedPreferences.getString("authToken", "");
        if (n0.e(string)) {
            return null;
        }
        long j = sharedPreferences.getLong("expiredTime", -1L);
        if (System.currentTimeMillis() > j) {
            return null;
        }
        AuthUser authUser = new AuthUser();
        authUser.setAuthToken(string);
        authUser.setExpiredTime(j);
        authUser.setPasswordSet(sharedPreferences.getBoolean("passwordSet", false));
        authUser.setCertified(sharedPreferences.getBoolean("isCertified", false));
        authUser.setNickname(sharedPreferences.getString("nickname", "木仓用户"));
        authUser.setAvatar(sharedPreferences.getString(ExtraKey.avatar, ""));
        authUser.setLargeAvatar(sharedPreferences.getString("largeAvatar", ""));
        authUser.setBirthday(sharedPreferences.getString("birthday", ""));
        authUser.setCityCode(sharedPreferences.getString("cityCode", ""));
        authUser.setCityName(sharedPreferences.getString("cityName", ""));
        authUser.setCreateTime(sharedPreferences.getLong("createTime", -1L));
        authUser.setDescription(sharedPreferences.getString(SocialConstants.PARAM_COMMENT, ""));
        authUser.setPhone(sharedPreferences.getString("phone", ""));
        Gender genderFrom = Gender.from(sharedPreferences.getString("gender", ""));
        if (genderFrom == null) {
            genderFrom = Gender.Female;
        }
        authUser.setGender(genderFrom);
        authUser.setHomePage(sharedPreferences.getString("homePage", ""));
        authUser.setMucangId(sharedPreferences.getString("mucangId", ""));
        CheckType checkTypeFrom = CheckType.from(sharedPreferences.getString("checkType", ""));
        if (checkTypeFrom == null) {
            checkTypeFrom = CheckType.FALSE;
        }
        authUser.setCheckType(checkTypeFrom);
        authUser.setValidDuration(sharedPreferences.getLong("validDuration", -1L));
        try {
            String string2 = sharedPreferences.getString("weChatUserEntity", "");
            if (n0.g(string2)) {
                authUser.setWeChatUserEntity((WeChatUserEntity) JSON.parseObject(string2, WeChatUserEntity.class));
            }
        } catch (Exception unused) {
            t.h("AccountManager", "read weChatUserEntity error");
        }
        return authUser;
    }

    private void f(AuthUser authUser, boolean z) {
        if (z) {
            authUser.setExpiredTime(System.currentTimeMillis() + authUser.getValidDuration());
        }
        SharedPreferences.Editor editorEdit = MucangConfig.getContext().getSharedPreferences("_am_am_.db", 0).edit();
        editorEdit.putString("authToken", M(authUser.getAuthToken()));
        editorEdit.putLong("expiredTime", authUser.getExpiredTime());
        editorEdit.putString("nickname", M(authUser.getNickname()));
        editorEdit.putString("gender", L(authUser.getGender()));
        editorEdit.putString(ExtraKey.avatar, M(authUser.getAvatar()));
        editorEdit.putString("largeAvatar", M(authUser.getLargeAvatar()));
        editorEdit.putString("birthday", M(authUser.getBirthday()));
        editorEdit.putString("cityCode", M(authUser.getCityCode()));
        editorEdit.putString("cityName", M(authUser.getCityName()));
        editorEdit.putString(SocialConstants.PARAM_COMMENT, M(authUser.getDescription()));
        editorEdit.putString("homePage", M(authUser.getHomePage()));
        editorEdit.putString("mucangId", M(authUser.getMucangId()));
        editorEdit.putLong("createTime", authUser.getCreateTime());
        editorEdit.putString("checkType", L(authUser.getCheckType()));
        editorEdit.putLong("validDuration", authUser.getValidDuration());
        editorEdit.putBoolean("passwordSet", authUser.isPasswordSet());
        editorEdit.putString("phone", authUser.getPhone());
        editorEdit.putBoolean("isCertified", authUser.isCertified());
        if (authUser.getWeChatUserEntity() != null) {
            editorEdit.putString("weChatUserEntity", JSON.toJSONString(authUser.getWeChatUserEntity()));
        }
        editorEdit.apply();
    }

    public static AccountManager h() {
        return e.f1978a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void j() {
        AccountManagerMultiProcessSupport.b();
        QuickLoginMultiProcessSupport.a();
        B(e());
        x();
        PrivacyAgreementSetting.j(new Runnable() { // from class: cn.mucang.android.account.c
            @Override // java.lang.Runnable
            public final void run() {
                m.d();
            }
        });
        u.d(new Runnable() { // from class: cn.mucang.android.account.a
            @Override // java.lang.Runnable
            public final void run() {
                NumberAuthUtils.g();
            }
        }, 500L);
        AssistRespRegister.f14525a.a("BaseAssistResp.Login", new r());
        GlobalApiInterceptorManager.f2401a.b(new cn.mucang.android.account.g.r.c());
        l.d().a(UserJsBridge.class);
        if (this.b == null) {
            return;
        }
        q("");
    }

    private void o() {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        A("cn.mucang.android.account.ACTION_VERIFIED", authUser, "");
    }

    private void p() {
        MultiProcessBroadcastManager.e(new Intent("cn.mucang.android.account.ACTION_LOGIN_CANCELED"));
    }

    private void q(String str) {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        h().w(authUser.getAuthToken());
        if (a0.e()) {
            A("cn.mucang.android.account.ACTION_LOGINED", authUser, str);
        }
    }

    private void s(AuthUser authUser) {
        A("cn.mucang.android.account.ACTION_LOGOUT", authUser, "");
    }

    private void t(String str) {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        A(str, authUser, "");
    }

    private void x() {
        cn.mucang.android.account.l.a.a().b();
        cn.mucang.android.account.e.c();
    }

    void B(AuthUser authUser) {
        this.b = authUser;
        if (authUser == null) {
            N();
        } else {
            w(authUser.getAuthToken());
        }
    }

    void C(String str) {
        SharedPreferences.Editor editorEdit = MucangConfig.getContext().getSharedPreferences("_am_am_.db", 0).edit();
        editorEdit.putString("lastLoginMobile", M(str));
        editorEdit.apply();
    }

    @Deprecated
    public void D(Context context) {
        u.h("暂不支持实名认证");
    }

    public void E(Activity activity, int i) {
        activity.startActivityForResult(new Intent(activity, (Class<?>) ChangePhoneTransferActivity.class), i);
    }

    public void F(Context context, LoginModel loginModel) {
        LoginActivity.H(context, loginModel);
    }

    public void G(Context context, LoginSmsModel loginSmsModel) {
        LoginMultiDefaultSmsActivity.B(context, loginSmsModel);
    }

    public void H(Context context, LoginSmsModel loginSmsModel) {
        m.i(context, loginSmsModel);
    }

    public void I(Context context, LoginSmsModel loginSmsModel, j jVar, cn.mucang.android.account.one_key_login.l lVar) {
        m.k(context, loginSmsModel, jVar, lVar);
    }

    public boolean J(Activity activity, int i, LoginModel loginModel, String str) {
        cn.mucang.android.account.third.u uVarA = LoginPlatforms.f2300a.a(str);
        if (uVarA != null) {
            return z.e(activity, i, loginModel, uVarA);
        }
        return false;
    }

    public boolean K(Activity activity, int i, LoginModel loginModel) {
        if (o0.b("com.tencent.mm")) {
            return z.e(activity, i, loginModel, LoginPlatforms.f2300a.c("weixin"));
        }
        u.h("您没有安装微信");
        return false;
    }

    public void N() {
        cn.mucang.android.core.api.url.c.h("authToken");
    }

    void O(boolean z) {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        authUser.setCertified(z);
        f(this.b, false);
    }

    void P(CheckType checkType) {
        if (this.b == null) {
            return;
        }
        if (checkType == CheckType.TRUE) {
            o();
        }
        this.b.setCheckType(checkType);
        f(this.b, false);
    }

    void Q() {
        p();
    }

    void R(boolean z) {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        authUser.setPasswordSet(z);
        f(this.b, false);
    }

    void S(String str) {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        authUser.setPhone(str);
        f(this.b, false);
        t("cn.mucang.android.account.ACTION_PHONE_CHANGED");
    }

    public void T(UpdateUserInfo updateUserInfo) {
        AuthUser authUser = this.b;
        if (authUser == null) {
            return;
        }
        authUser.setNickname(updateUserInfo.getNickname());
        this.b.setGender(updateUserInfo.getGender());
        this.b.setAvatar(updateUserInfo.getAvatar());
        this.b.setBirthday(updateUserInfo.getBirthday());
        this.b.setCityName(updateUserInfo.getCityName());
        this.b.setCityCode(updateUserInfo.getCityCode());
        this.b.setDescription(updateUserInfo.getDescription());
        this.b.setWeChatUserEntity(updateUserInfo.getWeChatUserEntity());
        f(this.b, false);
        t("cn.mucang.android.account.ACTION_PROFILE_UPDATE");
    }

    public void c(cn.mucang.android.account.i.c cVar) {
        synchronized (this.f1971a) {
            this.f1971a.add(new WeakReference<>(cVar));
        }
    }

    public AuthUser g() {
        return this.b;
    }

    String i() {
        return MucangConfig.getContext().getSharedPreferences("_am_am_.db", 0).getString("lastLoginMobile", "");
    }

    public boolean k() {
        AuthUser authUser = this.b;
        return authUser != null && authUser.isCertified();
    }

    public boolean l() {
        return this.b != null;
    }

    public void m() {
        AuthUser authUser = this.b;
        B(null);
        SharedPreferences.Editor editorEdit = MucangConfig.getContext().getSharedPreferences("_am_am_.db", 0).edit();
        editorEdit.remove("authToken");
        editorEdit.remove("expiredTime");
        editorEdit.remove("nickname");
        editorEdit.remove("gender");
        editorEdit.remove(ExtraKey.avatar);
        editorEdit.remove("birthday");
        editorEdit.remove("cityCode");
        editorEdit.remove("cityName");
        editorEdit.remove(SocialConstants.PARAM_COMMENT);
        editorEdit.remove("homePage");
        editorEdit.remove("mucangId");
        editorEdit.remove("createTime");
        editorEdit.remove("checkType");
        editorEdit.remove("validDuration");
        editorEdit.remove("passwordSet");
        editorEdit.remove("phone");
        editorEdit.apply();
        h().N();
        if (authUser != null) {
            s(authUser);
        }
    }

    void n(AuthUser authUser, ActionType actionType) {
        synchronized (this.f1971a) {
            Iterator<WeakReference<cn.mucang.android.account.i.c>> it = this.f1971a.iterator();
            while (it.hasNext()) {
                cn.mucang.android.account.i.c cVar = it.next().get();
                if (cVar == null) {
                    it.remove();
                } else if (u.b()) {
                    d(cVar, authUser, actionType);
                } else {
                    u.c(new b(cVar, authUser, actionType));
                }
            }
        }
    }

    void r(String str) {
        q(str);
    }

    public void u(String str, h hVar) {
        NumberAuthUtils.l(str, hVar);
    }

    public boolean v() {
        return m.l();
    }

    public void w(String str) {
        cn.mucang.android.core.api.url.c.g("authToken", new c(this, str));
    }

    public void y(AuthUser authUser) {
        z(authUser, true, "");
    }

    void z(AuthUser authUser, boolean z, String str) {
        if (u.b()) {
            MucangConfig.f(new a(authUser, z, str));
            return;
        }
        if (authUser == null) {
            return;
        }
        try {
            WeChatUserEntity weChatUserEntityF = new o().f(authUser.getAuthToken());
            if (weChatUserEntityF == null || !TextUtils.equals(weChatUserEntityF.getMucangId(), authUser.getMucangId())) {
                t.a("AccountManager", "WeChatUserEntity get data is error");
            } else {
                authUser.setWeChatUserEntity(weChatUserEntityF);
            }
        } catch (Exception e2) {
            t.c("AccountManager", e2);
        } finally {
            f(authUser, true);
            B(authUser);
            if (z) {
                q(str);
            }
        }
    }

    private AccountManager() {
        this.f1971a = new HashSet();
    }
}
