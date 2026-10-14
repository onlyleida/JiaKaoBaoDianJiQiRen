package cn.mucang.android.jiakaoyi.k3setting.p003route.edit;

import android.os.SystemClock;
import android.view.View;
import androidx.lifecycle.BusLiveData;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3ExamDataManager;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.k3collect.j0.c.a;
import cn.mucang.android.jiakaoyi.k3collect.k0.n;
import cn.mucang.android.jiakaoyi.k3setting.R;
import cn.mucang.android.jiakaoyi.k3setting.databinding.RouteEditMapBinding;
import cn.mucang.android.jiakaoyi.mapcollect.render.f;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.i.b;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.model.LocalRoute;
import cn.mucang.jiakaoyi.uilib.model.OnlineRoute;
import cn.mucang.jiakaoyi.uilib.model.RouteNode;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Comparator;
import java.util.HashMap;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.collections.y;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000¢\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0007\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\t\n\u0002\b\u0007\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\u0018\u00002\u00020\u0001B\u001d\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007¢\u0006\u0002\u0010\bJ\"\u00103\u001a\f\u0012\u0006\u0012\u0004\u0018\u000105\u0018\u0001042\u0006\u00106\u001a\u00020\u001e2\u0006\u00107\u001a\u000208H\u0002J \u00109\u001a\u00020'2\u0006\u0010:\u001a\u00020&2\u0006\u0010\u000e\u001a\u00020\u000f2\u0006\u00107\u001a\u000208H\u0002J\u0014\u0010;\u001a\u0004\u0018\u00010<2\b\u0010=\u001a\u0004\u0018\u00010>H\u0002J\u0006\u0010?\u001a\u00020@J\u0014\u0010A\u001a\u00020@2\f\u0010B\u001a\b\u0012\u0004\u0012\u00020&04R\u0014\u0010\t\u001a\b\u0012\u0004\u0012\u00020\u000b0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\f\u001a\u0004\u0018\u00010\rX\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0010\u001a\u00020\u0011X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0012\u001a\u00020\u0011X\u0082D¢\u0006\u0002\n\u0000R\u001d\u0010\u0013\u001a\u0004\u0018\u00010\u00148BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0017\u0010\u0018\u001a\u0004\b\u0015\u0010\u0016R\u0011\u0010\u0002\u001a\u00020\u0003¢\u0006\b\n\u0000\u001a\u0004\b\u0019\u0010\u001aR\u000e\u0010\u001b\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u0014\u0010\u001d\u001a\b\u0012\u0004\u0012\u00020\u001e0\nX\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u001f\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020!X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\"\u001a\u00020#X\u0082\u000e¢\u0006\u0002\n\u0000R*\u0010$\u001a\u001e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'0%j\u000e\u0012\u0004\u0012\u00020&\u0012\u0004\u0012\u00020'`(X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010)\u001a\u0004\u0018\u00010'X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010*\u001a\u00020\u001cX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010+\u001a\u00020,X\u0082\u000e¢\u0006\u0002\n\u0000R\u0011\u0010\u0004\u001a\u00020\u0005¢\u0006\b\n\u0000\u001a\u0004\b-\u0010.R\u001a\u0010\u0006\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b/\u00100\"\u0004\b1\u00102¨\u0006C"}, d2 = {"Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditHpMapLogic;", "", "fragment", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;", "viewBinding", "Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;", "viewModel", "Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;)V", "carPosObserver", "Landroidx/lifecycle/Observer;", "Lcn/mucang/android/jiakaoyi/signal/center/model/CarPos;", "carRender", "Lcn/mucang/android/jiakaoyi/hpmap/render/car/CarRender;", "converter", "Lcn/mucang/android/jiakaoyi/signal/proj/Converter;", "currentZoom", "", "defaultScale", "examSite", "Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "getExamSite", "()Lcn/mucang/jiakaoyi/uilib/model/ExamSiteModel;", "examSite$delegate", "Lkotlin/Lazy;", "getFragment", "()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditMapFragment;", "hasAddCar", "", "iRenderDataObserver", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "loadHpMap", "mapLayerHelper", "Lcn/mucang/android/jiakaoyi/k3collect/transforms/MapLayerHelper;", "mapMode", "", "nodeLayerMap", "Ljava/util/HashMap;", "Lcn/mucang/jiakaoyi/uilib/model/RouteNode;", "Lcn/mucang/android/jiakaoyi/k3collect/render/mark/MarkRender;", "Lkotlin/collections/HashMap;", "selectLayer", "touch", "upTime", "", "getViewBinding", "()Lcn/mucang/android/jiakaoyi/k3setting/databinding/RouteEditMapBinding;", "getViewModel", "()Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;", "setViewModel", "(Lcn/mucang/android/jiakaoyi/k3setting/route/edit/RouteEditViewModel;)V", "createLayers", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/MapBaseLayer;", "iRenderData", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "createMarkRender", "node", "findClickModel", "Lcn/mucang/android/jiakaoyi/hpmap/view/model/ClickModel;", "pos", "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;", "initHpMapView", "", "updateMarkRenders", "nodes", "k3setting_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class RouteEditHpMapLogic {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final RouteEditMapFragment f4540a;
    private final RouteEditMapBinding b;
    private RouteEditViewModel c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final n f4541d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private a f4542e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.c.c.a f4543f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private boolean f4544g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f4545h;
    private long i;
    private boolean j;
    private final float k;
    private float l;
    private int m;
    private final Lazy n;
    private final a0<f> o;
    private final a0<CarPos> p;
    private HashMap<RouteNode, a> q;
    private cn.mucang.android.jiakaoyi.signal.i.a r;

    public RouteEditHpMapLogic(RouteEditMapFragment fragment, RouteEditMapBinding viewBinding, RouteEditViewModel viewModel) {
        r.e(fragment, "fragment");
        r.e(viewBinding, "viewBinding");
        r.e(viewModel, "viewModel");
        this.f4540a = fragment;
        this.b = viewBinding;
        this.c = viewModel;
        this.f4541d = new n();
        this.k = 0.39999998f;
        this.l = 0.39999998f;
        this.n = i.b(new Function0<ExamSiteModel>() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.RouteEditHpMapLogic$examSite$2
            /* JADX WARN: Can't rename method to resolve collision */
            @Override // kotlin.jvm.functions.Function0
            public final ExamSiteModel invoke() {
                return ExamSiteUtil.d();
            }
        });
        this.o = new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.n
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteEditHpMapLogic.i(this.f4590a, (f) obj);
            }
        };
        this.p = new a0() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.k
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                RouteEditHpMapLogic.a(this.f4583a, (CarPos) obj);
            }
        };
        this.q = new HashMap<>();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(RouteEditHpMapLogic this$0, CarPos carPos) {
        r.e(this$0, "this$0");
        if (this$0.getB().hpMapView.getVisibility() == 0) {
            cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar = this$0.f4543f;
            if (aVar == null) {
                this$0.f4543f = new cn.mucang.android.jiakaoyi.hpmap.c.c.a(this$0.getB().hpMapView, carPos);
                if (this$0.f4544g) {
                    return;
                }
                this$0.getB().hpMapView.u.g(this$0.f4543f);
                this$0.f4544g = true;
                return;
            }
            if (aVar != null) {
                aVar.q(carPos);
            }
            Pos pos = carPos == null ? null : carPos.center;
            if (pos != null) {
                if (!this$0.f4545h && SystemClock.elapsedRealtime() - this$0.i >= 3000) {
                    this$0.getB().hpMapView.setCurrentRotateDegrees((-((float) carPos.degree)) - 90);
                    this$0.f4541d.j(this$0.getB().hpMapView, (float) pos.x, (float) pos.y, this$0.l);
                }
                this$0.getB().hpMapView.r();
            }
        }
    }

    private final List<k> b(f fVar, MapView mapView) {
        this.r = fVar.getConverter();
        List<k> listCreateLayers = fVar.createLayers(mapView, false, true);
        if (listCreateLayers != null) {
            OnlineRoute onlineRouteE = this.c.m().e();
            LocalRoute localRoute = onlineRouteE == null ? null : onlineRouteE.toLocalRoute();
            if (localRoute != null && localRoute.getNodes() != null && localRoute.getNodes().size() > 0) {
                if ((fVar.getConverter() instanceof b) && (cn.mucang.android.jiakaoyi.framework.utils.n.a() || MucangConfig.v())) {
                    RouteNode routeNode = localRoute.getNodes().get(0);
                    LiveBus.d(SetInitDebugGps.class).l(new SetInitDebugGps(new Gps(routeNode.getLat(), routeNode.getLon())));
                }
                if (this.q.isEmpty()) {
                    List<RouteNode> nodes = localRoute.getNodes();
                    r.d(nodes, "route.nodes");
                    for (RouteNode node : nodes) {
                        r.d(node, "node");
                        cn.mucang.android.jiakaoyi.signal.i.a converter = fVar.getConverter();
                        r.d(converter, "iRenderData.converter");
                        this.q.put(node, c(node, converter, mapView));
                    }
                    if (!this.q.isEmpty()) {
                        Collection<a> collectionValues = this.q.values();
                        r.d(collectionValues, "nodeLayerMap.values");
                        listCreateLayers.addAll(collectionValues);
                    }
                }
            } else if ((fVar.getConverter() instanceof b) && cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
                BusLiveData busLiveDataD = LiveBus.d(SetInitDebugGps.class);
                Gps zero = fVar.getConverter().getZero();
                r.d(zero, "iRenderData.converter.zero");
                busLiveDataD.l(new SetInitDebugGps(zero));
            }
        }
        return listCreateLayers;
    }

    private final a c(RouteNode routeNode, cn.mucang.android.jiakaoyi.signal.i.a aVar, MapView mapView) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(new Gps(routeNode.getLat(), routeNode.getLon()), aVar);
        Step stepFindWithType = Step.findWithType(routeNode.getStepId());
        StringBuilder sb = new StringBuilder();
        sb.append(routeNode.getId());
        sb.append((Object) (stepFindWithType == null ? null : stepFindWithType.getStepName()));
        a aVar2 = new a(mapView, new a.C0111a(posJ, sb.toString(), routeNode.getBearing() + 90, R.drawable.route_ic_mark_arrow));
        aVar2.f3758a = 10;
        return aVar2;
    }

    private final cn.mucang.android.jiakaoyi.hpmap.view.q.a d(Pos pos) {
        Collection<a> collectionValues = this.q.values();
        r.d(collectionValues, "nodeLayerMap.values");
        if (!collectionValues.isEmpty()) {
            double dB = cn.mucang.android.jiakaoyi.hpmap.view.r.a.b(45.0d);
            ArrayList arrayList = new ArrayList();
            Iterator<a> it = collectionValues.iterator();
            while (it.hasNext()) {
                cn.mucang.android.jiakaoyi.hpmap.view.q.a aVarF = it.next().f(pos, dB);
                if (aVarF != null) {
                    arrayList.add(aVarF);
                }
            }
            if (arrayList.size() > 0) {
                y.A(arrayList, new Comparator() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.m
                    @Override // java.util.Comparator
                    public final int compare(Object obj, Object obj2) {
                        return RouteEditHpMapLogic.e((cn.mucang.android.jiakaoyi.hpmap.view.q.a) obj, (cn.mucang.android.jiakaoyi.hpmap.view.q.a) obj2);
                    }
                });
                cn.mucang.android.jiakaoyi.hpmap.view.q.a aVar = (cn.mucang.android.jiakaoyi.hpmap.view.q.a) arrayList.get(0);
                if (aVar.f3772a <= dB) {
                    return aVar;
                }
            }
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final int e(cn.mucang.android.jiakaoyi.hpmap.view.q.a o1, cn.mucang.android.jiakaoyi.hpmap.view.q.a o2) {
        r.e(o1, "o1");
        r.e(o2, "o2");
        return Double.compare(o1.f3772a, o2.f3772a);
    }

    private final ExamSiteModel f() {
        return (ExamSiteModel) this.n.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void i(RouteEditHpMapLogic this$0, f fVar) {
        r.e(this$0, "this$0");
        if (this$0.getF4540a().isAdded() && this$0.getF4540a().isVisible() && fVar != null) {
            MapView mapView = this$0.getB().hpMapView;
            r.d(mapView, "viewBinding.hpMapView");
            List<k> listB = this$0.b(fVar, mapView);
            if (listB != null) {
                this$0.getB().hpMapView.u.h(listB);
            }
            cn.mucang.android.jiakaoyi.signal.pos.a mapBound = fVar.getMapBound();
            this$0.getB().hpMapView.setCurrentZoom(this$0.l);
            MapView mapView2 = this$0.getB().hpMapView;
            Pos pos = mapBound.f5818e;
            mapView2.i((float) pos.x, (float) pos.y);
            this$0.getB().hpMapView.r();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void k(RouteEditHpMapLogic this$0, Boolean it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        this$0.j = it.booleanValue();
        this$0.getB().mapModeSwitch.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l(RouteEditHpMapLogic this$0, Boolean it) {
        r.e(this$0, "this$0");
        r.d(it, "it");
        if (it.booleanValue()) {
            this$0.f4545h = true;
        } else {
            this$0.i = SystemClock.elapsedRealtime();
            this$0.f4545h = false;
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m(RouteEditHpMapLogic this$0, Pos pos) {
        r.e(this$0, "this$0");
        cn.mucang.android.jiakaoyi.hpmap.view.q.a aVarD = this$0.d(pos);
        a aVar = this$0.f4542e;
        if (aVar != null) {
            aVar.f3759d = false;
            if ((aVarD == null || !(aVarD.c instanceof a)) && aVar.i().distanceTo(pos) < 200.0d) {
                for (Map.Entry<RouteNode, a> entry : this$0.q.entrySet()) {
                    a value = entry.getValue();
                    r.d(value, "entry.value");
                    if (r.a(aVar, value)) {
                        cn.mucang.android.jiakaoyi.signal.i.a aVar2 = this$0.r;
                        Gps gpsB = aVar2 == null ? null : aVar2.b(pos);
                        if (gpsB != null) {
                            RouteNode key = entry.getKey();
                            r.d(key, "entry.key");
                            RouteNode routeNode = key;
                            routeNode.setLat(gpsB.latitude);
                            routeNode.setLon(gpsB.longitude);
                            aVar.j(pos);
                        }
                    }
                }
            }
            this$0.f4542e = null;
        }
        if ((aVarD != null ? aVarD.c : null) != null) {
            k kVar = aVarD.c;
            if (kVar instanceof a) {
                Objects.requireNonNull(kVar, "null cannot be cast to non-null type cn.mucang.android.jiakaoyi.k3collect.render.mark.MarkRender");
                a aVar3 = (a) kVar;
                this$0.f4542e = aVar3;
                if (aVar3 != null) {
                    aVar3.f3759d = true;
                }
            }
        }
        this$0.getB().hpMapView.r();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(RouteEditHpMapLogic this$0, View view) {
        String str;
        r.e(this$0, "this$0");
        int i = 1;
        boolean z = false;
        if (this$0.m == 0) {
            this$0.getB().hpMapView.setVisibility(0);
            this$0.getB().mapView.setVisibility(4);
            str = "高精度地图";
            z = true;
        } else {
            this$0.getB().hpMapView.setVisibility(4);
            this$0.getB().mapView.setVisibility(0);
            str = "普通地图";
            i = 0;
        }
        this$0.m = i;
        this$0.getB().mapModeSwitch.setText(str);
        this$0.getB().mapModeSwitch.setSelected(z);
    }

    /* JADX INFO: renamed from: g, reason: from getter */
    public final RouteEditMapFragment getF4540a() {
        return this.f4540a;
    }

    /* JADX INFO: renamed from: h, reason: from getter */
    public final RouteEditMapBinding getB() {
        return this.b;
    }

    public final void j() {
        if (!b0.a().b() && !cn.mucang.android.jiakaoyi.framework.utils.n.a() && !MucangConfig.v()) {
            this.b.mapModeSwitch.setVisibility(8);
            return;
        }
        this.b.hpMapView.setClickViewListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.j
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                RouteEditHpMapLogic.l(this.f4581a, (Boolean) obj);
            }
        });
        this.b.hpMapView.setOnClickListener(new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.i
            @Override // cn.mucang.android.jiakaoyi.framework.h.b
            public final void callback(Object obj) {
                RouteEditHpMapLogic.m(this.f4579a, (Pos) obj);
            }
        });
        this.b.mapModeSwitch.setOnClickListener(new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                RouteEditHpMapLogic.n(this.f4585a, view);
            }
        });
        ExamSiteModel examSiteModelF = f();
        if (examSiteModelF != null) {
            new K3ExamDataManager(examSiteModelF.examSiteId, new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.k3setting.route.edit.h
                @Override // cn.mucang.android.jiakaoyi.framework.h.b
                public final void callback(Object obj) {
                    RouteEditHpMapLogic.k(this.f4577a, (Boolean) obj);
                }
            });
        }
        BusLiveData busLiveDataD = LiveBus.d(f.class);
        androidx.lifecycle.r viewLifecycleOwner = this.f4540a.getViewLifecycleOwner();
        r.d(viewLifecycleOwner, "fragment.viewLifecycleOwner");
        busLiveDataD.p(viewLifecycleOwner, this.o);
        BusLiveData busLiveDataD2 = LiveBus.d(CarPos.class);
        androidx.lifecycle.r viewLifecycleOwner2 = this.f4540a.getViewLifecycleOwner();
        r.d(viewLifecycleOwner2, "fragment.viewLifecycleOwner");
        busLiveDataD2.h(viewLifecycleOwner2, this.p);
    }

    public final void v(List<? extends RouteNode> nodes) {
        r.e(nodes, "nodes");
        if (this.r != null) {
            Iterator<Map.Entry<RouteNode, a>> it = this.q.entrySet().iterator();
            while (it.hasNext()) {
                this.b.hpMapView.u.Q(this.q.get(it.next().getKey()));
            }
            this.q.clear();
            for (RouteNode routeNode : nodes) {
                cn.mucang.android.jiakaoyi.signal.i.a aVar = this.r;
                r.c(aVar);
                MapView mapView = this.b.hpMapView;
                r.d(mapView, "viewBinding.hpMapView");
                a aVarC = c(routeNode, aVar, mapView);
                this.q.put(routeNode, aVarC);
                this.b.hpMapView.u.g(aVarC);
            }
        }
    }
}
