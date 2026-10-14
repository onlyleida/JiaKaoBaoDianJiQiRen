package cn.mucang.android.core.api.cache;

import android.content.Context;
import android.os.Environment;
import cn.mucang.android.core.utils.t;
import java.io.File;
import java.io.IOException;

/* JADX INFO: loaded from: classes.dex */
public final class i {
    public static File a(Context context) {
        return b(context, true);
    }

    public static File b(Context context, boolean z) {
        String externalStorageState;
        try {
            externalStorageState = Environment.getExternalStorageState();
        } catch (NullPointerException unused) {
            externalStorageState = "";
        }
        File fileC = (z && "mounted".equals(externalStorageState) && d(context)) ? c(context) : null;
        if (fileC == null) {
            fileC = context.getCacheDir();
        }
        if (fileC == null) {
            String str = "/data/data/" + context.getPackageName() + "/cache/";
            t.m("cache", String.format("Can't define system cache directory! trying to use '%s'", str));
            fileC = new File(str);
        }
        if (fileC != null && !fileC.exists()) {
            fileC.mkdirs();
        }
        if (fileC == null || !fileC.exists()) {
            return null;
        }
        return fileC;
    }

    private static File c(Context context) {
        File externalCacheDir = context.getExternalCacheDir();
        if (!externalCacheDir.exists()) {
            if (!externalCacheDir.mkdirs()) {
                t.m("cache", "Unable to create external cache directory");
                return null;
            }
            try {
                new File(externalCacheDir, ".nomedia").createNewFile();
            } catch (IOException unused) {
                t.h("cache", "Can't create \".nomedia\" file in application external cache directory");
            }
        }
        return externalCacheDir;
    }

    private static boolean d(Context context) {
        return androidx.core.a.d.a(context, "android.permission.WRITE_EXTERNAL_STORAGE") == 0;
    }
}
