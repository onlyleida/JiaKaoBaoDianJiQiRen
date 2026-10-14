package cn.mucang.android.jiakaoyi.signal.com;

/* JADX INFO: loaded from: classes3.dex */
public class s {
    public static int a(int i) {
        if (!p.b()) {
            return r.a(i);
        }
        if (i == 5) {
            return 2;
        }
        if (i < 1 || i > 4) {
            return b(i) ? 4 : 0;
        }
        return 1;
    }

    public static boolean b(int i) {
        if (p.b()) {
            return i >= 7 && i <= 35;
        }
        return r.b(i);
    }
}
