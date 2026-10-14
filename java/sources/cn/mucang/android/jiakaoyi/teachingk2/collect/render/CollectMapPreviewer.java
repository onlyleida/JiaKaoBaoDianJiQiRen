package cn.mucang.android.jiakaoyi.teachingk2.collect.render;

import android.text.TextUtils;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.data.TeachModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.model.TraceItemModel;
import cn.mucang.android.jiakaoyi.teachingk2.elements.variable.TraceVariable;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Metadata;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.teachingk2.collect.render.a2, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes4.dex */
@Metadata(d1 = {"\u0000Z\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010 \n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\u000e\u0010\f\u001a\u00020\r2\u0006\u0010\u000e\u001a\u00020\u000fJ\u0006\u0010\u0005\u001a\u00020\u0006J \u0010\u0010\u001a\u00020\r2\f\u0010\u0011\u001a\b\u0012\u0004\u0012\u00020\u00130\u00122\b\u0010\u0014\u001a\u0004\u0018\u00010\u0015H\u0002J\u001e\u0010\u0016\u001a\u00020\r2\u0006\u0010\u0017\u001a\u00020\u00182\u000e\u0010\u0019\u001a\n\u0012\u0004\u0012\u00020\u0018\u0018\u00010\u001aJ\u000e\u0010\u001b\u001a\u00020\r2\u0006\u0010\u0014\u001a\u00020\u0015J\u001c\u0010\u001c\u001a\n\u0012\u0004\u0012\u00020\u001d\u0018\u00010\u001a2\f\u0010\u0019\u001a\b\u0012\u0004\u0012\u00020\u001d0\u001aR\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\t\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082D¢\u0006\u0002\n\u0000¨\u0006\u001e"}, d2 = {"Lcn/mucang/android/jiakaoyi/teachingk2/collect/render/CollectMapPreviewer;", "", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V", "collectCoordinate", "Lcn/mucang/android/jiakaoyi/signal/utils/Coordinate;", "currentLayer", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollectPathLayer;", "showCoordinate", "width", "", "addPoint", "", "pos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "renderMap", "siteLayers", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "boundary", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/BoundDetector;", "showPreviewMap", "teachModel", "Lcn/mucang/android/jiakaoyi/teachingk2/data/TeachModel;", "list", "", "startCollect", "stopCollect", "Lcn/mucang/android/jiakaoyi/teachingk2/elements/model/TraceItemModel;", "TeachingK2_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class CollectMapPreviewer {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final MapView f6545a;
    private final float b;
    private cn.mucang.android.jiakaoyi.hpmap.view.p.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f6546d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.utils.b f6547e;

    public CollectMapPreviewer(MapView mapView) {
        kotlin.jvm.internal.r.e(mapView, "mapView");
        this.f6545a = mapView;
        this.b = 15.0f;
    }

    private final void d(final List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, final cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        int measuredHeight = this.f6545a.getMeasuredHeight() * this.f6545a.getMeasuredWidth();
        if (list.size() > 0) {
            if (measuredHeight <= 0) {
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.collect.render.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        CollectMapPreviewer.e(this.f6575a, list, bVar);
                    }
                }, 200L);
            } else {
                f(this, list, bVar);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e(CollectMapPreviewer this$0, List siteLayers, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(siteLayers, "$siteLayers");
        f(this$0, siteLayers, bVar);
    }

    private static final void f(CollectMapPreviewer collectMapPreviewer, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar) {
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB;
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB2;
        Pos pos;
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB3;
        Pos pos2;
        cn.mucang.android.jiakaoyi.signal.pos.a aVarB4;
        collectMapPreviewer.f6545a.u.h(list);
        MapView mapView = collectMapPreviewer.f6545a;
        double dF = 0.0d;
        double dL = (bVar == null || (aVarB = bVar.b()) == null) ? 0.0d : aVarB.l();
        if (bVar != null && (aVarB4 = bVar.b()) != null) {
            dF = aVarB4.f();
        }
        mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(dL, dF, collectMapPreviewer.f6545a));
        MapView mapView2 = collectMapPreviewer.f6545a;
        float f2 = BitmapDescriptorFactory.HUE_RED;
        float f3 = (bVar == null || (aVarB2 = bVar.b()) == null || (pos = aVarB2.f5818e) == null) ? BitmapDescriptorFactory.HUE_RED : (float) pos.x;
        if (bVar != null && (aVarB3 = bVar.b()) != null && (pos2 = aVarB3.f5818e) != null) {
            f2 = (float) pos2.y;
        }
        mapView2.i(f3, f2);
        collectMapPreviewer.f6545a.r();
    }

    public final void a(Pos pos) {
        cn.mucang.android.jiakaoyi.signal.utils.b bVar;
        kotlin.jvm.internal.r.e(pos, "pos");
        cn.mucang.android.jiakaoyi.signal.utils.b bVar2 = this.f6546d;
        if (bVar2 == null || (bVar = this.f6547e) == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = this.c;
        if (dVar != null) {
            Pos posC = null;
            if (bVar2 != null) {
                posC = bVar2.c(bVar != null ? bVar.a(pos) : null);
            }
            dVar.i(posC);
        }
        this.f6545a.r();
    }

    public final cn.mucang.android.jiakaoyi.signal.utils.b b() {
        cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6547e;
        kotlin.jvm.internal.r.c(bVar);
        return bVar;
    }

    public final void g(TeachModel teachModel, List<? extends TeachModel> list) {
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar;
        cn.mucang.android.jiakaoyi.hpmap.c.a aVar;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.o oVar;
        List<TraceItemModel> list2;
        Pos posC;
        List<TraceItemModel> list3;
        Pos posC2;
        cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar2;
        cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar;
        kotlin.jvm.internal.r.e(teachModel, "teachModel");
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        this.f6545a.u.j();
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> arrayList = new ArrayList<>();
        cn.mucang.android.jiakaoyi.mapcollect.render.f fVarA = cn.mucang.android.jiakaoyi.mapcollect.manager.map.x0.f5139a.a(String.valueOf(ExamSiteUtil.e(0L)));
        Objects.requireNonNull(fVarA, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.mapcollect.poshandle.K2Data");
        cn.mucang.android.jiakaoyi.mapcollect.c.j jVar2 = (cn.mucang.android.jiakaoyi.mapcollect.c.j) fVarA;
        int i = teachModel.step;
        cn.mucang.android.jiakaoyi.hpmap.c.a aVar2 = null;
        aVar2 = null;
        aVar2 = null;
        aVar2 = null;
        if (i == Step.K2_DaoCheRuKu.type) {
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> list4 = jVar2.f4725f;
            kotlin.jvm.internal.r.d(list4, "k2data.daoku");
            Iterator<T> it = list4.iterator();
            int i2 = 0;
            while (true) {
                if (!it.hasNext()) {
                    cVar = null;
                    i2 = 0;
                    break;
                }
                Object next = it.next();
                int i3 = i2 + 1;
                if (i2 < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                cVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) next;
                if (cVar.u == (teachModel.stepDirection == 1)) {
                    break;
                } else {
                    i2 = i3;
                }
            }
            List<cn.mucang.android.jiakaoyi.hpmap.c.a> list5 = jVar2.t.get(Step.K2_DaoCheRuKu);
            bVar = cVar;
            if (list5 != null) {
                aVar = (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.f0(list5, i2);
                bVar2 = cVar;
                aVar2 = aVar;
                bVar = bVar2;
            }
        } else if (i == Step.K2_ZhiJiaoZhuanWan.type) {
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.o> list6 = jVar2.i;
            kotlin.jvm.internal.r.d(list6, "k2data.zhijiao");
            Iterator<T> it2 = list6.iterator();
            int i4 = 0;
            while (true) {
                if (!it2.hasNext()) {
                    oVar = null;
                    i4 = 0;
                    break;
                }
                Object next2 = it2.next();
                int i5 = i4 + 1;
                if (i4 < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                oVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.o) next2;
                if (oVar.q == (teachModel.stepDirection == 1)) {
                    break;
                } else {
                    i4 = i5;
                }
            }
            List<cn.mucang.android.jiakaoyi.hpmap.c.a> list7 = jVar2.t.get(Step.K2_ZhiJiaoZhuanWan);
            bVar = oVar;
            if (list7 != null) {
                aVar = (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.f0(list7, i4);
                bVar2 = oVar;
                aVar2 = aVar;
                bVar = bVar2;
            }
        } else if (i == Step.K2_SQuXian.type) {
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> list8 = jVar2.f4726g;
            kotlin.jvm.internal.r.d(list8, "k2data.quxian");
            Iterator<T> it3 = list8.iterator();
            int i6 = 0;
            while (true) {
                if (!it3.hasNext()) {
                    jVar = null;
                    i6 = 0;
                    break;
                }
                Object next3 = it3.next();
                int i7 = i6 + 1;
                if (i6 < 0) {
                    kotlin.collections.s.t();
                    throw null;
                }
                jVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) next3;
                if (jVar.p == (teachModel.stepDirection == 1)) {
                    break;
                } else {
                    i6 = i7;
                }
            }
            List<cn.mucang.android.jiakaoyi.hpmap.c.a> list9 = jVar2.t.get(Step.K2_SQuXian);
            bVar = jVar;
            if (list9 != null) {
                aVar = (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.f0(list9, i6);
                bVar2 = jVar;
                aVar2 = aVar;
                bVar = bVar2;
            }
        } else {
            Step stepFindWithType = Step.findWithType(i);
            if (stepFindWithType != null) {
                List<cn.mucang.android.jiakaoyi.hpmap.c.a> list10 = jVar2.t.get(stepFindWithType);
                cn.mucang.android.jiakaoyi.hpmap.c.a aVar3 = list10 == null ? null : (cn.mucang.android.jiakaoyi.hpmap.c.a) kotlin.collections.s.e0(list10);
                List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> list11 = jVar2.f4723d.get(stepFindWithType);
                bVar = list11 != null ? (cn.mucang.android.jiakaoyi.hpmap.a.a.b) kotlin.collections.s.e0(list11) : null;
                aVar2 = aVar3;
            } else {
                bVar = null;
            }
        }
        if (aVar2 != null) {
            Collection<? extends cn.mucang.android.jiakaoyi.hpmap.view.p.k> collectionCreateMapLayers = aVar2.createMapLayers(this.f6545a, false, false);
            kotlin.jvm.internal.r.d(collectionCreateMapLayers, "it.createMapLayers(mapView, false, false)");
            arrayList.addAll(collectionCreateMapLayers);
        }
        if (teachModel.isTraceTeach() && cn.mucang.android.core.utils.n0.e(teachModel.teachModelId)) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this.f6545a, new ArrayList(), this.b, -65536);
            this.c = dVar;
            kotlin.jvm.internal.r.c(dVar);
            arrayList.add(dVar);
        }
        if (bVar == null) {
            return;
        }
        this.f6546d = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(bVar);
        if (list != null) {
            for (TeachModel teachModel2 : list) {
                if (teachModel2.step == teachModel.step && teachModel2.stepDirection == teachModel.stepDirection && TextUtils.equals(teachModel2.parkingSpaceGroup, teachModel.parkingSpaceGroup)) {
                    if (teachModel2.isTraceTeach() && !kotlin.jvm.internal.r.a(teachModel2.teachModelId, teachModel.teachModelId)) {
                        ArrayList arrayList2 = new ArrayList();
                        TraceVariable traceVariable = teachModel2.getTraceVariable();
                        if (traceVariable != null && (list3 = traceVariable.traces) != null) {
                            for (Pos pos : list3) {
                                cn.mucang.android.jiakaoyi.signal.utils.b bVar3 = this.f6546d;
                                if (bVar3 != null && (posC2 = bVar3.c(pos)) != null) {
                                    pos = posC2;
                                }
                                arrayList2.add(pos);
                            }
                        }
                        arrayList.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this.f6545a, arrayList2, this.b, -16711936));
                    } else if (teachModel2.isTraceTeach() && kotlin.jvm.internal.r.a(teachModel2.teachModelId, teachModel.teachModelId)) {
                        ArrayList arrayList3 = new ArrayList();
                        TraceVariable traceVariable2 = teachModel.getTraceVariable();
                        if (traceVariable2 != null && (list2 = traceVariable2.traces) != null) {
                            for (Pos pos2 : list2) {
                                cn.mucang.android.jiakaoyi.signal.utils.b bVar4 = this.f6546d;
                                if (bVar4 != null && (posC = bVar4.c(pos2)) != null) {
                                    pos2 = posC;
                                }
                                arrayList3.add(pos2);
                            }
                        }
                        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar2 = new cn.mucang.android.jiakaoyi.hpmap.view.p.d(this.f6545a, arrayList3, this.b, -65536);
                        this.c = dVar2;
                        kotlin.jvm.internal.r.c(dVar2);
                        arrayList.add(dVar2);
                    }
                }
            }
        }
        d(arrayList, bVar);
    }

    public final void h(cn.mucang.android.jiakaoyi.hpmap.a.a.b boundary) {
        kotlin.jvm.internal.r.e(boundary, "boundary");
        this.f6547e = cn.mucang.android.jiakaoyi.teachingk2.elements.model.a.a(boundary);
        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = this.c;
        if (dVar != null) {
            dVar.j();
        }
        this.f6545a.r();
    }

    public final List<TraceItemModel> i(List<? extends TraceItemModel> list) {
        kotlin.jvm.internal.r.e(list, "list");
        if (this.f6546d == null || this.f6547e == null) {
            return null;
        }
        ArrayList<TraceItemModel> arrayList = new ArrayList();
        for (TraceItemModel traceItemModel : list) {
            cn.mucang.android.jiakaoyi.signal.utils.b bVar = this.f6547e;
            kotlin.jvm.internal.r.c(bVar);
            arrayList.add(traceItemModel.set(bVar.a(traceItemModel)));
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.d dVar = this.c;
        if (dVar != null) {
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
            for (TraceItemModel traceItemModel2 : arrayList) {
                cn.mucang.android.jiakaoyi.signal.utils.b bVar2 = this.f6546d;
                kotlin.jvm.internal.r.c(bVar2);
                arrayList2.add(bVar2.c(traceItemModel2));
            }
            dVar.m(arrayList2);
        }
        this.f6545a.r();
        return arrayList;
    }
}
