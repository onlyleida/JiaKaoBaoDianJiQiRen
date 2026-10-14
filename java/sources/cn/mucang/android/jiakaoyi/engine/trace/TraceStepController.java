package cn.mucang.android.jiakaoyi.engine.trace;

import androidx.lifecycle.BusLiveData;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepModel;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepStartEvent;
import cn.mucang.android.jiakaoyi.engine.trace.model.TraceStepValidEvent;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.engine.trace.y, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes2.dex */
@Metadata(d1 = {"\u00006\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\b\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0010\u0002\n\u0002\b\u0006\u0018\u00002\u00020\u0001B\u0005¢\u0006\u0002\u0010\u0002J\u0018\u0010\r\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0010\u001a\u00020\u0011J\u0006\u0010\u0012\u001a\u00020\u0011J\u0018\u0010\u0013\u001a\u0004\u0018\u00010\u00042\u0006\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u0006J\u0006\u0010\u0014\u001a\u00020\u0011J\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u0004J\u0006\u0010\u0016\u001a\u00020\u0011R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0007\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R6\u0010\b\u001a*\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000b0\tj\u0014\u0012\u0004\u0012\u00020\n\u0012\n\u0012\b\u0012\u0004\u0012\u00020\n0\u000b`\fX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\u0017"}, d2 = {"Lcn/mucang/android/jiakaoyi/engine/trace/TraceStepController;", "", "()V", "cacheModel", "Lcn/mucang/android/jiakaoyi/engine/trace/model/TraceStepModel;", "hasWarehousing", "", "isValid", "stepMap", "Ljava/util/HashMap;", "", "", "Lkotlin/collections/HashMap;", "changeSubStep", "model", "internal", "setValid", "", "setWarehousing", "startStep", "stop", "stopStep", "writeStep", "engine_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class TraceStepController {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final HashMap<Integer, List<Integer>> f3210a = new HashMap<>();
    private TraceStepModel b;
    private boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f3211d;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h() {
        w.S(false);
    }

    public final TraceStepModel a(TraceStepModel model, boolean z) {
        int i;
        kotlin.jvm.internal.r.e(model, "model");
        if (this.f3210a.get(Integer.valueOf(model.s)) == null) {
            this.f3210a.put(Integer.valueOf(model.s), new ArrayList());
        }
        if (!w.r.isRobotExercise() || z) {
            if (z) {
                this.b = null;
            }
            List<Integer> list = this.f3210a.get(Integer.valueOf(model.s));
            if (list != null) {
                list.add(Integer.valueOf(model.ss));
            }
            return model;
        }
        TraceStepModel traceStepModel = this.b;
        if (traceStepModel != null && (i = model.ss) > 0) {
            if (traceStepModel != null) {
                traceStepModel.ss = i;
            }
            return null;
        }
        List<Integer> list2 = this.f3210a.get(Integer.valueOf(model.s));
        if ((list2 != null && list2.contains(Integer.valueOf(model.ss))) && model.ss != 1) {
            this.b = model.copy();
            w.U(Step.findWithType(model.s));
            return null;
        }
        List<Integer> list3 = this.f3210a.get(Integer.valueOf(model.s));
        if (list3 != null) {
            list3.add(Integer.valueOf(model.ss));
        }
        List<Integer> list4 = this.f3210a.get(Integer.valueOf(model.s));
        if ((list4 != null ? list4.size() : 0) > 1) {
            w.O();
        }
        return model;
    }

    public final void c() {
        this.c = true;
    }

    public final void d() {
        this.f3211d = true;
    }

    /* JADX WARN: Code duplicated, block: B:15:0x0040  */
    public final TraceStepModel e(TraceStepModel model, boolean z) {
        kotlin.jvm.internal.r.e(model, "model");
        if (w.r.isRobotExercise() && !z) {
            w.S(false);
            this.b = model.copy();
            return null;
        }
        if (z) {
            TraceStepModel traceStepModel = this.b;
            if (traceStepModel != null) {
                kotlin.jvm.internal.r.c(traceStepModel);
                if (traceStepModel.ss > 0) {
                    TraceStepModel traceStepModel2 = this.b;
                    kotlin.jvm.internal.r.c(traceStepModel2);
                    Step stepFindWithType = Step.findWithType(traceStepModel2.s);
                    TraceStepModel traceStepModel3 = this.b;
                    kotlin.jvm.internal.r.c(traceStepModel3);
                    w.l(stepFindWithType, traceStepModel3.ss, true);
                } else {
                    this.b = null;
                }
            } else {
                this.b = null;
            }
        }
        LiveBus.d(TraceStepStartEvent.class).l(new TraceStepStartEvent(true, model.s));
        return model;
    }

    public final void f() {
        this.f3210a.clear();
        this.b = null;
    }

    public final TraceStepModel g(TraceStepModel model) {
        kotlin.jvm.internal.r.e(model, "model");
        if (w.r.isRobotExercise()) {
            List<Integer> list = this.f3210a.get(Integer.valueOf(model.s));
            if (list != null) {
                list.clear();
            }
            LiveBus.c(new TraceStepValidEvent(this.c, model.s));
            BusLiveData busLiveDataD = LiveBus.d(TraceStepStartEvent.class);
            TraceStepStartEvent traceStepStartEvent = new TraceStepStartEvent(false, model.s);
            traceStepStartEvent.e(this.c);
            traceStepStartEvent.f(this.f3211d);
            kotlin.v vVar = kotlin.v.f15822a;
            busLiveDataD.l(traceStepStartEvent);
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.engine.trace.v
                @Override // java.lang.Runnable
                public final void run() {
                    TraceStepController.h();
                }
            }, 100L);
            this.c = false;
            this.f3211d = false;
        }
        return model;
    }

    public final void i() {
        TraceStepModel traceStepModel = this.b;
        if (traceStepModel != null) {
            kotlin.jvm.internal.r.c(traceStepModel);
            w.R(Step.findWithType(traceStepModel.s), true);
        }
    }
}
