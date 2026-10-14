package cn.mucang.android.account;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import cn.mucang.android.account.activity.BindThirdActivity;
import cn.mucang.android.account.activity.l1;
import cn.mucang.android.account.api.data.CheckType;
import cn.mucang.android.account.api.data.UpdateUserInfo;
import cn.mucang.android.account.api.data.UserInfoResponse;
import cn.mucang.android.account.data.AccountBaseModel;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.account.data.WeChatUserEntity;
import cn.mucang.android.account.g.h;
import cn.mucang.android.account.g.o;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;

/* JADX INFO: loaded from: classes.dex */
public class f {

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ UpdateUserInfo f2151a;

        a(UpdateUserInfo updateUserInfo) {
            this.f2151a = updateUserInfo;
        }

        @Override // java.lang.Runnable
        public void run() {
            f.m(this.f2151a);
        }
    }

    public static cn.mucang.android.account.api.data.b a(UserInfoResponse userInfoResponse) throws NullPointerException {
        return new cn.mucang.android.account.api.data.b(userInfoResponse, cn.mucang.android.account.utils.a.b() ? new h().f(userInfoResponse.getAuthToken(), false) : false);
    }

    public static String b() {
        return AccountManager.h().i();
    }

    public static void c(String str) {
        AccountManager.h().r(str);
    }

    public static void d(Context context, AccountBaseModel accountBaseModel, cn.mucang.android.account.api.data.b bVar) {
        Activity activityB;
        if (accountBaseModel == null || bVar == null || (activityB = cn.mucang.android.core.utils.d.b(context)) == null || activityB.isDestroyed() || !cn.mucang.android.account.utils.a.b() || !bVar.b || accountBaseModel.isSkipBindThird()) {
            return;
        }
        Intent intent = new Intent(activityB, (Class<?>) BindThirdActivity.class);
        if (!(activityB instanceof l1)) {
            intent.putExtra("__key_extra_model__", accountBaseModel);
        }
        activityB.startActivity(intent);
    }

    public static void e(AuthUser authUser, AccountBaseModel accountBaseModel) {
        AccountManager.h().z(authUser, true, (accountBaseModel == null || !n0.g(accountBaseModel.getExtraData())) ? "" : accountBaseModel.getExtraData());
    }

    public static void f(AuthUser authUser, AccountBaseModel accountBaseModel, boolean z) {
        AccountManager.h().z(authUser, z, (accountBaseModel == null || !n0.g(accountBaseModel.getExtraData())) ? "" : accountBaseModel.getExtraData());
    }

    public static void g(String str) {
        AccountManager.h().C(str);
    }

    public static void h(boolean z) {
        AccountManager.h().O(z);
    }

    public static void i(CheckType checkType) {
        AccountManager.h().P(checkType);
    }

    public static void j() {
        AccountManager.h().Q();
    }

    public static void k(boolean z) {
        AccountManager.h().R(z);
    }

    public static void l(String str) {
        AccountManager.h().S(str);
    }

    public static void m(UpdateUserInfo updateUserInfo) {
        if (u.b()) {
            MucangConfig.f(new a(updateUserInfo));
            return;
        }
        if (updateUserInfo == null) {
            return;
        }
        AuthUser authUserG = AccountManager.h().g();
        try {
            if (authUserG == null) {
                return;
            }
            try {
                WeChatUserEntity weChatUserEntityF = new o().f(authUserG.getAuthToken());
                if (weChatUserEntityF == null || !TextUtils.equals(weChatUserEntityF.getMucangId(), authUserG.getMucangId())) {
                    t.a("InnerHelper", "WeChatUserEntity get data is error");
                } else {
                    updateUserInfo.setWeChatUserEntity(weChatUserEntityF);
                }
            } catch (Exception e2) {
                t.c("InnerHelper", e2);
            }
        } finally {
            AccountManager.h().T(updateUserInfo);
        }
    }
}
