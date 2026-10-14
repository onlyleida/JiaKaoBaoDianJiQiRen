package cn.mucang.android.jiakaoyi.mapcollect.c;

import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.api.exception.HttpException;
import cn.mucang.android.core.api.exception.InternalException;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.m;
import cn.mucang.android.jiakaoyi.hpmap.a.a.i.n;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.ExamModelUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoBanMaXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoBianDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoChangDiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDiaoTouSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoJiaJianDangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoQiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoTingCheSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoYouZhuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhiXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhiXingSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhuangKaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZuoZhuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.ShangPoDataList;
import cn.mucang.android.jiakaoyi.signal.handle.gps.debug.SetInitDebugGps;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.jiakaoyi.uilib.api.GeneralBusinessApi;
import cn.mucang.jiakaoyi.uilib.model.ExamSiteModel;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes3.dex */
public class k extends cn.mucang.android.jiakaoyi.mapcollect.render.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4729a;
    public HashSet<Step> b;
    public List<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> f4730d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<m> f4731e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.d> f4732f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.h> f4733g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.g> f4734h;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.k> i;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.b> j;
    public final List<n> k;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.j> l;
    public final List<l> m;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.a> n;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.e> o;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.i> p;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.f> q;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.i.c> r;
    public final List<cn.mucang.android.jiakaoyi.hpmap.c.a> s;
    public final cn.mucang.android.jiakaoyi.signal.pos.a t;
    public cn.mucang.android.jiakaoyi.signal.i.a u;
    public CarData v;
    private final a w;
    private final boolean x;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f4735a;
        public final List<Class<? extends SourceData>> b = Arrays.asList(MotoZhuangKaoSrcData.class, MotoShangPoSrcData.class, MotoDanBianSrcData.class, MotoQiDianSrcData.class, MotoZhiXianSrcData.class, MotoBianDaoSrcData.class, MotoZuoZhuanSrcData.class, MotoYouZhuanSrcData.class, MotoZhiXingSrcData.class, MotoBanMaXianSrcData.class, MotoDiaoTouSrcData.class, MotoTingCheSrcData.class, MotoJiaJianDangSrcData.class, MotoChangDiSrcData.class);
        protected final List<SourceData> c = new ArrayList();

        public a(String str) {
            this.f4735a = str;
        }

        protected void a() {
            if (cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.b(Long.parseLong(this.f4735a))) {
                Iterator<Class<? extends SourceData>> it = this.b.iterator();
                while (it.hasNext()) {
                    this.c.addAll(new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(this.f4735a, it.next()).h());
                }
                return;
            }
            Iterator<Class<? extends SourceData>> it2 = this.b.iterator();
            while (it2.hasNext()) {
                this.c.addAll(cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.a(this.f4735a, it2.next()));
            }
        }
    }

    public k(String str, boolean z, boolean z2) {
        this(str, z, new a(str), z2);
    }

    private Gps a() {
        Gps gps = new Gps();
        int i = 0;
        for (Gps gps2 : c()) {
            if (gps2 != null) {
                gps.longitude += gps2.longitude;
                gps.latitude += gps2.latitude;
                i++;
            }
        }
        if (i == 0) {
            return null;
        }
        double d2 = i;
        gps.latitude /= d2;
        gps.longitude /= d2;
        return gps;
    }

    private List<Gps> c() {
        ArrayList arrayList = new ArrayList();
        Iterator<SourceData> it = this.w.c.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().giveOnePointToCalZero());
        }
        return arrayList;
    }

    static /* synthetic */ void e(ExamSiteModel examSiteModel, Gps gps) {
        try {
            if (new GeneralBusinessApi().v(examSiteModel.examSiteId, gps.latitude, gps.longitude, gps.altitude)) {
                examSiteModel.originLatitude = gps.latitude;
                examSiteModel.originLongitude = gps.longitude;
                ExamSiteUtil.r(examSiteModel);
            }
        } catch (ApiException | HttpException | InternalException e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        StringBuilder sb;
        long jNanoTime = System.nanoTime();
        try {
            g();
            parseCarData();
            LiveBus.c(this);
            LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).l(this);
            sb = new StringBuilder();
        } catch (Throwable th) {
            try {
                StringBuilder sb2 = new StringBuilder();
                sb2.append("车身和考场数据解析失败");
                sb2.append(MucangConfig.v() ? th.getLocalizedMessage() : "");
                u.h(sb2.toString());
                cn.mucang.android.jiakaoyi.framework.log.f.o("车身和考场数据解析失败：" + q0.d(th));
                LiveBus.c(this);
                LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).l(this);
                sb = new StringBuilder();
            } finally {
                LiveBus.c(this);
                LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).l(this);
                t.d("TAG", "数据时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
            }
        }
        sb.append("数据时间 : ");
        sb.append((System.nanoTime() - jNanoTime) / 1000000.0d);
        String string = sb.toString();
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void g() {
        List<String> listB;
        long jNanoTime = System.nanoTime();
        this.w.a();
        long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
        t.h("TAG", "解析时间 : " + jNanoTime2);
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图解析耗时:" + jNanoTime2 + "ms");
        List<SourceData> list = this.w.c;
        ExamModelUtils examModelUtils = ExamModelUtils.f4701a;
        boolean zA = examModelUtils.a();
        if (!this.x && zA && (listB = examModelUtils.b()) != null && !listB.isEmpty()) {
            h(listB, list);
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVarB = b();
        this.u = aVarB;
        if (aVarB == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图解析后原点坐标：" + this.u.getZero().longitude + "," + this.u.getZero().latitude);
        cn.mucang.android.jiakaoyi.signal.i.a aVar = this.u;
        if (aVar instanceof cn.mucang.android.jiakaoyi.signal.i.b) {
            LiveBus.c(new SetInitDebugGps(((cn.mucang.android.jiakaoyi.signal.i.b) aVar).c()));
        }
        this.b.clear();
        this.c.clear();
        this.s.clear();
        ShangPoDataList shangPoDataList = new ShangPoDataList();
        shangPoDataList.list = new ArrayList();
        for (SourceData sourceData : list) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarCreateCollision = sourceData.createCollision(this.u, sourceData.getName());
            if ((sourceData instanceof K2SrcData) && (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.e)) {
                ((cn.mucang.android.jiakaoyi.hpmap.a.a.e) bVarCreateCollision).c = ((K2SrcData) sourceData).alias;
            }
            Step stepFindWithType = Step.findWithType(sourceData.stepId());
            this.b.add(stepFindWithType);
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> arrayList = this.f4730d.get(stepFindWithType);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f4730d.put(stepFindWithType, arrayList);
            }
            arrayList.add(bVarCreateCollision);
            if (bVarCreateCollision instanceof m) {
                this.f4731e.add((m) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.h) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.i.h hVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.i.h) bVarCreateCollision;
                this.f4733g.add(hVar);
                shangPoDataList.list.add(new cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.c(hVar));
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.d) {
                this.f4732f.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.d) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.g) {
                this.f4734h.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.g) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.k) {
                this.i.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.k) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.b) {
                this.j.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.b) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof n) {
                this.k.add((n) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.j) {
                this.l.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.j) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof l) {
                this.m.add((l) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.a) {
                this.n.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.a) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.e) {
                this.o.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.e) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.i) {
                this.p.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.i) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.f) {
                this.q.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.f) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.i.c) {
                this.r.add((cn.mucang.android.jiakaoyi.hpmap.a.a.i.c) bVarCreateCollision);
            }
        }
        LiveBus.d(ShangPoDataList.class).l(shangPoDataList);
        Iterator<List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> it = this.f4730d.values().iterator();
        while (it.hasNext()) {
            for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : it.next()) {
                this.s.add(bVar.d());
                this.t.i(bVar.b());
                this.c.add(bVar.getKey());
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图宽:" + this.t.l() + ",地图高:" + this.t.f() + ",maxX:" + this.t.c + ",maxY:" + this.t.f5817d + ",minX:" + this.t.f5816a + ",minY:" + this.t.f5817d + ",中心点:" + this.t.f5818e.x + "," + this.t.f5818e.y);
        long jNanoTime3 = (System.nanoTime() - jNanoTime) / 1000000;
        StringBuilder sb = new StringBuilder();
        sb.append("整个数据处理时间:");
        sb.append(jNanoTime3);
        sb.append("ms");
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
    }

    private void h(List<String> list, List<? extends SourceData> list2) {
        if (list2 == null || list2.isEmpty()) {
            return;
        }
        Iterator<? extends SourceData> it = list2.iterator();
        while (it.hasNext()) {
            SourceData next = it.next();
            if (list == null || list.isEmpty() || !list.contains(next.createKey())) {
                it.remove();
            }
        }
    }

    private void parseCarData() {
        HpCarMapModel hpCarMapModelH = cn.mucang.android.jiakaoyi.mapcollect.collect.car.d.h();
        if (hpCarMapModelH == null) {
            u.h("车子没有车身数据");
        } else {
            this.v = hpCarMapModelH.getCarSrcData().generateCarData();
        }
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:13:0x002b  */
    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    protected cn.mucang.android.jiakaoyi.signal.i.a b() {
        Gps gpsA;
        final Gps gps = new Gps();
        final ExamSiteModel examSiteModelD = ExamSiteUtil.d();
        if (examSiteModelD != null) {
            double d2 = examSiteModelD.originLatitude;
            if (d2 != 0.0d) {
                double d3 = examSiteModelD.originLongitude;
                if (d3 != 0.0d) {
                    gps.latitude = d2;
                    gps.longitude = d3;
                } else {
                    gpsA = a();
                    if (gpsA == null) {
                        u.h("没有考场数据");
                        return null;
                    }
                    gps.latitude = gpsA.latitude;
                    gps.longitude = gpsA.longitude;
                    n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.g
                        @Override // java.lang.Runnable
                        public final void run() {
                            k.e(examSiteModelD, gps);
                        }
                    });
                }
            } else {
                gpsA = a();
                if (gpsA == null) {
                    u.h("没有考场数据");
                    return null;
                }
                gps.latitude = gpsA.latitude;
                gps.longitude = gpsA.longitude;
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.g
                    @Override // java.lang.Runnable
                    public final void run() {
                        k.e(examSiteModelD, gps);
                    }
                });
            }
        } else {
            Gps gpsA2 = a();
            if (gpsA2 == null) {
                u.h("没有考场数据");
                return null;
            }
            gps.latitude = gpsA2.latitude;
            gps.longitude = gpsA2.longitude;
        }
        return new cn.mucang.android.jiakaoyi.signal.i.b(gps);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> createLayers(MapView mapView, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        Iterator<cn.mucang.android.jiakaoyi.hpmap.c.a> it = this.s.iterator();
        while (it.hasNext()) {
            arrayList.addAll(it.next().createMapLayers(mapView, false, z2));
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public CarData getCarData() {
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.i.a getConverter() {
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public String getExamSiteId() {
        return this.f4729a;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.pos.a getMapBound() {
        return this.t;
    }

    public k(String str, boolean z, a aVar, boolean z2) {
        this.b = new HashSet<>();
        this.c = new ArrayList();
        this.f4730d = new HashMap();
        this.f4731e = new ArrayList();
        this.f4732f = new ArrayList();
        this.f4733g = new ArrayList();
        this.f4734h = new ArrayList();
        this.i = new ArrayList();
        this.j = new ArrayList();
        this.k = new ArrayList();
        this.l = new ArrayList();
        this.m = new ArrayList();
        this.n = new ArrayList();
        this.o = new ArrayList();
        this.p = new ArrayList();
        this.q = new ArrayList();
        this.r = new ArrayList();
        this.s = new ArrayList();
        this.t = new cn.mucang.android.jiakaoyi.signal.pos.a(Double.MAX_VALUE, Double.MAX_VALUE, -1.7976931348623157E308d, -1.7976931348623157E308d);
        this.f4729a = str;
        this.w = aVar;
        this.x = z2;
        if (z) {
            f();
        } else {
            new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.f
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4707a.f();
                }
            }).start();
        }
    }
}
