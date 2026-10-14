package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper;

import android.os.SystemClock;
import androidx.lifecycle.a0;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.ExamStepStatus;
import cn.mucang.android.jiakaoyi.engine.processor.exam.step.b;
import cn.mucang.android.jiakaoyi.exam.k3.helper.TingCheDistance;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.signal.c.f.a;
import cn.mucang.android.jiakaoyi.signal.center.model.Light;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.k3.ExamUpdateModel;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.StringCompanionObject;
import kotlin.jvm.internal.r;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.c1.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000`\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0004\n\u0002\u0010\b\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u000e\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\u0002\u0010\u0005J\u0006\u0010\u0019\u001a\u00020\u001aJ\u0010\u0010\u001b\u001a\u00020\u001c2\u0006\u0010\u001d\u001a\u00020\u001eH\u0016J\u0016\u0010\u001f\u001a\u00020\u001c2\u0006\u0010 \u001a\u00020\u00042\u0006\u0010!\u001a\u00020\"J\u0006\u0010#\u001a\u00020\u001cJ\u0006\u0010$\u001a\u00020\u001cJ\u000e\u0010%\u001a\u00020\u001c2\u0006\u0010&\u001a\u00020\u0013R\u0011\u0010\u0006\u001a\u00020\u0007¢\u0006\b\n\u0000\u001a\u0004\b\b\u0010\tR\u0014\u0010\n\u001a\b\u0012\u0004\u0012\u00020\f0\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0016\u0010\r\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000R\u0019\u0010\u0002\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\u00040\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0015X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0016\u001a\u00020\u0017X\u0082\u000e¢\u0006\u0002\n\u0000R\u0016\u0010\u0018\u001a\n \u000f*\u0004\u0018\u00010\u000e0\u000eX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/pageevent/helper/K3ExamDataUpdater;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "getRunningStep", "Lkotlin/Function0;", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/StepHandler;", "(Lkotlin/jvm/functions/Function0;)V", "data", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;", "getData", "()Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/k3/ExamUpdateModel;", "distanceObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheDistance;", "emptyStepDesc", "", "kotlin.jvm.PlatformType", "getGetRunningStep", "()Lkotlin/jvm/functions/Function0;", "startDistance", "", Constant.START_TIME, "", "tingCheDistance", "", "unit", "deductIsOver", "", "onSignalChanged", "", "signal", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "onStep", "stepHandler", "status", "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;", TtmlNode.START, "stop", "updateScore", "deductScore", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class K3ExamDataUpdater implements a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Function0<b> f8583a;
    private final String b;
    private final String c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final ExamUpdateModel f8584d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private long f8585e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f8586f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private float f8587g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<TingCheDistance> f8588h;

    /* JADX WARN: Multi-variable type inference failed */
    public K3ExamDataUpdater(Function0<? extends b> getRunningStep) {
        r.e(getRunningStep, "getRunningStep");
        this.f8583a = getRunningStep;
        this.b = k0.a(R.string.teachbase_m);
        this.c = k0.a(R.string.teachbase_proj_not_start);
        this.f8584d = new ExamUpdateModel();
        this.f8587g = -1000.0f;
        this.f8588h = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.c1.b
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                K3ExamDataUpdater.b(this.f8573a, (TingCheDistance) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(K3ExamDataUpdater this$0, TingCheDistance tingCheDistance) {
        String strA;
        r.e(this$0, "this$0");
        this$0.f8587g = tingCheDistance.distance;
        ExamUpdateModel f8584d = this$0.getF8584d();
        float f2 = this$0.f8587g;
        if (f2 >= 200.0f) {
            strA = "";
        } else if (f2 >= 200.0f) {
            strA = k0.a(R.string.teachbase_side_distance_200);
        } else {
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String strA2 = k0.a(R.string.teachbase_side_distance);
            r.d(strA2, "getString(R.string.teachbase_side_distance)");
            strA = String.format(strA2, Arrays.copyOf(new Object[]{Float.valueOf(this$0.f8587g)}, 1));
            r.d(strA, "java.lang.String.format(format, *args)");
        }
        f8584d.tipRight = strA;
    }

    public final boolean a() {
        return this.f8584d.scoreNum < 90;
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final ExamUpdateModel getF8584d() {
        return this.f8584d;
    }

    public final void e(b stepHandler, ExamStepStatus status) {
        r.e(stepHandler, "stepHandler");
        r.e(status, "status");
        if (status == ExamStepStatus.End && stepHandler.f3142e == Step.K3_TingChe) {
            this.f8587g = -1000.0f;
            this.f8584d.tipRight = "";
        }
    }

    public final void f() {
        d.q();
        d.m.b(this);
        LiveBus.d(TingCheDistance.class).i(this.f8588h);
        this.f8585e = SystemClock.elapsedRealtime();
        this.f8586f = 0;
        ExamUpdateModel examUpdateModel = this.f8584d;
        examUpdateModel.scoreNum = 100;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_grade);
        r.d(strA, "getString(R.string.teachbase_grade)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(this.f8584d.scoreNum)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        examUpdateModel.score = str;
    }

    public final void g() {
        d.m.n(this);
        cn.mucang.android.jiakaoyi.unity.c.d.e(this.f8584d);
    }

    public final void h(int i) {
        ExamUpdateModel examUpdateModel = this.f8584d;
        examUpdateModel.scoreNum -= i;
        StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
        String strA = k0.a(R.string.teachbase_grade);
        r.d(strA, "getString(R.string.teachbase_grade)");
        String str = String.format(strA, Arrays.copyOf(new Object[]{Integer.valueOf(this.f8584d.scoreNum)}, 1));
        r.d(str, "java.lang.String.format(format, *args)");
        examUpdateModel.score = str;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e signal) {
        r.e(signal, "signal");
        if (signal.d().h()) {
            return;
        }
        if (this.f8586f <= 0) {
            this.f8586f = (int) signal.d().C;
        }
        this.f8584d.mileage = signal.d().C - ((float) this.f8586f) >= BitmapDescriptorFactory.HUE_RED ? (int) (signal.d().C - this.f8586f) : 0;
        this.f8584d.timeNum = signal.d().L - this.f8585e;
        ExamUpdateModel examUpdateModel = this.f8584d;
        examUpdateModel.time = FormatUtils.g((int) examUpdateModel.timeNum, false, 2, null);
        b bVarInvoke = this.f8583a.invoke();
        if (bVarInvoke == null) {
            this.f8584d.distance = r.m("0", this.b);
            this.f8584d.stepName = this.c;
        } else {
            ExamUpdateModel examUpdateModel2 = this.f8584d;
            StringCompanionObject stringCompanionObject = StringCompanionObject.f14671a;
            String str = String.format(r.m("%.0f", this.b), Arrays.copyOf(new Object[]{Float.valueOf(signal.d().C - bVarInvoke.o)}, 1));
            r.d(str, "java.lang.String.format(format, *args)");
            examUpdateModel2.distance = str;
            ExamUpdateModel examUpdateModel3 = this.f8584d;
            Step step = bVarInvoke.f3142e;
            examUpdateModel3.stepName = step != null ? step.getStepName() : null;
        }
        cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC = signal.b().c(Light.TurnLeftLight);
        if (cVarC == null || !cVarC.c) {
            cn.mucang.android.jiakaoyi.signal.c.g.b.c cVarC2 = signal.b().c(Light.TurnRightLight);
            if (cVarC2 == null || !cVarC2.c) {
                this.f8584d.lightTime = "";
            } else {
                ExamUpdateModel examUpdateModel4 = this.f8584d;
                StringBuilder sb = new StringBuilder();
                sb.append(cVarC2.f5252d / ((long) 1000));
                sb.append('s');
                examUpdateModel4.lightTime = sb.toString();
            }
        } else {
            ExamUpdateModel examUpdateModel5 = this.f8584d;
            StringBuilder sb2 = new StringBuilder();
            sb2.append(cVarC.f5252d / ((long) 1000));
            sb2.append('s');
            examUpdateModel5.lightTime = sb2.toString();
        }
        cn.mucang.android.jiakaoyi.unity.c.d.e(this.f8584d);
    }
}
