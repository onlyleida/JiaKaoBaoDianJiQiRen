package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.res.AssetManager;
import android.content.res.Resources;
import android.content.res.XmlResourceParser;
import android.os.Environment;
import android.util.DisplayMetrics;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import java.io.File;
import java.io.FileOutputStream;
import java.io.FilenameFilter;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

/* JADX INFO: loaded from: classes5.dex */
public class t4 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AssetManager f11189a = null;
    private static Resources b = null;
    private static boolean c = true;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static Context f11190d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static String f11191e = "amap_resource";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static String f11192f = "1_0_0";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static String f11194h = ".jar";
    private static String i = f11191e + f11192f + f11194h;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static String f11193g = ".png";
    private static String j = f11191e + f11192f + f11193g;
    private static String k = "";
    private static String l = k + i;
    public static int m = -1;

    static class a implements FilenameFilter {
        a() {
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            StringBuilder sb = new StringBuilder();
            sb.append(t4.f11192f);
            sb.append(t4.f11194h);
            return str.startsWith(t4.f11191e) && !str.endsWith(sb.toString());
        }
    }

    private static AssetManager a(String str) {
        AssetManager assetManager = null;
        try {
            Class<?> cls = Class.forName("android.content.res.AssetManager");
            AssetManager assetManager2 = (AssetManager) cls.getConstructor(null).newInstance(null);
            try {
                cls.getDeclaredMethod("addAssetPath", String.class).invoke(assetManager2, str);
                return assetManager2;
            } catch (Throwable th) {
                th = th;
                assetManager = assetManager2;
                e6.r(th, "ResourcesUtil", "getAssetManager(String apkPath)");
                return assetManager;
            }
        } catch (Throwable th2) {
            th = th2;
        }
    }

    public static Resources b() {
        Resources resources = b;
        return resources == null ? f11190d.getResources() : resources;
    }

    private static Resources c(Context context, AssetManager assetManager) {
        DisplayMetrics displayMetrics = new DisplayMetrics();
        displayMetrics.setToDefaults();
        return new Resources(assetManager, displayMetrics, context.getResources().getConfiguration());
    }

    public static View d(Context context, int i2, ViewGroup viewGroup) {
        XmlResourceParser xml = b().getXml(i2);
        if (!c) {
            return LayoutInflater.from(context).inflate(xml, viewGroup);
        }
        try {
            int i3 = m;
            if (i3 == -1) {
                i3 = 0;
            }
            View viewInflate = LayoutInflater.from(new s4(context, i3, t4.class.getClassLoader())).inflate(xml, viewGroup);
            xml.close();
            return viewInflate;
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                e6.r(th, "ResourcesUtil", "selfInflate(Activity activity, int resource, ViewGroup root)");
                return null;
            } finally {
                xml.close();
            }
        }
    }

    private static OutputStream e(InputStream inputStream) throws IOException {
        FileOutputStream fileOutputStream = new FileOutputStream(new File(k, i));
        byte[] bArr = new byte[1024];
        while (true) {
            int i2 = inputStream.read(bArr);
            if (i2 <= 0) {
                return fileOutputStream;
            }
            fileOutputStream.write(bArr, 0, i2);
        }
    }

    public static boolean f(Context context) {
        try {
            f11190d = context;
            File fileG = g(context);
            if (fileG != null) {
                k = fileG.getAbsolutePath() + "/";
            }
            l = k + i;
            if (!c) {
                return true;
            }
            if (!k(context)) {
                return false;
            }
            AssetManager assetManagerA = a(l);
            f11189a = assetManagerA;
            b = c(context, assetManagerA);
        } catch (Throwable th) {
            th.printStackTrace();
        }
        return true;
    }

    private static File g(Context context) {
        try {
            if (context == null) {
                if (context != null) {
                    context.getFilesDir();
                }
                return null;
            }
            try {
                File filesDir = (Environment.getExternalStorageState().equals("mounted") && Environment.getExternalStorageDirectory().canWrite()) ? context.getExternalFilesDir("LBS") : context.getFilesDir();
                if (filesDir == null && context != null) {
                    context.getFilesDir();
                }
                return filesDir;
            } catch (Exception e2) {
                e2.printStackTrace();
                if (0 != 0 || context == null) {
                    return null;
                }
                return context.getFilesDir();
            }
        } catch (Throwable th) {
            if (0 == 0 && context != null) {
                context.getFilesDir();
            }
            throw th;
        }
    }

    private static boolean i(InputStream inputStream) throws IOException {
        File file = new File(l);
        long length = file.length();
        int iAvailable = inputStream.available();
        if (!file.exists() || length != iAvailable) {
            return false;
        }
        inputStream.close();
        return true;
    }

    /* JADX WARN: Code duplicated, block: B:18:0x003c A[Catch: IOException -> 0x0038, TRY_LEAVE, TryCatch #0 {IOException -> 0x0038, blocks: (B:14:0x0034, B:18:0x003c), top: B:38:0x0034 }] */
    private static boolean k(Context context) {
        m(context);
        InputStream inputStreamOpen = null;
        try {
            inputStreamOpen = context.getResources().getAssets().open(j);
            if (i(inputStreamOpen)) {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException e2) {
                        e2.printStackTrace();
                        e6.r(e2, "ResourcesUtil", "copyResourceJarToAppFilesDir(Context ctx)");
                    }
                }
                return true;
            }
            n();
            OutputStream outputStreamE = e(inputStreamOpen);
            if (inputStreamOpen != null) {
                try {
                    inputStreamOpen.close();
                    if (outputStreamE != null) {
                        outputStreamE.close();
                    }
                } catch (IOException e3) {
                    e3.printStackTrace();
                    e6.r(e3, "ResourcesUtil", "copyResourceJarToAppFilesDir(Context ctx)");
                }
            } else if (outputStreamE != null) {
                outputStreamE.close();
            }
            return true;
        } catch (Throwable th) {
            try {
                th.printStackTrace();
                e6.r(th, "ResourcesUtil", "copyResourceJarToAppFilesDir(Context ctx)");
                return false;
            } finally {
                if (inputStreamOpen != null) {
                    try {
                        inputStreamOpen.close();
                    } catch (IOException e4) {
                        e4.printStackTrace();
                        e6.r(e4, "ResourcesUtil", "copyResourceJarToAppFilesDir(Context ctx)");
                    }
                }
            }
        }
    }

    private static void m(Context context) {
        k = context.getFilesDir().getAbsolutePath();
        l = k + "/" + i;
    }

    private static void n() {
        File[] fileArrListFiles = new File(k).listFiles(new a());
        if (fileArrListFiles == null || fileArrListFiles.length <= 0) {
            return;
        }
        for (File file : fileArrListFiles) {
            file.delete();
        }
    }
}
