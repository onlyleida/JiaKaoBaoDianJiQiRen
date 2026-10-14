package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.annotation.SuppressLint;
import android.content.ComponentCallbacks2;
import android.content.DialogInterface;
import android.text.TextUtils;
import android.util.SparseArray;
import android.view.View;
import android.widget.CompoundButton;
import androidx.constraintlayout.widget.Group;
import androidx.core.view.InputDeviceCompat;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collect.TeachCollectHelper;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.Variable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.CarInRectVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.DirectionVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.GearVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.android.jiakaoyi.teachingk2.form.FormModel;
import cn.mucang.android.jiakaoyi.teachingk2.form.model.VoiceModel;
import cn.mucang.jiakaoyi.uilib.AutoTeachEvent;
import cn.mucang.jiakaoyi.uilib.TeachEventHandler;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.h3, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0080\u0001\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0019\b\u0007\u0018\u00002\u00020\u0001B'\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0018\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\u0002\u0010\tJ\"\u0010'\u001a\u00020\b2\b\u0010(\u001a\u0004\u0018\u00010)2\u0006\u0010*\u001a\u00020+2\u0006\u0010,\u001a\u00020\u000fH\u0002J\u0010\u0010-\u001a\u00020\b2\u0006\u0010 \u001a\u00020!H\u0002J\b\u0010.\u001a\u00020\bH\u0002J\b\u0010/\u001a\u00020\bH\u0002J\b\u00100\u001a\u00020\bH\u0002J\u0010\u00101\u001a\u00020\b2\u0006\u00102\u001a\u00020\u0014H\u0002J\u0010\u00103\u001a\u00020\b2\u0006\u00104\u001a\u00020\u000fH\u0002J\b\u00105\u001a\u00020\u0014H\u0002J\b\u00106\u001a\u00020\u0018H\u0002J\b\u00107\u001a\u00020\u000fH\u0002J\u0006\u00108\u001a\u00020\bJ\u0010\u00109\u001a\u00020\b2\u0006\u0010*\u001a\u00020+H\u0016J\b\u0010:\u001a\u00020\bH\u0002J\b\u0010;\u001a\u00020\bH\u0002J\b\u0010<\u001a\u00020\bH\u0002J\b\u0010=\u001a\u00020\bH\u0002J\b\u0010>\u001a\u00020\bH\u0002J\b\u0010?\u001a\u00020\bH\u0002J\u000e\u0010@\u001a\u00020\b2\u0006\u0010 \u001a\u00020!J\b\u0010A\u001a\u00020\bH\u0002J\u0016\u0010B\u001a\u00020\b2\f\u0010C\u001a\b\u0012\u0004\u0012\u00020\u00140\u0006H\u0002R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\n\u0010\u000bR\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u000e\u001a\u00020\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u0012\u001a\b\u0012\u0004\u0012\u00020\u00140\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0017\u001a\u0004\u0018\u00010\u0018X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0019\u001a\u0004\u0018\u00010\u0014X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001a\u001a\b\u0012\u0004\u0012\u00020\u001b0\u0013X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001c\u001a\u00020\u001dX\u0082\u0004¢\u0006\u0002\n\u0000R#\u0010\u0004\u001a\u0014\u0012\n\u0012\b\u0012\u0004\u0012\u00020\u00070\u0006\u0012\u0004\u0012\u00020\b0\u0005¢\u0006\b\n\u0000\u001a\u0004\b\u001e\u0010\u001fR\u000e\u0010 \u001a\u00020!X\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\"\u001a\b\u0012\u0004\u0012\u00020\u00180#X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010$\u001a\b\u0012\u0004\u0012\u00020\u00140#X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010%\u001a\u00020&X\u0082D¢\u0006\u0002\n\u0000¨\u0006D"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTracePresenter;", "Lcn/mucang/android/jiakaoyi/signal/center/callback/SignalCallback;", "activity", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;", "refreshLayers", "Lkotlin/Function1;", "", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "", "(Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;Lkotlin/jvm/functions/Function1;)V", "getActivity", "()Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/CollectTraceActivity;", "boundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "collecting", "", "coordinate", "Lcn/mucang/android/jiakaoyi/signal/utils/Coordinate;", "createModelList", "", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "creator", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/utils/AutoCreateTeachModel;", "currentLayer", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollectPathLayer;", "currentModel", "markLayer", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/PointLayer;", "pointCollect", "Lcn/mucang/android/jiakaoyi/teachingk2/traceerror/TracePointCollect;", "getRefreshLayers", "()Lkotlin/jvm/functions/Function1;", "subStep", "", "traceLayer", "Landroid/util/SparseArray;", "traceModel", "width", "", "autoCreateTeachModel", "pos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "signalGetter", "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;", "finish", "changeStep", "clearMarkLayer", "clearPathLayer", "clearPoint", "createMarkLayer", "it", "createPoint", "isOperate", "createTraceTeachModel", "getCurrentLayer", "isBoundaryMatch", "onExit", "onSignalChanged", "parseModel", "realStartCollect", "realStopCollect", "renderLayers", "save", "saveOneStep", "selectStep", "startCollect", "updateAndRefresh", "list", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
@SuppressLint({"SetTextI18n"})
public final class CollectTracePresenter implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CollectTraceActivity f6823a;
    private final Function1<List<? extends TraceVariable>, kotlin.v> b;
    private final float c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.a.a.b f6824d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f6825e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f6826f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.teachingk2.traceerror.g f6827g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final SparseArray<TeachModel> f6828h;
    private final SparseArray<cn.mucang.android.jiakaoyi.hpmap.view.p.d> i;
    private TeachModel j;
    private cn.mucang.android.jiakaoyi.hpmap.view.p.d k;
    private int l;
    private final List<TeachModel> m;
    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.m> n;
    private final cn.mucang.android.jiakaoyi.teachingk2.elements.i0.a o;

    /* JADX WARN: Multi-variable type inference failed */
    public CollectTracePresenter(CollectTraceActivity activity, Function1<? super List<? extends TraceVariable>, kotlin.v> refreshLayers) {
        kotlin.jvm.internal.r.e(activity, "activity");
        kotlin.jvm.internal.r.e(refreshLayers, "refreshLayers");
        this.f6823a = activity;
        this.b = refreshLayers;
        this.c = 15.0f;
        this.f6827g = new cn.mucang.android.jiakaoyi.teachingk2.traceerror.g();
        this.f6828h = new SparseArray<>();
        this.i = new SparseArray<>();
        this.l = 1;
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new cn.mucang.android.jiakaoyi.teachingk2.elements.i0.a();
        LiveBus.d(TeachModel.class).h(activity, new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.d0
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                CollectTracePresenter.a(this.f6800a, (TeachModel) obj);
            }
        });
        activity.g().autoCb.setChecked(cn.mucang.android.jiakaoyi.framework.utils.i0.b("keyAutoParse", true));
        StringBuilder sb = new StringBuilder();
        sb.append("初始化");
        sb.append(activity.g().autoCb.isChecked() ? "开启" : "关闭");
        sb.append("自动分析");
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        activity.g().autoCb.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.b0
            @Override // android.widget.CompoundButton.OnCheckedChangeListener
            public final void onCheckedChanged(CompoundButton compoundButton, boolean z) {
                CollectTracePresenter.b(compoundButton, z);
            }
        });
        activity.g().operateTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.e0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTracePresenter.c(this.f6805a, view);
            }
        });
        activity.g().reportTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.h0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTracePresenter.d(this.f6820a, view);
            }
        });
        activity.g().startTv.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.f0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                CollectTracePresenter.e(this.f6810a, view);
            }
        });
        D();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C(CollectTracePresenter this$0, DialogInterface dialogInterface, int i) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this$0);
        this$0.getF6823a().finish();
    }

    private final void D() {
        List<TeachModel> listC;
        this.f6828h.clear();
        StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
        if (bVarB == null || (listC = bVarB.c()) == null) {
            return;
        }
        for (TeachModel teachModel : listC) {
            if (teachModel.isTraceTeach()) {
                this.f6828h.put(teachModel.subStep, teachModel);
            }
        }
    }

    private final void E() {
        this.j = m();
        j();
        h();
        i();
        this.k = o();
        this.f6823a.g().map.r();
        this.f6825e = true;
        this.f6827g.j();
        this.f6823a.g().startTv.setText("结束采集");
        Group group = this.f6823a.g().menuGroup;
        kotlin.jvm.internal.r.d(group, "activity.viewBinding.menuGroup");
        group.setVisibility(8);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
        kotlin.jvm.internal.r.c(bVarB);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("点击开始采集：", bVarB.getF6763a()));
    }

    private final void F() {
        StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
        kotlin.jvm.internal.r.c(bVarB);
        cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("点击结束采集：", bVarB.getF6763a()));
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        J();
        H();
    }

    private final void G() {
        List<TeachModel> listC;
        List<TraceItemModel> list;
        Pos posC;
        i();
        h();
        if (q()) {
            SparseArray<TeachModel> sparseArray = this.f6828h;
            int size = sparseArray.size();
            if (size > 0) {
                int i = 0;
                while (true) {
                    int i2 = i + 1;
                    int iKeyAt = sparseArray.keyAt(i);
                    TeachModel teachModelValueAt = sparseArray.valueAt(i);
                    ArrayList arrayList = new ArrayList();
                    TraceVariable traceVariable = teachModelValueAt.getTraceVariable();
                    if (traceVariable != null && (list = traceVariable.traces) != null) {
                        for (Pos pos : list) {
                            cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6826f;
                            if (bVar != null && (posC = bVar.c(pos)) != null) {
                                pos = posC;
                            }
                            arrayList.add(pos);
                        }
                    }
                    cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.d(getF6823a().g().map, arrayList, this.c, -16711936);
                    this.i.put(iKeyAt, dVar);
                    getF6823a().g().map.u.g(dVar);
                    if (i2 >= size) {
                        break;
                    } else {
                        i = i2;
                    }
                }
            }
            StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
            if (bVarB == null || (listC = bVarB.c()) == null) {
                return;
            }
            ArrayList arrayList2 = new ArrayList();
            for (Object obj : listC) {
                TeachModel teachModel = (TeachModel) obj;
                if (!teachModel.isTraceTeach() && teachModel.subStep == this.l) {
                    arrayList2.add(obj);
                }
            }
            Iterator it = arrayList2.iterator();
            while (it.hasNext()) {
                k((TeachModel) it.next());
            }
        }
    }

    private final void H() {
        if (this.m.isEmpty()) {
            return;
        }
        new cn.mucang.android.jiakaoyi.framework.base.dialog.u(this.f6823a).h(new cn.mucang.android.jiakaoyi.framework.base.dialog.u.e() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.c0
            @Override // cn.mucang.android.jiakaoyi.framework.base.dialog.u.e
            public final void a() throws ApiException, InternalException, HttpException {
                CollectTracePresenter.I(this.f6795a);
            }
        }, "正在保存", "保存失败");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Code duplicated, block: B:34:0x0098  */
    public static final void I(CollectTracePresenter this$0) throws ApiException, InternalException, HttpException {
        Step f6763a;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b bVar = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b();
        String strE = TeachModelEditor.e();
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        bVar.t(strE, teachModelEditor.f(), this$0.m);
        cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b bVar2 = new cn.mucang.android.jiakaoyi.teachingk2.collect.render.api.b();
        String strF = teachModelEditor.f();
        StepTeachModelActivity.b bVarB = teachModelEditor.b();
        List<TeachModel> listQ = bVar2.q(strF, (bVarB == null || (f6763a = bVarB.getF6763a()) == null) ? 0 : f6763a.type);
        kotlin.jvm.internal.r.d(listQ, "TeachModelApi().getList(…?.type ?: 0\n            )");
        ArrayList arrayList = new ArrayList();
        for (Object obj : listQ) {
            TeachModel teachModel = (TeachModel) obj;
            int i = teachModel.stepDirection;
            TeachModelEditor teachModelEditor2 = TeachModelEditor.f6857a;
            StepTeachModelActivity.b bVarB2 = teachModelEditor2.b();
            boolean z = true;
            if (bVarB2 != null && i == bVarB2.getB()) {
                StepTeachModelActivity.b bVarB3 = teachModelEditor2.b();
                if (!cn.mucang.android.core.utils.n0.e(bVarB3 == null ? null : bVarB3.getC()) || !cn.mucang.android.core.utils.n0.e(teachModel.parkingSpaceGroup)) {
                    StepTeachModelActivity.b bVarB4 = teachModelEditor2.b();
                    if (!TextUtils.equals(bVarB4 != null ? bVarB4.getC() : null, teachModel.parkingSpaceGroup)) {
                        z = false;
                    }
                }
            } else {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        this$0.O(arrayList);
        cn.mucang.android.core.utils.u.h("保存成功");
    }

    private final void J() {
        TraceVariable traceVariable;
        if (this.f6827g.e()) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.c.e signalGetter = cn.mucang.android.jiakaoyi.signal.c.d.t();
        List<TraceItemModel> points = this.f6827g.k(signalGetter, this.f6826f);
        if (points != null) {
            kotlin.jvm.internal.r.d(points, "points");
            Pos pos = (Pos) kotlin.collections.s.o0(points);
            kotlin.jvm.internal.r.d(signalGetter, "signalGetter");
            f(pos, signalGetter, true);
            ArrayList arrayList = new ArrayList();
            for (TraceItemModel traceItemModel : points) {
                TeachModel teachModel = this.j;
                traceItemModel.step = teachModel == null ? (short) 0 : (short) teachModel.step;
                cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6826f;
                kotlin.jvm.internal.r.c(bVar);
                arrayList.add(traceItemModel.set(bVar.a(traceItemModel)));
            }
            TeachModel teachModel2 = this.j;
            if (teachModel2 != null && (traceVariable = teachModel2.getTraceVariable()) != null) {
                traceVariable.traces = arrayList;
                traceVariable.left = this.f6827g.f(this.f6826f);
                traceVariable.right = this.f6827g.i(this.f6826f);
            }
        }
        TeachModel teachModel3 = this.j;
        if (teachModel3 == null) {
            return;
        }
        this.m.add(teachModel3);
    }

    private final void L() {
        TeachEventHandler teachEventHandler;
        boolean z = false;
        if (this.f6825e) {
            ComponentCallbacks2 context = MucangConfig.getContext();
            teachEventHandler = context instanceof TeachEventHandler ? (TeachEventHandler) context : null;
            if (teachEventHandler != null && teachEventHandler.a(AutoTeachEvent.OpenAutoTeach)) {
                cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(false, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.z
                    @Override // cn.mucang.android.jiakaoyi.framework.h.b
                    public final void callback(Object obj) {
                        CollectTracePresenter.N(this.f6918a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a) obj);
                    }
                });
                return;
            } else {
                F();
                return;
            }
        }
        if (!q()) {
            cn.mucang.android.core.utils.u.h(kotlin.jvm.internal.r.m("请驶入", TeachModelEditor.f6857a.j()));
            return;
        }
        ComponentCallbacks2 context2 = MucangConfig.getContext();
        teachEventHandler = context2 instanceof TeachEventHandler ? (TeachEventHandler) context2 : null;
        if (teachEventHandler != null && teachEventHandler.a(AutoTeachEvent.OpenAutoTeach)) {
            z = true;
        }
        if (z) {
            cn.mucang.android.jiakaoyi.teachingk2.autopilot.e.e(true, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.g0
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    CollectTracePresenter.M(this.f6815a, (cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a) obj);
                }
            });
        } else {
            E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void M(CollectTracePresenter this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (aVar.f5428a) {
            this$0.E();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void N(CollectTracePresenter this$0, cn.mucang.android.jiakaoyi.signal.communicate.receive.d.a aVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.F();
    }

    private final void O(final List<? extends TeachModel> list) {
        cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.y
            @Override // java.lang.Runnable
            public final void run() {
                CollectTracePresenter.P(this.f6914a, list);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P(CollectTracePresenter this$0, List list) {
        List<TeachModel> listC;
        List<TeachModel> listC2;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(list, "$list");
        this$0.l = 1;
        int i = 0;
        this$0.f6825e = false;
        this$0.getF6823a().g().startTv.setText("开始采集");
        Group group = this$0.getF6823a().g().menuGroup;
        kotlin.jvm.internal.r.d(group, "activity.viewBinding.menuGroup");
        group.setVisibility(0);
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        StepTeachModelActivity.b bVarB = teachModelEditor.b();
        if (bVarB != null && (listC2 = bVarB.c()) != null) {
            listC2.clear();
        }
        StepTeachModelActivity.b bVarB2 = teachModelEditor.b();
        if (bVarB2 != null && (listC = bVarB2.c()) != null) {
            listC.addAll(list);
        }
        this$0.D();
        this$0.G();
        ArrayList arrayList = new ArrayList();
        SparseArray<TeachModel> sparseArray = this$0.f6828h;
        int size = sparseArray.size();
        if (size > 0) {
            while (true) {
                int i2 = i + 1;
                sparseArray.keyAt(i);
                TraceVariable traceVariable = sparseArray.valueAt(i).getTraceVariable();
                kotlin.jvm.internal.r.d(traceVariable, "value.traceVariable");
                arrayList.add(traceVariable);
                if (i2 >= size) {
                    break;
                } else {
                    i = i2;
                }
            }
        }
        this$0.p().invoke(arrayList);
        this$0.j = null;
        LiveBus.d(TeachModelChanged.class).l(new TeachModelChanged(null, 1, null));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(CollectTracePresenter this$0, TeachModel teachModel) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (!kotlin.jvm.internal.r.a(this$0.f6824d, teachModel.boundary) && !this$0.f6825e) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = teachModel.boundary;
            this$0.f6824d = bVar;
            this$0.f6826f = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
            this$0.G();
        }
        if (this$0.l == teachModel.subStep || !this$0.f6825e) {
            return;
        }
        TeachModel teachModel2 = this$0.j;
        boolean z = false;
        if (teachModel2 != null && teachModel2.step == teachModel.step) {
            z = true;
        }
        if (z) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("接受到不一样的步骤了，" + this$0.l + "---" + teachModel.subStep);
            this$0.getF6823a().g().stepTv.setText(kotlin.jvm.internal.r.m("当前步骤：", Integer.valueOf(teachModel.subStep)));
            this$0.g(teachModel.subStep);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(CompoundButton compoundButton, boolean z) {
        cn.mucang.android.jiakaoyi.framework.utils.i0.i("keyAutoParse", z);
        StringBuilder sb = new StringBuilder();
        sb.append("点击");
        sb.append(z ? "开启" : "关闭");
        sb.append("自动分析");
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void c(CollectTracePresenter this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.l(true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d(CollectTracePresenter this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.l(false);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(CollectTracePresenter this$0, View view) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        this$0.L();
    }

    private final void f(Pos pos, cn.mucang.android.jiakaoyi.signal.c.e eVar, boolean z) {
        if (this.f6823a.g().autoCb.isChecked()) {
            cn.mucang.android.jiakaoyi.teachingk2.elements.i0.a aVar = this.o;
            cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6826f;
            Pos posA = bVar == null ? null : bVar.a(pos);
            Gear gear = eVar.d().m;
            int i = eVar.d().r;
            StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
            kotlin.jvm.internal.r.c(bVarB);
            List<TeachModel> list = aVar.c(posA, gear, i, bVarB.getF6763a(), this.l, z);
            if (cn.mucang.android.core.utils.g.d(list)) {
                kotlin.jvm.internal.r.d(list, "list");
                for (TeachModel it : list) {
                    TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
                    StepTeachModelActivity.b bVarB2 = teachModelEditor.b();
                    it.parkingSpaceGroup = bVarB2 == null ? null : bVarB2.getC();
                    it.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
                    it.programmeId = teachModelEditor.f();
                    StepTeachModelActivity.b bVarB3 = teachModelEditor.b();
                    it.stepDirection = bVarB3 == null ? 0 : bVarB3.getB();
                    kotlin.jvm.internal.r.d(it, "it");
                    k(it);
                    cn.mucang.android.jiakaoyi.framework.log.f.o(kotlin.jvm.internal.r.m("分析出教学点:", it.findText()));
                }
                this.m.addAll(list);
                cn.mucang.android.jiakaoyi.teachingk2.n0.d();
            }
        }
    }

    private final void g(int i) {
        if (i >= this.l && q() && this.j != null) {
            J();
            this.l = i;
            this.f6827g.j();
            this.j = m();
            this.k = o();
            h();
        }
    }

    private final void h() {
        Iterator<T> it = this.n.iterator();
        while (it.hasNext()) {
            getF6823a().g().map.u.Q((cn.mucang.android.jiakaoyi.hpmap.view.p.m) it.next());
        }
        this.n.clear();
    }

    private final void i() {
        SparseArray<cn.mucang.android.jiakaoyi.hpmap.view.p.d> sparseArray = this.i;
        int size = sparseArray.size();
        if (size > 0) {
            int i = 0;
            while (true) {
                int i2 = i + 1;
                sparseArray.keyAt(i);
                getF6823a().g().map.u.Q(sparseArray.valueAt(i));
                if (i2 >= size) {
                    break;
                } else {
                    i = i2;
                }
            }
        }
        this.i.clear();
    }

    private final void j() {
        this.m.clear();
    }

    private final void k(TeachModel teachModel) {
        NormalVariable normalVariable = teachModel.getNormalVariable();
        if (normalVariable == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6826f;
        Pos posC = bVar == null ? null : bVar.c(normalVariable.posOnLine);
        if (posC == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.m mVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.m(getF6823a().g().map, posC, new cn.mucang.android.jiakaoyi.hpmap.view.p.m.a(this.c * 2, InputDeviceCompat.SOURCE_ANY));
        mVar.f3758a = 101;
        this.n.add(mVar);
        getF6823a().g().map.u.g(mVar);
    }

    private final void l(boolean z) {
        Pos posA;
        cn.mucang.android.jiakaoyi.signal.c.e eVarT = cn.mucang.android.jiakaoyi.signal.c.d.t();
        if (!eVarT.getCurrentPosition().b()) {
            cn.mucang.android.core.utils.u.h("gps精度不满足要求");
            return;
        }
        TeachModel teachModel = new TeachModel();
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        StepTeachModelActivity.b bVarB = teachModelEditor.b();
        if (bVarB != null) {
            teachModel.parkingSpaceGroup = bVarB.getC();
            teachModel.step = bVarB.getF6763a().type;
            teachModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
            teachModel.programmeId = teachModelEditor.f();
            teachModel.subStep = this.l;
            teachModel.stepDirection = bVarB.getB();
            teachModel.pointType = z ? 2 : 3;
            teachModel.variableList = new ArrayList();
            NormalVariable normalVariable = new NormalVariable();
            cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6826f;
            Pos posA2 = bVar == null ? null : bVar.a(eVarT.c().rearAxlePoint);
            cn.mucang.android.jiakaoyi.signal.utils.b bVar2 = this.f6826f;
            if (bVar2 == null) {
                posA = null;
            } else {
                posA = bVar2.a(new Pos(eVarT.c().rearAxlePoint).move(50.0d, Math.toRadians(eVarT.c().degree + ((double) (eVarT.d().m.isBack() ? 180 : 0)))));
            }
            normalVariable.setPos(posA2, posA);
            teachModel.variableList.add(normalVariable);
            List<Variable> list = teachModel.variableList;
            GearVariable gearVariable = new GearVariable();
            gearVariable.gear = eVarT.d().m.gear;
            kotlin.v vVar = kotlin.v.f15822a;
            list.add(gearVariable);
            List<Variable> list2 = teachModel.variableList;
            DirectionVariable directionVariable = new DirectionVariable();
            directionVariable.direction = eVarT.d().F.direction;
            list2.add(directionVariable);
            if (bVarB.getF6763a() == Step.K2_DaoCheRuKu || bVarB.getF6763a() == Step.K2_CeFangTingChe) {
                List<Variable> list3 = teachModel.variableList;
                CarInRectVariable carInRectVariable = new CarInRectVariable();
                carInRectVariable.point1Index = 3;
                carInRectVariable.point2Index = 4;
                carInRectVariable.point3Index = 5;
                carInRectVariable.point4Index = 6;
                carInRectVariable.enable = false;
                list3.add(carInRectVariable);
            }
            ArrayList arrayList = new ArrayList();
            teachModel.data = arrayList;
            if (z) {
                arrayList.add(new VoiceModel("操作点").sound(true));
            } else {
                arrayList.add(new VoiceModel("提示点"));
            }
        }
        this.m.add(teachModel);
        k(teachModel);
        if (z) {
            TeachModel reportModel = teachModel.copy();
            reportModel.pointType = 1;
            reportModel.getNormalVariable().key -= (long) 1000;
            reportModel.getNormalVariable().reportKey = teachModel.getNormalVariable().key;
            List<FormModel> list4 = reportModel.data;
            kotlin.jvm.internal.r.d(list4, "reportModel.data");
            Object objE0 = kotlin.collections.s.e0(list4);
            VoiceModel voiceModel = objE0 instanceof VoiceModel ? (VoiceModel) objE0 : null;
            if (voiceModel != null) {
                voiceModel.voice = "预报点";
            }
            List<TeachModel> list5 = this.m;
            kotlin.jvm.internal.r.d(reportModel, "reportModel");
            list5.add(reportModel);
        }
    }

    private final TeachModel m() {
        TeachModel teachModel = new TeachModel();
        TeachModelEditor teachModelEditor = TeachModelEditor.f6857a;
        StepTeachModelActivity.b bVarB = teachModelEditor.b();
        if (bVarB != null) {
            teachModel.parkingSpaceGroup = bVarB.getC();
            teachModel.step = bVarB.getF6763a().type;
            teachModel.examSiteId = String.valueOf(ExamSiteUtil.e(0L));
            teachModel.programmeId = teachModelEditor.f();
            teachModel.subStep = this.l;
            teachModel.stepDirection = bVarB.getB();
            ArrayList arrayList = new ArrayList();
            teachModel.variableList = arrayList;
            arrayList.add(new TraceVariable(bVarB.getF6763a().type, this.l));
            ArrayList arrayList2 = new ArrayList();
            teachModel.data = arrayList2;
            arrayList2.add(new VoiceModel("采集标准轨迹"));
            cn.mucang.android.jiakaoyi.framework.log.f.o("生成一个新轨迹教学点，step：" + teachModel.step + " subStep：" + this.l);
        }
        return teachModel;
    }

    private final cn.mucang.android.jiakaoyi.hpmap.view.p.d o() {
        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = this.i.get(this.l);
        if (dVar != null) {
            dVar.j();
            dVar.l(-65536);
            return dVar;
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar2 = new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this.f6823a.g().map, new ArrayList(), this.c, -65536);
        this.i.put(this.l, dVar2);
        this.f6823a.g().map.u.g(dVar2);
        return dVar2;
    }

    private final boolean q() {
        StepTeachModelActivity.b bVarB;
        if (this.f6824d == null || (bVarB = TeachModelEditor.f6857a.b()) == null) {
            return false;
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar = this.f6824d;
        kotlin.jvm.internal.r.c(bVar);
        if (bVar.s().type != bVarB.getF6763a().type) {
            return false;
        }
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = this.f6824d;
        kotlin.jvm.internal.r.c(bVar2);
        return bVar2.r() == TeachCollectHelper.i(bVarB.getF6763a().type, bVarB.getB());
    }

    public final void B() {
        if (this.j != null) {
            new androidx.appcompat.app.c.a(this.f6823a).setMessage("当前有未保存内容，是否确认退出？").setPositiveButton("取消", (DialogInterface.OnClickListener) null).setNegativeButton("直接退出", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.a0
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    CollectTracePresenter.C(this.f6785a, dialogInterface, i);
                }
            }).create().show();
        } else {
            cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
            this.f6823a.finish();
        }
    }

    public final void K(int i) {
        List<TeachModel> listC;
        h();
        StepTeachModelActivity.b bVarB = TeachModelEditor.f6857a.b();
        if (bVarB == null || (listC = bVarB.c()) == null) {
            return;
        }
        ArrayList arrayList = new ArrayList();
        for (Object obj : listC) {
            TeachModel teachModel = (TeachModel) obj;
            if (!teachModel.isTraceTeach() && teachModel.subStep == i) {
                arrayList.add(obj);
            }
        }
        Iterator it = arrayList.iterator();
        while (it.hasNext()) {
            k((TeachModel) it.next());
        }
    }

    /* JADX INFO: renamed from: n, reason: from getter */
    public final CollectTraceActivity getF6823a() {
        return this.f6823a;
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e signalGetter) {
        kotlin.jvm.internal.r.e(signalGetter, "signalGetter");
        Pos posG = this.f6827g.g(signalGetter, this.f6826f);
        if (posG != null) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = this.k;
            if (dVar != null) {
                dVar.i(posG);
            }
            this.f6823a.g().map.r();
            f(posG, signalGetter, false);
        }
    }

    public final Function1<List<? extends TraceVariable>, kotlin.v> p() {
        return this.b;
    }
}
