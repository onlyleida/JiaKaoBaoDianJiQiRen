package cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.init.EngineState;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.checker.BoundaryChecker;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction;
import cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceModule;
import cn.mucang.android.jiakaoyi.teachingk2.data.ErrorModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.exe.k;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.iflytek.cloud.SpeechUtility;
import java.util.EnumMap;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$DoubleRef;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000]\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0010\u0006\n\u0002\b\u0007*\u0001\r\u0018\u00002\b\u0012\u0004\u0012\u00020\u00020\u0001B\u000f\u0012\b\u0010\u0003\u001a\u0004\u0018\u00010\u0004¢\u0006\u0002\u0010\u0005J\u0018\u0010\u0015\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016J\u0018\u0010\u001b\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u0019\u001a\u00020\u001aH\u0016JO\u0010\u001c\u001a\u00020\u00162\u0006\u0010\u0017\u001a\u00020\u00182\u0006\u0010\u001d\u001a\u00020\u001e2\u0006\u0010\u001f\u001a\u00020\u001e2\u0006\u0010 \u001a\u00020\u001e2\u0006\u0010!\u001a\u00020\u001e2\u0006\u0010\"\u001a\u00020\u001e2\b\u0010#\u001a\u0004\u0018\u00010\u001e2\u0006\u0010\u0019\u001a\u00020\u001aH\u0002¢\u0006\u0002\u0010$R\u0010\u0010\u0006\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\b\u001a\u00020\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u00020\rX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\u000eR\u001c\u0010\u000f\u001a\u0010\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00110\u00110\u0010X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\u0013\u001a\u0010\u0012\f\u0012\n \u0012*\u0004\u0018\u00010\u00140\u00140\u0010X\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006%"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/AcceptanceFunction;", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceModel;", "stepType", "", "(Ljava/lang/String;)V", "currentBoundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "errorCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/exe/TeachErrorCallback;", "examEventCallback", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamEventCallback;", "examResultCallback", "cn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$examResultCallback$1;", "stateCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/engine/init/EngineState;", "kotlin.jvm.PlatformType", "teachCallback", "Lcn/mucang/android/jiakaoyi/teachingk2/form/FormModel;", "clickSubmit", "", "activity", "Landroidx/appcompat/app/AppCompatActivity;", "workOrderId", "", "initAndStart", "submitResult", "frontDistance", "", "backDistance", "headDistance", "front", "back", TtmlNode.TAG_HEAD, "(Landroidx/appcompat/app/AppCompatActivity;DDDDDLjava/lang/Double;J)V", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class PrecisionAcceptanceImpl extends AcceptanceFunction<PrecisionAcceptanceModel> {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final String f6042e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f6043f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final a f6044g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.engine.f.a f6045h = new cn.mucang.android.jiakaoyi.engine.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.c
        @Override // cn.mucang.android.jiakaoyi.engine.f.a
        public final void onStep(cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
            PrecisionAcceptanceImpl.x(this.f6048a, bVar, cVar);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<EngineState> i = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.d
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            PrecisionAcceptanceImpl.C(this.f6049a, (EngineState) obj);
        }
    };
    private final cn.mucang.android.jiakaoyi.framework.h.b<FormModel> j = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.a
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            PrecisionAcceptanceImpl.E((FormModel) obj);
        }
    };
    private final k k = new k() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.b
        @Override // cn.mucang.android.jiakaoyi.teachingk2.exe.k
        public final void a(TeachModel teachModel, ErrorModel errorModel) {
            PrecisionAcceptanceImpl.w(teachModel, errorModel);
        }
    };

    @Metadata(d1 = {"\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0002\u001a\u00020\u00032\b\u0010\u0004\u001a\u0004\u0018\u00010\u0005H\u0016J\u0012\u0010\u0006\u001a\u00020\u00032\b\u0010\u0007\u001a\u0004\u0018\u00010\bH\u0016¨\u0006\t"}, d2 = {"cn/mucang/android/jiakaoyi/teachingk2/acceptance/precision/PrecisionAcceptanceImpl$examResultCallback$1", "Lcn/mucang/android/jiakaoyi/engine/callback/ExamResultCallback;", "onOneError", "", "deduct", "Lcn/mucang/android/jiakaoyi/engine/model/DeductInfo;", "onResult", SpeechUtility.TAG_RESOURCE_RESULT, "Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamResult;", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a implements cn.mucang.android.jiakaoyi.engine.f.b {
        a() {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onOneError(cn.mucang.android.jiakaoyi.engine.model.a aVar) {
        }

        @Override // cn.mucang.android.jiakaoyi.engine.f.b
        public void onResult(cn.mucang.android.jiakaoyi.engine.processor.exam.f fVar) {
        }
    }

    public PrecisionAcceptanceImpl(String str) {
        this.f6042e = str;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(PrecisionAcceptanceImpl this$0, EngineState state) {
        cn.mucang.android.jiakaoyi.teachingk2.t0.b f6073a;
        r.e(this$0, "this$0");
        r.e(state, "state");
        if (state != EngineState.Initialed || (f6073a = this$0.getF6073a()) == null) {
            return;
        }
        f6073a.start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void D(androidx.appcompat.app.d dVar, double d2, double d3, double d4, double d5, double d6, Double d7, long j) {
        PrecisionAcceptanceModel precisionAcceptanceModel = new PrecisionAcceptanceModel();
        precisionAcceptanceModel.setFrontDistance(new Pair<>(Double.valueOf(d2), Double.valueOf(d5)));
        precisionAcceptanceModel.setBackDistance(new Pair<>(Double.valueOf(d3), Double.valueOf(d6)));
        if (d7 != null) {
            precisionAcceptanceModel.setHeadDistance(new Pair<>(Double.valueOf(d4), d7));
        }
        e(dVar, AcceptanceModule.Precision, this.f6042e, precisionAcceptanceModel, j);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E(FormModel noName_0) {
        r.e(noName_0, "$noName_0");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w(TeachModel teachModel, ErrorModel errorModel) {
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void x(PrecisionAcceptanceImpl this$0, cn.mucang.android.jiakaoyi.engine.processor.exam.step.b bVar, cn.mucang.android.jiakaoyi.engine.processor.exam.step.c cVar) {
        r.e(this$0, "this$0");
        if (bVar.l()) {
            BoundaryChecker boundaryCheckerI = cn.mucang.android.jiakaoyi.hpmap.a.a.j.b.g(2).i();
            this$0.f6043f = boundaryCheckerI == null ? null : boundaryCheckerI.f3684a;
        }
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void c(final androidx.appcompat.app.d activity, final long j) {
        r.e(activity, "activity");
        super.c(activity, j);
        Step step = r.a(this.f6042e, "1") ? Step.K2_ShangPoQiBu : Step.K2_DaoCheRuKu;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.f6043f;
        if (bVar != null) {
            if ((bVar == null ? null : bVar.s()) == step) {
                cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
                if (eVarT.d().F != CarModel.Direction.Stop) {
                    u.h("请将车开到准确位置后停车");
                    return;
                }
                CarPos carPosC = eVarT.c();
                final Ref$DoubleRef ref$DoubleRef = new Ref$DoubleRef();
                final Ref$DoubleRef ref$DoubleRef2 = new Ref$DoubleRef();
                final Ref$DoubleRef ref$DoubleRef3 = new Ref$DoubleRef();
                cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.f6043f;
                if (bVar2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) {
                    Objects.requireNonNull(bVar2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2ShangPoCollision");
                    cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) bVar2;
                    Pos pos = carPosC.wheelRightFront;
                    Line line = kVar.k;
                    ref$DoubleRef.element = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, line.start, line.end);
                    Pos pos2 = carPosC.wheelRightBack;
                    Line line2 = kVar.k;
                    ref$DoubleRef2.element = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos2, line2.start, line2.end);
                    Pos pos3 = carPosC.carRect.b;
                    Line line3 = kVar.n;
                    double dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos3, line3.start, line3.end) * 0.5d;
                    Pos pos4 = carPosC.carRect.c;
                    Line line4 = kVar.n;
                    ref$DoubleRef3.element = dK + (cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos4, line4.start, line4.end) * 0.5d);
                } else if (bVar2 instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) {
                    Objects.requireNonNull(bVar2, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.hpmap.collision.k2.c2.C2DaoKuCollision");
                    cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVar2;
                    Pos pos5 = carPosC.wheelRightFront;
                    Line line5 = cVar.p;
                    ref$DoubleRef.element = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos5, line5.start, line5.end);
                    Pos pos6 = carPosC.wheelRightBack;
                    Line line6 = cVar.p;
                    ref$DoubleRef2.element = cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos6, line6.start, line6.end);
                }
                double d2 = ref$DoubleRef.element;
                if (d2 <= 0.0d) {
                    u.h("计算距离错误");
                    return;
                }
                double d3 = 100;
                ref$DoubleRef.element = ((double) ((int) (d2 * d3))) / 100.0d;
                ref$DoubleRef2.element = ((double) ((int) (ref$DoubleRef2.element * d3))) / 100.0d;
                ref$DoubleRef3.element = ((double) ((int) (ref$DoubleRef3.element * d3))) / 100.0d;
                new PrecisionInputDialog(activity, step, ref$DoubleRef.element, ref$DoubleRef2.element, ref$DoubleRef3.element, new Function3<Double, Double, Double, v>() { // from class: cn.mucang.android.jiakaoyi.teachingk2.acceptance.precision.PrecisionAcceptanceImpl$clickSubmit$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(3);
                    }

                    public final void invoke(double d4, double d5, Double d6) {
                        this.this$0.D(activity, ref$DoubleRef.element, ref$DoubleRef2.element, ref$DoubleRef3.element, d4, d5, d6, j);
                    }

                    @Override // kotlin.jvm.functions.Function3
                    public /* bridge */ /* synthetic */ v invoke(Double d4, Double d5, Double d6) {
                        invoke(d4.doubleValue(), d5.doubleValue(), d6);
                        return v.f15822a;
                    }
                }).show();
                return;
            }
        }
        u.h("请驶入" + ((Object) step.stepName) + "项目");
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.acceptance.AcceptanceFunction
    public void n(androidx.appcompat.app.d activity, long j) {
        r.e(activity, "activity");
        super.n(activity, j);
        t(new cn.mucang.android.jiakaoyi.teachingk2.t0.b(String.valueOf(ExamSiteUtil.e(0L)), this.f6044g, this.f6045h, this.i, this.j, this.k, new EnumMap(Step.class), n.b().k, 2));
    }
}
