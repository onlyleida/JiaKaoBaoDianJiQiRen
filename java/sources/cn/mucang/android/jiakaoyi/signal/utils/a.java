package cn.mucang.android.jiakaoyi.signal.utils;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.center.model.BackGearType;

/* JADX INFO: loaded from: classes3.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Integer f5827a;

    public static int a() {
        if (f5827a == null) {
            f5827a = Integer.valueOf(i0.d("keyBackGearType", BackGearType.RightDown.type));
        }
        return f5827a.intValue();
    }

    public static boolean b() {
        return a() == BackGearType.LeftUpper.type;
    }

    public static void c(int i) {
        f5827a = Integer.valueOf(i);
        i0.k("keyBackGearType", i);
        if (MucangConfig.getContext() instanceof CrossModuleCaller) {
            ((CrossModuleCaller) MucangConfig.getContext()).f();
        }
    }
}
