package org.libpag;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.Build;
import android.os.Environment;
import android.text.TextUtils;
import java.io.File;
import java.util.Arrays;
import java.util.HashMap;
import java.util.concurrent.locks.ReentrantReadWriteLock;

/* JADX INFO: loaded from: classes6.dex */
class CacheManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final boolean f16245a;
    static CacheManager b;
    private String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    Context f16246d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    HashMap<String, a> f16247e = new HashMap<>();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    HashMap<String, Integer> f16248f = new HashMap<>();

    private static class b implements Comparable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected long f16250a;
        protected File b;

        protected b(File file) {
            this.b = file;
            this.f16250a = file.lastModified();
        }

        @Override // java.lang.Comparable
        public int compareTo(Object obj) {
            long j = ((b) obj).f16250a;
            long j2 = this.f16250a;
            if (j2 < j) {
                return -1;
            }
            return j2 == j ? 0 : 1;
        }
    }

    static {
        f16245a = Build.VERSION.SDK_INT > 29;
    }

    private CacheManager() {
    }

    static native int ContentVersion(PAGComposition pAGComposition);

    protected static CacheManager a(Context context) {
        CacheManager cacheManager = b;
        if (cacheManager != null) {
            return cacheManager;
        }
        if (context == null) {
            return null;
        }
        synchronized (CacheManager.class) {
            CacheManager cacheManager2 = b;
            if (cacheManager2 != null) {
                return cacheManager2;
            }
            CacheManager cacheManager3 = new CacheManager();
            b = cacheManager3;
            cacheManager3.f16246d = context.getApplicationContext();
            CacheManager cacheManager4 = b;
            cacheManager4.c = a(cacheManager4.f16246d, null);
            return b;
        }
    }

    private void c(String str) {
        Integer num = this.f16248f.get(str);
        if (num == null) {
            num = 0;
        }
        this.f16248f.put(str, Integer.valueOf(num.intValue() + 1));
    }

    protected void b(String str) {
        synchronized (this) {
            Integer num = this.f16248f.get(str);
            if (num == null) {
                return;
            }
            Integer numValueOf = Integer.valueOf(num.intValue() - 1);
            if (numValueOf.intValue() <= 0) {
                this.f16248f.remove(str);
                a aVar = this.f16247e.get(str);
                if (aVar == null) {
                    return;
                }
                aVar.g();
                aVar.e();
                this.f16247e.remove(str);
                aVar.h();
            } else {
                this.f16248f.put(str, numValueOf);
            }
        }
    }

    static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private ImageCache f16249a;
        ReentrantReadWriteLock b = new ReentrantReadWriteLock();

        a() {
        }

        static a a(String str, int i, int i2, int i3) {
            ImageCache imageCacheA = ImageCache.a(str, i, i2, i3);
            if (imageCacheA == null) {
                return null;
            }
            a aVar = new a();
            aVar.f16249a = imageCacheA;
            return aVar;
        }

        protected boolean b(int i, Bitmap bitmap) {
            g();
            boolean zB = this.f16249a.b(i, bitmap);
            h();
            return zB;
        }

        protected void c() {
            this.b.readLock().lock();
        }

        protected void d() {
            this.b.readLock().unlock();
        }

        protected void e() {
            this.f16249a.release();
        }

        protected void f() {
            g();
            this.f16249a.releaseSaveBuffer();
            h();
        }

        protected void g() {
            this.b.writeLock().lock();
        }

        protected void h() {
            this.b.writeLock().unlock();
        }

        protected boolean a() {
            g();
            boolean zFlushSave = this.f16249a.flushSave();
            h();
            return zFlushSave;
        }

        protected boolean b() {
            c();
            boolean zIsAllCached = this.f16249a.isAllCached();
            d();
            return zIsAllCached;
        }

        protected boolean a(int i, Bitmap bitmap) {
            c();
            boolean zA = this.f16249a.a(i, bitmap);
            d();
            return zA;
        }

        protected boolean a(int i) {
            c();
            boolean zIsCached = this.f16249a.isCached(i);
            d();
            return zIsCached;
        }
    }

    private static class ImageCache {
        private long nativeContext;

        static {
            org.extra.tools.a.a("pag");
            nativeInit();
        }

        private ImageCache(long j) {
            this.nativeContext = 0L;
            this.nativeContext = j;
        }

        private static native long SetupCache(String str, int i, int i2, int i3, boolean z);

        static ImageCache a(String str, int i, int i2, int i3) {
            boolean z;
            File file = new File(str);
            if (file.exists()) {
                z = false;
            } else {
                file.getParentFile().mkdirs();
                z = true;
            }
            long jSetupCache = SetupCache(str, i, i2, i3, z);
            if (jSetupCache != 0) {
                return new ImageCache(jSetupCache);
            }
            file.delete();
            return null;
        }

        private static native void nativeInit();

        boolean b(int i, Bitmap bitmap) {
            boolean z = false;
            if (bitmap == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 26 && bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                z = true;
            }
            return putBitmapToSaveBuffer(i, bitmap, bitmap.getByteCount(), z);
        }

        native boolean flushSave();

        native boolean inflateBitmap(int i, Bitmap bitmap, int i2, boolean z);

        native boolean isAllCached();

        native boolean isCached(int i);

        native boolean putBitmapToSaveBuffer(int i, Bitmap bitmap, int i2, boolean z);

        native void release();

        native void releaseSaveBuffer();

        boolean a(int i, Bitmap bitmap) {
            boolean z = false;
            if (bitmap == null) {
                return false;
            }
            if (Build.VERSION.SDK_INT >= 26 && bitmap.getConfig() == Bitmap.Config.HARDWARE) {
                z = true;
            }
            return inflateBitmap(i, bitmap, bitmap.getByteCount(), z);
        }
    }

    protected void a() {
        try {
            File[] fileArrListFiles = new File(this.c).listFiles();
            if (fileArrListFiles.length == 0) {
                return;
            }
            int length = fileArrListFiles.length;
            b[] bVarArr = new b[length];
            long length2 = 0;
            long length3 = 0;
            for (int i = 0; i < fileArrListFiles.length; i++) {
                length3 += fileArrListFiles[i].length();
                bVarArr[i] = new b(fileArrListFiles[i]);
            }
            if (length3 < PAGImageView.b) {
                return;
            }
            Arrays.sort(bVarArr);
            long j = (long) (PAGImageView.b * 0.39999998f);
            for (int i2 = 0; i2 < length; i2++) {
                b bVar = bVarArr[i2];
                length2 += bVar.b.length();
                bVar.b.delete();
                if (length3 - length2 <= j) {
                    return;
                }
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    protected a a(String str, int i, int i2, int i3) {
        synchronized (this) {
            a aVarA = this.f16247e.get(str);
            if (aVarA != null) {
                c(str);
                return aVarA;
            }
            if (aVarA == null) {
                aVarA = a.a(a(str), i, i2, i3);
            }
            if (aVarA == null) {
                return null;
            }
            this.f16247e.put(str, aVarA);
            c(str);
            return aVarA;
        }
    }

    protected String a(String str) {
        return this.c + File.separator + str;
    }

    private static String a(Context context, String str) {
        String path;
        if (TextUtils.isEmpty(str)) {
            str = "PAGImageViewCache";
        }
        if (f16245a) {
            str = str + "_Hardware";
        }
        if (!"mounted".equals(Environment.getExternalStorageState()) && Environment.isExternalStorageRemovable()) {
            path = context.getCacheDir().getPath();
        } else {
            path = context.getExternalCacheDir().getPath();
        }
        return path + File.separator + str;
    }
}
