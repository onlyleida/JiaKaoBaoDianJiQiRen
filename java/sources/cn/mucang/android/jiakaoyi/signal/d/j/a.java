package cn.mucang.android.jiakaoyi.signal.d.j;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static int a(int i, int i2) {
        return i & (1 << i2);
    }

    public static boolean b(int i) {
        return i == 0;
    }

    public static boolean c(int i, int i2) {
        return (i & (1 << i2)) == 0;
    }

    public static boolean d(int i, int i2) {
        return (i & (1 << i2)) != 0;
    }

    public static boolean e(long j, int i) {
        return (j & (1 << i)) != 0;
    }

    public static int f(int i, int i2, boolean z) {
        return z ? i | (1 << i2) : i & (~(1 << i2));
    }

    public static int g(int i, int i2) {
        return i & (~(1 << i2));
    }

    public static int h(int i, int i2) {
        return i | (1 << i2);
    }
}
