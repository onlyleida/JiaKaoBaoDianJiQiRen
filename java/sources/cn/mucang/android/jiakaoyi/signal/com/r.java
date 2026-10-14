package cn.mucang.android.jiakaoyi.signal.com;

/* JADX INFO: loaded from: classes3.dex */
public class r {
    public static int a(int i) {
        if (i == 4) {
            return 2;
        }
        if (i < 1 || i > 6) {
            return b(i) ? 4 : 0;
        }
        return 1;
    }

    public static boolean b(int i) {
        return i >= 7 && i <= 29;
    }
}
