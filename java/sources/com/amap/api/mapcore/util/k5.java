package com.amap.api.mapcore.util;

import android.text.TextUtils;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes5.dex */
public class k5 {
    public static String a(String str) {
        FileInputStream fileInputStream;
        try {
            if (TextUtils.isEmpty(str)) {
                return null;
            }
            File file = new File(str);
            if (file.isFile() && file.exists()) {
                byte[] bArr = new byte[2048];
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                fileInputStream = new FileInputStream(file);
                while (true) {
                    try {
                        int i = fileInputStream.read(bArr);
                        if (i == -1) {
                            break;
                        }
                        messageDigest.update(bArr, 0, i);
                    } catch (Throwable th) {
                        th = th;
                    }
                }
                String strA = n5.A(messageDigest.digest());
                try {
                    fileInputStream.close();
                } catch (IOException e2) {
                    b6.e(e2, "MD5", "gfm");
                }
                return strA;
            }
            return null;
        } catch (Throwable th2) {
            th = th2;
            fileInputStream = null;
        }
        try {
            b6.e(th, "MD5", "gfm");
            return null;
        } finally {
            if (fileInputStream != null) {
                try {
                    fileInputStream.close();
                } catch (IOException e3) {
                    b6.e(e3, "MD5", "gfm");
                }
            }
        }
    }

    public static String b(byte[] bArr) {
        return n5.A(e(bArr));
    }

    public static byte[] c(byte[] bArr, String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(str);
            messageDigest.update(bArr);
            return messageDigest.digest();
        } catch (Throwable th) {
            b6.e(th, "MD5", "gmb");
            return null;
        }
    }

    public static String d(String str) {
        if (str == null) {
            return null;
        }
        return n5.A(g(str));
    }

    private static byte[] e(byte[] bArr) {
        return c(bArr, "MD5");
    }

    public static String f(String str) {
        return n5.C(h(str));
    }

    public static byte[] g(String str) {
        try {
            return i(str);
        } catch (Throwable th) {
            b6.e(th, "MD5", "gmb");
            return new byte[0];
        }
    }

    private static byte[] h(String str) {
        try {
            return i(str);
        } catch (Throwable th) {
            th.printStackTrace();
            return new byte[0];
        }
    }

    private static byte[] i(String str) throws NoSuchAlgorithmException, UnsupportedEncodingException {
        if (str == null) {
            return null;
        }
        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
        messageDigest.update(n5.o(str));
        return messageDigest.digest();
    }
}
