package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators;

import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.i.f.a;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.hpmap.collision.k2.events.SubStepEvent;
import cn.mucang.android.jiakaoyi.signal.Tiger;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.StopPositionAreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachCarPositionModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.handlers.r;
import cn.mucang.android.jiakaoyi.teachingk2.p006traceerror.correct.d;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TraceErrorTipModel;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.UnityLineModel;
import cn.mucang.android.jiakaoyi.teachingk2.unity.UnityDrawLineHelper;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.o;
import kotlin.v;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.p, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0004\u0018\u00002\u00020\u0001:\u0001!B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u0006\u0010\u001d\u001a\u00020\u001eJ\u0006\u0010\u001f\u001a\u00020\u001eJ\u0006\u0010 \u001a\u00020\u001eR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\t0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\f\u001a\b\u0012\u0004\u0012\u00020\u000e0\rX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000f\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00130\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0014\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0015\u001a\b\u0012\u0004\u0012\u00020\u00160\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00020\u000b0\bX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0018\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0019\u001a\u00020\u001aX\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u001b\u001a\b\u0012\u0004\u0012\u00020\u001c0\bX\u0082\u0004¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper;", "", "drawParam", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper$DrawParam;", "(Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper$DrawParam;)V", "boxId", "", "carPositionObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachCarPositionModel;", "lastSubStepEvent", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/events/SubStepEvent;", "normalObserver", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/NormalHandler$NormalLine;", "predictId", "predictObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/handlers/NormalHandler$PredictAxle;", "stepObserver", "Lcn/mucang/android/jiakaoyi/engine/processor/listen/StepInfoModel;", "stopId", "stopPositionObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/data/StopPositionAreaModel;", "subStepObserver", "traceId", "traceModel", "Lcn/mucang/android/jiakaoyi/teachingk2/unity/models/UnityLineModel;", "traceObserver", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/CarTraceSideData;", "clear", "", TtmlNode.START, "stop", "DrawParam", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class DrawObserveHelper {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final a f8436a;
    private int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private SubStepEvent f8439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final UnityLineModel f8440g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<cn.mucang.android.jiakaoyi.engine.i.f.a> f8441h;
    private final a0<SubStepEvent> i;
    private final a0<cn.mucang.android.jiakaoyi.teachingk2.traceerror.a> j;
    private final a0<StopPositionAreaModel> k;
    private final a0<TeachCarPositionModel> l;
    private final b<r.a> m;
    private final a0<r.b> n;

    public DrawObserveHelper(a drawParam) {
        kotlin.jvm.internal.r.e(drawParam, "drawParam");
        this.f8436a = drawParam;
        this.b = -1;
        this.c = -1;
        this.f8437d = -1;
        this.f8438e = -1;
        UnityLineModel unityLineModel = new UnityLineModel();
        unityLineModel.group = 5;
        unityLineModel.width = 15;
        unityLineModel.alpha = 1.0f;
        unityLineModel.height = 3;
        v vVar = v.f15822a;
        this.f8440g = unityLineModel;
        this.f8441h = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.d
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DrawObserveHelper.o(this.f8424a, (a) obj);
            }
        };
        this.i = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.f
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DrawObserveHelper.r(this.f8426a, (SubStepEvent) obj);
            }
        };
        this.j = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.e
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DrawObserveHelper.s(this.f8425a, (cn.mucang.android.jiakaoyi.teachingk2.traceerror.a) obj);
            }
        };
        this.k = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DrawObserveHelper.q(this.f8423a, (StopPositionAreaModel) obj);
            }
        };
        this.l = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DrawObserveHelper.a(this.f8427a, (TeachCarPositionModel) obj);
            }
        };
        this.m = new b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.a
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                DrawObserveHelper.k((r.a) obj);
            }
        };
        this.n = new a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.h
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                DrawObserveHelper.m(this.f8428a, (r.b) obj);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(DrawObserveHelper this$0, TeachCarPositionModel teachCarPositionModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f8436a.d().invoke().booleanValue()) {
            UnityLineModel unityLineModel = this$0.f8440g;
            unityLineModel.group = 9;
            unityLineModel.color = "#267B04";
            unityLineModel.positions = teachCarPositionModel.getPoints();
            UnityLineModel unityLineModel2 = this$0.f8440g;
            unityLineModel2.isSeal = true;
            this$0.f8438e = UnityDrawLineHelper.a.f(UnityDrawLineHelper.f6360a, unityLineModel2, false, this$0.f8438e, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(final r.a aVar) {
        if (MucangConfig.v()) {
            u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.b
                @Override // java.lang.Runnable
                public final void run() {
                    DrawObserveHelper.l(aVar);
                }
            }, BaseActivity.INTERVAL);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(r.a aVar) {
        UnityDrawLineHelper.a.e(UnityDrawLineHelper.f6360a, 0, 0, 3, kotlin.collections.u.p(aVar.f7039a, aVar.b), "#0000FF", BitmapDescriptorFactory.HUE_RED, 0, 3, false, "教学点", "colorMat", false, 2403, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(DrawObserveHelper this$0, r.b bVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (MucangConfig.v()) {
            UnityDrawLineHelper.a aVar = UnityDrawLineHelper.f6360a;
            int i = this$0.f8437d;
            Pos pos = bVar.f7040a;
            double d2 = 5;
            Pos pos2 = bVar.f7040a;
            this$0.f8437d = UnityDrawLineHelper.a.e(aVar, i, 0, 4, kotlin.collections.u.p(new Pos(pos.x - d2, pos.y - d2), new Pos(pos2.x + d2, pos2.y + d2)), "#FF0000", 1.0f, 15, 4, false, "法线", null, false, 3330, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o(DrawObserveHelper this$0, cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (aVar.f3095a) {
            this$0.b();
            this$0.f8439f = null;
            UnityDrawLineHelper.f6360a.a(10);
            d.g().c();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(DrawObserveHelper this$0, StopPositionAreaModel stopPositionAreaModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        UnityLineModel unityLineModel = this$0.f8440g;
        unityLineModel.group = 8;
        unityLineModel.color = "#FF0000";
        unityLineModel.positions = stopPositionAreaModel.getPoints();
        UnityLineModel unityLineModel2 = this$0.f8440g;
        unityLineModel2.isSeal = true;
        this$0.c = UnityDrawLineHelper.a.f(UnityDrawLineHelper.f6360a, unityLineModel2, false, this$0.c, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void r(DrawObserveHelper this$0, SubStepEvent subStepEvent) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        SubStepEvent subStepEvent2 = this$0.f8439f;
        if (kotlin.jvm.internal.r.a(subStepEvent2 == null ? null : subStepEvent2.getSubStepName(), subStepEvent.getSubStepName())) {
            return;
        }
        this$0.b();
        this$0.f8439f = subStepEvent;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void s(DrawObserveHelper this$0, cn.mucang.android.jiakaoyi.teachingk2.traceerror.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.f8436a.e().invoke().booleanValue()) {
            UnityLineModel unityLineModel = this$0.f8440g;
            unityLineModel.color = "#00FF00";
            unityLineModel.positions = aVar.f5937a;
            unityLineModel.group = 5;
            unityLineModel.isSeal = false;
            this$0.b = UnityDrawLineHelper.f6360a.d(unityLineModel, true, this$0.b);
        }
    }

    public final void b() {
        UnityDrawLineHelper.a aVar = UnityDrawLineHelper.f6360a;
        aVar.b(this.b);
        aVar.b(this.c);
        aVar.b(this.f8437d);
        aVar.b(this.f8438e);
        aVar.a(6);
        aVar.a(3);
        cn.mucang.android.jiakaoyi.unity.c.d.e(new TraceErrorTipModel(false, 0));
    }

    public final void n() {
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(this.f8441h);
        LiveBus.d(SubStepEvent.class).i(this.i);
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class).i(this.j);
        LiveBus.d(TeachCarPositionModel.class).i(this.l);
        if (this.f8436a.getF8442a()) {
            LiveBus.d(StopPositionAreaModel.class).i(this.k);
        }
        if (this.f8436a.getB()) {
            LiveBus.d(r.b.class).i(this.n);
        }
        if (this.f8436a.getC()) {
            Tiger.j(this.m, r.a.class);
        }
    }

    public final void p() {
        b();
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).m(this.f8441h);
        LiveBus.d(SubStepEvent.class).m(this.i);
        LiveBus.d(cn.mucang.android.jiakaoyi.teachingk2.traceerror.a.class).m(this.j);
        LiveBus.d(TeachCarPositionModel.class).m(this.l);
        LiveBus.d(StopPositionAreaModel.class).m(this.k);
        LiveBus.d(r.b.class).m(this.n);
        Tiger.l(this.m, r.a.class);
        this.f8439f = null;
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.p$a */
    @Metadata(d1 = {"\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\n\u0018\u00002\u00020\u0001B?\u0012\b\b\u0002\u0010\u0002\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0004\u001a\u00020\u0003\u0012\b\b\u0002\u0010\u0005\u001a\u00020\u0003\u0012\f\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007\u0012\f\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\u0002\u0010\tR\u0011\u0010\u0005\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0011\u0010\u0004\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\f\u0010\u000bR\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\r\u0010\u000bR\u0017\u0010\b\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u000e\u0010\u000fR\u0017\u0010\u0006\u001a\b\u0012\u0004\u0012\u00020\u00030\u0007¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u000f¨\u0006\u0011"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/unity/communicators/DrawObserveHelper$DrawParam;", "", "drawStop", "", "drawPredict", "drawNormal", "drawTrace", "Lkotlin/Function0;", "drawTipBox", "(ZZZLkotlin/jvm/functions/Function0;Lkotlin/jvm/functions/Function0;)V", "getDrawNormal", "()Z", "getDrawPredict", "getDrawStop", "getDrawTipBox", "()Lkotlin/jvm/functions/Function0;", "getDrawTrace", "teachbase_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final boolean f8442a;
        private final boolean b;
        private final boolean c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final Function0<Boolean> f8443d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private final Function0<Boolean> f8444e;

        public a(boolean z, boolean z2, boolean z3, Function0<Boolean> drawTrace, Function0<Boolean> drawTipBox) {
            kotlin.jvm.internal.r.e(drawTrace, "drawTrace");
            kotlin.jvm.internal.r.e(drawTipBox, "drawTipBox");
            this.f8442a = z;
            this.b = z2;
            this.c = z3;
            this.f8443d = drawTrace;
            this.f8444e = drawTipBox;
        }

        /* JADX INFO: renamed from: a, reason: from getter */
        public final boolean getC() {
            return this.c;
        }

        /* JADX INFO: renamed from: b, reason: from getter */
        public final boolean getB() {
            return this.b;
        }

        /* JADX INFO: renamed from: c, reason: from getter */
        public final boolean getF8442a() {
            return this.f8442a;
        }

        public final Function0<Boolean> d() {
            return this.f8444e;
        }

        public final Function0<Boolean> e() {
            return this.f8443d;
        }

        public /* synthetic */ a(boolean z, boolean z2, boolean z3, Function0 function0, Function0 function1, int i, o oVar) {
            this((i & 1) != 0 ? true : z, (i & 2) != 0 ? true : z2, (i & 4) != 0 ? true : z3, function0, function1);
        }
    }
}
