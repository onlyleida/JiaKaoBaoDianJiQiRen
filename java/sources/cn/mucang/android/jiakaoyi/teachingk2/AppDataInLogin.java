package cn.mucang.android.jiakaoyi.teachingk2;

import androidx.exifinterface.media.ExifInterface;
import java.util.HashMap;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.j0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\b\n\u0002\u0010\u0002\n\u0002\b\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001b\u0010\u0010\u001a\u0004\u0018\u0001H\u0011\"\u0004\b\u0000\u0010\u00112\u0006\u0010\u0012\u001a\u00020\u0005¢\u0006\u0002\u0010\u0013J\u0006\u0010\u0014\u001a\u00020\u0015J\u0006\u0010\u0016\u001a\u00020\u0015J\u0016\u0010\u0017\u001a\u00020\u00152\u0006\u0010\u0012\u001a\u00020\u00052\u0006\u0010\u0018\u001a\u00020\u0001R6\u0010\u0003\u001a\u001e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u00010\u0004j\u000e\u0012\u0004\u0012\u00020\u0005\u0012\u0004\u0012\u00020\u0001`\u0006X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0007\u0010\b\"\u0004\b\t\u0010\nR\u001a\u0010\u000b\u001a\u00020\fX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u000b\u0010\r\"\u0004\b\u000e\u0010\u000f¨\u0006\u0019"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/AppDataInLogin;", "", "()V", "dataInLogin", "Ljava/util/HashMap;", "", "Lkotlin/collections/HashMap;", "getDataInLogin", "()Ljava/util/HashMap;", "setDataInLogin", "(Ljava/util/HashMap;)V", "isExpand", "", "()Z", "setExpand", "(Z)V", "getData", ExifInterface.GPS_DIRECTION_TRUE, "key", "(Ljava/lang/String;)Ljava/lang/Object;", "onLogin", "", "onLogout", "putData", "data", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class AppDataInLogin {
    private static boolean b = true;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final AppDataInLogin f7224a = new AppDataInLogin();
    private static HashMap<String, Object> c = new HashMap<>();

    private AppDataInLogin() {
    }

    public final <T> T a(String key) {
        r.e(key, "key");
        return (T) c.get(key);
    }

    public final boolean b() {
        return b;
    }

    public final void c() {
        c.clear();
        b = true;
    }

    public final void d() {
        c.clear();
        b = true;
    }

    public final void e(String key, Object data) {
        r.e(key, "key");
        r.e(data, "data");
        c.put(key, data);
    }

    public final void f(boolean z) {
        b = z;
    }
}
