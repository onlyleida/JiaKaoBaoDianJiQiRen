package com.iflytek.idata.extension;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.SystemClock;
import android.text.TextUtils;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import java.io.File;

/* JADX INFO: loaded from: classes4.dex */
public class IFlyCollectorExt {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static volatile IFlyCollectorExt f12454a;
    private Class<?> b;
    private Object c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Context f12455d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private volatile String f12456e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private volatile boolean f12457f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private volatile String f12458g;

    class a extends Thread {
        a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            SystemClock.sleep(DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            new c(IFlyCollectorExt.this.f12455d).run();
        }
    }

    private IFlyCollectorExt(Context context) {
        boolean z = false;
        try {
            Context applicationContext = context.getApplicationContext();
            this.f12455d = applicationContext;
            Class<?> cls = getClass(applicationContext, e(), b());
            this.b = cls;
            if (cls != null) {
                this.c = cls.newInstance();
                this.b.getMethod("init", Context.class).invoke(this.c, this.f12455d);
                new a().start();
            } else {
                z = true;
            }
        } catch (Throwable unused) {
            this.b = null;
            this.c = null;
        }
        a(z);
    }

    private void a(boolean z) {
        try {
            if (this.f12457f) {
                return;
            }
            new Thread(new com.iflytek.idata.extension.a(this.f12455d, z)).start();
            this.f12457f = true;
        } catch (Throwable unused) {
        }
    }

    private static void deleteFile(File file) {
        if (file.isDirectory()) {
            for (File file2 : file.listFiles()) {
                deleteFile(file2);
            }
        }
        file.delete();
    }

    private String e() {
        File file = new File(b());
        if (!file.exists() || !file.isDirectory()) {
            return null;
        }
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles.length == 1 && fileArrListFiles[0].exists() && fileArrListFiles[0].isFile()) {
            return fileArrListFiles[0].getName();
        }
        c();
        return null;
    }

    private native Class<?> getClass(Context context, String str, String str2);

    public static IFlyCollectorExt getInstance(Context context) {
        if (f12454a == null) {
            synchronized (IFlyCollectorExt.class) {
                if (f12454a == null) {
                    f12454a = new IFlyCollectorExt(context);
                }
            }
        }
        return f12454a;
    }

    String b() {
        String str = this.f12455d.getFilesDir().getAbsolutePath() + File.separator + "iflytek/idata/cache/";
        File file = new File(str);
        if (!file.exists()) {
            file.mkdirs();
        }
        return str;
    }

    void c() {
        a(new File(b()));
    }

    byte[] d() {
        try {
            Class<?> cls = this.b;
            if (cls == null || this.c == null) {
                return null;
            }
            Object objInvoke = cls.getMethod("getData", new Class[0]).invoke(this.c, new Object[0]);
            if (objInvoke instanceof byte[]) {
                return (byte[]) objInvoke;
            }
            return null;
        } catch (Throwable unused) {
            return null;
        }
    }

    public String getAppId() {
        return this.f12456e;
    }

    public String getSubId() {
        return this.f12458g;
    }

    public void setAppId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12456e = str;
    }

    public void setSubId(String str) {
        if (TextUtils.isEmpty(str)) {
            return;
        }
        this.f12458g = str;
        SharedPreferences sharedPreferencesB = com.iflytek.idata.extension.d.b.b(this.f12455d);
        if (sharedPreferencesB != null) {
            SharedPreferences.Editor editorEdit = sharedPreferencesB.edit();
            editorEdit.remove("subid");
            editorEdit.apply();
        }
    }

    String a() {
        try {
            Class<?> cls = this.b;
            if (cls == null || this.c == null) {
                return "-1";
            }
            Object objInvoke = cls.getMethod("getVersion", new Class[0]).invoke(this.c, new Object[0]);
            return objInvoke instanceof String ? (String) objInvoke : "-1";
        } catch (Throwable unused) {
            return "-1";
        }
    }

    private void a(File file) {
        File[] fileArrListFiles;
        if (!file.exists() || !file.isDirectory() || (fileArrListFiles = file.listFiles()) == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (int i = 0; i < fileArrListFiles.length; i++) {
            if (fileArrListFiles[i] != null) {
                deleteFile(fileArrListFiles[i]);
            }
        }
    }
}
