package cn.mucang.android.jiakaoyi.teachingk2.safe.detector;

import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.r0;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final r0<String> f7663a = r0.i("brake_obd_speed_distance_argument", null);
    private static double b = 0.0d;
    private static double c = 0.0d;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static double f7664d = 0.0d;

    public static double a(double d2) {
        if (Math.abs(b) + Math.abs(c) + Math.abs(f7664d) <= 1.0E-10d) {
            return 0.0d;
        }
        double d3 = 3.6d * d2 * 1.1d;
        return Math.max((b * d3 * d3) + (c * d3) + f7664d + (d2 * 0.15d * 100.0d), 17.0d) + 15.0d;
    }

    public static void b() {
        String strB = f7663a.b();
        if (strB == null || strB.length() <= 3) {
            return;
        }
        String[] strArrSplit = strB.split(",");
        if (strArrSplit.length == 3) {
            try {
                b = Double.parseDouble(strArrSplit[0]);
                c = Double.parseDouble(strArrSplit[1]);
                f7664d = Double.parseDouble(strArrSplit[2]);
                f.d("初始化刹车系数:" + strB);
            } catch (Throwable th) {
                f.d("初始化刹车系数出错:" + th);
            }
        }
    }

    public static void c(double d2, double d3, double d4) {
        b = d2;
        c = d3;
        f7664d = d4;
        r0<String> r0Var = f7663a;
        r0Var.j(d2 + "," + d3 + "," + d4);
        StringBuilder sb = new StringBuilder();
        sb.append("设置obd刹车系数: ");
        sb.append(r0Var.b());
        f.d(sb.toString());
    }

    public static String d() {
        return "a=" + b + ",b=" + c + ",c=" + f7664d;
    }
}
