package com.loc;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes4.dex */
public final class aa {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f12480a = w.c("SYmFja3Vwcw");
    public static final String b = w.c("SLmFkaXU");
    public static final String c = w.c("JIw");

    private static String a(Context context) {
        File externalFilesDir;
        int i = Build.VERSION.SDK_INT;
        if (i >= 31 || (context.getApplicationInfo().targetSdkVersion >= 30 && i >= 30)) {
            externalFilesDir = context.getApplicationContext().getExternalFilesDir("");
        } else {
            StorageManager storageManager = i >= 9 ? (StorageManager) context.getSystemService("storage") : null;
            try {
                Class<?> cls = Class.forName(w.c("SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"));
                Method method = storageManager.getClass().getMethod(w.c("FZ2V0Vm9sdW1lTGlzdA"), new Class[0]);
                Method method2 = cls.getMethod(w.c("ZZ2V0UGF0aA"), new Class[0]);
                Method method3 = cls.getMethod(w.c("AaXNSZW1vdmFibGUK"), new Class[0]);
                Object objInvoke = method.invoke(storageManager, new Object[0]);
                int length = Array.getLength(objInvoke);
                for (int i2 = 0; i2 < length; i2++) {
                    Object obj = Array.get(objInvoke, i2);
                    String str = (String) method2.invoke(obj, new Object[0]);
                    if (!((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                        return str;
                    }
                }
                return null;
            } catch (Throwable unused) {
                externalFilesDir = Environment.getExternalStorageDirectory();
            }
        }
        return externalFilesDir.getAbsolutePath();
    }

    public static synchronized void a(Context context, String str, String str2) {
        FileChannel channel;
        RandomAccessFile randomAccessFile;
        String strA = a(context);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        String str3 = str + c + str2;
        File file = new File(strA + File.separator + f12480a);
        File file2 = new File(file, b);
        FileLock fileLockTryLock = null;
        try {
            if (!file.exists() || file.isDirectory()) {
                file.mkdirs();
            }
            file2.createNewFile();
            randomAccessFile = new RandomAccessFile(file2, "rws");
            try {
                channel = randomAccessFile.getChannel();
                try {
                    fileLockTryLock = channel.tryLock();
                    if (fileLockTryLock != null) {
                        channel.write(ByteBuffer.wrap(str3.getBytes("UTF-8")));
                    }
                    if (fileLockTryLock != null) {
                        try {
                            fileLockTryLock.release();
                        } catch (IOException unused) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused2) {
                        }
                    }
                    try {
                        randomAccessFile.close();
                    } catch (Throwable unused3) {
                    }
                } catch (Throwable unused4) {
                    if (fileLockTryLock != null) {
                        try {
                            fileLockTryLock.release();
                        } catch (IOException unused5) {
                        }
                    }
                    if (channel != null) {
                        try {
                            channel.close();
                        } catch (IOException unused6) {
                        }
                    }
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Throwable unused7) {
                        }
                    }
                }
            } catch (Throwable unused8) {
                channel = null;
            }
        } catch (Throwable unused9) {
            channel = null;
            randomAccessFile = null;
        }
    }
}
