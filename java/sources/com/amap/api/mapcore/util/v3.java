package com.amap.api.mapcore.util;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Environment;
import android.os.StatFs;
import android.text.TextUtils;
import com.google.common.primitives.UnsignedBytes;
import com.nirvana.tools.logger.cache.db.AbstractDatabase;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.lang.ref.WeakReference;
import java.security.MessageDigest;
import java.util.HashMap;

/* JADX INFO: loaded from: classes5.dex */
public class v3 {

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final Bitmap.CompressFormat f11266g = Bitmap.CompressFormat.PNG;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private z6 f11267a;
    private d3<String, Bitmap> b;
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Object f11268d = new Object();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f11269e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private HashMap<String, WeakReference<Bitmap>> f11270f;

    class a extends d3<String, Bitmap> {
        a(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.d3
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public int f(String str, Bitmap bitmap) {
            int iA = v3.a(bitmap);
            if (iA == 0) {
                return 1;
            }
            return iA;
        }

        /* JADX INFO: Access modifiers changed from: protected */
        @Override // com.amap.api.mapcore.util.d3
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public void e(boolean z, String str, Bitmap bitmap, Bitmap bitmap2) {
            if (!r3.q0() || v3.this.f11270f == null || bitmap == null || bitmap.isRecycled()) {
                return;
            }
            v3.this.f11270f.put(str, new WeakReference(bitmap));
        }
    }

    private v3(b bVar) {
        n(bVar);
    }

    public static int a(Bitmap bitmap) {
        return r3.s0() ? bitmap.getByteCount() : bitmap.getRowBytes() * bitmap.getHeight();
    }

    public static long b(File file) {
        if (r3.j0()) {
            return file.getUsableSpace();
        }
        StatFs statFs = new StatFs(file.getPath());
        return ((long) statFs.getBlockSize()) * ((long) statFs.getAvailableBlocks());
    }

    public static v3 d(b bVar) {
        return new v3(bVar);
    }

    public static File e(Context context) {
        try {
            if (r3.K()) {
                return context.getExternalCacheDir();
            }
            return new File(Environment.getExternalStorageDirectory().getPath() + ("/Android/data/" + context.getPackageName() + "/cache/"));
        } catch (Throwable th) {
            th.printStackTrace();
            return null;
        }
    }

    public static File f(Context context, String str, String str2) {
        File fileE = e(context);
        String path = (("mounted".equals(Environment.getExternalStorageState()) || !r()) && fileE != null) ? fileE.getPath() : context.getCacheDir().getPath();
        StringBuilder sb = new StringBuilder();
        sb.append(path);
        String str3 = File.separator;
        sb.append(str3);
        sb.append(str);
        if (!TextUtils.isEmpty(str2)) {
            sb.append(str3);
            sb.append(str2);
        }
        return new File(sb.toString());
    }

    private static String g(byte[] bArr) {
        StringBuilder sb = new StringBuilder();
        for (byte b2 : bArr) {
            String hexString = Integer.toHexString(b2 & UnsignedBytes.MAX_VALUE);
            if (hexString.length() == 1) {
                sb.append('0');
            }
            sb.append(hexString);
        }
        return sb.toString();
    }

    private void n(b bVar) {
        this.c = bVar;
        if (bVar.f11274f) {
            if (w3.a()) {
                this.f11270f = new HashMap<>(64);
            }
            this.b = new a(this.c.f11271a);
        }
        if (bVar.f11276h) {
            i();
        }
    }

    private void o(File file) throws IOException {
        File[] fileArrListFiles = file.listFiles();
        if (fileArrListFiles == null) {
            throw new IOException("not a readable directory: " + file);
        }
        for (File file2 : fileArrListFiles) {
            if (file2.isDirectory()) {
                o(file2);
            }
            if (!file2.delete()) {
                throw new IOException("failed to delete file: " + file2);
            }
        }
    }

    public static String p(String str) {
        try {
            MessageDigest messageDigest = MessageDigest.getInstance("MD5");
            messageDigest.update(str.getBytes("utf-8"));
            return g(messageDigest.digest());
        } catch (Throwable unused) {
            return String.valueOf(str.hashCode());
        }
    }

    public static boolean r() {
        if (r3.j0()) {
            return Environment.isExternalStorageRemovable();
        }
        return true;
    }

    public Bitmap c(String str) {
        Bitmap bitmapA;
        d3<String, Bitmap> d3Var;
        HashMap<String, WeakReference<Bitmap>> map;
        WeakReference<Bitmap> weakReference;
        if (!r3.q0() || (map = this.f11270f) == null || (weakReference = map.get(str)) == null) {
            bitmapA = null;
        } else {
            bitmapA = weakReference.get();
            if (bitmapA == null || bitmapA.isRecycled()) {
                bitmapA = null;
            }
            this.f11270f.remove(str);
        }
        if (bitmapA == null && (d3Var = this.b) != null) {
            bitmapA = d3Var.a(str);
        }
        if (bitmapA == null || bitmapA.isRecycled()) {
            return null;
        }
        return bitmapA;
    }

    /* JADX WARN: Code duplicated, block: B:24:0x0046 A[Catch: all -> 0x0050, TryCatch #0 {, blocks: (B:4:0x0003, B:6:0x0007, B:24:0x0046, B:25:0x004e, B:8:0x000d, B:17:0x002d, B:23:0x0041, B:21:0x003a), top: B:31:0x0003, inners: #1 }] */
    public void i() {
        synchronized (this.f11268d) {
            z6 z6Var = this.f11267a;
            if (z6Var == null || z6Var.A()) {
                b bVar = this.c;
                File file = bVar.c;
                if (!bVar.f11275g || file == null) {
                    this.f11269e = false;
                    this.f11268d.notifyAll();
                } else {
                    try {
                        if (!file.exists()) {
                            file.mkdirs();
                        } else if (this.c.i) {
                            o(file);
                            file.mkdir();
                        }
                    } catch (Throwable unused) {
                    }
                    long jB = b(file);
                    long j = this.c.b;
                    if (jB > j) {
                        try {
                            this.f11267a = z6.d(file, 1, 1, j);
                        } catch (Throwable unused2) {
                            this.c.c = null;
                        }
                        this.f11269e = false;
                        this.f11268d.notifyAll();
                    } else {
                        this.f11269e = false;
                        this.f11268d.notifyAll();
                    }
                }
            } else {
                this.f11269e = false;
                this.f11268d.notifyAll();
            }
            throw th;
        }
    }

    public void j(String str, Bitmap bitmap) {
        if (str == null || bitmap == null || bitmap.isRecycled()) {
            return;
        }
        d3<String, Bitmap> d3Var = this.b;
        if (d3Var != null) {
            d3Var.b(str, bitmap);
        }
        synchronized (this.f11268d) {
            if (this.f11267a != null) {
                String strP = p(str);
                OutputStream outputStreamB = null;
                try {
                    z6.e eVarC = this.f11267a.c(strP);
                    if (eVarC == null) {
                        z6.d dVarN = this.f11267a.n(strP);
                        if (dVarN != null) {
                            outputStreamB = dVarN.b(0);
                            b bVar = this.c;
                            bitmap.compress(bVar.f11272d, bVar.f11273e, outputStreamB);
                            dVarN.c();
                            outputStreamB.close();
                        }
                    } else {
                        eVarC.a(0).close();
                    }
                    if (outputStreamB != null) {
                        try {
                            outputStreamB.close();
                        } catch (Throwable unused) {
                        }
                    }
                } catch (Throwable unused2) {
                    if (0 != 0) {
                    }
                }
            }
        }
    }

    public void k(boolean z) {
        HashMap<String, WeakReference<Bitmap>> map;
        if (r3.q0() && (map = this.f11270f) != null) {
            map.clear();
        }
        d3<String, Bitmap> d3Var = this.b;
        if (d3Var != null) {
            d3Var.c();
        }
        synchronized (this.f11268d) {
            z6 z6Var = this.f11267a;
            if (z6Var != null) {
                try {
                    if (!z6Var.A()) {
                        if (z) {
                            this.f11267a.F();
                        } else {
                            this.f11267a.close();
                        }
                        this.f11267a = null;
                    }
                } catch (Throwable unused) {
                }
            }
        }
    }

    public Bitmap l(String str) {
        Bitmap bitmap;
        InputStream inputStreamA;
        Bitmap bitmapW;
        String strP = p(str);
        synchronized (this.f11268d) {
            while (this.f11269e) {
                this.f11268d.wait();
            }
            z6 z6Var = this.f11267a;
            bitmap = null;
            InputStream inputStream = null;
            bitmap = null;
            bitmap = null;
            bitmap = null;
            if (z6Var != null) {
                try {
                    z6.e eVarC = z6Var.c(strP);
                    if (eVarC != null) {
                        inputStreamA = eVarC.a(0);
                        if (inputStreamA != null) {
                            try {
                                bitmapW = t3.w(((FileInputStream) inputStreamA).getFD(), Integer.MAX_VALUE, Integer.MAX_VALUE, this);
                            } catch (Throwable unused) {
                                if (inputStreamA != null) {
                                    try {
                                        inputStreamA.close();
                                    } catch (Throwable unused2) {
                                    }
                                }
                            }
                        } else {
                            bitmapW = null;
                        }
                        inputStream = inputStreamA;
                    } else {
                        bitmapW = null;
                    }
                    if (inputStream != null) {
                        try {
                            inputStream.close();
                        } catch (Throwable unused3) {
                        }
                    }
                    bitmap = bitmapW;
                } catch (Throwable unused4) {
                    inputStreamA = null;
                }
            }
        }
        return bitmap;
    }

    public void m() {
        HashMap<String, WeakReference<Bitmap>> map;
        if (r3.q0() && (map = this.f11270f) != null) {
            map.clear();
        }
        d3<String, Bitmap> d3Var = this.b;
        if (d3Var != null) {
            d3Var.c();
        }
        synchronized (this.f11268d) {
            this.f11269e = true;
            z6 z6Var = this.f11267a;
            if (z6Var != null && !z6Var.A()) {
                try {
                    this.f11267a.close();
                    o(f(ea.f10754f, this.c.j, null));
                } catch (Throwable unused) {
                }
                this.f11267a = null;
                i();
            }
        }
    }

    public void q() {
        synchronized (this.f11268d) {
            z6 z6Var = this.f11267a;
            if (z6Var != null) {
                try {
                    z6Var.C();
                } catch (Throwable unused) {
                }
            }
        }
    }

    public static class b {
        public File c;
        public String j;

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public int f11271a = AbstractDatabase.DEFAULT_LIMIT;
        public long b = 10485760;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        public Bitmap.CompressFormat f11272d = v3.f11266g;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        public int f11273e = 100;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        public boolean f11274f = true;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        public boolean f11275g = true;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        public boolean f11276h = false;
        public boolean i = true;

        public b(Context context, String str) {
            this.j = null;
            this.j = str;
            this.c = v3.f(context, str, null);
        }

        public void a(int i) {
            this.f11271a = i;
        }

        public void b(long j) {
            if (j <= 0) {
                this.f11275g = false;
            }
            this.b = j;
        }

        public void c(String str) {
            this.c = new File(str);
        }

        public void d(boolean z) {
            this.f11274f = z;
        }

        public void e(String str) {
            this.c = v3.f(ea.f10754f, this.j, str);
        }

        public void f(boolean z) {
            this.f11275g = z;
        }

        public b(Context context, String str, String str2) {
            this.j = null;
            this.j = str;
            this.c = v3.f(context, str, str2);
        }
    }
}
