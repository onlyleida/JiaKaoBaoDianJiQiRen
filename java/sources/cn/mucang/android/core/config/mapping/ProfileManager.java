package cn.mucang.android.core.config.mapping;

import android.app.Application;
import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import cn.mucang.android.core.api.request.GlobalApiInterceptorManager;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.YourActivity;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.u;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.jvm.internal.r;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.s;
import kotlin.text.t;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes.dex */
@Metadata(d1 = {"\u0000 \n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\t\n\u0002\b\u000b\bÇ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u001f\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\tJ\b\u0010\n\u001a\u00020\u0004H\u0002J\u001f\u0010\u000b\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0002¢\u0006\u0002\u0010\tJ\b\u0010\f\u001a\u00020\u0004H\u0007J\b\u0010\r\u001a\u00020\u0004H\u0002J\b\u0010\u000e\u001a\u00020\u0004H\u0002J\u0012\u0010\u000f\u001a\u00020\u00042\b\u0010\u0010\u001a\u0004\u0018\u00010\u0006H\u0002J\u0010\u0010\u0011\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u0006H\u0002¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/core/config/mapping/ProfileManager;", "", "()V", "checkTokenAndLaunch", "", "token", "", "defaultSelectedProfileId", "", "(Ljava/lang/String;Ljava/lang/Long;)V", "doLaunchYour", "fetchProfilesAndLaunch", "initForeground", "initInterceptor", "initProtocolSupport", "printStackIfDebugInReleaseMode", "host", "selectHostFromProfile", "pendingMappingHost", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class ProfileManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final ProfileManager f2486a;

    /* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.i$a */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/config/mapping/ProfileManager$initProtocolSupport$1", "Lcn/mucang/android/core/activity/ActivityStarter$CustomizedStarter;", TtmlNode.START, "", "context", "Landroid/content/Context;", "protocol", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements f.a.a.a.activity.c {
        a() {
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            if (str == null || t.r(str)) {
                return true;
            }
            Uri uri = Uri.parse(str);
            String queryParameter = uri.getQueryParameter("token");
            String queryParameter2 = uri.getQueryParameter(TtmlNode.ATTR_ID);
            Long l = queryParameter2 == null ? null : s.l(queryParameter2);
            if (!(queryParameter == null || t.r(queryParameter)) && l != null) {
                ProfileManager.f2486a.b(queryParameter, l);
            }
            return true;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.core.config.mapping.i$b */
    @Metadata(d1 = {"\u0000\u001d\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u001c\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u00052\b\u0010\u0006\u001a\u0004\u0018\u00010\u0007H\u0016¨\u0006\b"}, d2 = {"cn/mucang/android/core/config/mapping/ProfileManager$initProtocolSupport$2", "Lcn/mucang/android/core/activity/ActivityStarter$CustomizedStarter;", TtmlNode.START, "", "context", "Landroid/content/Context;", "protocol", "", "core-lib_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b implements f.a.a.a.activity.c {
        b() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static final void c(String str) {
            Object objM139constructorimpl;
            try {
                Result.Companion companion = Result.INSTANCE;
                String strB = new ProfileOpenApi().b(str);
                if (strB.length() == 0) {
                    u.h("code可能已经过期，请刷新");
                    return;
                }
                ProfileManager.f2486a.b(strB, null);
                objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
                Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
                if (thM142exceptionOrNullimpl != null) {
                    u.h(r.m("可能code过期，再试一次:", thM142exceptionOrNullimpl.getMessage()));
                }
            } catch (Throwable th) {
                Result.Companion companion2 = Result.INSTANCE;
                objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
            }
        }

        @Override // f.a.a.a.activity.c
        public boolean a(Context context, String str) {
            if (str == null || t.r(str)) {
                return true;
            }
            Uri uri = Uri.parse(str);
            String queryParameter = uri.getQueryParameter("token");
            final String queryParameter2 = uri.getQueryParameter("code");
            if (queryParameter == null || t.r(queryParameter)) {
                if (!(queryParameter2 == null || t.r(queryParameter2))) {
                    MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.config.mapping.f
                        @Override // java.lang.Runnable
                        public final void run() {
                            ProfileManager.b.c(queryParameter2);
                        }
                    });
                }
            } else {
                ProfileManager.f2486a.b(queryParameter, null);
            }
            return true;
        }
    }

    static {
        ProfileManager profileManager = new ProfileManager();
        f2486a = profileManager;
        ProfileStorage.d();
        profileManager.k();
        profileManager.h();
    }

    private ProfileManager() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void b(final String str, final Long l) {
        if (t.r(str)) {
            u.h("token已经无效");
        } else {
            u.h("鉴权中...");
            MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.config.mapping.e
                @Override // java.lang.Runnable
                public final void run() {
                    ProfileManager.c(str, l);
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(String token, Long l) {
        Object objM139constructorimpl;
        r.e(token, "$token");
        try {
            Result.Companion companion = Result.INSTANCE;
            if (new ProfileAdminApi(token).e()) {
                if (l == null) {
                    l = ProfileStorage.f2487a.b();
                }
                f2486a.e(token, l);
            } else {
                u.h("token已经无效");
            }
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            u.h(r.m("检查token出现问题，再试一次:", thM142exceptionOrNullimpl.getMessage()));
        }
    }

    private final void d() {
        Application context = MucangConfig.getContext();
        Intent intent = new Intent(context, (Class<?>) YourActivity.class);
        intent.addFlags(268435456);
        v vVar = v.f15822a;
        context.startActivity(intent);
    }

    private final void e(final String str, final Long l) {
        MucangConfig.f(new Runnable() { // from class: cn.mucang.android.core.config.mapping.c
            @Override // java.lang.Runnable
            public final void run() {
                ProfileManager.f(str, l);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(String token, Long l) {
        Object objM139constructorimpl;
        r.e(token, "$token");
        try {
            Result.Companion companion = Result.INSTANCE;
            List<ProfileJsonData> listC = new ProfileAdminApi(token).c(l);
            ProfileStorage profileStorage = ProfileStorage.f2487a;
            profileStorage.i(listC, token);
            if (l != null) {
                l.longValue();
                profileStorage.h(l);
            }
            f2486a.d();
            objM139constructorimpl = Result.m139constructorimpl(v.f15822a);
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(objM139constructorimpl);
        if (thM142exceptionOrNullimpl != null) {
            u.h(r.m("profile获取出现问题，再试一次:", thM142exceptionOrNullimpl.getMessage()));
        }
    }

    public static final void g() {
    }

    private final void h() {
        if (a0.e()) {
            f.a.a.a.h.b().a(new ProfileYourProvider());
        }
        GlobalApiInterceptorManager.f2401a.a(new cn.mucang.android.core.api.request.d.a() { // from class: cn.mucang.android.core.config.mapping.b
            @Override // cn.mucang.android.core.api.request.d.a
            public final void a(cn.mucang.android.core.api.request.c cVar) {
                ProfileManager.i(cVar);
            }
        });
        final ProfileJsonData profileJsonDataA = ProfileStorage.f2487a.a();
        if (profileJsonDataA == null || !a0.e()) {
            return;
        }
        u.d(new Runnable() { // from class: cn.mucang.android.core.config.mapping.d
            @Override // java.lang.Runnable
            public final void run() {
                ProfileManager.j(profileJsonDataA);
            }
        }, SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(cn.mucang.android.core.api.request.c cVar) {
        List<ProfileJsonData> listC = ProfileStorage.c();
        if (listC == null || listC.isEmpty()) {
            if (MucangConfig.v()) {
                return;
            }
            f2486a.p(cVar.d());
            return;
        }
        String old = cVar.d();
        ProfileManager profileManager = f2486a;
        r.d(old, "old");
        cVar.j(profileManager.q(old));
        if (r.a(old, cVar.d())) {
            return;
        }
        cn.mucang.android.core.utils.t.a("core", "mapping host from " + ((Object) old) + " to " + ((Object) cVar.d()));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void j(ProfileJsonData profileJsonData) {
        u.h(r.m("当前网络:", profileJsonData.getName()));
    }

    private final void k() {
        f.a.a.a.activity.h.g("http://egg.nav.mucang.cn/url-mapping", new a());
        f.a.a.a.activity.h.g("http://egg.nav.mucang.cn/open", new b());
    }

    private final void p(String str) {
        boolean z = true;
        if (str == null || str.length() == 0) {
            new IllegalArgumentException(r.m("invalid host:", str)).printStackTrace();
            return;
        }
        if (!StringsKt__StringsKt.G(str, ".ttt.", false, 2, null) && !StringsKt__StringsKt.G(str, ".dev.", false, 2, null) && !StringsKt__StringsKt.G(str, ".staging.", false, 2, null)) {
            z = false;
        }
        if (z) {
            new IllegalArgumentException(r.m("forbidden host at release mode:", str)).printStackTrace();
        }
    }

    private final String q(String str) {
        Object next;
        String value;
        ProfileJsonData profileJsonDataA = ProfileStorage.f2487a.a();
        if (profileJsonDataA == null) {
            return str;
        }
        Iterator<T> it = profileJsonDataA.getList().iterator();
        do {
            if (!it.hasNext()) {
                next = null;
                break;
            }
            next = it.next();
        } while (!r.a(((ProfileHostJsonData) next).getName(), str));
        ProfileHostJsonData profileHostJsonData = (ProfileHostJsonData) next;
        return (profileHostJsonData == null || (value = profileHostJsonData.getValue()) == null) ? str : value;
    }
}
