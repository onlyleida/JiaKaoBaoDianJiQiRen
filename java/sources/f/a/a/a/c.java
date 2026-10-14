package f.a.a.a;

import cn.mucang.android.core.utils.l0;
import cn.mucang.android.core.utils.q0;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes.dex */
public class c {
    public static void a(String str) {
        f("tel", "cancel-" + q0.a(str));
    }

    public static void b(String str, String str2) {
        f(str, str2);
    }

    public static void c(String str) {
        f("tel", "confirm-" + q0.a(str));
    }

    public static void d() {
        f("core", "color_eggs");
    }

    public static void e(String str) {
        f("core", str);
    }

    private static void f(String str, String str2) {
        i(str, str2, null, 0L);
    }

    private static void g(String str, String str2, long j) {
        i(str, str2, null, j);
    }

    private static void h(String str, String str2, Map<String, Object> map) {
        i(str, str2, map, 0L);
    }

    private static void i(String str, String str2, Map<String, Object> map, long j) {
        l0.b(str, str2, map, j);
    }

    public static void j(String str, String str2, String... strArr) {
        HashMap map = new HashMap();
        int i = 0;
        while (i < strArr.length) {
            StringBuilder sb = new StringBuilder();
            sb.append("str");
            int i2 = i + 1;
            sb.append(i2);
            map.put(sb.toString(), strArr[i]);
            i = i2;
        }
        HashMap map2 = new HashMap();
        map2.put("common", map);
        h(str, str2, map2);
    }

    public static void k(String str) {
        f("core", str);
    }

    public static void l(String str) {
        f("core", str);
    }

    public static void m(String str, String str2) {
        f(str, str2);
    }

    public static void n(String str, String str2, Map<String, Object> map) {
        h(str, str2, map);
    }

    public static void o(String str, String str2, long j) {
        g(str, str2, j);
    }

    public static void p(String str) {
        f("tel", "all-" + q0.a(str));
    }
}
