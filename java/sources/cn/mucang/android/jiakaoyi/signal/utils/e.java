package cn.mucang.android.jiakaoyi.signal.utils;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
import cn.mucang.android.jiakaoyi.signal.center.model.EnergyType;

/* JADX INFO: loaded from: classes3.dex */
public class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Integer f5833a;

    public static boolean a() {
        if (f5833a == null) {
            f5833a = Integer.valueOf(i0.d("keyEnergyType", SelectCarManager.c().type));
        }
        return f5833a.intValue() == EnergyType.electric.type;
    }

    public static void b(int i) {
        f5833a = Integer.valueOf(i);
        i0.k("keyEnergyType", i);
    }
}
