package cn.mucang.android.jiakaoyi.mapcollect.render;

import androidx.lifecycle.a0;
import androidx.lifecycle.r;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.i0;
import cn.mucang.android.jiakaoyi.framework.utils.o0;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.m;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.mapcollect.c.i;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import java.util.ArrayList;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.internal.o;

/* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.render.g, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes3.dex */
@Metadata(d1 = {"\u0000\u0082\u0001\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010!\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0006\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0005\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\u0018\u0000 <2\u00020\u0001:\u0002;<B1\b\u0017\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u0006\u001a\u00020\u0007\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\u0002\u0010\nB1\b\u0002\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005\u0012\u0006\u0010\u000b\u001a\u00020\f\u0012\u0010\b\u0002\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\t¢\u0006\u0002\u0010\rJ,\u0010!\u001a\u00020\u00072\f\u0010\"\u001a\b\u0012\u0004\u0012\u00020$0#2\u0006\u0010%\u001a\u00020&2\u0006\u0010'\u001a\u00020\u00072\u0006\u0010(\u001a\u00020)J\u0006\u0010*\u001a\u00020+J\u0010\u0010,\u001a\u00020\u00072\u0006\u0010-\u001a\u00020.H\u0002J\u0010\u0010/\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0006\u00100\u001a\u00020+J\u0006\u00101\u001a\u00020+J\u001c\u00102\u001a\u00020+2\u0006\u0010(\u001a\u00020)2\f\u00103\u001a\b\u0012\u0004\u0012\u00020504J\u001c\u00106\u001a\u00020+2\u0006\u0010(\u001a\u00020)2\f\u00103\u001a\b\u0012\u0004\u0012\u00020704J\u0010\u00108\u001a\u00020+2\u0006\u0010\u001c\u001a\u00020\u001dH\u0002J\u0006\u00109\u001a\u00020+J\u0006\u0010:\u001a\u00020+R\u0010\u0010\u000e\u001a\u0004\u0018\u00010\u000fX\u0082\u000e¢\u0006\u0002\n\u0000R\u001c\u0010\u0010\u001a\u0004\u0018\u00010\u0011X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0012\u0010\u0013\"\u0004\b\u0014\u0010\u0015R\u000e\u0010\u0016\u001a\u00020\u0007X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0017\u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000R\u001a\u0010\u0018\u001a\u00020\u0007X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\u0018\u0010\u0019\"\u0004\b\u001a\u0010\u001bR\u0016\u0010\b\u001a\n\u0012\u0004\u0012\u00020\u0007\u0018\u00010\tX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001c\u001a\u0004\u0018\u00010\u001dX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u000b\u001a\u00020\fX\u0082\u0004¢\u0006\u0002\n\u0000R\u0010\u0010\u001e\u001a\u0004\u0018\u00010\u001fX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010 \u001a\u00020\u0007X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006="}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "forPreview", "", "loadFinishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "(Landroidx/lifecycle/LifecycleOwner;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ZLcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "renderFlag", "", "(Landroidx/lifecycle/LifecycleOwner;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;ILcn/mucang/android/jiakaoyi/framework/listeners/Callback;)V", "carDataHandler", "Lcn/mucang/android/jiakaoyi/mapcollect/poshandle/CarDataHandler;", "carRender", "Lcn/mucang/android/jiakaoyi/hpmap/render/car/CarRender;", "getCarRender", "()Lcn/mucang/android/jiakaoyi/hpmap/render/car/CarRender;", "setCarRender", "(Lcn/mucang/android/jiakaoyi/hpmap/render/car/CarRender;)V", "currentCarMoveState", "hasAddCar", "is2DMap", "()Z", "set2DMap", "(Z)V", "mapData", "Lcn/mucang/android/jiakaoyi/mapcollect/render/IRenderData;", "scaleHelper", "Lcn/mucang/android/jiakaoyi/mapcollect/render/ScaleHelper;", "updatePosition", "createCollapseLayer", "layers", "", "Lcn/mucang/android/jiakaoyi/hpmap/view/layer/CollapseLayer;", "line45", "Lcn/mucang/android/jiakaoyi/hpmap/model/Line;", "hasChanged", "distance", "", "destroy", "", "hasTileResource", "examSiteId", "", "initDataHandler", "onPause", "onResume", "renderCollapseLine", "cefangList", "", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/c2/C2CeFangCollision;", "renderCollapseLineB2", "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/b2/B2CeFangCollision;", "renderMap", "startCarMove", "stopCarMove", "Builder", "Companion", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
public final class MapRender {
    public static final b m = new b(null);
    private static final int n = 2;
    private static final int o = 4;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final r f5182a;
    private final MapView b;
    private final int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f5183d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private f f5184e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.hpmap.c.c.a f5185f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private i f5186g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f5187h;
    private ScaleHelper i;
    private boolean j;
    private boolean k;
    private final boolean l;

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.render.g$a */
    @Metadata(d1 = {"\u00000\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\u0018\u00002\u00020\u0001B\u0015\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u0012\u0006\u0010\u0004\u001a\u00020\u0005¢\u0006\u0002\u0010\u0006J\u0006\u0010\f\u001a\u00020\rJ\u0016\u0010\u000e\u001a\u00020\u00002\u000e\u0010\u000f\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bJ\u000e\u0010\u0010\u001a\u00020\u00002\u0006\u0010\u0011\u001a\u00020\u000bR\u0016\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\t\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0005X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\n\u001a\u00020\u000bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0012"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender$Builder;", "", "owner", "Landroidx/lifecycle/LifecycleOwner;", "mapView", "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;", "(Landroidx/lifecycle/LifecycleOwner;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V", "loadFinishCallback", "Lcn/mucang/android/jiakaoyi/framework/listeners/Callback;", "", "renderFlag", "", "build", "Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender;", "setFinishCallback", "callback", "setRenderFlag", "flag", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final r f5188a;
        private final MapView b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private cn.mucang.android.jiakaoyi.framework.h.b<Boolean> f5189d;

        public a(r owner, MapView mapView) {
            kotlin.jvm.internal.r.e(owner, "owner");
            kotlin.jvm.internal.r.e(mapView, "mapView");
            this.f5188a = owner;
            this.b = mapView;
        }

        public final MapRender a() {
            return new MapRender(this.f5188a, this.b, this.c, this.f5189d, null);
        }

        public final a b(cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
            this.f5189d = bVar;
            return this;
        }

        public final a c(int i) {
            this.c = i;
            return this;
        }
    }

    /* JADX INFO: renamed from: cn.mucang.android.jiakaoyi.mapcollect.render.g$b */
    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0002\b\u0007\b\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u001c\u0010\u0003\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\u0005\u0010\u0002\u001a\u0004\b\u0006\u0010\u0007R\u001c\u0010\b\u001a\u00020\u00048\u0006X\u0087D¢\u0006\u000e\n\u0000\u0012\u0004\b\t\u0010\u0002\u001a\u0004\b\n\u0010\u0007¨\u0006\u000b"}, d2 = {"Lcn/mucang/android/jiakaoyi/mapcollect/render/MapRender$Companion;", "", "()V", "FLAG_FOR_PREVIEW", "", "getFLAG_FOR_PREVIEW$annotations", "getFLAG_FOR_PREVIEW", "()I", "FLAG_SHOW_TILE", "getFLAG_SHOW_TILE$annotations", "getFLAG_SHOW_TILE", "mapcollect_release"}, k = 1, mv = {1, 5, 1}, xi = 48)
    public static final class b {
        private b() {
        }

        public /* synthetic */ b(o oVar) {
            this();
        }

        public final int a() {
            return MapRender.n;
        }
    }

    private MapRender(r rVar, MapView mapView, int i, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this.f5182a = rVar;
        this.b = mapView;
        this.c = i;
        this.f5183d = bVar;
        this.j = true;
        boolean zB = i0.b("CAR_MODEL", false);
        this.l = zB;
        this.j = true ^ zB;
        LiveBus.d(f.class).h(rVar, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.render.a
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                MapRender.a(this.f5177a, (f) obj);
            }
        });
        if ((n & i) == 0) {
            LiveBus.d(CarPos.class).h(rVar, new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.render.b
                @Override // androidx.lifecycle.a0
                public final void onChanged(Object obj) {
                    MapRender.b(this.f5178a, (CarPos) obj);
                }
            });
        }
    }

    public /* synthetic */ MapRender(r rVar, MapView mapView, int i, cn.mucang.android.jiakaoyi.framework.h.b bVar, o oVar) {
        this(rVar, mapView, i, (cn.mucang.android.jiakaoyi.framework.h.b<Boolean>) bVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void a(MapRender this$0, f fVar) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (fVar == null) {
            return;
        }
        this$0.m(fVar);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b(MapRender this$0, CarPos carPos) {
        ScaleHelper scaleHelper;
        kotlin.jvm.internal.r.e(this$0, "this$0");
        if (this$0.getF5185f() == null) {
            this$0.p(new cn.mucang.android.jiakaoyi.hpmap.c.c.a(this$0.b, carPos));
            if (!this$0.f5187h) {
                this$0.b.u.g(this$0.getF5185f());
                this$0.f5187h = true;
            }
        } else {
            cn.mucang.android.jiakaoyi.hpmap.c.c.a f5185f = this$0.getF5185f();
            if (f5185f != null) {
                f5185f.q(carPos);
            }
        }
        if (!this$0.j || (scaleHelper = this$0.i) == null) {
            return;
        }
        scaleHelper.e(carPos, this$0.getF5185f());
    }

    private final boolean f(String str) {
        return o0.a(Long.parseLong(str));
    }

    private final void g(f fVar) {
        if (AppUtils.k()) {
            return;
        }
        i iVar = this.f5186g;
        if (iVar != null) {
            iVar.g();
        }
        i iVar2 = new i(fVar.getCarData(), fVar.getConverter());
        this.f5186g = iVar2;
        if (iVar2 == null) {
            return;
        }
        iVar2.f();
    }

    private final void m(final f fVar) {
        if (kotlin.jvm.internal.r.a(this.f5184e, fVar) && AppUtils.k()) {
            return;
        }
        this.f5184e = fVar;
        int i = this.c;
        int i2 = n;
        if ((i & i2) == 0) {
            g(fVar);
        }
        this.i = new ScaleHelper(this.b, fVar, this.f5182a);
        final ArrayList arrayList = new ArrayList();
        List<k> listCreateLayers = fVar.createLayers(this.b, false, (i2 & this.c) != 0);
        kotlin.jvm.internal.r.d(listCreateLayers, "mapData.createLayers(map…nd FLAG_FOR_PREVIEW != 0)");
        arrayList.addAll(listCreateLayers);
        if (arrayList.size() > 0) {
            int measuredHeight = this.b.getMeasuredHeight() * this.b.getMeasuredWidth();
            cn.mucang.android.jiakaoyi.framework.log.f.o("当前地图examSiteId:" + ((Object) fVar.getExamSiteId()) + "的Layer数有:" + arrayList.size() + (char) 20010);
            if (measuredHeight <= 0) {
                u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.render.c
                    @Override // java.lang.Runnable
                    public final void run() {
                        MapRender.n(this.f5179a, fVar, arrayList);
                    }
                }, 200L);
            } else {
                o(this, fVar, arrayList);
            }
        } else {
            this.b.u.j();
            this.b.setCurrentZoom(1.0f);
            cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = this.f5183d;
            if (bVar != null) {
                bVar.callback(Boolean.TRUE);
            }
            this.b.r();
        }
        t.h("MapTag", " 地图加载完成");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n(MapRender this$0, f mapData, List siteLayers) {
        kotlin.jvm.internal.r.e(this$0, "this$0");
        kotlin.jvm.internal.r.e(mapData, "$mapData");
        kotlin.jvm.internal.r.e(siteLayers, "$siteLayers");
        o(this$0, mapData, siteLayers);
    }

    private static final void o(MapRender mapRender, f fVar, List<k> list) {
        mapRender.b.u.j();
        mapRender.f5187h = false;
        cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar = mapRender.f5185f;
        if (aVar != null) {
            mapRender.b.u.g(aVar);
            mapRender.f5187h = true;
        }
        String examSiteId = fVar.getExamSiteId();
        kotlin.jvm.internal.r.d(examSiteId, "mapData.examSiteId");
        if (!mapRender.f(examSiteId) || (mapRender.c & o) == 0) {
            mapRender.k = true;
            mapRender.b.u.h(list);
        } else {
            mapRender.k = false;
            MapView mapView = mapRender.b;
            m mVar = mapView.u;
            String examSiteId2 = fVar.getExamSiteId();
            kotlin.jvm.internal.r.d(examSiteId2, "mapData.examSiteId");
            mVar.g(new cn.mucang.android.jiakaoyi.hpmap.view.tilemap.e(mapView, Long.parseLong(examSiteId2)));
        }
        mapRender.b.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(fVar.getMapBound().l(), fVar.getMapBound().f(), mapRender.b));
        mapRender.b.i((float) fVar.getMapBound().f5818e.x, (float) fVar.getMapBound().f5818e.y);
        cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar = mapRender.f5183d;
        if (bVar != null) {
            bVar.callback(Boolean.TRUE);
        }
        mapRender.b.r();
    }

    public final void d() {
        this.f5184e = null;
        this.b.c();
        i iVar = this.f5186g;
        if (iVar == null) {
            return;
        }
        iVar.g();
    }

    /* JADX INFO: renamed from: e, reason: from getter */
    public final cn.mucang.android.jiakaoyi.hpmap.c.c.a getF5185f() {
        return this.f5185f;
    }

    public final void k() {
        this.b.m();
    }

    public final void l() {
        this.b.n();
    }

    public final void p(cn.mucang.android.jiakaoyi.hpmap.c.c.a aVar) {
        this.f5185f = aVar;
    }

    public /* synthetic */ MapRender(r rVar, MapView mapView, boolean z, cn.mucang.android.jiakaoyi.framework.h.b bVar, int i, o oVar) {
        this(rVar, mapView, z, (cn.mucang.android.jiakaoyi.framework.h.b<Boolean>) ((i & 8) != 0 ? null : bVar));
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public MapRender(r owner, MapView mapView, boolean z, cn.mucang.android.jiakaoyi.framework.h.b<Boolean> bVar) {
        this(owner, mapView, z ? n : 0, bVar);
        kotlin.jvm.internal.r.e(owner, "owner");
        kotlin.jvm.internal.r.e(mapView, "mapView");
    }
}
