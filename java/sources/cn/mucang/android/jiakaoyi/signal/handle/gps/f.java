package cn.mucang.android.jiakaoyi.signal.handle.gps;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.n;

/* JADX INFO: loaded from: classes3.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static boolean f5726a = i0.b("gps_exam_type_use_5", false);

    public static boolean a(int i) {
        if (f5726a) {
            return i == 4 || i == 5 || n.a();
        }
        return i == 4 || n.a();
    }

    public static void b(boolean z) {
        f5726a = z;
        i0.i("gps_exam_type_use_5", z);
    }
}
