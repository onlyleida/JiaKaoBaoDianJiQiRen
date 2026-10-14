package cn.mucang.android.jiakaoyi.teachingk2.assist.intercept;

import android.text.TextUtils;
import androidx.lifecycle.BusLiveData;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.n0;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.center.model.CheckModuleStatus;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.b;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.safe.BrakeReason;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.BrakeGlobalMonitor;
import cn.mucang.android.jiakaoyi.teachingk2.safe.monitor.ModuleStatusMonitor;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u0003\bÆ\u0002\u0018\u00002\u00020\u0001:\u0001\u0013B\u0007\b\u0002¢\u0006\u0002\u0010\u0002J\u0006\u0010\f\u001a\u00020\rJ\u0006\u0010\u000e\u001a\u00020\rJ\u001a\u0010\u000f\u001a\u00020\r2\u0006\u0010\u0010\u001a\u00020\u00112\b\u0010\u0012\u001a\u0004\u0018\u00010\u0004H\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0086T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0014"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/HardwareErrorHandler;", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/BaseErrorHandler;", "()V", "TAG", "", "delayRunnable", "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/HardwareErrorHandler$DelayRunnable;", "errObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/communicate/receive/ReceiveAssistErrorInfo;", "hasDelayRunnable", "", TtmlNode.START, "", "stop", "stopAssist", "errType", "", "reason", "DelayRunnable", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class HardwareErrorHandler extends BaseErrorHandler {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f6125d;
    public static final HardwareErrorHandler b = new HardwareErrorHandler();
    private static final a c = new a();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final a0<b> f6126e = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.assist.c.c
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            HardwareErrorHandler.f((b) obj);
        }
    };

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.assist.c.g$a */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0005\n\u0002\u0010\u0002\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0005\u0010\u0006\"\u0004\b\u0007\u0010\b¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/HardwareErrorHandler$DelayRunnable;", "Ljava/lang/Runnable;", "()V", "errType", "", "getErrType", "()I", "setErrType", "(I)V", "run", "", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    private static final class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f6127a = -1;

        public final void a(int i) {
            this.f6127a = i;
        }

        @Override // java.lang.Runnable
        public void run() {
            String strA = k0.a(R.string.teachbase_abnormal);
            int i = this.f6127a;
            if (i == 1) {
                ModuleStatusMonitor moduleStatusMonitor = ModuleStatusMonitor.f7799a;
                CheckModuleStatus checkModuleStatusA = moduleStatusMonitor.a();
                if (n0.g(checkModuleStatusA == null ? null : checkModuleStatusA.getTitle())) {
                    CheckModuleStatus checkModuleStatusA2 = moduleStatusMonitor.a();
                    String title = checkModuleStatusA2 != null ? checkModuleStatusA2.getTitle() : null;
                    r.c(title);
                    strA = title;
                } else {
                    strA = k0.a(R.string.teachbase_error_p0);
                }
            } else if (i == 3) {
                strA = BrakeGlobalMonitor.a().getReason() != BrakeReason.None ? BrakeGlobalMonitor.a().getReason().getTitle() : k0.a(R.string.teachbase_not_obstacle_stop);
            }
            HardwareErrorHandler.b.j(this.f6127a, strA);
        }
    }

    private HardwareErrorHandler() {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void f(b bVar) {
        int i = bVar.b;
        if (i == 0) {
            return;
        }
        if (i != 1 && i != 3) {
            u.e(c);
            b.j(bVar.b, bVar.a());
        } else {
            if (f6125d) {
                return;
            }
            f6125d = true;
            a aVar = c;
            aVar.a(i);
            u.d(aVar, 200L);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void j(int i, String str) {
        f6125d = false;
        f.o("HardwareErrorHandler: stopAssist " + i + " reason:" + ((Object) str));
        if (TextUtils.isEmpty(str)) {
            return;
        }
        r.c(str);
        c(str, false);
    }

    public final void h() {
        f6125d = false;
        BusLiveData busLiveDataD = LiveBus.d(b.class);
        a0<b> a0Var = f6126e;
        busLiveDataD.m(a0Var);
        LiveBus.d(b.class).i(a0Var);
    }

    public final void i() {
        f6125d = false;
        LiveBus.d(b.class).m(f6126e);
    }
}
