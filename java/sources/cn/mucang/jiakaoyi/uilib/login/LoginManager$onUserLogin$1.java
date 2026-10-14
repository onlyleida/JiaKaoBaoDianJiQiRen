package cn.mucang.jiakaoyi.uilib.login;

import android.app.Activity;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.p002e.SsoBaseApi;
import cn.mucang.android.jiakaoyi.framework.p002e.XyToken;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.jiakaoyi.uilib.login.model.LoginData;
import cn.mucang.jiakaoyi.uilib.login.model.LoginType;
import cn.mucang.jiakaoyi.uilib.login.model.XyUserModel;
import java.util.concurrent.CountDownLatch;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes5.dex */
@Metadata(d1 = {"\u0000\u0006\n\u0000\n\u0002\u0010\u0002\u0010\u0000\u001a\u00020\u0001H\n"}, d2 = {"<anonymous>", ""}, k = 3, mv = {1, 5, 1}, xi = 48)
final class LoginManager$onUserLogin$1 extends Lambda implements Function0<v> {
    final /* synthetic */ Activity $activity;
    final /* synthetic */ Runnable $callback;
    final /* synthetic */ CountDownLatch $ct;
    final /* synthetic */ LoginData $data;
    final /* synthetic */ LoginType $loginType;
    final /* synthetic */ XyUserModel $user;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    LoginManager$onUserLogin$1(Runnable runnable, XyUserModel xyUserModel, Activity activity, LoginData loginData, CountDownLatch countDownLatch, LoginType loginType) {
        super(0);
        this.$callback = runnable;
        this.$user = xyUserModel;
        this.$activity = activity;
        this.$data = loginData;
        this.$ct = countDownLatch;
        this.$loginType = loginType;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: invoke$lambda-1, reason: not valid java name */
    public static final void m108invoke$lambda1(XyUserModel user, Activity activity, LoginData data, CountDownLatch countDownLatch, LoginType loginType) {
        r.e(user, "$user");
        r.e(activity, "$activity");
        r.e(data, "$data");
        r.e(loginType, "$loginType");
        AccountManager.h().y(user.getAuthUser());
        if (!user.isDebugUser() && !MucangConfig.v()) {
            LoginManager.f9357a.l(activity, loginType, user, data, countDownLatch);
            return;
        }
        LoginManager loginManager = LoginManager.f9357a;
        loginManager.e(true);
        loginManager.g(activity, user, data, countDownLatch);
    }

    @Override // kotlin.jvm.functions.Function0
    public /* bridge */ /* synthetic */ v invoke() {
        invoke2();
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2() {
        u.e(this.$callback);
        SsoBaseApi.f3442e.a().l(null);
        XyToken.c().l(this.$user.getXyToken());
        XyUserModel xyUserModel = this.$user;
        AuthUser authUser = new AuthUser();
        XyUserModel xyUserModel2 = this.$user;
        authUser.setMucangId(xyUserModel2.getMucangId());
        authUser.setAuthToken(xyUserModel2.getAuthToken());
        authUser.setNickname(xyUserModel2.getName());
        authUser.setAvatar(xyUserModel2.getAvatar());
        v vVar = v.f15822a;
        xyUserModel.setAuthUser(authUser);
        final XyUserModel xyUserModel3 = this.$user;
        final Activity activity = this.$activity;
        final LoginData loginData = this.$data;
        final CountDownLatch countDownLatch = this.$ct;
        final LoginType loginType = this.$loginType;
        n0.b(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.login.i
            @Override // java.lang.Runnable
            public final void run() {
                LoginManager$onUserLogin$1.m108invoke$lambda1(xyUserModel3, activity, loginData, countDownLatch, loginType);
            }
        });
    }
}
