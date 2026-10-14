package cn.mucang.android.jiakaoyi.teachingk2;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;

/* JADX INFO: loaded from: classes4.dex */
public class l0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static int f7239a;

    public static int a() {
        return f7239a;
    }

    private static String b() {
        AuthUser authUserG = AccountManager.h().g();
        if (authUserG == null) {
            return "Key_User_Grade_";
        }
        return "Key_User_Grade_" + authUserG.getMucangId();
    }

    public static void c() {
        f7239a = cn.mucang.android.jiakaoyi.framework.utils.i0.d(b(), 10);
    }

    public static void d(int i) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置教学等级:" + i);
        f7239a = i;
        cn.mucang.android.jiakaoyi.framework.utils.i0.k(b(), i);
        LiveBus.d(m0.class).l(new m0());
    }
}
