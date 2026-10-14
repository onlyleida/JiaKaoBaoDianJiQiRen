package cn.mucang.android.jiakaoyi.signal.d;

import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.CrossModuleCaller;
import cn.mucang.android.jiakaoyi.framework.utils.i0;

/* JADX INFO: loaded from: classes3.dex */
public class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f5568a = false;
    private static boolean b = true;

    public static boolean a() {
        if (b) {
            f5568a = i0.b("gps_speed_type", false);
            b = false;
        }
        return f5568a;
    }

    public static void b(boolean z) {
        f5568a = z;
        i0.i("gps_speed_type", z);
        if (MucangConfig.getContext() instanceof CrossModuleCaller) {
            ((CrossModuleCaller) MucangConfig.getContext()).g();
        }
    }
}
