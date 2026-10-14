package cn.mucang.jiakaoyi.uilib.ui.login;

import android.content.SharedPreferences;
import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.jiakaoyi.uilib.ui.login.account.model.UserModel;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import cn.mucang.sundial.library.entity.ExtraKey;

/* JADX INFO: loaded from: classes5.dex */
public class h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static UserModel f9869a;

    public static synchronized UserModel a() {
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return null;
        }
        UserModel userModel = f9869a;
        if (userModel != null) {
            return userModel;
        }
        SharedPreferences sharedPreferences = MucangConfig.getContext().getSharedPreferences("coach_user", 0);
        if (n0.e(sharedPreferences.getString("authToken", null))) {
            return null;
        }
        UserModel userModel2 = new UserModel();
        userModel2.deviceNum = sharedPreferences.getString("deviceNum", "");
        userModel2.areaCode = sharedPreferences.getString("areaCode", "");
        userModel2.areaName = sharedPreferences.getString("areaName", "");
        userModel2.avatar = sharedPreferences.getString(ExtraKey.avatar, "");
        userModel2.drivingSchoolId = sharedPreferences.getString("drivingSchoolId", "");
        userModel2.drivingSchoolName = sharedPreferences.getString("drivingSchoolName", "");
        userModel2.phoneEncrypted = sharedPreferences.getString("phoneEncrypted", "");
        userModel2.phoneFeature = sharedPreferences.getString("phoneFeature", "");
        userModel2.phoneMask = sharedPreferences.getString("phoneMask", "");
        userModel2.role = sharedPreferences.getString("role", "");
        userModel2.userName = sharedPreferences.getString("userName", "");
        userModel2.wechatId = sharedPreferences.getString("wechatId", "");
        userModel2.proxyLevel = sharedPreferences.getInt("proxyLevel", 0);
        userModel2.status = sharedPreferences.getInt("status", 10);
        userModel2.type = sharedPreferences.getInt("type", 0);
        userModel2.authUser = authUserG;
        f9869a = userModel2;
        return userModel2;
    }

    static /* synthetic */ void b() {
        try {
            new cn.mucang.jiakaoyi.uilib.ui.login.k.a().m();
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    public static synchronized void c() {
        f9869a = null;
        AccountUtils.f9870a.a().l(null);
        SharedPreferences.Editor editorEdit = MucangConfig.getContext().getSharedPreferences("coach_user", 0).edit();
        editorEdit.clear();
        editorEdit.apply();
        AccountManager.h().m();
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.ui.login.e
            @Override // java.lang.Runnable
            public final void run() {
                h.b();
            }
        });
    }
}
