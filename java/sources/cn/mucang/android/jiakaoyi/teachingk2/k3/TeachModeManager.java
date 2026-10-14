package cn.mucang.android.jiakaoyi.teachingk2.k3;

import cn.mucang.android.account.AccountManager;
import cn.mucang.android.account.data.AuthUser;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0;
import java.util.LinkedHashMap;
import java.util.Map;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.k3.c, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0010$\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0005\u001a\u00020\u0004H\u0007J\u0014\u0010\u0006\u001a\u000e\u0012\u0004\u0012\u00020\u0004\u0012\u0004\u0012\u00020\u00040\u0007H\u0007J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\t\u001a\u00020\n2\u0006\u0010\u000b\u001a\u00020\u0004H\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000¨\u0006\f"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/k3/TeachModeManager;", "", "()V", "KEY", "", "getSelectMode", "getUnityModeList", "", "key", "unitySelectMode", "", "mode", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TeachModeManager {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final TeachModeManager f7237a = new TeachModeManager();

    private TeachModeManager() {
    }

    public static final String a() {
        String strG = i0.g(f7237a.c(), K3TeachMode.Teach.getMode());
        r.d(strG, "getString(key(), K3TeachMode.Teach.mode)");
        return strG;
    }

    public static final Map<String, String> b() {
        LinkedHashMap linkedHashMap = new LinkedHashMap();
        for (K3TeachMode k3TeachMode : K3TeachMode.values()) {
            linkedHashMap.put(k3TeachMode.getMode(), k3TeachMode.getDesc());
        }
        return linkedHashMap;
    }

    private final String c() {
        AuthUser authUserG = AccountManager.h().g();
        return authUserG == null ? "Key_User_Mode_" : r.m("Key_User_Mode_", authUserG.getMucangId());
    }

    public static final void e(final String mode) {
        r.e(mode, "mode");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.k3.b
            @Override // java.lang.Runnable
            public final void run() {
                TeachModeManager.f(mode);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(String mode) {
        r.e(mode, "$mode");
        for (K3TeachMode k3TeachMode : K3TeachMode.values()) {
            if (r.a(k3TeachMode.getMode(), mode)) {
                i0.m(f7237a.c(), mode);
                a0.g().g();
                return;
            }
        }
    }
}
