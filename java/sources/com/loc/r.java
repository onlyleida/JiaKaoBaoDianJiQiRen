package com.loc;

import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes4.dex */
public final class r {
    public static String a(String str) {
        if (str == null) {
            return null;
        }
        return w.e(c(str));
    }

    public static String a(byte[] bArr) {
        return w.e(a(bArr, w.c("ETUQ1")));
    }

    public static byte[] a(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable th) {
            aj.a(th, "MD5", "gmb");
            return null;
        }
    }

    public static String b(String str) {
        return w.f(d(str));
    }

    private static byte[] c(String str) {
        try {
            return e(str);
        } catch (Throwable th) {
            aj.a(th, "MD5", "gmb");
            return new byte[0];
        }
    }

    private static byte[] d(String str) {
        try {
            return e(str);
        } catch (Throwable th) {
            th.printStackTrace();
            return new byte[0];
        }
    }

    private static byte[] e(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance(w.c("ETUQ1"));
        messageDigest.update(w.a(str));
        return messageDigest.digest();
    }
}
