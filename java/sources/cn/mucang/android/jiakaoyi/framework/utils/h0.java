package cn.mucang.android.jiakaoyi.framework.utils;

import com.google.common.primitives.UnsignedBytes;
import java.io.File;
import java.io.FileInputStream;
import java.math.BigInteger;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes2.dex */
public class h0 {
    public static String a(byte[] bArr) {
        StringBuilder sb = new StringBuilder("");
        if (bArr == null || bArr.length <= 0) {
            return null;
        }
        for (byte b : bArr) {
            String hexString = Integer.toHexString(b & UnsignedBytes.MAX_VALUE);
            if (hexString.length() < 2) {
                sb.append(0);
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    public static String b(File file) {
        if (!file.isFile()) {
            return null;
        }
        try {
            byte[] bArr = new byte[4096];
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                FileInputStream fileInputStream = new FileInputStream(file);
                while (true) {
                    int i = fileInputStream.read(bArr);
                    if (i == -1) {
                        fileInputStream.close();
                        return a(messageDigest.digest());
                    }
                    messageDigest.update(bArr, 0, i);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                return null;
            }
        } catch (Throwable unused) {
            return null;
        }
    }

    public static byte[] c(byte[] bArr) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (NoSuchAlgorithmException e2) {
            cn.mucang.android.core.utils.t.d("TAG", e2.getLocalizedMessage());
            return null;
        }
    }

    public static String d(String str) {
        return cn.mucang.android.core.utils.n0.e(str) ? "" : new BigInteger(c(str.getBytes())).abs().toString(36);
    }
}
