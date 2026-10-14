package cn.mucang.android.core.webview.core.page;

import android.content.Context;
import android.net.Uri;
import android.webkit.WebResourceResponse;
import cn.mucang.android.core.api.verify.ErrorDialogParams;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.t;
import com.mobile.auth.BuildConfig;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.collections.s;
import kotlin.io.j;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.k;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.core.webview.core.page.d, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000<\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u0000 \u001d2\u00020\u0001:\u0001\u001dB\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\b\u0010\u000b\u001a\u00020\fH\u0002J\u0010\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\u000fH\u0002J\b\u0010\u0010\u001a\u00020\fH\u0002J\b\u0010\u0011\u001a\u00020\nH\u0002J\n\u0010\u0012\u001a\u0004\u0018\u00010\u0003H\u0002J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0003H\u0002J\u0014\u0010\u0014\u001a\u0004\u0018\u00010\u00152\b\u0010\u0016\u001a\u0004\u0018\u00010\u0003H\u0007J\u0010\u0010\u0017\u001a\u00020\f2\u0006\u0010\u0018\u001a\u00020\u0003H\u0002J\b\u0010\u0019\u001a\u00020\fH\u0002J\u0012\u0010\u001a\u001a\u00020\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0002J\u0012\u0010\u001c\u001a\u00020\f2\b\u0010\u001b\u001a\u0004\u0018\u00010\u0003H\u0002R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\t\u001a\u00020\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/core/webview/core/page/AsteroidCache;", "", "targetHost", "", "context", "Landroid/content/Context;", "asteroidManager", "Lcn/mucang/android/core/webview/core/page/AsteroidManager;", "(Ljava/lang/String;Landroid/content/Context;Lcn/mucang/android/core/webview/core/page/AsteroidManager;)V", "firstPage", "", "clearArchiveCache", "", "clearDir", "file", "Ljava/io/File;", "clearFileCache", "forceTryRefresh", "getArchiveVersion", "getLastFileVersion", "localWebResourceResponse", "Landroid/webkit/WebResourceResponse;", "url", BuildConfig.FLAVOR_type, ErrorDialogParams.EXTRA_MESSAGE, "performedRefresh", "saveArchiveVersion", "version", "saveLastFileVersion", "Companion", "webview_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AsteroidCache {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final String f2754e = "AsteroidCache";

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final String f2755f = "X-Applet-Pre-Load";

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final String f2756g = "X-Applet-Version";

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final String f2757h = "X-Applet-App-Id";
    private static final String i = "asteroid_file";
    private static final String j = "asteroid_archive";

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final String f2758a;
    private final Context b;
    private final AsteroidManager c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f2759d;

    public AsteroidCache(String targetHost, Context context, AsteroidManager asteroidManager) {
        r.e(targetHost, "targetHost");
        r.e(context, "context");
        r.e(asteroidManager, "asteroidManager");
        this.f2758a = targetHost;
        this.b = context;
        this.c = asteroidManager;
        this.f2759d = true;
    }

    private final void a() {
        File fileA = e.a(this.f2758a);
        r.d(fileA, "getAppletArchiveCacheDir(targetHost)");
        b(fileA);
        l(null);
    }

    private final void b(File file) {
        File[] fileArrListFiles = file.listFiles();
        r.d(fileArrListFiles, "file.listFiles()");
        for (File dir : fileArrListFiles) {
            r.d(dir, "dir");
            j.k(dir);
        }
    }

    private final void c() {
        File fileB = e.b(this.f2758a);
        r.d(fileB, "getAppletCacheDir(targetHost)");
        b(fileB);
    }

    /* JADX INFO: renamed from: d, reason: from getter */
    private final boolean getF2759d() {
        return this.f2759d;
    }

    private final String e() {
        return this.b.getSharedPreferences(j, 0).getString(this.f2758a, null);
    }

    private final String f() {
        return this.b.getSharedPreferences(i, 0).getString(this.f2758a, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void i(AsteroidCache this_runCatching, Ref$ObjectRef resourceVersion) {
        r.e(this_runCatching, "$this_runCatching");
        r.e(resourceVersion, "$resourceVersion");
        this_runCatching.l((String) resourceVersion.element);
    }

    private final void j(String str) {
        t.a(f2754e, str);
    }

    private final void k() {
        this.f2759d = false;
    }

    private final void l(String str) {
        this.b.getSharedPreferences(j, 0).edit().putString(this.f2758a, str).apply();
    }

    private final void m(String str) {
        this.b.getSharedPreferences(i, 0).edit().putString(this.f2758a, str).apply();
    }

    /* JADX WARN: Code duplicated, block: B:101:0x020f A[Catch: all -> 0x024f, TRY_LEAVE, TryCatch #7 {, blocks: (B:18:0x0075, B:20:0x007b, B:25:0x0085, B:96:0x01f4, B:98:0x0203, B:99:0x0205, B:101:0x020f, B:106:0x0239, B:107:0x0242, B:28:0x008d, B:95:0x01eb, B:102:0x0218, B:29:0x0090, B:54:0x0154, B:85:0x01da, B:92:0x01e6, B:93:0x01e9, B:30:0x00ae, B:34:0x00c5, B:42:0x00e2, B:49:0x00fd, B:51:0x0145, B:53:0x014b, B:57:0x0159, B:58:0x015b, B:60:0x0163, B:61:0x016f, B:63:0x0177, B:65:0x0185, B:66:0x018e, B:70:0x019f, B:72:0x01a9, B:79:0x01b2, B:80:0x01b5, B:69:0x019c, B:81:0x01b6, B:83:0x01bb, B:84:0x01d8, B:45:0x00ef, B:48:0x00f8, B:37:0x00d3, B:40:0x00dc, B:33:0x00bf, B:89:0x01e3), top: B:125:0x0075, inners: #3, #5 }] */
    /* JADX WARN: Code duplicated, block: B:98:0x0203 A[Catch: all -> 0x024f, TryCatch #7 {, blocks: (B:18:0x0075, B:20:0x007b, B:25:0x0085, B:96:0x01f4, B:98:0x0203, B:99:0x0205, B:101:0x020f, B:106:0x0239, B:107:0x0242, B:28:0x008d, B:95:0x01eb, B:102:0x0218, B:29:0x0090, B:54:0x0154, B:85:0x01da, B:92:0x01e6, B:93:0x01e9, B:30:0x00ae, B:34:0x00c5, B:42:0x00e2, B:49:0x00fd, B:51:0x0145, B:53:0x014b, B:57:0x0159, B:58:0x015b, B:60:0x0163, B:61:0x016f, B:63:0x0177, B:65:0x0185, B:66:0x018e, B:70:0x019f, B:72:0x01a9, B:79:0x01b2, B:80:0x01b5, B:69:0x019c, B:81:0x01b6, B:83:0x01bb, B:84:0x01d8, B:45:0x00ef, B:48:0x00f8, B:37:0x00d3, B:40:0x00dc, B:33:0x00bf, B:89:0x01e3), top: B:125:0x0075, inners: #3, #5 }] */
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r10v0, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r11v0, types: [T, java.io.File] */
    /* JADX WARN: Type inference failed for: r3v13, types: [T, java.lang.Object, java.lang.String] */
    public final WebResourceResponse h(String str) {
        String str2;
        String str3;
        Ref$ObjectRef ref$ObjectRef;
        if (str == null) {
            return null;
        }
        Uri uri = Uri.parse(str);
        if (!r.a(uri.getHost(), this.f2758a)) {
            return null;
        }
        File fileB = e.b(this.f2758a);
        File fileA = e.a(this.f2758a);
        String path = uri.getPath();
        if (path != null && kotlin.text.t.o(path, "/", false, 2, null)) {
            path = r.m(path, "index.html");
        }
        ?? file = new File(fileB, path);
        ?? file2 = new File(fileA, path);
        String str4 = f2754e + '_' + this.f2758a + ((Object) path);
        Objects.requireNonNull(str4, "null cannot be cast to non-null type java.lang.String");
        String strIntern = str4.intern();
        r.d(strIntern, "(this as java.lang.String).intern()");
        synchronized (strIntern) {
            boolean z = file.exists() || file2.exists();
            if (!getF2759d() && z) {
                ref$ObjectRef = new Ref$ObjectRef();
                ref$ObjectRef.element = file;
                if (!((File) file).exists()) {
                    ref$ObjectRef.element = file2;
                }
                if (((File) ref$ObjectRef.element).exists()) {
                    j(r.m("Hit cache, url: ", str));
                    Result.Companion companion = Result.INSTANCE;
                    return new WebResourceResponse(e.f(((File) ref$ObjectRef.element).getName()), "UTF-8", new FileInputStream((File) ref$ObjectRef.element));
                }
                v vVar = v.f15822a;
                j(r.m("Fallback to load by webview, url: ", str));
                return null;
            }
            k();
            try {
                Result.Companion companion2 = Result.INSTANCE;
                cn.mucang.android.core.http.a.b bVar = new cn.mucang.android.core.http.a.b();
                bVar.k(e.c());
                cn.mucang.android.core.http.b bVarW = bVar.i().w(str);
                Map<String, List<String>> mapB = bVarW.b();
                InputStream inputStreamC = bVarW.c();
                try {
                    final Ref$ObjectRef ref$ObjectRef2 = new Ref$ObjectRef();
                    List<String> list = mapB.get(f2756g);
                    ref$ObjectRef2.element = list == null ? 0 : (String) s.f0(list, 0);
                    List<String> list2 = mapB.get(f2755f);
                    boolean z2 = (list2 == null || (str2 = (String) s.f0(list2, 0)) == null || !Boolean.parseBoolean(str2)) ? false : true;
                    List<String> list3 = mapB.get(f2757h);
                    long j2 = 0;
                    if (list3 != null && (str3 = (String) s.f0(list3, 0)) != null) {
                        j2 = Long.parseLong(str3);
                    }
                    ?? F = f();
                    String strE = e();
                    j("Version: " + ref$ObjectRef2.element + ", file version: " + ((Object) F) + ", archive version: " + ((Object) strE) + " download: " + z2 + ", url: " + ((Object) str));
                    if (n0.e((String) ref$ObjectRef2.element)) {
                        if (n0.e(F)) {
                            j(r.m("No version, can't cache, url: ", str));
                            kotlin.io.b.a(inputStreamC, null);
                            return null;
                        }
                        ref$ObjectRef2.element = F;
                    }
                    if (!r.a(ref$ObjectRef2.element, F)) {
                        j(r.m("File version mismatch, clear old cache, url: ", str));
                        c();
                    }
                    if (!r.a(ref$ObjectRef2.element, strE)) {
                        j(r.m("Archive version mismatch, clear old cache, url: ", str));
                        a();
                    }
                    if (!z) {
                        j(r.m("No cache, try to cache, url: ", str));
                        try {
                            m((String) ref$ObjectRef2.element);
                            File parentFile = file.getParentFile();
                            if (parentFile != null) {
                                parentFile.mkdirs();
                            }
                            FileOutputStream fileOutputStream = new FileOutputStream((File) file);
                            try {
                                cn.mucang.android.core.utils.j.d(inputStreamC, fileOutputStream);
                                v vVar2 = v.f15822a;
                                kotlin.io.b.a(fileOutputStream, null);
                            } catch (Throwable th) {
                                try {
                                    throw th;
                                } catch (Throwable th2) {
                                    kotlin.io.b.a(fileOutputStream, th);
                                    throw th2;
                                }
                            }
                        } catch (Exception unused) {
                            file.delete();
                        }
                    }
                    if (z2) {
                        j(r.m("Try to download archive package, url: ", str));
                        this.c.a(str, j2, e(), new Runnable() { // from class: cn.mucang.android.core.webview.core.page.a
                            @Override // java.lang.Runnable
                            public final void run() {
                                AsteroidCache.i(this.f2749a, ref$ObjectRef2);
                            }
                        });
                    }
                    v vVar3 = v.f15822a;
                    kotlin.io.b.a(inputStreamC, null);
                    Result.m139constructorimpl(vVar3);
                } catch (Throwable th3) {
                    try {
                        throw th3;
                    } catch (Throwable th4) {
                        kotlin.io.b.a(inputStreamC, th3);
                        throw th4;
                    }
                }
            } catch (Throwable th5) {
                Result.Companion companion3 = Result.INSTANCE;
                Result.m139constructorimpl(k.a(th5));
            }
            ref$ObjectRef = new Ref$ObjectRef();
            ref$ObjectRef.element = file;
            if (!((File) file).exists()) {
                ref$ObjectRef.element = file2;
            }
            if (((File) ref$ObjectRef.element).exists()) {
                j(r.m("Hit cache, url: ", str));
                try {
                    Result.Companion companion4 = Result.INSTANCE;
                    return new WebResourceResponse(e.f(((File) ref$ObjectRef.element).getName()), "UTF-8", new FileInputStream((File) ref$ObjectRef.element));
                } catch (Throwable th6) {
                    Result.Companion companion5 = Result.INSTANCE;
                    Result.m139constructorimpl(k.a(th6));
                }
            }
            v vVar4 = v.f15822a;
            j(r.m("Fallback to load by webview, url: ", str));
            return null;
            throw th;
        }
    }
}
