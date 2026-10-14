package cn.mucang.android.jiakaoyi.hpmap.a.a.countdown;

import android.os.SystemClock;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.d;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.c.e;
import com.amap.api.fence.GeoFence;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.hpmap.a.a.h.b, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001B\u0013\u0012\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0012\u0010\u0013\u001a\u00020\u00142\b\b\u0002\u0010\u0015\u001a\u00020\tH\u0002J\u0010\u0010\u0016\u001a\u00020\u00122\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0017\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010J\u0010\u0010\u0018\u001a\u00020\t2\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u000e\u0010\u0019\u001a\u00020\u00142\u0006\u0010\u001a\u001a\u00020\u001bJ\u0010\u0010\u001c\u001a\u00020\u00142\u0006\u0010\u000f\u001a\u00020\u0010H\u0002J\u0006\u0010\u001d\u001a\u00020\u0014J\u0006\u0010\u001e\u001a\u00020\u0014R\u000e\u0010\u0006\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0002\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\r\u001a\u00020\u000eX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000f\u001a\u0004\u0018\u00010\u0010X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0011\u001a\u00020\u0012X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u001f"}, d2 = {"Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/countdown/CountDownLogic;", "", "filterSteps", "", "Lcn/mucang/android/jiakaoyi/engine/model/Step;", "(Ljava/util/List;)V", GeoFence.BUNDLE_KEY_FENCESTATUS, "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/countdown/StepCountDownEvent;", "isStartCountDown", "", "observer", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BaseChecker$StartCountDown;", Constant.START_TIME, "", "stepHandler", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "totalTime", "", "clear", "", "notShow", "getStepTotalTime", "handleTime", "isShowCountDown", "sendTime", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "setTime", TtmlNode.START, "stop", "hpmap_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CountDownLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final List<Step> f3662a;
    private int b;
    private long c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3663d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private b f3664e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final c f3665f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private a0<cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a> f3666g;

    /* JADX WARN: Multi-variable type inference failed */
    public CountDownLogic(List<? extends Step> filterSteps) {
        r.e(filterSteps, "filterSteps");
        this.f3662a = filterSteps;
        this.f3665f = new c();
        this.f3666g = new a0() { // from class: cn.mucang.android.jiakaoyi.hpmap.a.a.h.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CountDownLogic.g(this.f3661a, (cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a) obj);
            }
        };
    }

    private final void a(boolean z) {
        this.c = 0L;
        this.b = 0;
        c cVar = this.f3665f;
        cVar.f3667a = Long.MIN_VALUE;
        cVar.b = z;
        LiveBus.d(c.class).l(this.f3665f);
    }

    static /* synthetic */ void b(CountDownLogic countDownLogic, boolean z, int i, Object obj) {
        if ((i & 1) != 0) {
            z = false;
        }
        countDownLogic.a(z);
    }

    private final int c(b bVar) {
        d dVarF = bVar.f();
        if ((dVarF == null ? null : dVarF.config) != null) {
            return dVarF.config.getCountDownTime();
        }
        return 0;
    }

    private final boolean e(b bVar) {
        d dVarF = bVar.f();
        if ((dVarF == null ? null : dVarF.config) != null) {
            return dVarF.config.isShowCountDown();
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g(CountDownLogic this$0, cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a aVar) {
        r.e(this$0, "this$0");
        b bVar = this$0.f3664e;
        v vVar = null;
        if (bVar != null) {
            this$0.i(bVar);
            this$0.f3664e = null;
            vVar = v.f15822a;
        }
        if (vVar == null) {
            this$0.f3663d = true;
        }
    }

    private final void i(b bVar) {
        int iC = c(bVar);
        this.b = iC;
        this.c = ((long) iC) > 0 ? SystemClock.elapsedRealtime() : 0L;
    }

    public final void d(b stepHandler) {
        r.e(stepHandler, "stepHandler");
        if (stepHandler.j()) {
            b(this, false, 1, null);
            return;
        }
        if (!e(stepHandler)) {
            a(true);
            return;
        }
        this.f3664e = stepHandler;
        if (this.f3662a.contains(stepHandler.f3142e)) {
            i(stepHandler);
        } else if (this.f3663d) {
            i(stepHandler);
        }
    }

    public final void h(e signalGetter) {
        r.e(signalGetter, "signalGetter");
        if (this.c != 0) {
            this.f3665f.f3667a = ((long) this.b) - ((signalGetter.d().L - this.c) / ((long) 1000));
            LiveBus.d(c.class).l(this.f3665f);
        }
    }

    public final void j() {
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a.class).i(this.f3666g);
    }

    public final void k() {
        LiveBus.d(cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.b.a.class).m(this.f3666g);
        b(this, false, 1, null);
    }
}
