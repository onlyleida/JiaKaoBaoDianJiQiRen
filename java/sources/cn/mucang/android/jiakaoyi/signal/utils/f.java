package cn.mucang.android.jiakaoyi.signal.utils;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.GearType;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Integer f5834a;

    public static int a() {
        if (f5834a == null) {
            f5834a = Integer.valueOf(i0.d("keyGearType", SelectCarManager.d().type));
        }
        return f5834a.intValue();
    }

    public static boolean b() {
        if (f5834a == null) {
            f5834a = Integer.valueOf(i0.d("keyGearType", SelectCarManager.d().type));
        }
        return f5834a.intValue() == GearType.auto.type;
    }

    public static boolean c() {
        if (f5834a == null) {
            f5834a = Integer.valueOf(i0.d("keyGearType", SelectCarManager.d().type));
        }
        return f5834a.intValue() == GearType.manual.type;
    }

    public static void d(int i) {
        cn.mucang.android.jiakaoyi.framework.log.f.o("设置当前车辆档位类型:" + i);
        f5834a = Integer.valueOf(i);
        i0.k("keyGearType", i);
        if (MucangConfig.getContext() instanceof CrossModuleCaller) {
            ((CrossModuleCaller) MucangConfig.getContext()).d();
        }
    }
}
