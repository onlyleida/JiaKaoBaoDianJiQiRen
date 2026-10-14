package cn.mucang.android.jiakaoyi.engine;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Map<String, Object> f3079a = new HashMap();

    public static int a() {
        return ((Integer) c("K3_broadcast_angel", 30)).intValue();
    }

    public static int b() {
        return ((Integer) c("K3_broadcast_distance", 15)).intValue();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <T> T c(String str, T t) {
        T t2;
        Map<String, Object> map = f3079a;
        T t3 = (T) map.get(str);
        if (t3 != null) {
            return t3;
        }
        if (t.getClass() == Boolean.class) {
            T t4 = (T) Boolean.valueOf(i0.b(str, ((Boolean) t).booleanValue()));
            if (t4 != null) {
                map.put(str, t4);
                return t4;
            }
        } else if (t.getClass() == Integer.class) {
            T t5 = (T) Integer.valueOf(i0.d(str, ((Integer) t).intValue()));
            if (t5 != null) {
                map.put(str, t5);
                return t5;
            }
        } else if (t.getClass() == Float.class) {
            T t6 = (T) Float.valueOf(i0.c(str, ((Float) t).floatValue()));
            if (t6 != null) {
                map.put(str, t6);
                return t6;
            }
        } else if (t.getClass() == String.class && (t2 = (T) i0.g(str, (String) t)) != null) {
            map.put(str, t2);
            return t2;
        }
        return t;
    }

    public static boolean d() {
        return ((Boolean) c("need_order_exe", Boolean.FALSE)).booleanValue();
    }

    public static boolean e() {
        return ((Boolean) c("only_use_distance", Boolean.FALSE)).booleanValue();
    }

    public static void f(int i) {
        f3079a.put("K3_broadcast_angel", Integer.valueOf(i));
        i0.k("K3_broadcast_angel", i);
    }

    public static void g(int i) {
        f3079a.put("K3_broadcast_distance", Integer.valueOf(i));
        i0.k("K3_broadcast_distance", i);
    }

    public static void h(boolean z) {
        f3079a.put("need_order_exe", Boolean.valueOf(z));
        i0.i("need_order_exe", z);
    }

    public static void i(boolean z) {
        f3079a.put("only_use_distance", Boolean.valueOf(z));
        i0.i("only_use_distance", z);
    }

    public static void j(int i) {
        f3079a.put("k3_teach_broadcast_angel", Integer.valueOf(i));
        i0.k("k3_teach_broadcast_angel", i);
    }

    public static void k(int i) {
        f3079a.put("k3_teach_broadcast_angel", Integer.valueOf(i));
        i0.k("k3_teach_broadcast_angel", i);
    }

    public static int l() {
        return ((Integer) c("k3_teach_broadcast_angel", 30)).intValue();
    }

    public static int m() {
        return ((Integer) c("k3_teach_broadcast_distance", 15)).intValue();
    }
}
