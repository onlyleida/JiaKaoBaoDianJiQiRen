package com.amap.api.mapcore.util;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import android.os.storage.StorageManager;
import android.text.TextUtils;
import java.io.Closeable;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.lang.reflect.Array;
import java.lang.reflect.Method;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.FileLock;

/* JADX INFO: loaded from: classes5.dex */
public class s5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final String f11173a = n5.t("SYmFja3Vwcw");
    public static final String b = n5.t("SLmFkaXU");
    public static final String c = n5.t("JIw");

    private static String a(Context context, boolean z) {
        StorageManager storageManager = Build.VERSION.SDK_INT >= 9 ? (StorageManager) context.getSystemService("storage") : null;
        try {
            Class<?> cls = Class.forName(n5.t("SYW5kcm9pZC5vcy5zdG9yYWdlLlN0b3JhZ2VWb2x1bWU"));
            Method method = storageManager.getClass().getMethod(n5.t("FZ2V0Vm9sdW1lTGlzdA"), new Class[0]);
            Method method2 = cls.getMethod(n5.t("ZZ2V0UGF0aA"), new Class[0]);
            Method method3 = cls.getMethod(n5.t("AaXNSZW1vdmFibGUK"), new Class[0]);
            Object objInvoke = method.invoke(storageManager, new Object[0]);
            int length = Array.getLength(objInvoke);
            for (int i = 0; i < length; i++) {
                Object obj = Array.get(objInvoke, i);
                String str = (String) method2.invoke(obj, new Object[0]);
                if (z == ((Boolean) method3.invoke(obj, new Object[0])).booleanValue()) {
                    return str;
                }
            }
            return null;
        } catch (Throwable unused) {
            return Environment.getExternalStorageDirectory().getAbsolutePath();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r5v10 */
    /* JADX WARN: Type inference failed for: r5v11 */
    /* JADX WARN: Type inference failed for: r5v12 */
    /* JADX WARN: Type inference failed for: r5v2, types: [java.io.File] */
    /* JADX WARN: Type inference failed for: r5v3 */
    /* JADX WARN: Type inference failed for: r5v4 */
    /* JADX WARN: Type inference failed for: r5v5 */
    /* JADX WARN: Type inference failed for: r5v6, types: [java.io.Closeable] */
    /* JADX WARN: Type inference failed for: r5v7 */
    /* JADX WARN: Type inference failed for: r5v8, types: [java.io.RandomAccessFile] */
    /* JADX WARN: Type inference failed for: r5v9 */
    public static synchronized void b(Context context, String str, String str2) {
        FileChannel channel;
        String strA = a(context, false);
        if (TextUtils.isEmpty(strA)) {
            return;
        }
        String str3 = str + c + str2;
        ?? file = new File(strA + File.separator + f11173a);
        File file2 = new File((File) file, b);
        FileLock fileLockTryLock = null;
        try {
            try {
                if (!file.exists() || file.isDirectory()) {
                    file.mkdirs();
                }
                file2.createNewFile();
                file = new RandomAccessFile(file2, "rws");
                try {
                    channel = file.getChannel();
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
                            channel.close();
                            file = file;
                        }
                    } catch (Throwable unused2) {
                        file = file;
                        if (fileLockTryLock != null) {
                            try {
                                fileLockTryLock.release();
                            } catch (IOException unused3) {
                            }
                        }
                        if (channel != null) {
                            channel.close();
                            file = file;
                        }
                        c(file);
                    }
                } catch (Throwable unused4) {
                    channel = null;
                    file = file;
                }
            } catch (IOException unused5) {
            }
        } catch (Throwable unused6) {
            channel = null;
            file = 0;
        }
        c(file);
    }

    private static void c(Closeable closeable) {
        if (closeable != null) {
            try {
                closeable.close();
            } catch (Throwable unused) {
            }
        }
    }
}
