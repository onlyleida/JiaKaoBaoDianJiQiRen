package cn.mucang.android.core.encode;

import java.io.IOException;
import java.io.InputStream;
import java.security.GeneralSecurityException;
import java.security.MessageDigest;
import java.security.SecureRandom;

/* JADX INFO: loaded from: classes.dex */
public class Digests {
    private static final String MD5 = "MD5";
    private static final String SHA1 = "SHA-1";
    private static SecureRandom random = new SecureRandom();

    private static byte[] digest(byte[] bArr, String str, byte[] bArr2, int i) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            if (bArr2 != null) {
                messageDigest.update(bArr2);
            }
            byte[] bArrDigest = messageDigest.digest(bArr);
            for (int i2 = 1; i2 < i; i2++) {
                messageDigest.reset();
                bArrDigest = messageDigest.digest(bArrDigest);
            }
            return bArrDigest;
        } catch (GeneralSecurityException e2) {
            throw b.a(e2);
        }
    }

    public static byte[] generateSalt(int i) {
        byte[] bArr = new byte[i];
        random.nextBytes(bArr);
        return bArr;
    }

    public static String md5(String str) {
        try {
            return a.e(md5(str.getBytes("UTF-8")));
        } catch (Exception e2) {
            throw b.a(e2);
        }
    }

    public static byte[] sha1(byte[] bArr) {
        return digest(bArr, "SHA-1", null, 1);
    }

    public static byte[] sha1(byte[] bArr, byte[] bArr2) {
        return digest(bArr, "SHA-1", bArr2, 1);
    }

    public static byte[] sha1(byte[] bArr, byte[] bArr2, int i) {
        return digest(bArr, "SHA-1", bArr2, i);
    }

    public static byte[] md5(byte[] bArr) {
        return digest(bArr, MD5, null, 1);
    }

    public static String sha1(String str) {
        try {
            return a.e(sha1(str.getBytes("UTF-8")));
        } catch (Exception e2) {
            throw b.a(e2);
        }
    }

    public static byte[] md5(byte[] bArr, byte[] bArr2) {
        return digest(bArr, MD5, bArr2, 1);
    }

    public static byte[] md5(byte[] bArr, byte[] bArr2, int i) {
        return digest(bArr, MD5, bArr2, i);
    }

    private static byte[] digest(InputStream inputStream, String str) throws IOException {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            byte[] bArr = new byte[8192];
            int i = inputStream.read(bArr, 0, 8192);
            while (i > -1) {
                messageDigest.update(bArr, 0, i);
                i = inputStream.read(bArr, 0, 8192);
            }
            return messageDigest.digest();
        } catch (GeneralSecurityException e2) {
            throw b.a(e2);
        }
    }

    public static byte[] md5(InputStream inputStream) throws IOException {
        return digest(inputStream, MD5);
    }

    public static byte[] sha1(InputStream inputStream) throws IOException {
        return digest(inputStream, "SHA-1");
    }
}
