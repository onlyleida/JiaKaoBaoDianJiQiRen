package cn.mucang.android.jiakaoyi.teachingk2.safe.monitor;

import android.app.Activity;
import android.content.DialogInterface;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.base.dialog.DialogExtensionKt;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.ui.NewSafeTriggerDialog;
import cn.mucang.android.jiakaoyi.teachingk2.safe.unbrake.BrakeModel;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.l, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\bÆ\u0002\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0010\u0010\u0007\u001a\u00020\b2\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\b2\u0006\u0010\f\u001a\u00020\rH\u0007R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/FlameOutMonitor;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "()V", "count", "", "dialog", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/ui/NewSafeTriggerDialog;", "onSignalChanged", "", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "show", "reason", "Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class FlameOutMonitor implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final FlameOutMonitor f7798a = new FlameOutMonitor();
    private static NewSafeTriggerDialog b;
    private static int c;

    private FlameOutMonitor() {
    }

    public static final void c(final BrakeReason reason) {
        r.e(reason, "reason");
        u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.f
            @Override // java.lang.Runnable
            public final void run() {
                FlameOutMonitor.d(reason);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(BrakeReason reason) {
        r.e(reason, "$reason");
        Activity activityI = MucangConfig.i();
        if (activityI == null || activityI.isFinishing() || activityI.isDestroyed()) {
            return;
        }
        if (b == null) {
            NewSafeTriggerDialog newSafeTriggerDialog = new NewSafeTriggerDialog(activityI, BrakeModel.Companion.b(BrakeModel.INSTANCE, reason, null, false, 6, null));
            b = newSafeTriggerDialog;
            if (newSafeTriggerDialog != null) {
                newSafeTriggerDialog.setOnDismissListener(new DialogInterface.OnDismissListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.g
                    @Override // android.content.DialogInterface.OnDismissListener
                    public final void onDismiss(DialogInterface dialogInterface) {
                        FlameOutMonitor.e(dialogInterface);
                    }
                });
            }
            NewSafeTriggerDialog newSafeTriggerDialog2 = b;
            if (newSafeTriggerDialog2 != null) {
                newSafeTriggerDialog2.show();
            }
        }
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(f7798a);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(DialogInterface dialogInterface) {
        FlameOutMonitor flameOutMonitor = f7798a;
        b = null;
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(flameOutMonitor);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (signalGetter.d().g()) {
            return;
        }
        int i = c + 1;
        c = i;
        if (i >= 5) {
            NewSafeTriggerDialog newSafeTriggerDialog = b;
            if (newSafeTriggerDialog != null) {
                DialogExtensionKt.b(newSafeTriggerDialog);
            }
            c = 0;
        }
    }
}
