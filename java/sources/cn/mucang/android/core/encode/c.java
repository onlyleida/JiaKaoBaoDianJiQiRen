package cn.mucang.android.core.encode;

import com.google.common.base.Ascii;
import java.nio.charset.Charset;

/* JADX INFO: loaded from: classes.dex */
public class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f2517a;
    private static final char[] b;

    static {
        Charset.forName("UTF-8");
        f2517a = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};
        b = new char[]{'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'A', 'B', 'C', 'D', 'E', 'F'};
    }

    public static char[] a(byte[] bArr) {
        return b(bArr, true);
    }

    public static char[] b(byte[] bArr, boolean z) {
        return c(bArr, z ? f2517a : b);
    }

    protected static char[] c(byte[] bArr, char[] cArr) {
        int length = bArr.length;
        char[] cArr2 = new char[length << 1];
        int i = 0;
        for (int i2 = 0; i2 < length; i2++) {
            int i3 = i + 1;
            cArr2[i] = cArr[(bArr[i2] & 240) >>> 4];
            i = i3 + 1;
            cArr2[i3] = cArr[bArr[i2] & Ascii.SI];
        }
        return cArr2;
    }

    public static String d(byte[] bArr) {
        return new String(a(bArr));
    }
}
