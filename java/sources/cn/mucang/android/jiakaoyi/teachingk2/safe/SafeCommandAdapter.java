package cn.mucang.android.jiakaoyi.teachingk2.safe;

import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.a0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\b\u0004\n\u0002\u0010\u000b\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bH\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\f\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\rH\u0007J\"\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\b\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\bH\u0007J\b\u0010\u0011\u001a\u00020\u0012H\u0002¨\u0006\u0013"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandAdapter;", "", "()V", "bigFlameOut", "", "reason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;", "onSuccess", "Lkotlin/Function0;", "brake", "appReason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;", "hardwareReason", "", "littleFlameOut", "removeBrake", "removeFlameOut", "usingV2Safe", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class SafeCommandAdapter {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final SafeCommandAdapter f7624a = new SafeCommandAdapter();

    private SafeCommandAdapter() {
    }

    public static final void a(FlameOutReason reason, Function0<kotlin.v> function0) {
        kotlin.jvm.internal.r.e(reason, "reason");
        if (AppUtils.c()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("北斗不支持大熄火，", reason));
        } else if (f7624a.i()) {
            SafeCommandManager.h((byte) 1, reason, function0);
        } else {
            SafeCommandManager.i((byte) 1, function0);
        }
    }

    public static final void b(final BrakeModel appReason, final byte b) {
        kotlin.jvm.internal.r.e(appReason, "appReason");
        if (!cn.mucang.android.core.utils.u.b()) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.i
                @Override // java.lang.Runnable
                public final void run() {
                    SafeCommandAdapter.c(appReason, b);
                }
            });
            return;
        }
        if (AppUtils.c()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d("北斗不支持app刹车，理由:" + ((int) b) + ',' + appReason.getReason().getZhTitle());
            return;
        }
        if (appReason.getReason() != BrakeReason.TeachBrake && x.a(appReason.getReason())) {
            cn.mucang.android.jiakaoyi.framework.log.f.d("已经下发了app刹车理由:" + ((int) b) + ',' + appReason.getReason().getZhTitle() + ", 还没有解刹，不需要重复下发刹车");
            return;
        }
        if (!SafeLocalParamManager.a()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("安全模块已关闭，不下发刹车指令:", Byte.valueOf(b)));
            cn.mucang.android.core.utils.u.h(k0.a(R.string.teachbase_no_setting_brake));
            return;
        }
        BrakeGlobalMonitor.r(appReason);
        cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("下发刹车，理由:", appReason.getReason()));
        if (f7624a.i()) {
            SafeCommandManager.d(appReason, b, (byte) 100);
        } else {
            SafeCommandManager.b(appReason, b);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(BrakeModel appReason, byte b) {
        kotlin.jvm.internal.r.e(appReason, "$appReason");
        b(appReason, b);
    }

    public static final void e(FlameOutReason reason) {
        kotlin.jvm.internal.r.e(reason, "reason");
        if (AppUtils.c()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("北斗不支持小熄火，", reason));
        } else if (f7624a.i()) {
            SafeCommandManager.j((byte) 2, reason, null, 4, null);
        } else {
            SafeCommandManager.k((byte) 1, null, 2, null);
        }
    }

    public static final void f(byte b) {
        if (AppUtils.c()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("北斗不支持解除刹车，", Byte.valueOf(b)));
        } else if (f7624a.i()) {
            SafeCommandManager.d(BrakeModel.INSTANCE.c(), b, (byte) 0);
        } else {
            SafeCommandManager.n(BrakeModel.INSTANCE.c(), b);
        }
    }

    public static final void g(FlameOutReason reason, Function0<kotlin.v> function0) {
        kotlin.jvm.internal.r.e(reason, "reason");
        if (AppUtils.c()) {
            cn.mucang.android.jiakaoyi.framework.log.f.d(kotlin.jvm.internal.r.m("北斗不支持解除熄火，", reason));
        } else if (f7624a.i()) {
            SafeCommandManager.h((byte) 0, reason, function0);
        } else {
            SafeCommandManager.i((byte) 0, function0);
        }
    }

    public static /* synthetic */ void h(FlameOutReason flameOutReason, Function0 function0, int i, Object obj) {
        if ((i & 2) != 0) {
            function0 = null;
        }
        g(flameOutReason, function0);
    }

    private final boolean i() {
        return cn.mucang.android.jiakaoyi.signal.com.p.b() || AppUtils.b();
    }
}
