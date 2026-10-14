package com.unity3d.splash.services.c.a;

import android.os.Handler;
import android.os.Looper;
import cn.mucang.sundial.android.tcp.message.training.TrainingMessage;
import com.google.common.primitives.UnsignedBytes;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.security.MessageDigest;
import java.security.NoSuchAlgorithmException;

/* JADX INFO: loaded from: classes6.dex */
public class b {
    public static String a(String str) {
        return b(str.getBytes());
    }

    public static String b(byte[] bArr) {
        if (bArr == null) {
            return null;
        }
        try {
            MessageDigest messageDigest = MessageDigest.getInstance(TrainingMessage.ExtendAttribute.SHA_256);
            messageDigest.update(bArr, 0, bArr.length);
            return f(messageDigest.digest());
        } catch (NoSuchAlgorithmException e2) {
            DeviceLog.f("SHA-256 algorithm not found", e2);
            return null;
        }
    }

    public static byte[] c(File file) throws IOException {
        if (file == null) {
            return null;
        }
        FileInputStream fileInputStream = new FileInputStream(file);
        byte[] bArr = new byte[(int) file.length()];
        int i = 0;
        int length = file.length() < 4096 ? (int) file.length() : 4096;
        while (true) {
            int i2 = fileInputStream.read(bArr, i, length);
            if (i2 <= 0) {
                fileInputStream.close();
                return bArr;
            }
            i += i2;
            if (file.length() - ((long) i) < 4096) {
                length = ((int) file.length()) - i;
            }
        }
    }

    public static void d(Runnable runnable) {
        e(runnable, 0L);
    }

    public static void e(Runnable runnable, long j) {
        Handler handler = new Handler(Looper.getMainLooper());
        if (j > 0) {
            handler.postDelayed(runnable, j);
        } else {
            handler.post(runnable);
        }
    }

    public static String f(byte[] bArr) {
        String str = "";
        for (byte b : bArr) {
            int i = b & UnsignedBytes.MAX_VALUE;
            if (i <= 15) {
                str = str + "0";
            }
            str = str + Integer.toHexString(i);
        }
        return str;
    }

    public static boolean g(File file, String str) throws Throwable {
        boolean z = false;
        if (file == null) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                FileOutputStream fileOutputStream2 = new FileOutputStream(file);
                try {
                    fileOutputStream2.write(str.getBytes());
                    fileOutputStream2.flush();
                    try {
                        fileOutputStream2.close();
                    } catch (Exception e2) {
                        DeviceLog.f("Error closing FileOutputStream", e2);
                    }
                    z = true;
                } catch (Exception e3) {
                    e = e3;
                    fileOutputStream = fileOutputStream2;
                    DeviceLog.f("Could not write file", e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e4) {
                            DeviceLog.f("Error closing FileOutputStream", e4);
                        }
                    }
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e5) {
                            DeviceLog.f("Error closing FileOutputStream", e5);
                        }
                    }
                    throw th;
                }
            } catch (Exception e6) {
                e = e6;
            }
            if (z) {
                DeviceLog.c("Wrote file: " + file.getAbsolutePath());
            }
            return z;
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
