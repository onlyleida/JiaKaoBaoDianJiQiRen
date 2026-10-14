package com.iflytek.cloud.msc.util;

import android.os.Build;
import com.google.common.primitives.UnsignedBytes;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.ByteArrayOutputStream;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.MappedByteBuffer;
import java.nio.channels.FileChannel;
import java.security.MessageDigest;
import java.util.zip.GZIPOutputStream;

/* JADX INFO: loaded from: classes4.dex */
public class e {
    public static byte[] a(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        for (int i = 0; i < bArr.length; i++) {
            bArr[i] = (byte) (bArr[i] ^ 5);
        }
        return bArr;
    }

    public static byte[] b(byte[] bArr) throws Throwable {
        byte[] bArr2;
        GZIPOutputStream gZIPOutputStream = null;
        byte[] bArr3 = null;
        gZIPOutputStream = null;
        if (bArr == null) {
            return null;
        }
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            try {
                GZIPOutputStream gZIPOutputStream2 = new GZIPOutputStream(byteArrayOutputStream);
                try {
                    try {
                        gZIPOutputStream2.write(bArr);
                        gZIPOutputStream2.finish();
                        if (Build.VERSION.SDK_INT < 19) {
                            gZIPOutputStream2.flush();
                        }
                        byte[] byteArray = byteArrayOutputStream.toByteArray();
                        for (int i = 0; i < byteArray.length; i++) {
                            try {
                                byteArray[i] = (byte) (byteArray[i] ^ 5);
                            } catch (IOException e2) {
                                bArr3 = byteArray;
                                e = e2;
                                bArr2 = bArr3;
                                gZIPOutputStream = gZIPOutputStream2;
                                DebugLog.LogE(e);
                                if (gZIPOutputStream != null) {
                                    try {
                                        gZIPOutputStream.close();
                                    } catch (IOException e3) {
                                        DebugLog.LogE(e3);
                                        return bArr2;
                                    }
                                }
                                byteArrayOutputStream.close();
                                return bArr2;
                            }
                        }
                        try {
                            gZIPOutputStream2.close();
                            byteArrayOutputStream.close();
                            return byteArray;
                        } catch (IOException e4) {
                            DebugLog.LogE(e4);
                            return byteArray;
                        }
                    } catch (Throwable th) {
                        th = th;
                        gZIPOutputStream = gZIPOutputStream2;
                        if (gZIPOutputStream != null) {
                            try {
                                gZIPOutputStream.close();
                            } catch (IOException e5) {
                                DebugLog.LogE(e5);
                                throw th;
                            }
                        }
                        byteArrayOutputStream.close();
                        throw th;
                    }
                } catch (IOException e6) {
                    e = e6;
                }
            } catch (IOException e7) {
                e = e7;
                bArr2 = null;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static synchronized String a(String str) {
        StringBuffer stringBuffer;
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            char[] charArray = str.toCharArray();
            byte[] bArr = new byte[charArray.length];
            for (int i = 0; i < charArray.length; i++) {
                bArr[i] = (byte) charArray[i];
            }
            byte[] bArrDigest = messageDigest.digest(bArr);
            stringBuffer = new StringBuffer();
            for (byte b : bArrDigest) {
                int i2 = b & UnsignedBytes.MAX_VALUE;
                if (i2 < 16) {
                    stringBuffer.append("0");
                }
                stringBuffer.append(Integer.toHexString(i2));
            }
        } catch (Exception e2) {
            DebugLog.LogE(e2);
            return "";
        }
        return stringBuffer.toString();
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0052 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static String a(File file) throws Throwable {
        FileInputStream fileInputStream;
        String string = null;
        string = null;
        string = null;
        FileInputStream fileInputStream2 = null;
        try {
            if (!file.exists()) {
                return null;
            }
            try {
                fileInputStream = new FileInputStream(file);
                try {
                    try {
                        MappedByteBuffer map = fileInputStream.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, file.length());
                        MessageDigest messageDigest = MessageDigest.getInstance("MD5");
                        messageDigest.update(map);
                        string = new BigInteger(1, messageDigest.digest()).toString(16);
                        fileInputStream.close();
                    } catch (Exception e2) {
                        e = e2;
                        e.printStackTrace();
                        if (fileInputStream != null) {
                            fileInputStream.close();
                        }
                        return string;
                    }
                } catch (Throwable th) {
                    th = th;
                    fileInputStream2 = fileInputStream;
                    if (fileInputStream2 != null) {
                        try {
                            fileInputStream2.close();
                        } catch (IOException e3) {
                            e3.printStackTrace();
                        }
                    }
                    throw th;
                }
            } catch (Exception e4) {
                e = e4;
                fileInputStream = null;
            } catch (Throwable th2) {
                th = th2;
                if (fileInputStream2 != null) {
                    fileInputStream2.close();
                }
                throw th;
            }
        } catch (IOException e5) {
            e5.printStackTrace();
        }
        return string;
    }

    public static synchronized String b(String str) {
        DebugLog.LogD("cut16MD5 start:" + str);
        String strA = a(str);
        DebugLog.LogD("cut16MD5 start:" + strA);
        StringBuffer stringBuffer = new StringBuffer();
        if (strA != null && strA.length() != 0) {
            DebugLog.LogD("cut16MD5 md5 size is:" + strA.length());
            for (int i = 0; i < strA.length(); i++) {
                if (i % 2 == 0) {
                    DebugLog.LogD("cut16MD5 result i:" + strA.charAt(i));
                    stringBuffer.append(strA.charAt(i));
                }
                DebugLog.LogD("cut16MD5 result i = :" + i);
            }
            DebugLog.LogD("cut16MD5 result:" + ((Object) stringBuffer));
            return stringBuffer.toString();
        }
        return null;
    }
}
