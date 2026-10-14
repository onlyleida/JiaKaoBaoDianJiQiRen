package cn.mucang.android.jiakaoyi.teachingk2.res;

import android.os.Environment;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.h0;
import java.io.File;
import java.net.MalformedURLException;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.res.k, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0004H\u0003J\u0010\u0010\b\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u0004H\u0007J2\u0010\b\u001a\u00020\t2\u0006\u0010\u000b\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u0010\u0007\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0004H\u0007J\n\u0010\u0011\u001a\u0004\u0018\u00010\u0004H\u0002J\u0010\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u0013\u001a\u00020\u0004H\u0007J\n\u0010\u0014\u001a\u0004\u0018\u00010\u0004H\u0007J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0016\u001a\u00020\u0017H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0018"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/res/ResDirUtils;", "", "()V", "PATH_RES", "", "PATH_TEACH_MEDIA", "buildFileName", "url", "createPath", "Ljava/io/File;", "dir", "basePath", "examSiteId", "", "version", "", "md5", "getRootPath", "getSuffix", "s", "getTeachMediaResDir", "getTeachTipMediaPath", "isVideo", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ResDirUtils {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ResDirUtils f7590a = new ResDirUtils();

    private ResDirUtils() {
    }

    private static final String a(String str) {
        try {
            URL url = new URL(str);
            String strD = h0.d(r.m(url.getHost(), url.getPath()));
            r.d(strD, "key(\"${uri.host}${uri.path}\")");
            return strD;
        } catch (Exception unused) {
            String strD2 = h0.d(str);
            r.d(strD2, "key(url)");
            return strD2;
        }
    }

    public static final File b(String dir) {
        r.e(dir, "dir");
        File file = new File(f7590a.d(), dir);
        if (!file.exists()) {
            file.mkdirs();
        }
        return file;
    }

    public static final File c(String basePath, long j, int i, String url, String str) {
        r.e(basePath, "basePath");
        r.e(url, "url");
        String strValueOf = String.valueOf(i);
        if (!r.a(ResourceManager.Resource.TileMap.fileRoot, basePath) || str == null) {
            str = strValueOf;
        }
        StringBuilder sb = new StringBuilder();
        sb.append("res");
        String str2 = File.separator;
        sb.append((Object) str2);
        sb.append(j);
        sb.append((Object) str2);
        sb.append(basePath);
        sb.append((Object) str2);
        sb.append(str);
        return new File(b(sb.toString()), a(url));
    }

    private final String d() {
        File externalFilesDir;
        String absolutePath = (!r.a("mounted", Environment.getExternalStorageState()) || (externalFilesDir = MucangConfig.getContext().getExternalFilesDir(null)) == null) ? "" : externalFilesDir.getAbsolutePath();
        return n0.e(absolutePath) ? MucangConfig.getContext().getFilesDir().getAbsolutePath() : absolutePath;
    }

    public static final String e(String s) {
        r.e(s, "s");
        try {
            String path = new URL(s).getPath();
            r.d(path, "path");
            String strSubstring = path.substring(StringsKt__StringsKt.Z(path, "/", 0, false, 6, null) + 1);
            r.d(strSubstring, "(this as java.lang.String).substring(startIndex)");
            int iT = StringsKt__StringsKt.T(strSubstring, ".", 0, false, 6, null);
            if (iT <= 0) {
                return "";
            }
            if (strSubstring == null) {
                throw new NullPointerException("null cannot be cast to non-null type java.lang.String");
            }
            String strSubstring2 = strSubstring.substring(iT);
            r.d(strSubstring2, "(this as java.lang.String).substring(startIndex)");
            return strSubstring2;
        } catch (MalformedURLException unused) {
            return "";
        }
    }

    public static final String f() {
        File file = new File(Environment.getExternalStorageDirectory().getAbsolutePath(), "teachMedia");
        if (!file.exists()) {
            file.mkdirs();
        }
        return file.getAbsolutePath();
    }

    public static final String g(String url, boolean z) {
        r.e(url, "url");
        String strE = e(url);
        if (n0.e(strE)) {
            strE = z ? ".mp4" : ".png";
        }
        String absolutePath = new File(f(), r.m(h0.d(url), strE)).getAbsolutePath();
        r.d(absolutePath, "File(getTeachMediaResDir…l)}$suffix\").absolutePath");
        return absolutePath;
    }
}
