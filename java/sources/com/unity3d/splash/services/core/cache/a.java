package com.unity3d.splash.services.core.cache;

import android.content.Context;
import android.os.Build;
import android.os.Environment;
import com.unity3d.splash.services.core.log.DeviceLog;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f14372a;
    private boolean b = false;
    private File c = null;

    public a(String str) {
        this.f14372a = str;
    }

    private void b(File file) {
        try {
            if (new File(file, ".nomedia").createNewFile()) {
                DeviceLog.c("Successfully created .nomedia file");
            } else {
                DeviceLog.c("Using existing .nomedia file");
            }
        } catch (Exception e2) {
            DeviceLog.f("Failed to create .nomedia file", e2);
        }
    }

    public File a(File file, String str) {
        if (file == null) {
            return null;
        }
        File file2 = new File(file, str);
        file2.mkdirs();
        if (file2.isDirectory()) {
            return file2;
        }
        return null;
    }

    /* JADX WARN: Code duplicated, block: B:22:0x0063  */
    /* JADX WARN: Code duplicated, block: B:23:0x007a  */
    /* JADX WARN: Instruction removed from duplicated block: B:22:0x0063, please report this as an issue */
    public File c(Context context) {
        File filesDir;
        String str;
        File fileA;
        if (this.b) {
            return this.c;
        }
        this.b = true;
        if (Build.VERSION.SDK_INT <= 18) {
            filesDir = context.getFilesDir();
            if (d(filesDir)) {
                DeviceLog.e("Unity Ads failed to initialize cache directory");
                return null;
            }
            this.c = filesDir;
            CacheDirectoryType cacheDirectoryType = CacheDirectoryType.INTERNAL;
            str = "Unity Ads is using internal cache directory: " + filesDir.getAbsolutePath();
        } else {
            if ("mounted".equals(Environment.getExternalStorageState())) {
                try {
                    fileA = a(context.getExternalCacheDir(), this.f14372a);
                } catch (Exception e2) {
                    DeviceLog.f("Creating external cache directory failed", e2);
                    fileA = null;
                }
                if (d(fileA)) {
                    b(fileA);
                    this.c = fileA;
                    CacheDirectoryType cacheDirectoryType2 = CacheDirectoryType.EXTERNAL;
                    str = "Unity Ads is using external cache directory: " + fileA.getAbsolutePath();
                }
            } else {
                DeviceLog.c("External media not mounted");
            }
            filesDir = context.getFilesDir();
            if (d(filesDir)) {
                DeviceLog.e("Unity Ads failed to initialize cache directory");
                return null;
            }
            this.c = filesDir;
            CacheDirectoryType cacheDirectoryType3 = CacheDirectoryType.INTERNAL;
            str = "Unity Ads is using internal cache directory: " + filesDir.getAbsolutePath();
        }
        DeviceLog.c(str);
        return this.c;
    }

    public boolean d(File file) {
        if (file != null && file.isDirectory()) {
            try {
                byte[] bytes = "test".getBytes("UTF-8");
                int length = bytes.length;
                byte[] bArr = new byte[length];
                File file2 = new File(file, "UnityAdsTest.txt");
                FileOutputStream fileOutputStream = new FileOutputStream(file2);
                fileOutputStream.write(bytes);
                fileOutputStream.flush();
                fileOutputStream.close();
                FileInputStream fileInputStream = new FileInputStream(file2);
                int i = fileInputStream.read(bArr, 0, length);
                fileInputStream.close();
                if (!file2.delete()) {
                    DeviceLog.c("Failed to delete testfile " + file2.getAbsoluteFile());
                    return false;
                }
                if (i != length) {
                    DeviceLog.c("Read buffer size mismatch");
                    return false;
                }
                if (new String(bArr, "UTF-8").equals("test")) {
                    return true;
                }
                DeviceLog.c("Read buffer content mismatch");
                return false;
            } catch (Exception e2) {
                DeviceLog.c("Unity Ads exception while testing cache directory " + file.getAbsolutePath() + ": " + e2.getMessage());
            }
        }
        return false;
    }
}
