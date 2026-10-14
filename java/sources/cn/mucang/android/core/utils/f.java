package cn.mucang.android.core.utils;

import androidx.exifinterface.media.ExifInterface;
import com.google.common.primitives.UnsignedBytes;
import java.nio.charset.StandardCharsets;

/* JADX INFO: loaded from: classes.dex */
public class f {
    public static byte[] a(String str) {
        return b(str.getBytes(StandardCharsets.UTF_8));
    }

    public static byte[] b(byte[] bArr) {
        int i = ExifInterface.COLOR_SPACE_UNCALIBRATED;
        for (byte b : bArr) {
            i = ((i & 255) ^ (b & UnsignedBytes.MAX_VALUE)) | (65280 & i);
            for (int i2 = 0; i2 < 8; i2++) {
                i = (i & 1) > 0 ? (i >> 1) ^ 40961 : i >> 1;
            }
        }
        return c(i);
    }

    private static byte[] c(int i) {
        return new byte[]{(byte) (i & 255), (byte) ((i >> 8) & 255)};
    }
}
