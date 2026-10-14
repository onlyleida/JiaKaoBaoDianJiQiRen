package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import cn.mucang.android.jiakaoyi.framework.utils.i0;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.u, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0007J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u0004H\u0007R\u0012\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0005¨\u0006\t"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/SafeLocalParamManager;", "", "()V", "openSafe", "", "Ljava/lang/Boolean;", "getOpenSafe", "setOpenSafe", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeLocalParamManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SafeLocalParamManager f7771a = new SafeLocalParamManager();
    private static Boolean b;

    private SafeLocalParamManager() {
    }

    public static final boolean a() {
        if (b == null) {
            b = Boolean.valueOf(i0.b("keySafeModule", true));
        }
        Boolean bool = b;
        kotlin.jvm.internal.r.c(bool);
        return bool.booleanValue();
    }

    public static final void b(boolean z) {
        b = Boolean.valueOf(z);
        i0.i("keySafeModule", z);
        cn.mucang.jiakaoyi.uilib.socket.u.t(z);
    }
}
