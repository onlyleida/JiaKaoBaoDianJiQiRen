package com.mobile.auth.ab;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.net.ConnectivityManager;
import android.net.NetworkInfo;
import android.text.TextUtils;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.lang.reflect.Method;
import java.net.Inet4Address;
import java.net.Inet6Address;
import java.net.InetAddress;
import java.net.NetworkInterface;
import java.net.URLEncoder;
import java.net.UnknownHostException;
import java.security.KeyFactory;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;
import java.security.PublicKey;
import java.security.spec.X509EncodedKeySpec;
import java.util.Enumeration;
import java.util.UUID;
import javax.crypto.Cipher;

/* JADX INFO: loaded from: classes2.dex */
public class f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final char[] f13094a = {'0', '1', '2', '3', '4', '5', '6', '7', '8', '9', 'a', 'b', 'c', 'd', 'e', 'f'};

    public static int a(Context context) {
        try {
            try {
                ConnectivityManager connectivityManager = (ConnectivityManager) context.getApplicationContext().getSystemService("connectivity");
                NetworkInfo activeNetworkInfo = connectivityManager.getActiveNetworkInfo();
                if (activeNetworkInfo != null && activeNetworkInfo.isAvailable()) {
                    if (activeNetworkInfo.getType() != 1) {
                        if (activeNetworkInfo.getType() == 0) {
                            d.c("Only Data");
                            return 0;
                        }
                        return -1;
                    }
                    if (a(connectivityManager)) {
                        d.c("Data and WIFI");
                        return 1;
                    }
                    d.c("Only WIFI");
                    return 2;
                }
                return -1;
            } catch (Exception e2) {
                e2.printStackTrace();
            }
        } catch (Throwable th) {
            try {
                com.mobile.auth.gatewayauth.a.a(th);
                return -1;
            } catch (Throwable th2) {
                com.mobile.auth.gatewayauth.a.a(th2);
                return -1;
            }
        }
    }

    public static String a(String str) {
        try {
            try {
                MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                messageDigest.update(str.getBytes());
                byte[] bArrDigest = messageDigest.digest();
                StringBuffer stringBuffer = new StringBuffer("");
                for (int i = 0; i < bArrDigest.length; i++) {
                    int i2 = bArrDigest[i];
                    if (i2 < 0) {
                        i2 += 256;
                    }
                    if (i2 < 16) {
                        stringBuffer.append("0");
                    }
                    stringBuffer.append(Integer.toHexString(i2));
                }
                return stringBuffer.toString();
            } catch (NoSuchAlgorithmException e2) {
                e2.printStackTrace();
                return "";
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

    public static String a(String str, String str2) throws Exception {
        try {
            PublicKey publicKeyE = e(str2);
            Cipher cipher = Cipher.getInstance("RSA/ECB/PKCS1Padding");
            cipher.init(1, publicKeyE);
            return com.mobile.auth.y.b.a(cipher.doFinal(str.getBytes()));
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

    public static String a(byte[] bArr) {
        try {
            try {
                byte[] bArrDigest = MessageDigest.getInstance("MD5").digest(bArr);
                int length = bArrDigest.length;
                char[] cArr = new char[length * 2];
                for (int i = 0; i < length; i++) {
                    int i2 = bArrDigest[i] & Ascii.SI;
                    int i3 = (bArrDigest[i] & 240) >> 4;
                    int i4 = i * 2;
                    char[] cArr2 = f13094a;
                    cArr[i4] = cArr2[i3];
                    cArr[i4 + 1] = cArr2[i2];
                }
                return new String(cArr);
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
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

    public static boolean a(ConnectivityManager connectivityManager) {
        try {
            try {
                Method declaredMethod = ConnectivityManager.class.getDeclaredMethod("getMobileDataEnabled", new Class[0]);
                declaredMethod.setAccessible(true);
                boolean zBooleanValue = ((Boolean) declaredMethod.invoke(connectivityManager, new Object[0])).booleanValue();
                d.c("data is on:" + zBooleanValue);
                return zBooleanValue;
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return false;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return false;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
            return false;
        }
    }

    public static byte[] a(Context context, String str) {
        try {
            try {
                PackageInfo packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 64);
                if (packageInfo.packageName.equals(str)) {
                    return packageInfo.signatures[0].toByteArray();
                }
                return null;
            } catch (Exception e2) {
                e2.printStackTrace();
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

    public static String b(Context context) {
        try {
            try {
                StringBuilder sb = new StringBuilder();
                StringBuilder sb2 = new StringBuilder();
                Enumeration<NetworkInterface> networkInterfaces = NetworkInterface.getNetworkInterfaces();
                while (networkInterfaces.hasMoreElements()) {
                    NetworkInterface networkInterfaceNextElement = networkInterfaces.nextElement();
                    if (!networkInterfaceNextElement.getName().toLowerCase().contains("wlan") && !networkInterfaceNextElement.getName().toLowerCase().contains("tun")) {
                        Enumeration<InetAddress> inetAddresses = networkInterfaceNextElement.getInetAddresses();
                        while (inetAddresses.hasMoreElements()) {
                            InetAddress inetAddressNextElement = inetAddresses.nextElement();
                            if (!inetAddressNextElement.isLoopbackAddress() && !inetAddressNextElement.isLinkLocalAddress()) {
                                if (inetAddressNextElement instanceof Inet4Address) {
                                    sb.append(inetAddressNextElement.getHostAddress());
                                    sb.append(",");
                                }
                                if (inetAddressNextElement instanceof Inet6Address) {
                                    sb2.append(inetAddressNextElement.getHostAddress());
                                    sb2.append(",");
                                }
                            }
                        }
                    }
                }
                String str = sb.delete(sb.length() - 1, sb.length()).toString() + "|" + sb2.delete(sb2.length() - 1, sb2.length()).toString();
                d.c("ipList:" + str);
                return str;
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
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

    public static String b(Context context, String str) {
        try {
            try {
                return com.mobile.auth.y.a.a(a(a(context, str)), e.b().substring(0, 16));
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
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

    public static String b(String str) {
        try {
            int iIndexOf = str.indexOf("://");
            if (iIndexOf > 0) {
                str = str.substring(iIndexOf + 3);
            }
            int iIndexOf2 = str.indexOf(58);
            if (iIndexOf2 >= 0) {
                str = str.substring(0, iIndexOf2);
            }
            int iIndexOf3 = str.indexOf(47);
            if (iIndexOf3 >= 0) {
                str = str.substring(0, iIndexOf3);
            }
            int iIndexOf4 = str.indexOf(63);
            return iIndexOf4 >= 0 ? str.substring(0, iIndexOf4) : str;
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

    public static int c(String str) {
        try {
            try {
                byte[] address = InetAddress.getByName(str).getAddress();
                return (address[0] & UnsignedBytes.MAX_VALUE) | ((address[3] & UnsignedBytes.MAX_VALUE) << 24) | ((address[2] & UnsignedBytes.MAX_VALUE) << 16) | ((address[1] & UnsignedBytes.MAX_VALUE) << 8);
            } catch (Throwable th) {
                try {
                    com.mobile.auth.gatewayauth.a.a(th);
                    return -1;
                } catch (Throwable th2) {
                    com.mobile.auth.gatewayauth.a.a(th2);
                    return -1;
                }
            }
        } catch (UnknownHostException unused) {
            return -1;
        }
    }

    public static String c(Context context) {
        String strA = "";
        try {
            try {
                strA = g.a(context);
                if (TextUtils.isEmpty(strA) || strA.length() != 32) {
                    strA = a(UUID.randomUUID().toString());
                    g.a(context, strA);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
            }
            return strA;
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

    public static String d(String str) {
        try {
            try {
                return URLEncoder.encode(a(str, "MIGfMA0GCSqGSIb3DQEBAQUAA4GNADCBiQKBgQCbRkBR4leALApkWRp2ng8zJ2WgI7YEqtMwW9Q1tmRzDLPNhH0ugACfbiStBG4ybdYNHzRlxvOwQ7R0MeN56qEPsv6qieg/HiRXBnQ2hQ2hypo9JHqHx8BX54ESZ+BIf0imjGTcxtHvbzYA04ckmH5Enl2Pkd+R/RZuMK589C7KwQIDAQAB"), "UTF-8");
            } catch (Exception e2) {
                e2.printStackTrace();
                return "";
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

    public static PublicKey e(String str) throws Exception {
        try {
            return KeyFactory.getInstance("RSA").generatePublic(new X509EncodedKeySpec(com.mobile.auth.y.b.a(str)));
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
