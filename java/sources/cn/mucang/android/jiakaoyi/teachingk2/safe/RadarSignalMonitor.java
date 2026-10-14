package cn.mucang.android.jiakaoyi.teachingk2.safe;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachingk2.AppDataInLogin;
import cn.mucang.android.jiakaoyi.teachingk2.login.ui.LoginActivity;
import cn.mucang.android.jiakaoyi.teachingk2.n0;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.RadarModel;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeModeManager;
import java.lang.ref.WeakReference;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.z, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000I\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0004\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\b\u0010\u0012\u001a\u00020\u0013H\u0002J\u0010\u0010\u0014\u001a\u00020\u000e2\u0006\u0010\u0015\u001a\u00020\u0011H\u0002J\u0010\u0010\u0016\u001a\u00020\u000e2\u0006\u0010\u0017\u001a\u00020\u000eH\u0002J\u0006\u0010\u0018\u001a\u00020\u0019J\u0006\u0010\u001a\u001a\u00020\u0019R\u0010\u0010\u0003\u001a\u00020\u0004X\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u0005R\u0016\u0010\u0006\u001a\n\u0012\u0004\u0012\u00020\b\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\nX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u000f\u001a\b\u0012\u0004\u0012\u00020\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u001b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor;", "", "()V", "brakeObserver", "cn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor$brakeObserver$1", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor$brakeObserver$1;", "currentActivity", "Ljava/lang/ref/WeakReference;", "Landroid/app/Activity;", "dialog", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalDialog;", "dismissTime", "", "lastLevel", "", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveRadarSignal;", "canShowDialog", "", "checkShowRadar", "it", "getLevel", "dis", "init", "", "stop", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RadarSignalMonitor {
    private static RadarSignalDialog b;
    private static long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static int f7903d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static WeakReference<Activity> f7904e;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final RadarSignalMonitor f7902a = new RadarSignalMonitor();

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.signal.communicate.receive.z> f7905f = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.g
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            RadarSignalMonitor.h((cn.mucang.android.jiakaoyi.signal.communicate.receive.z) obj);
        }
    };

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static final a f7906g = new a();

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.z$a */
    @Metadata(d1 = {"\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001J\u0012\u0010\u0003\u001a\u00020\u00042\b\u0010\u0005\u001a\u0004\u0018\u00010\u0002H\u0016¨\u0006\u0006"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/safe/RadarSignalMonitor$brakeObserver$1", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "onChanged", "", "reason", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements androidx.lifecycle.a0<BrakeReason> {
        a() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(BrakeReason brakeReason) {
            RadarSignalDialog radarSignalDialog;
            if (brakeReason == null || (radarSignalDialog = RadarSignalMonitor.b) == null) {
                return;
            }
            radarSignalDialog.h();
        }
    }

    private RadarSignalMonitor() {
    }

    private final boolean b() {
        return (cn.mucang.android.jiakaoyi.teachingk2.unity.e.a0.i() || (MucangConfig.i() instanceof LoginActivity)) ? false : true;
    }

    private final int c(cn.mucang.android.jiakaoyi.signal.communicate.receive.z zVar) {
        int[] frontRadarDis = zVar.f5454a;
        int[] backRadarDis = zVar.b;
        kotlin.jvm.internal.r.d(frontRadarDis, "frontRadarDis");
        int iE = Integer.MAX_VALUE;
        for (int i : frontRadarDis) {
            if (i > 0 && i < 150) {
                iE = kotlin.ranges.f.e(iE, f7902a.d(i));
            }
        }
        kotlin.jvm.internal.r.d(backRadarDis, "backRadarDis");
        for (int i2 : backRadarDis) {
            if (i2 > 0 && i2 < 150) {
                iE = kotlin.ranges.f.e(iE, f7902a.d(i2));
            }
        }
        if (iE == Integer.MAX_VALUE) {
            return 0;
        }
        return iE;
    }

    private final int d(int i) {
        if (i < 0 || i > 150) {
            return 0;
        }
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3 += 50) {
            i2++;
        }
        return i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:39:0x0086  */
    /* JADX WARN: Code duplicated, block: B:42:0x008b  */
    /* JADX WARN: Code duplicated, block: B:46:0x0094  */
    /* JADX WARN: Code duplicated, block: B:50:0x00b5  */
    /* JADX WARN: Code duplicated, block: B:54:0x00bd  */
    public static final void h(cn.mucang.android.jiakaoyi.signal.communicate.receive.z it) {
        Activity activity;
        RadarSignalDialog radarSignalDialog;
        RadarSignalDialog radarSignalDialog2;
        RadarSignalDialog radarSignalDialog3;
        RadarSignalDialog radarSignalDialog4;
        RadarModel radarModel = new RadarModel();
        radarModel.front = it.f5454a;
        radarModel.back = it.b;
        boolean z = false;
        cn.mucang.android.jiakaoyi.unity.c.d.f(radarModel, false);
        RadarSignalMonitor radarSignalMonitor = f7902a;
        kotlin.jvm.internal.r.d(it, "it");
        int iC = radarSignalMonitor.c(it);
        if (iC == 0) {
            RadarSignalDialog radarSignalDialog5 = b;
            if (radarSignalDialog5 != null) {
                DialogExtensionKt.b(radarSignalDialog5);
            }
            n0.i();
            return;
        }
        if (SafeModeManager.f().getRingRadar() && AppDataInLogin.f7224a.b()) {
            if (f7903d != iC) {
                n0.h();
            }
            n0.c(iC);
        } else {
            n0.i();
        }
        if (SafeModeManager.f().getShowRadar() && radarSignalMonitor.b()) {
            if (b == null && System.currentTimeMillis() - c > 10000) {
                radarSignalDialog = b;
                if (radarSignalDialog != null) {
                    radarSignalDialog.setOnDismissListener(null);
                }
                radarSignalDialog2 = b;
                if (radarSignalDialog2 != null) {
                    DialogExtensionKt.b(radarSignalDialog2);
                }
                f7904e = new WeakReference<>(MucangConfig.i());
                Activity activityI = MucangConfig.i();
                kotlin.jvm.internal.r.d(activityI, "getCurrentActivity()");
                radarSignalDialog3 = new RadarSignalDialog(activityI);
                b = radarSignalDialog3;
                if (radarSignalDialog3 != null) {
                    radarSignalDialog3.show();
                }
                radarSignalDialog4 = b;
                if (radarSignalDialog4 != null) {
                    radarSignalDialog4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.f
                        @Override // android.content.DialogInterface.OnDismissListener
                        public final void onDismiss(DialogInterface dialogInterface) {
                            RadarSignalMonitor.i(dialogInterface);
                        }
                    });
                }
            } else if (b != null) {
                WeakReference<Activity> weakReference = f7904e;
                if (weakReference != null && (activity = weakReference.get()) != null && !activity.isDestroyed()) {
                    z = true;
                }
                if (!z) {
                    radarSignalDialog = b;
                    if (radarSignalDialog != null) {
                        radarSignalDialog.setOnDismissListener(null);
                    }
                    radarSignalDialog2 = b;
                    if (radarSignalDialog2 != null) {
                        DialogExtensionKt.b(radarSignalDialog2);
                    }
                    f7904e = new WeakReference<>(MucangConfig.i());
                    Activity activityI2 = MucangConfig.i();
                    kotlin.jvm.internal.r.d(activityI2, "getCurrentActivity()");
                    radarSignalDialog3 = new RadarSignalDialog(activityI2);
                    b = radarSignalDialog3;
                    if (radarSignalDialog3 != null) {
                        radarSignalDialog3.show();
                    }
                    radarSignalDialog4 = b;
                    if (radarSignalDialog4 != null) {
                        radarSignalDialog4.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.f
                            @Override // android.content.DialogInterface.OnDismissListener
                            public final void onDismiss(DialogInterface dialogInterface) {
                                RadarSignalMonitor.i(dialogInterface);
                            }
                        });
                    }
                }
            }
            RadarSignalDialog radarSignalDialog6 = b;
            if (radarSignalDialog6 != null) {
                radarSignalDialog6.l(it);
            }
        } else {
            RadarSignalDialog radarSignalDialog7 = b;
            if (radarSignalDialog7 != null) {
                DialogExtensionKt.b(radarSignalDialog7);
            }
        }
        f7903d = iC;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(DialogInterface dialogInterface) {
        b = null;
        c = System.currentTimeMillis();
    }

    public final void e() {
        j();
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.z.class).i(f7905f);
        LiveBus.d(BrakeReason.class).i(f7906g);
    }

    public final void j() {
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.z.class).m(f7905f);
        LiveBus.d(BrakeReason.class).m(f7906g);
        RadarSignalDialog radarSignalDialog = b;
        if (radarSignalDialog == null) {
            return;
        }
        DialogExtensionKt.b(radarSignalDialog);
    }
}
