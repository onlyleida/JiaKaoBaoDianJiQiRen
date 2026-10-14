package cn.mucang.android.core.encode;

import android.util.Base64;
import cn.mucang.android.core.utils.n0;
import com.google.common.primitives.UnsignedBytes;
import java.net.URLEncoder;

/* JADX INFO: loaded from: classes.dex */
public class a {
    static {
        "0123456789ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz".toCharArray();
    }

    public static int a(byte[] bArr) {
        int i = 0;
        for (int i2 = 0; i2 < bArr.length; i2++) {
            i |= (bArr[(bArr.length - 1) - i2] & UnsignedBytes.MAX_VALUE) << (i2 * 8);
        }
        return i;
    }

    public static byte[] b(String str) {
        return Base64.decode(str, 0);
    }

    public static String c(String str) {
        return new String(Base64.decode(str, 0));
    }

    public static String d(byte[] bArr) {
        return Base64.encodeToString(bArr, 0);
    }

    public static String e(byte[] bArr) {
        return c.d(bArr);
    }

    public static byte[] f(long j) {
        byte[] bArr = new byte[8];
        for (int i = 0; i < 8; i++) {
            bArr[7 - i] = (byte) ((j >> (i * 8)) & 255);
        }
        return bArr;
    }

    public static String g(String str) {
        if (n0.e(str)) {
            return "";
        }
        try {
            return URLEncoder.encode(str, "UTF-8");
        } catch (Exception unused) {
            return str;
        }
    }
}
