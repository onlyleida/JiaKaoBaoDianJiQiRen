package cn.mucang.android.account.third;

import android.app.Activity;
import android.content.Intent;
import cn.mucang.android.account.activity.ValidationActivity;
import cn.mucang.android.account.api.data.CheckSmsResponse;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.api.data.ThirdLoginRequest;
import cn.mucang.android.account.api.data.ThirdLoginResponse;
import cn.mucang.android.account.data.LoginModel;
import cn.mucang.android.account.data.MCUserInfo;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.MultiProcessBroadcastManager;
import cn.mucang.android.core.utils.n0;

/* JADX INFO: loaded from: classes.dex */
public class z {

    class a implements s {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ u f2303a;
        final /* synthetic */ LoginModel b;
        final /* synthetic */ Activity c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2304d;

        a(u uVar, LoginModel loginModel, Activity activity, int i) {
            this.f2303a = uVar;
            this.b = loginModel;
            this.c = activity;
            this.f2304d = i;
        }

        @Override // cn.mucang.android.account.third.s
        public void a(MCUserInfo mCUserInfo) {
            Intent intent = new Intent("cn.mucang.android.account.ACTION_INNER_THIRD_LOGIN_OK");
            intent.putExtra("third_login_platform", this.f2303a.f());
            MultiProcessBroadcastManager.e(intent);
            try {
                ThirdLoginRequest thirdLoginRequestD = z.d(mCUserInfo, this.f2303a.f(), this.f2303a.g());
                thirdLoginRequestD.setFrom(this.b.getFrom());
                z.c(this.c, thirdLoginRequestD, this.f2304d, this.b);
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("Exception", e2);
                cn.mucang.android.core.utils.u.h("登录成功，处理失败");
            }
        }

        @Override // cn.mucang.android.account.third.s
        public void b(int i, Throwable th) {
            cn.mucang.android.core.utils.t.c("ThirdLoginManager", th);
            this.f2303a.c();
            String message = th == null ? "" : th.getMessage();
            if (8 == i) {
                cn.mucang.android.core.utils.u.h("登录失败，请检查系统设置");
            } else if (n0.e(message)) {
                cn.mucang.android.core.utils.u.h("登录失败，请重试");
            } else {
                cn.mucang.android.core.utils.u.h(message);
            }
        }

        @Override // cn.mucang.android.account.third.s
        public void onCancel() {
        }
    }

    class b implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ ThirdLoginRequest f2305a;
        final /* synthetic */ LoginModel b;
        final /* synthetic */ Activity c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        final /* synthetic */ int f2306d;

        class a implements Runnable {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ ThirdLoginResponse f2307a;

            a(ThirdLoginResponse thirdLoginResponse) {
                this.f2307a = thirdLoginResponse;
            }

            @Override // java.lang.Runnable
            public void run() {
                cn.mucang.android.account.utils.a.onEvent("第三方登录成功");
                cn.mucang.android.account.f.e(this.f2307a, b.this.b);
            }
        }

        b(ThirdLoginRequest thirdLoginRequest, LoginModel loginModel, Activity activity, int i) {
            this.f2305a = thirdLoginRequest;
            this.b = loginModel;
            this.c = activity;
            this.f2306d = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            try {
                ThirdLoginResponse thirdLoginResponseG = new cn.mucang.android.account.g.n().g(this.f2305a);
                if (thirdLoginResponseG.isBind()) {
                    cn.mucang.android.core.utils.t.h("hadeslee", "第三方数据已绑定，登录成功");
                    cn.mucang.android.core.utils.u.c(new a(thirdLoginResponseG));
                    return;
                }
                cn.mucang.android.core.utils.t.h("hadeslee", "第三方数据未绑定，开始绑定");
                CheckSmsResponse checkSmsResponse = new CheckSmsResponse();
                if (this.b.getCheckType() != null) {
                    checkSmsResponse.setCheckType(this.b.getCheckType());
                } else {
                    checkSmsResponse.setCheckType(CheckType.TRUE);
                }
                ValidationActivity.a aVar = new ValidationActivity.a(this.c);
                aVar.d(2);
                aVar.b(checkSmsResponse);
                aVar.f("绑定手机");
                Intent intentA = aVar.a();
                intentA.putExtra("__key_extra_model__", this.b);
                intentA.putExtra("__open_id__", this.f2305a.getOpenId());
                intentA.putExtra("__union_id__", this.f2305a.getUnionId());
                intentA.putExtra("__third_party__", this.f2305a.getThirdParty());
                this.c.startActivityForResult(intentA, this.f2306d);
            } catch (Exception e2) {
                cn.mucang.android.core.utils.t.c("Exception", e2);
                cn.mucang.android.core.utils.u.h("向服务器注册失败:" + e2.getMessage());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static void c(Activity activity, ThirdLoginRequest thirdLoginRequest, int i, LoginModel loginModel) {
        cn.mucang.android.core.utils.t.h("hadeslee", "开始提交第三方数据至服务器");
        MucangConfig.f(new b(thirdLoginRequest, loginModel, activity, i));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static ThirdLoginRequest d(MCUserInfo mCUserInfo, String str, String str2) {
        ThirdLoginRequest thirdLoginRequest = new ThirdLoginRequest();
        thirdLoginRequest.setAppId(str2);
        thirdLoginRequest.setThirdParty(str);
        thirdLoginRequest.setOpenId(mCUserInfo.getOpenId());
        thirdLoginRequest.setUnionId(mCUserInfo.getUnionId());
        thirdLoginRequest.setAvatar(mCUserInfo.getAvatar());
        if (mCUserInfo.getGender() != null) {
            thirdLoginRequest.setGender(mCUserInfo.getGender().name());
        }
        thirdLoginRequest.setNickname(mCUserInfo.getNickname());
        return thirdLoginRequest;
    }

    public static boolean e(Activity activity, int i, LoginModel loginModel, u uVar) {
        if (loginModel == null) {
            cn.mucang.android.core.utils.t.m("ThirdLoginManager", "loginModel 不能为空");
            cn.mucang.android.core.utils.u.h("登录失败，请重试");
            return false;
        }
        uVar.c();
        uVar.b(activity, new a(uVar, loginModel, activity, i));
        return true;
    }
}
