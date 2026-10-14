package cn.mucang.android.jiakaoyi.framework.utils;

import java.io.File;

/* JADX INFO: loaded from: classes2.dex */
public class o0 {
    public static boolean a(long j) {
        File[] fileArrListFiles;
        File file = new File(b(j));
        return file.exists() && file.isDirectory() && (fileArrListFiles = file.listFiles()) != null && fileArrListFiles.length > 0;
    }

    public static String b(long j) {
        return i0.g(c(j), "");
    }

    private static String c(long j) {
        return "tile_map_" + AppUtils.a() + "_" + j + "_file";
    }

    private static String d(long j) {
        return "tile_map_" + AppUtils.a() + "_" + j;
    }

    public static String e() {
        return i0.g("tile_scale", "");
    }

    public static void f(long j, String str) {
        if (cn.mucang.android.core.utils.n0.g(str)) {
            i0.m(c(j), str);
        }
    }

    public static void g(String str) {
        if (cn.mucang.android.core.utils.n0.g(str)) {
            i0.m("tile_scale", str);
        }
    }

    public static void h(long j, String str) {
        if (cn.mucang.android.core.utils.n0.g(str)) {
            i0.m(d(j), str);
        }
    }
}
