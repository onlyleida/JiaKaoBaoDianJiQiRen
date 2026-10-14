package cn.mucang.android.jiakaoyi.teachingk2.collect.v2;

import android.content.ComponentCallbacks2;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.render.MapRender;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.NormalVariable;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Pair;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.k3, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000\u0090\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0002\b\u0002\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J$\u0010\u0017\u001a\u00020\u00182\u001a\u0010\u0019\u001a\u0016\u0012\u0004\u0012\u00020\u001b\u0018\u00010\u001aj\n\u0012\u0004\u0012\u00020\u001b\u0018\u0001`\u001cH\u0002J(\u0010\u001d\u001a\u0012\u0012\u0006\u0012\u0004\u0018\u00010\u001f\u0012\u0006\u0012\u0004\u0018\u00010 0\u001e2\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"H\u0002J(\u0010$\u001a\u00020\u00182\u0006\u0010!\u001a\u00020\"2\u0006\u0010#\u001a\u00020\"2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&J\u0016\u0010(\u001a\u00020\u00182\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020+\u0018\u00010*J2\u0010,\u001a\u00020\u00182\f\u0010-\u001a\b\u0012\u0004\u0012\u00020.0\u00062\b\u0010/\u001a\u0004\u0018\u00010\u001f2\u0010\b\u0002\u0010%\u001a\n\u0012\u0004\u0012\u00020'\u0018\u00010&H\u0002J\u001e\u00100\u001a\u00020\u00182\f\u0010)\u001a\b\u0012\u0004\u0012\u0002010*2\b\u00102\u001a\u0004\u0018\u000101J\u0016\u00103\u001a\u00020\u00182\u000e\u0010)\u001a\n\u0012\u0004\u0012\u00020\u000b\u0018\u00010*J\u0010\u00104\u001a\u00020\u00182\b\u00105\u001a\u0004\u0018\u00010\u000bR\u0014\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00070\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\b\u001a\b\u0012\u0004\u0012\u00020\t0\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001c\u0010\n\u001a\u0004\u0018\u00010\u000bX\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\f\u0010\r\"\u0004\b\u000e\u0010\u000fR\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0014\u0010\u0010\u001a\b\u0012\u0004\u0012\u00020\u00110\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u0012\u001a\u0004\u0018\u00010\u0013X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0014\u001a\u0004\u0018\u00010\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0015\u001a\u00020\u0016X\u0082D¢\u0006\u0002\n\u0000¨\u00066"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/StepMapPreviewer;", "", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V", "allStepTrace", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollectPathLayer;", "circleLayers", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/ErrorPointLayer;", "currentTrace", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "getCurrentTrace", "()Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;", "setCurrentTrace", "(Lcn/mucang/android/jiakaoyi/teachingk2/elements/variable/TraceVariable;)V", "normalLayers", "Lcn/mucang/android/jiakaoyi/teachingk2/collect/v2/NormalLayer;", "showCoordinate", "Lcn/mucang/android/jiakaoyi/signal/utils/Coordinate;", "traceLayer", "width", "", "distinctTraces", "", "traces", "Ljava/util/ArrayList;", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;", "Lkotlin/collections/ArrayList;", "getBoundaryAndRender", "Lkotlin/Pair;", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "Lcn/mucang/android/jiakaoyi/hpmap/render/ExamSiteRenderCallback;", "step", "", "stepDirection", "init", "finish", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "renderHighError", "list", "", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "renderMap", "siteLayers", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "boundary", "renderNormalLayers", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "select", "showAllStepTrace", "showStepTrace", "trace", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class StepMapPreviewer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MapView f6842a;
    private final float b;
    private TraceVariable c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.view.p.d f6843d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f6844e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.d> f6845f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final List<j3> f6846g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final List<cn.mucang.android.jiakaoyi.hpmap.view.p.h> f6847h;

    public StepMapPreviewer(MapView mapView) {
        kotlin.jvm.internal.r.e(mapView, "mapView");
        this.f6842a = mapView;
        this.b = 15.0f;
        this.f6845f = new ArrayList();
        this.f6846g = new ArrayList();
        this.f6847h = new ArrayList();
    }

    private final void a(ArrayList<TraceItemModel> arrayList) {
        if (arrayList == null || arrayList.size() <= 1) {
            return;
        }
        Iterator<TraceItemModel> it = arrayList.iterator();
        kotlin.jvm.internal.r.d(it, "traces.iterator()");
        TraceItemModel next = it.next();
        kotlin.jvm.internal.r.d(next, "iterator.next()");
        TraceItemModel traceItemModel = next;
        while (it.hasNext()) {
            TraceItemModel next2 = it.next();
            kotlin.jvm.internal.r.d(next2, "iterator.next()");
            TraceItemModel traceItemModel2 = next2;
            if (kotlin.jvm.internal.r.a(traceItemModel, traceItemModel2)) {
                it.remove();
            } else {
                traceItemModel = traceItemModel2;
            }
        }
    }

    /* JADX WARN: Code duplicated, block: B:33:0x0072  */
    private final Pair<cn.mucang.android.jiakaoyi.hpmap.a.a.b, cn.mucang.android.jiakaoyi.hpmap.c.a> b(int i, int i2) {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.o oVar;
        cn.mucang.android.jiakaoyi.hpmap.c.a aVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar;
        Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> map;
        List<cn.mucang.android.jiakaoyi.hpmap.c.a> list;
        Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> map2;
        List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list2;
        cn.mucang.android.jiakaoyi.hpmap.c.a aVar2 = null;
        bVar = null;
        bVar = null;
        bVar = null;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2 = null;
        aVar2 = null;
        aVar2 = null;
        aVar2 = null;
        if (AppUtils.b()) {
            cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
            cn.mucang.android.jiakaoyi.mapcollect.c.h hVar = fVarA instanceof cn.mucang.android.jiakaoyi.mapcollect.c.h ? (cn.mucang.android.jiakaoyi.mapcollect.c.h) fVarA : null;
            Step stepFindWithType = Step.findWithType(i);
            if (stepFindWithType != null) {
                aVar = (hVar == null || (map = hVar.v) == null || (list = map.get(stepFindWithType)) == null) ? null : (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.e0(list);
                if (hVar != null && (map2 = hVar.f4710d) != null && (list2 = map2.get(stepFindWithType)) != null) {
                    bVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.b) kotlin.collections.s.e0(list2);
                }
            } else {
                aVar = null;
            }
        } else {
            cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA2 = cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
            cn.mucang.android.jiakaoyi.mapcollect.c.j jVar2 = fVarA2 instanceof cn.mucang.android.jiakaoyi.mapcollect.c.j ? (cn.mucang.android.jiakaoyi.mapcollect.c.j) fVarA2 : null;
            if (jVar2 == null) {
                aVar = null;
            } else {
                int i3 = 0;
                if (i == Step.K2_DaoCheRuKu.type) {
                    List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list3 = jVar2.f4725f;
                    kotlin.jvm.internal.r.d(list3, "k2data.daoku");
                    Iterator<T> it = list3.iterator();
                    int i4 = 0;
                    while (true) {
                        if (!it.hasNext()) {
                            cVar = null;
                            break;
                        }
                        Object next = it.next();
                        int i5 = i4 + 1;
                        if (i4 < 0) {
                            kotlin.collections.s.t();
                            throw null;
                        }
                        cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) next;
                        if (cVar2.u == (i2 == 1)) {
                            i3 = i4;
                            cVar = cVar2;
                            break;
                        }
                        i4 = i5;
                    }
                    List<cn.mucang.android.jiakaoyi.hpmap.c.a> list4 = jVar2.t.get(Step.K2_DaoCheRuKu);
                    bVar = cVar;
                    if (list4 != null) {
                        aVar2 = (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.f0(list4, i3);
                        bVar = cVar;
                    }
                } else if (i == Step.K2_ZhiJiaoZhuanWan.type) {
                    List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.o> list5 = jVar2.i;
                    kotlin.jvm.internal.r.d(list5, "k2data.zhijiao");
                    Iterator<T> it2 = list5.iterator();
                    int i6 = 0;
                    while (true) {
                        if (!it2.hasNext()) {
                            oVar = null;
                            break;
                        }
                        Object next2 = it2.next();
                        int i7 = i6 + 1;
                        if (i6 < 0) {
                            kotlin.collections.s.t();
                            throw null;
                        }
                        cn.mucang.android.jiakaoyi.hpmap.a.a.g.o oVar2 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) next2;
                        if (oVar2.q == (i2 == 1 || i2 == 0)) {
                            i3 = i6;
                            oVar = oVar2;
                            break;
                        }
                        i6 = i7;
                    }
                    List<cn.mucang.android.jiakaoyi.hpmap.c.a> list6 = jVar2.t.get(Step.K2_ZhiJiaoZhuanWan);
                    bVar = oVar;
                    if (list6 != null) {
                        aVar2 = (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.f0(list6, i3);
                        bVar = oVar;
                    }
                } else if (i == Step.K2_SQuXian.type) {
                    List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> list7 = jVar2.f4726g;
                    kotlin.jvm.internal.r.d(list7, "k2data.quxian");
                    Iterator<T> it3 = list7.iterator();
                    int i8 = 0;
                    while (true) {
                        if (!it3.hasNext()) {
                            jVar = null;
                            break;
                        }
                        Object next3 = it3.next();
                        int i9 = i8 + 1;
                        if (i8 < 0) {
                            kotlin.collections.s.t();
                            throw null;
                        }
                        cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar3 = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) next3;
                        if (jVar3.p == (i2 == 1)) {
                            i3 = i8;
                            jVar = jVar3;
                            break;
                        }
                        i8 = i9;
                    }
                    List<cn.mucang.android.jiakaoyi.hpmap.c.a> list8 = jVar2.t.get(Step.K2_SQuXian);
                    bVar = jVar;
                    if (list8 != null) {
                        aVar2 = (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.f0(list8, i3);
                        bVar = jVar;
                    }
                } else {
                    Step stepFindWithType2 = Step.findWithType(i);
                    if (stepFindWithType2 != null) {
                        List<cn.mucang.android.jiakaoyi.hpmap.c.a> list9 = jVar2.t.get(stepFindWithType2);
                        cn.mucang.android.jiakaoyi.hpmap.c.a aVar3 = list9 == null ? null : (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.e0(list9);
                        List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list10 = jVar2.f4723d.get(stepFindWithType2);
                        bVar = list10 != null ? (cn.mucang.android.jiakaoyi.hpmap.a.a.b) kotlin.collections.s.e0(list10) : null;
                        aVar2 = aVar3;
                    } else {
                        bVar = null;
                    }
                }
                aVar = aVar2;
                bVar2 = bVar;
            }
        }
        return new Pair<>(bVar2, aVar);
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static /* synthetic */ void e(StepMapPreviewer stepMapPreviewer, int i, int i2, cn.mucang.android.jiakaoyi.framework.h.b bVar, int i3, Object obj) {
        if ((i3 & 4) != 0) {
            bVar = null;
        }
        stepMapPreviewer.d(i, i2, bVar);
    }

    private final void h(final List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, final cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar2) {
        int measuredHeight = this.f6842a.getMeasuredHeight() * this.f6842a.getMeasuredWidth();
        if (list.size() > 0) {
            if (measuredHeight <= 0) {
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.v2.p1
                    @Override // java.lang.Runnable
                    public final void run() {
                        StepMapPreviewer.i(bVar, this, list, bVar2);
                    }
                }, 200L);
            } else {
                j(bVar, this, list, bVar2);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, StepMapPreviewer this$0, List siteLayers, cn.mucang.android.jiakaoyi.framework.h.b bVar2) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(siteLayers, "$siteLayers");
        j(bVar, this$0, siteLayers, bVar2);
    }

    private static final void j(cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar, StepMapPreviewer stepMapPreviewer, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar2) {
        if (bVar instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.e) {
            stepMapPreviewer.f6842a.u.h(list);
            cn.mucang.android.jiakaoyi.hpmap.a.a.e eVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.e) bVar;
            stepMapPreviewer.f6842a.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(eVar.D(), eVar.z(), stepMapPreviewer.f6842a) * 0.85f);
            stepMapPreviewer.f6842a.setCurrentRotateDegrees((float) (((double) 360) - ((eVar.C().angleTo(eVar.y()) * ((double) 180)) / 3.141592653589793d)));
            MapView mapView = stepMapPreviewer.f6842a;
            Pos posX = eVar.x();
            float f2 = BitmapDescriptorFactory.HUE_RED;
            float f3 = posX == null ? BitmapDescriptorFactory.HUE_RED : (float) posX.x;
            Pos posX2 = eVar.x();
            if (posX2 != null) {
                f2 = (float) posX2.y;
            }
            mapView.i(f3, f2);
        }
        stepMapPreviewer.f6842a.r();
        if (bVar2 == null) {
            return;
        }
        bVar2.callback(Boolean.TRUE);
    }

    /* JADX INFO: renamed from: c, reason: from getter */
    public final TraceVariable getC() {
        return this.c;
    }

    public final void d(int i, int i2, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        if (i == Step.K2_Global.type || i == Step.B2_Global.type) {
            cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
            ComponentCallbacks2 componentCallbacks2B = cn.mucang.android.core.utils.d.b(this.f6842a.getContext());
            Objects.requireNonNull(componentCallbacks2B, "null cannot be cast to non-null type androidx.lifecycle.LifecycleOwner");
            MapRender.a aVar = new MapRender.a((androidx.lifecycle.r) componentCallbacks2B, this.f6842a);
            aVar.c(MapRender.m.a());
            aVar.b(bVar);
            aVar.a();
            return;
        }
        this.f6842a.u.j();
        ArrayList arrayList = new ArrayList();
        Pair<cn.mucang.android.jiakaoyi.hpmap.a.a.b, cn.mucang.android.jiakaoyi.hpmap.c.a> pairB = b(i, i2);
        cn.mucang.android.jiakaoyi.hpmap.a.a.b first = pairB.getFirst();
        cn.mucang.android.jiakaoyi.hpmap.c.a second = pairB.getSecond();
        if (first == null || second == null) {
            return;
        }
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listCreateMapLayers = second.createMapLayers(this.f6842a, false, false);
        kotlin.jvm.internal.r.d(listCreateMapLayers, "renderModel.createMapLayers(mapView, false, false)");
        arrayList.addAll(listCreateMapLayers);
        this.f6844e = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(first);
        h(arrayList, first, bVar);
    }

    public final void g(List<? extends Pos> list) {
        if (this.f6844e == null || cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        Iterator<T> it = this.f6847h.iterator();
        while (it.hasNext()) {
            this.f6842a.u.Q((cn.mucang.android.jiakaoyi.hpmap.view.p.h) it.next());
        }
        this.f6847h.clear();
        if (list != null) {
            for (Pos pos : list) {
                cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6844e;
                kotlin.jvm.internal.r.c(bVar);
                this.f6847h.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.h(this.f6842a, bVar.c(pos)));
            }
        }
        this.f6842a.u.h(this.f6847h);
    }

    public final void k(List<? extends TeachModel> list, TeachModel teachModel) {
        kotlin.jvm.internal.r.e(list, "list");
        Iterator<T> it = this.f6846g.iterator();
        while (it.hasNext()) {
            this.f6842a.u.Q((j3) it.next());
        }
        this.f6846g.clear();
        for (TeachModel teachModel2 : list) {
            NormalVariable normalVariable = teachModel2.getNormalVariable();
            if (normalVariable == null) {
                return;
            }
            NormalVariable normalVariable2 = new NormalVariable();
            normalVariable2.width = normalVariable.width;
            normalVariable2.isSelect = kotlin.jvm.internal.r.a(teachModel2, teachModel);
            normalVariable2.number = String.valueOf(teachModel2.order);
            cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6844e;
            if (bVar == null) {
                normalVariable2.posOnLine = normalVariable.posOnLine;
                normalVariable2.p1 = normalVariable.p1;
                normalVariable2.p2 = normalVariable.p2;
            } else {
                kotlin.jvm.internal.r.c(bVar);
                normalVariable2.posOnLine = bVar.c(normalVariable.posOnLine);
                cn.mucang.android.jiakaoyi.signal.utils.b bVar2 = this.f6844e;
                kotlin.jvm.internal.r.c(bVar2);
                normalVariable2.p1 = bVar2.c(normalVariable.p1);
                cn.mucang.android.jiakaoyi.signal.utils.b bVar3 = this.f6844e;
                kotlin.jvm.internal.r.c(bVar3);
                normalVariable2.p2 = bVar3.c(normalVariable.p2);
            }
            normalVariable2.isRange = normalVariable.isRange;
            this.f6846g.add(new j3(this.f6842a, normalVariable2));
        }
        this.f6842a.u.h(this.f6846g);
    }

    public final void l(List<? extends TraceVariable> list) {
        Pos posC;
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        Iterator<T> it = this.f6845f.iterator();
        while (it.hasNext()) {
            this.f6842a.u.Q((cn.mucang.android.jiakaoyi.hpmap.view.p.d) it.next());
        }
        this.f6845f.clear();
        if (list != null) {
            for (TraceVariable traceVariable : list) {
                ArrayList arrayList = new ArrayList();
                List<TraceItemModel> list2 = traceVariable.traces;
                if (list2 != null) {
                    for (Pos pos : list2) {
                        cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6844e;
                        if (bVar != null && (posC = bVar.c(pos)) != null) {
                            pos = posC;
                        }
                        arrayList.add(pos);
                    }
                }
                this.f6845f.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this.f6842a, arrayList, this.b, -16711936));
            }
        }
        this.f6842a.u.h(this.f6845f);
    }

    public final void m(TraceVariable traceVariable) {
        Pos posC;
        if (traceVariable == null || kotlin.jvm.internal.r.a(this.c, traceVariable)) {
            return;
        }
        this.c = traceVariable;
        a((ArrayList) traceVariable.traces);
        this.f6842a.u.Q(this.f6843d);
        ArrayList arrayList = new ArrayList();
        List<TraceItemModel> list = traceVariable.traces;
        if (list != null) {
            for (Pos pos : list) {
                cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6844e;
                if (bVar != null && (posC = bVar.c(pos)) != null) {
                    pos = posC;
                }
                arrayList.add(pos);
            }
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this.f6842a, arrayList, this.b, -16711936);
        this.f6843d = dVar;
        this.f6842a.u.g(dVar);
    }
}
