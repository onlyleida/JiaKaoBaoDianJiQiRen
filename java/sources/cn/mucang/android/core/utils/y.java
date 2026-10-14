package cn.mucang.android.core.utils;

/* JADX INFO: loaded from: classes.dex */
public class y {
    public static boolean a(String str) {
        return f(str) != null;
    }

    public static Byte b(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Byte.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Double c(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Double.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static double d(String str, double d2) {
        if (str == null) {
            return d2;
        }
        try {
            return Double.parseDouble(str);
        } catch (NumberFormatException unused) {
            return d2;
        }
    }

    public static Float e(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Float.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static Integer f(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Integer.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static int g(String str) {
        return h(str, 0);
    }

    public static int h(String str, int i) {
        if (str == null) {
            return i;
        }
        try {
            return Integer.parseInt(str);
        } catch (NumberFormatException unused) {
            return i;
        }
    }

    public static Long i(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Long.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }

    public static long j(String str, long j) {
        if (str == null) {
            return j;
        }
        try {
            return Long.parseLong(str);
        } catch (NumberFormatException unused) {
            return j;
        }
    }

    public static Short k(String str) {
        if (str == null) {
            return null;
        }
        try {
            return Short.valueOf(str);
        } catch (NumberFormatException unused) {
            return null;
        }
    }
}
