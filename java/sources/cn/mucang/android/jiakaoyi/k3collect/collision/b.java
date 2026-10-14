package cn.mucang.android.jiakaoyi.k3collect.collision;

import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes3.dex */
public class b {
    public static boolean a(int i, int i2) {
        if (i <= 128) {
            return true;
        }
        if (cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, 9)) {
            return false;
        }
        return cn.mucang.android.jiakaoyi.signal.d.j.a.d(i, i2);
    }

    public static void b(int i) {
        t.a("JudgeLineTypeUtil", "NoneIndex " + a(i, 9));
        t.a("JudgeLineTypeUtil", "TurnLightIndex " + a(i, 10));
        t.a("JudgeLineTypeUtil", "FootBrakeIndex " + a(i, 11));
    }

    public static int c(boolean z, boolean z2, boolean z3) {
        return (z || z2 || z3) ? d(d(d(d(0, 9, false), 10, z), 11, z2), 12, z3) : d(d(d(d(0, 9, true), 10, false), 11, false), 11, false);
    }

    private static int d(int i, int i2, boolean z) {
        return cn.mucang.android.jiakaoyi.signal.d.j.a.f(i, i2, z);
    }
}
