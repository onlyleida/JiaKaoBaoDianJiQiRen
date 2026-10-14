package com.mobile.auth.b;

import com.google.android.exoplayer2.C;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import okio.Utf8;

/* JADX INFO: loaded from: classes2.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f13096a = "b";
    private static char[] b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static byte[] c = {-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -1, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -1, -1, -1, -1, -1, -1, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1};

    public static String a(byte[] bArr) {
        String str;
        try {
            StringBuffer stringBuffer = new StringBuffer();
            int length = bArr.length;
            int i = 0;
            while (i < length) {
                int i2 = i + 1;
                int i3 = bArr[i] & UnsignedBytes.MAX_VALUE;
                if (i2 == length) {
                    stringBuffer.append(b[i3 >>> 2]);
                    stringBuffer.append(b[(i3 & 3) << 4]);
                    str = "==";
                } else {
                    int i4 = i2 + 1;
                    int i5 = bArr[i2] & UnsignedBytes.MAX_VALUE;
                    if (i4 == length) {
                        stringBuffer.append(b[i3 >>> 2]);
                        stringBuffer.append(b[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                        stringBuffer.append(b[(i5 & 15) << 2]);
                        str = "=";
                    } else {
                        int i6 = i4 + 1;
                        int i7 = bArr[i4] & UnsignedBytes.MAX_VALUE;
                        stringBuffer.append(b[i3 >>> 2]);
                        stringBuffer.append(b[((i3 & 3) << 4) | ((i5 & 240) >>> 4)]);
                        stringBuffer.append(b[((i5 & 15) << 2) | ((i7 & 192) >>> 6)]);
                        stringBuffer.append(b[i7 & 63]);
                        i = i6;
                    }
                }
                stringBuffer.append(str);
                break;
            }
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

    public static byte[] a(String str) {
        try {
            return b(str);
        } catch (Throwable th) {
            try {
                com.mobile.auth.a.a.a(f13096a, "When decode() ,throws exception", th);
                return new byte[0];
            } catch (Throwable th2) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return null;
                } catch (Throwable th3) {
                    com.mobile.auth.gatewayauth.a.a(th3);
                    return null;
                }
            }
        }
    }

    private static byte[] b(String str) throws Throwable {
        int i;
        byte b2;
        int i2;
        byte b3;
        int i3;
        byte b4;
        int i4;
        byte b5;
        try {
            StringBuffer stringBuffer = new StringBuffer();
            byte[] bytes = str.getBytes(C.ASCII_NAME);
            int length = bytes.length;
            int i5 = 0;
            while (i5 < length) {
                while (true) {
                    i = i5 + 1;
                    b2 = c[bytes[i5]];
                    if (i >= length || b2 != -1) {
                        break;
                        break;
                    }
                    i5 = i;
                }
                if (b2 == -1) {
                    break;
                }
                while (true) {
                    i2 = i + 1;
                    b3 = c[bytes[i]];
                    if (i2 >= length || b3 != -1) {
                        break;
                        break;
                    }
                    i = i2;
                }
                if (b3 == -1) {
                    break;
                }
                stringBuffer.append((char) ((b2 << 2) | ((b3 & 48) >>> 4)));
                while (true) {
                    i3 = i2 + 1;
                    byte b6 = bytes[i2];
                    if (b6 != 61) {
                        b4 = c[b6];
                        if (i3 >= length || b4 != -1) {
                            break;
                            break;
                        }
                        i2 = i3;
                    } else {
                        return stringBuffer.toString().getBytes("iso8859-1");
                    }
                }
                if (b4 == -1) {
                    break;
                }
                stringBuffer.append((char) (((b3 & Ascii.SI) << 4) | ((b4 & 60) >>> 2)));
                while (true) {
                    i4 = i3 + 1;
                    byte b7 = bytes[i3];
                    if (b7 != 61) {
                        b5 = c[b7];
                        if (i4 >= length || b5 != -1) {
                            break;
                            break;
                        }
                        i3 = i4;
                    } else {
                        return stringBuffer.toString().getBytes("iso8859-1");
                    }
                }
                if (b5 == -1) {
                    break;
                }
                stringBuffer.append((char) (b5 | ((b4 & 3) << 6)));
                i5 = i4;
            }
            return stringBuffer.toString().getBytes("iso8859-1");
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
