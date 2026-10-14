package com.mobile.auth.y;

import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import com.mobile.auth.gatewayauth.utils.EncryptUtils;
import java.security.InvalidAlgorithmParameterException;
import java.security.InvalidKeyException;
import java.security.NoSuchAlgorithmException;
import java.util.UUID;
import javax.crypto.BadPaddingException;
import javax.crypto.Cipher;
import javax.crypto.IllegalBlockSizeException;
import javax.crypto.NoSuchPaddingException;
import javax.crypto.spec.IvParameterSpec;
import javax.crypto.spec.SecretKeySpec;

/* JADX INFO: loaded from: classes5.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f13609a = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};

    public static String a() {
        String strReplace = "";
        try {
            try {
                String string = UUID.randomUUID().toString();
                if (!TextUtils.isEmpty(string)) {
                    strReplace = string.replace("-", "");
                    if (strReplace.length() >= 16) {
                        strReplace = strReplace.substring(0, 16);
                    }
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return strReplace;
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String a(String str, String str2) {
        try {
            try {
                SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
                Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                cipher.init(1, secretKeySpec, new IvParameterSpec(new byte[cipher.getBlockSize()]));
                return a(cipher.doFinal(str.getBytes("UTF-8")));
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return null;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String a(byte[] bArr) {
        String str;
        try {
            int length = bArr.length;
            StringBuffer stringBuffer = new StringBuffer((bArr.length * 3) / 2);
            int i = length - 3;
            int i2 = 0;
            loop0: while (true) {
                int i3 = 0;
                while (true) {
                    if (i2 > i) {
                        break loop0;
                    }
                    int i4 = ((bArr[i2] & UnsignedBytes.MAX_VALUE) << 16) | ((bArr[i2 + 1] & UnsignedBytes.MAX_VALUE) << 8) | (bArr[i2 + 2] & UnsignedBytes.MAX_VALUE);
                    char[] cArr = f13609a;
                    stringBuffer.append(cArr[(i4 >> 18) & 63]);
                    stringBuffer.append(cArr[(i4 >> 12) & 63]);
                    stringBuffer.append(cArr[(i4 >> 6) & 63]);
                    stringBuffer.append(cArr[i4 & 63]);
                    i2 += 3;
                    int i5 = i3 + 1;
                    if (i3 >= 14) {
                        break;
                    }
                    i3 = i5;
                }
                stringBuffer.append(" ");
            }
            int i6 = 0 + length;
            if (i2 != i6 - 2) {
                if (i2 == i6 - 1) {
                    int i7 = (bArr[i2] & UnsignedBytes.MAX_VALUE) << 16;
                    char[] cArr2 = f13609a;
                    stringBuffer.append(cArr2[(i7 >> 18) & 63]);
                    stringBuffer.append(cArr2[(i7 >> 12) & 63]);
                    str = "==";
                }
                return stringBuffer.toString();
            }
            int i8 = ((bArr[i2 + 1] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[i2] & UnsignedBytes.MAX_VALUE) << 16);
            char[] cArr3 = f13609a;
            stringBuffer.append(cArr3[(i8 >> 18) & 63]);
            stringBuffer.append(cArr3[(i8 >> 12) & 63]);
            stringBuffer.append(cArr3[(i8 >> 6) & 63]);
            str = "=";
            stringBuffer.append(str);
            return stringBuffer.toString();
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }

    public static String b(String str, String str2) {
        try {
            try {
                try {
                    try {
                        IvParameterSpec ivParameterSpec = new IvParameterSpec(EncryptUtils.IV_PARAMETER_SPEC.getBytes());
                        SecretKeySpec secretKeySpec = new SecretKeySpec(str2.getBytes(), "AES");
                        Cipher cipher = Cipher.getInstance("AES/CBC/PKCS5Padding");
                        cipher.init(2, secretKeySpec, ivParameterSpec);
                        return new String(cipher.doFinal(c.a(str)));
                    } catch (InvalidAlgorithmParameterException e2) {
                        e2.printStackTrace();
                        return null;
                    } catch (NoSuchAlgorithmException e3) {
                        e3.printStackTrace();
                        return null;
                    }
                } catch (InvalidKeyException e4) {
                    e4.printStackTrace();
                    return null;
                } catch (NoSuchPaddingException e5) {
                    e5.printStackTrace();
                    return null;
                }
            } catch (BadPaddingException e6) {
                e6.printStackTrace();
                return null;
            } catch (IllegalBlockSizeException e7) {
                e7.printStackTrace();
                return null;
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return null;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return null;
            }
        }
    }
}
