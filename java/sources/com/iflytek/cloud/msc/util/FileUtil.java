package com.iflytek.cloud.msc.util;

import android.content.Context;
import android.os.Environment;
import android.os.MemoryFile;
import android.text.TextUtils;
import com.iflytek.cloud.msc.util.log.DebugLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.RandomAccessFile;
import java.util.Iterator;
import java.util.concurrent.ConcurrentLinkedQueue;

/* JADX INFO: loaded from: classes4.dex */
public class FileUtil {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static String f12349a = "";

    public static boolean checkFileMD5(String str, String str2) {
        if (str.equals(e.a(new File(str2)))) {
            return true;
        }
        deleteFile(str2);
        return false;
    }

    public static void copyAssetsFile(Context context, String str, String str2) throws Throwable {
        Throwable th;
        InputStream inputStreamOpen;
        FileOutputStream fileOutputStream = null;
        try {
            inputStreamOpen = context.getAssets().open(str);
            try {
                makeDir(str2);
                FileOutputStream fileOutputStream2 = new FileOutputStream(str2, false);
                try {
                    byte[] bArr = new byte[2048];
                    while (true) {
                        int i = inputStreamOpen.read(bArr);
                        if (i <= 0) {
                            inputStreamOpen.close();
                            fileOutputStream2.close();
                            return;
                        }
                        fileOutputStream2.write(bArr, 0, i);
                    }
                } catch (Throwable th2) {
                    th = th2;
                    fileOutputStream = fileOutputStream2;
                    if (inputStreamOpen != null) {
                        inputStreamOpen.close();
                    }
                    if (fileOutputStream == null) {
                        throw th;
                    }
                    fileOutputStream.close();
                    throw th;
                }
            } catch (Throwable th3) {
                th = th3;
            }
        } catch (Throwable th4) {
            th = th4;
            inputStreamOpen = null;
        }
    }

    public static void deleteFile(String str) {
        File file = new File(str);
        if (file.exists()) {
            file.delete();
        }
    }

    public static boolean formatPcm(String str, String str2, int i) {
        if (TextUtils.isEmpty(str) || "pcm".equals(str)) {
            return true;
        }
        if ("wav".equals(str)) {
            return pcm2Wav(str2, i);
        }
        DebugLog.LogE("format not supported");
        return false;
    }

    public static String getResFilePath(Context context, String str) {
        if (TextUtils.isEmpty(str)) {
            str = System.currentTimeMillis() + "";
        }
        String absolutePath = "mounted".equals(Environment.getExternalStorageState()) ? Environment.getExternalStorageDirectory().getAbsolutePath() : context.getFilesDir().getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        String str2 = (absolutePath + "msc/") + "res/";
        File file = new File(str2);
        if (!file.exists()) {
            file.mkdirs();
        }
        String str3 = str2 + str;
        if (str3.endsWith(".jet")) {
            return str3;
        }
        return str3 + ".jet";
    }

    public static String getUserPath(Context context) {
        if (!TextUtils.isEmpty(f12349a)) {
            return f12349a;
        }
        String absolutePath = context.getFilesDir().getAbsolutePath();
        if (!absolutePath.endsWith("/")) {
            absolutePath = absolutePath + "/";
        }
        String str = absolutePath + "msclib/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        f12349a = str;
        return str;
    }

    public static void makeDir(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        File file = new File(str);
        if (!str.endsWith("/")) {
            file = file.getParentFile();
        }
        if (file.exists()) {
            return;
        }
        file.mkdirs();
    }

    public static boolean pcm2Wav(String str, int i) {
        try {
            com.iflytek.cloud.record.d dVar = new com.iflytek.cloud.record.d(new File(str), i);
            dVar.c();
            dVar.a();
            return true;
        } catch (IOException e2) {
            DebugLog.LogE(e2);
            return false;
        }
    }

    /* JADX WARN: Code duplicated, block: B:40:0x0032 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:44:0x0049 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    public static byte[] readFile(String str) throws Throwable {
        Exception e2;
        byte[] bArr;
        FileInputStream fileInputStream;
        Throwable th;
        IOException e3;
        FileInputStream fileInputStream2 = null;
        byte[] bArr2 = null;
        FileInputStream fileInputStream3 = null;
        try {
            File file = new File(str);
            if (!file.exists()) {
                return null;
            }
            fileInputStream = new FileInputStream(file);
            try {
                bArr2 = new byte[fileInputStream.available()];
                fileInputStream.read(bArr2);
                try {
                    fileInputStream.close();
                    return bArr2;
                } catch (IOException e4) {
                    e3 = e4;
                    DebugLog.LogE(e3);
                    return bArr2;
                }
            } catch (Exception e5) {
                e2 = e5;
                byte[] bArr3 = bArr2;
                fileInputStream3 = fileInputStream;
                bArr = bArr3;
                DebugLog.LogE(e2);
                if (fileInputStream3 != null) {
                    try {
                        fileInputStream3.close();
                    } catch (IOException e6) {
                        bArr2 = bArr;
                        e3 = e6;
                        DebugLog.LogE(e3);
                        return bArr2;
                    }
                }
                return bArr;
            } catch (Throwable th2) {
                th = th2;
                Throwable th3 = th;
                fileInputStream2 = fileInputStream;
                th = th3;
                if (fileInputStream2 != null) {
                    try {
                        fileInputStream2.close();
                    } catch (IOException e7) {
                        DebugLog.LogE(e7);
                    }
                }
                throw th;
            }
        } catch (Exception e8) {
            e2 = e8;
            bArr = null;
        } catch (Throwable th4) {
            th = th4;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
        try {
            DebugLog.LogE(e2);
            if (fileInputStream3 != null) {
                fileInputStream3.close();
            }
            return bArr;
        } catch (Throwable th5) {
            FileInputStream fileInputStream4 = fileInputStream3;
            th = th5;
            fileInputStream = fileInputStream4;
            Throwable th6 = th;
            fileInputStream2 = fileInputStream;
            th = th6;
            if (fileInputStream2 != null) {
                fileInputStream2.close();
            }
            throw th;
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v0 */
    /* JADX WARN: Type inference failed for: r0v1 */
    /* JADX WARN: Type inference failed for: r0v10 */
    /* JADX WARN: Type inference failed for: r0v11 */
    /* JADX WARN: Type inference failed for: r0v12, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v13 */
    /* JADX WARN: Type inference failed for: r0v14 */
    /* JADX WARN: Type inference failed for: r0v15 */
    /* JADX WARN: Type inference failed for: r0v2, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v3, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r0v4 */
    /* JADX WARN: Type inference failed for: r0v5 */
    /* JADX WARN: Type inference failed for: r0v6 */
    /* JADX WARN: Type inference failed for: r0v7, types: [byte[]] */
    /* JADX WARN: Type inference failed for: r0v8 */
    /* JADX WARN: Type inference failed for: r0v9 */
    /* JADX WARN: Type inference failed for: r1v0 */
    /* JADX WARN: Type inference failed for: r2v1 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v7, types: [java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r2v8 */
    public static byte[] readFileFromAssets(Context context, String str) throws Throwable {
        ?? r2;
        IOException e2;
        ?? r0 = 0;
        r0 = 0;
        ?? r1 = 0;
        try {
            try {
                ?? Open = context.getAssets().open(str);
                try {
                    r0 = new byte[Open.available()];
                    Open.read(r0);
                    try {
                        Open.close();
                        r0 = r0;
                    } catch (IOException e3) {
                        e2 = e3;
                        DebugLog.LogE(e2);
                    }
                } catch (Exception e4) {
                    e = e4;
                    ?? r3 = r0;
                    r1 = Open;
                    r2 = r3;
                    DebugLog.LogE(e);
                    if (r1 != 0) {
                        try {
                            r1.close();
                        } catch (IOException e5) {
                            r0 = r2;
                            e2 = e5;
                            DebugLog.LogE(e2);
                        }
                    }
                    r0 = r2;
                } catch (Throwable th) {
                    th = th;
                    r0 = Open;
                    if (r0 != 0) {
                        try {
                            r0.close();
                        } catch (IOException e6) {
                            DebugLog.LogE(e6);
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception e7) {
            e = e7;
            r2 = 0;
        }
        return r0;
    }

    public static boolean saveFile(MemoryFile memoryFile, long j, String str) throws Throwable {
        boolean z = false;
        if (memoryFile == null || TextUtils.isEmpty(str)) {
            return false;
        }
        FileOutputStream fileOutputStream = null;
        try {
            try {
                try {
                    deleteFile(str);
                    makeDir(str);
                    FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                    try {
                        byte[] bArr = new byte[65536];
                        int i = 0;
                        while (true) {
                            long j2 = i;
                            if (j2 >= j) {
                                break;
                            }
                            long j3 = j - j2;
                            if (j3 > 65536) {
                                j3 = 65536;
                            }
                            int i2 = (int) j3;
                            memoryFile.readBytes(bArr, i, 0, i2);
                            fileOutputStream2.write(bArr, 0, i2);
                            i += i2;
                        }
                        z = true;
                        fileOutputStream2.close();
                    } catch (Exception e2) {
                        e = e2;
                        fileOutputStream = fileOutputStream2;
                        DebugLog.LogE(e);
                        if (fileOutputStream != null) {
                            fileOutputStream.close();
                        }
                        return z;
                    } catch (Throwable th) {
                        th = th;
                        fileOutputStream = fileOutputStream2;
                        if (fileOutputStream != null) {
                            try {
                                fileOutputStream.close();
                            } catch (Exception unused) {
                            }
                        }
                        throw th;
                    }
                } catch (Exception e3) {
                    e = e3;
                }
                return z;
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused2) {
        }
    }

    /* JADX WARN: Code duplicated, block: B:26:0x003e A[Catch: Exception -> 0x0041, TRY_ENTER, TRY_LEAVE, TryCatch #5 {Exception -> 0x0041, blocks: (B:18:0x0030, B:26:0x003e), top: B:33:0x0002 }] */
    public static boolean saveFile(byte[] bArr, String str, boolean z, int i) throws Throwable {
        Exception e2;
        boolean z2 = false;
        RandomAccessFile randomAccessFile = null;
        try {
            try {
                if (!z) {
                    try {
                        deleteFile(str);
                    } catch (Exception e3) {
                        e2 = e3;
                        DebugLog.LogE(e2);
                        if (randomAccessFile != null) {
                            randomAccessFile.close();
                        }
                        return z2;
                    }
                }
                makeDir(str);
                RandomAccessFile randomAccessFile2 = new RandomAccessFile(str, "rw");
                try {
                    if (!z) {
                        randomAccessFile2.setLength(0L);
                    } else if (i < 0) {
                        randomAccessFile2.seek(randomAccessFile2.length());
                    } else {
                        randomAccessFile2.seek(i);
                    }
                    randomAccessFile2.write(bArr);
                    z2 = true;
                    randomAccessFile2.close();
                } catch (Exception e4) {
                    e2 = e4;
                    randomAccessFile = randomAccessFile2;
                    DebugLog.LogE(e2);
                    if (randomAccessFile != null) {
                        randomAccessFile.close();
                    }
                    return z2;
                } catch (Throwable th) {
                    th = th;
                    randomAccessFile = randomAccessFile2;
                    if (randomAccessFile != null) {
                        try {
                            randomAccessFile.close();
                        } catch (Exception unused) {
                        }
                    }
                    throw th;
                }
            } catch (Throwable th2) {
                th = th2;
            }
        } catch (Exception unused2) {
        }
        return z2;
    }

    public static boolean saveFile(ConcurrentLinkedQueue<byte[]> concurrentLinkedQueue, String str) throws Throwable {
        FileOutputStream fileOutputStream = null;
        try {
            try {
                makeDir(str);
                FileOutputStream fileOutputStream2 = new FileOutputStream(str);
                try {
                    Iterator<byte[]> it = concurrentLinkedQueue.iterator();
                    while (it.hasNext()) {
                        fileOutputStream2.write(it.next());
                    }
                    fileOutputStream2.close();
                    return true;
                } catch (Exception e2) {
                    e = e2;
                    fileOutputStream = fileOutputStream2;
                    DebugLog.LogE(e);
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e3) {
                            DebugLog.LogE(e3);
                        }
                    }
                    return false;
                } catch (Throwable th) {
                    th = th;
                    fileOutputStream = fileOutputStream2;
                    if (fileOutputStream != null) {
                        try {
                            fileOutputStream.close();
                        } catch (Exception e4) {
                            DebugLog.LogE(e4);
                        }
                    }
                    throw th;
                }
            } catch (Exception e5) {
                e = e5;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }
}
