package cn.mucang.sundial.android.tcp.utils;

import java.lang.reflect.Array;

/* JADX INFO: loaded from: classes5.dex */
public class ArrayUtils {
    public static int getLength(Object obj) {
        if (obj == null) {
            return 0;
        }
        return Array.getLength(obj);
    }

    public static boolean isEmpty(byte[] bArr) {
        return bArr == null || bArr.length == 0;
    }
}
