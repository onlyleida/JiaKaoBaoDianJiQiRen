package cn.mucang.android.jiakaoyi.teachingk2.safe.manager;

import android.app.Activity;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.teachingk2.record.RecordEvent;
import cn.mucang.android.jiakaoyi.teachingk2.safe.consts.LockCarType;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.LockCarDialog;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\u000e\u001a\u00020\u0007J\b\u0010\u000f\u001a\u00020\u0010H\u0007J\b\u0010\u0011\u001a\u00020\u0010H\u0002J\u0006\u0010\u0012\u001a\u00020\tJ\u0010\u0010\u0013\u001a\u00020\u00102\u0006\u0010\u0014\u001a\u00020\u0007H\u0002J\u0010\u0010\u0015\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0016J\u0010\u0010\u0018\u001a\u00020\u00102\u0006\u0010\u0016\u001a\u00020\u0017H\u0002J\u0010\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u001a\u001a\u00020\u0007H\u0002J\b\u0010\u001b\u001a\u00020\u0010H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001c"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/LockCarManager;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "KEY_IS_LOCKING_CAR", "", "TAG", "currentLockType", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/consts/LockCarType;", "inited", "", "lockCarDialog", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/LockCarDialog;", "poDaoLockChecker", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/PoDaoLockCarChecker;", "getCurrentLockType", "init", "", "initLockStateCache", "isLocking", "lockCar", "lockCarType", "onSignalChanged", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "refreshLockState", "send2RemoteCenter", "lockType", "unLock", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class LockCarManager implements cn.mucang.android.jiakaoyi.signal.c.f.a {
    private static LockCarDialog c;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f7723e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final LockCarManager f7721a = new LockCarManager();
    private static final PoDaoLockCarChecker b = new PoDaoLockCarChecker();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static LockCarType f7722d = LockCarType.NONE;

    private LockCarManager() {
    }

    public static final void d() {
        if (f7723e) {
            return;
        }
        LockCarManager lockCarManager = f7721a;
        f7723e = true;
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("LockCarManager", ": init"));
        lockCarManager.f();
        b.k();
        LiveBus.d(LockCarType.class).i(new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                LockCarManager.e((LockCarType) obj);
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(lockCarManager);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(LockCarType it) {
        LockCarManager lockCarManager = f7721a;
        kotlin.jvm.internal.r.d(it, "it");
        lockCarManager.j(it);
    }

    private final void f() {
        LockCarType lockCarType = LockCarType.NONE;
        LockCarType lockType = LockCarType.getLockType(i0.d("key_is_locking_car", lockCarType.value));
        kotlin.jvm.internal.r.d(lockType, "getLockType(PreUtils.get… LockCarType.NONE.value))");
        f7722d = lockType;
        if (lockType != lockCarType) {
            boolean z = cn.mucang.android.jiakaoyi.signal.c.d.t().d().f5270h;
            boolean zD = cn.mucang.android.jiakaoyi.signal.c.d.t().d().d();
            cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarManager: 锁车缓存：车辆处于" + ((Object) f7722d.desc) + "状态，发动机启动：" + z + "，已刹车：" + zD);
            if (z || !zD) {
                n();
            } else {
                if (z || !zD) {
                    return;
                }
                j(f7722d);
            }
        }
    }

    private final void j(final LockCarType lockCarType) {
        if (lockCarType == f7722d) {
            LockCarDialog lockCarDialog = c;
            boolean z = false;
            if (lockCarDialog != null && lockCarDialog.isShowing()) {
                z = true;
            }
            if (z) {
                LockCarDialog lockCarDialog2 = c;
                if ((lockCarDialog2 == null ? null : lockCarDialog2.getF7831a()) == lockCarType) {
                    cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarManager: 已经处于" + ((Object) lockCarType.desc) + "状态了");
                    return;
                }
            }
        }
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.d
            @Override // java.lang.Runnable
            public final void run() {
                LockCarManager.k(lockCarType);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(LockCarType lockCarType) {
        kotlin.jvm.internal.r.e(lockCarType, "$lockCarType");
        LockCarManager lockCarManager = f7721a;
        f7722d = lockCarType;
        i0.k("key_is_locking_car", lockCarType.value);
        cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarManager: 展示" + ((Object) f7722d.desc) + "弹窗");
        LockCarDialog lockCarDialog = c;
        if (lockCarDialog != null) {
            DialogExtensionKt.b(lockCarDialog);
        }
        Activity activityI = MucangConfig.i();
        kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
        LockCarDialog lockCarDialog2 = new LockCarDialog(activityI, lockCarType, new Function1<LockCarType, kotlin.v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.manager.LockCarManager$lockCar$1$1
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(LockCarType lockCarType2) {
                invoke2(lockCarType2);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(LockCarType it) {
                kotlin.jvm.internal.r.e(it, "it");
                cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("LockCarManager: 已解除", it.desc));
                LockCarManager.b.h();
                LockCarManager.f7721a.n();
            }
        });
        c = lockCarDialog2;
        if (lockCarDialog2 != null) {
            lockCarDialog2.show();
        }
        lockCarManager.m(f7722d);
    }

    private final void l(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        if (f7722d != LockCarType.NONE) {
            LockCarDialog lockCarDialog = c;
            boolean z = false;
            if (lockCarDialog != null && lockCarDialog.isShowing()) {
                z = true;
            }
            if (z || !eVar.d().f5270h) {
                return;
            }
            cn.mucang.android.jiakaoyi.framework.log.f.o("LockCarManager: refreshLockState, 车辆已解除锁定");
            n();
        }
    }

    private final void m(LockCarType lockCarType) {
        cn.mucang.jiakaoyi.uilib.socket.u.o(RecordEvent.LockCar.getCode(), lockCarType.value);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void n() {
        LockCarType lockCarType = LockCarType.NONE;
        f7722d = lockCarType;
        i0.k("key_is_locking_car", lockCarType.value);
        LockCarDialog lockCarDialog = c;
        if (lockCarDialog != null) {
            DialogExtensionKt.b(lockCarDialog);
        }
        c = null;
        m(lockCarType);
    }

    public final LockCarType c() {
        return f7722d;
    }

    public final boolean g() {
        if (f7722d != LockCarType.NONE) {
            LockCarDialog lockCarDialog = c;
            if (lockCarDialog != null && lockCarDialog.isShowing()) {
                return true;
            }
        }
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        l(signalGetter);
    }
}
