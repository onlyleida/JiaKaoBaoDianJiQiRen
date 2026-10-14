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
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.m;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.render.c2.K2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.ExamModelUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.BindCarInfo;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2BianXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2CeFangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DaoKuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DoubleYuanHuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ETCSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2HuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2JinJiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2QuKaSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2YuanHuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ZhaiLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ZhiJiaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.ShangPoDataList;
import cn.mucang.android.jiakaoyi.signal.car.SelectCarManager;
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
public class j extends cn.mucang.android.jiakaoyi.mapcollect.render.f {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4722a;
    public HashSet<Step> b;
    public List<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> f4723d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.b> f4724e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.c> f4725f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.j> f4726g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.k> f4727h;
    public final List<o> i;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.i> j;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.h> k;
    public final List<n> l;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.g> m;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.f> n;
    public final List<l> o;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.a> p;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.e> q;
    public final List<m> r;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.g.d> s;
    public final Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> t;
    public final cn.mucang.android.jiakaoyi.signal.pos.a u;
    public cn.mucang.android.jiakaoyi.signal.i.a v;
    public CarData w;
    private a x;
    private boolean y;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f4728a;
        public final List<Class<? extends SourceData>> b = Arrays.asList(C2DaoKuSrcData.class, C2CeFangSrcData.class, C2ZhiJiaoSrcData.class, C2SQuXianSrcData.class, C2ShangPoSrcData.class, C2QuKaSrcData.class, C2QiDianSrcData.class, C2ZhaiLuSrcData.class, C2JinJiSrcData.class, C2HuaLuSrcData.class, C2SuiDaoSrcData.class, C2BianXianSrcData.class, C2ETCSrcData.class, C2YuanHuanSrcData.class, C2DoubleYuanHuanSrcData.class);
        protected final List<SourceData> c = new ArrayList();

        public a(String str) {
            this.f4728a = str;
        }

        protected void a() throws Throwable {
            if (cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.b(Long.parseLong(this.f4728a))) {
                Iterator<Class<? extends SourceData>> it = this.b.iterator();
                while (it.hasNext()) {
                    this.c.addAll(new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(this.f4728a, it.next()).h());
                }
                return;
            }
            Iterator<Class<? extends SourceData>> it2 = this.b.iterator();
            while (it2.hasNext()) {
                this.c.addAll(cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.a(this.f4728a, it2.next()));
            }
        }
    }

    public j(String str, boolean z, boolean z2) {
        this(str, z, new a(str), z2);
    }

    private Gps a() {
        Gps gps = new Gps();
        int i = 0;
        for (Gps gps2 : e()) {
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

    private void c(int i, List<SourceData> list) {
        if (cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        for (int size = list.size() - 1; size >= 0; size--) {
            Object obj = (SourceData) list.get(size);
            if (obj instanceof K2SrcData) {
                K2SrcData k2SrcData = (K2SrcData) obj;
                if (!cn.mucang.android.core.utils.g.b(k2SrcData.carList)) {
                    boolean z = false;
                    Iterator<BindCarInfo> it = k2SrcData.carList.iterator();
                    while (it.hasNext()) {
                        if (it.next().carId == i) {
                            z = true;
                            break;
                        }
                    }
                    if (!z) {
                        list.remove(size);
                        cn.mucang.android.jiakaoyi.framework.log.f.o("过滤了，carId=" + i + ",过滤项目=" + k2SrcData.name + ",key=" + k2SrcData.key + ",step=" + Step.findWithType(k2SrcData.stepId));
                    }
                }
            }
        }
    }

    private List<Gps> e() {
        ArrayList arrayList = new ArrayList();
        Iterator<SourceData> it = this.x.c.iterator();
        while (it.hasNext()) {
            arrayList.add(it.next().giveOnePointToCalZero());
        }
        return arrayList;
    }

    static /* synthetic */ void f(ExamSiteModel examSiteModel, Gps gps) {
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
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void h() {
        i(false);
    }

    private void i(boolean z) {
        StringBuilder sb;
        long jNanoTime = System.nanoTime();
        try {
            j();
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
                StringBuilder sb3 = new StringBuilder();
                sb3.append("车身和考场数据解析失败：");
                sb3.append(MucangConfig.v() ? th.getLocalizedMessage() : "");
                cn.mucang.android.jiakaoyi.framework.log.f.o(sb3.toString());
                if (z) {
                    throw new RuntimeException(th);
                }
                LiveBus.c(this);
                LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).l(this);
                sb = new StringBuilder();
            } catch (Throwable th2) {
                LiveBus.c(this);
                LiveBus.d(cn.mucang.android.jiakaoyi.mapcollect.render.f.class).l(this);
                t.d("TAG", "数据时间 : " + ((System.nanoTime() - jNanoTime) / 1000000.0d));
                throw th2;
            }
        }
        sb.append("数据时间 : ");
        sb.append((System.nanoTime() - jNanoTime) / 1000000.0d);
        t.d("TAG", sb.toString());
    }

    /* JADX WARN: Multi-variable type inference failed */
    private void j() throws Throwable {
        long jNanoTime = System.nanoTime();
        this.x.a();
        long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
        t.h("TAG", "解析时间 : " + jNanoTime2);
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图解析耗时:" + jNanoTime2 + "ms");
        List<SourceData> list = this.x.c;
        cn.mucang.android.jiakaoyi.framework.log.f.o("项目个数:" + list.size());
        ExamModelUtils examModelUtils = ExamModelUtils.f4701a;
        boolean zA = examModelUtils.a();
        if (!this.y && zA) {
            List<String> listB = examModelUtils.b();
            if (cn.mucang.android.core.utils.g.d(listB)) {
                k(listB, list);
            }
        }
        try {
            int i = Integer.parseInt(SelectCarManager.g());
            if (i != 0) {
                c(i, list);
            }
        } catch (Throwable th) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("车型过滤失败:" + th.getLocalizedMessage());
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVarB = b(this.x);
        this.v = aVarB;
        if (aVarB == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图解析后原点坐标：" + this.v.getZero().longitude + "," + this.v.getZero().latitude);
        cn.mucang.android.jiakaoyi.signal.i.a aVar = this.v;
        if (aVar instanceof cn.mucang.android.jiakaoyi.signal.i.b) {
            LiveBus.c(new SetInitDebugGps(((cn.mucang.android.jiakaoyi.signal.i.b) aVar).c()));
        }
        this.b.clear();
        this.c.clear();
        this.t.clear();
        ShangPoDataList shangPoDataList = new ShangPoDataList();
        shangPoDataList.list = new ArrayList();
        for (SourceData sourceData : list) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarCreateCollision = sourceData.createCollision(this.v, sourceData.getName());
            if ((sourceData instanceof K2SrcData) && (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.e)) {
                ((cn.mucang.android.jiakaoyi.hpmap.a.a.e) bVarCreateCollision).c = ((K2SrcData) sourceData).alias;
            }
            Step stepFindWithType = Step.findWithType(sourceData.stepId());
            if (stepFindWithType != Step.K2_BianXianShiBie && stepFindWithType != Step.K2_YuanHuanLianXi && stepFindWithType != Step.K2_DoubleYuanHuan && (stepFindWithType != Step.K2_ShangPoQiBu || !cn.mucang.android.jiakaoyi.signal.utils.f.b())) {
                this.b.add(stepFindWithType);
            }
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> arrayList = this.f4723d.get(stepFindWithType);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f4723d.put(stepFindWithType, arrayList);
            }
            if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) {
                this.f4725f.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.c) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) {
                this.f4724e.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.b) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof o) {
                this.i.add((o) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) {
                this.f4726g.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.j) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) {
                if (!cn.mucang.android.jiakaoyi.signal.utils.f.b()) {
                    cn.mucang.android.jiakaoyi.hpmap.a.a.g.k kVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.g.k) bVarCreateCollision;
                    this.f4727h.add(kVar);
                    shangPoDataList.list.add(new cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.c(kVar));
                }
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.i) {
                this.j.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.i) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.h) {
                this.k.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.h) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof n) {
                this.l.add((n) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.g) {
                this.m.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.g) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.f) {
                this.n.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.f) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof l) {
                this.o.add((l) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.a) {
                this.p.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.a) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.e) {
                this.q.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.e) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof m) {
                this.r.add((m) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.g.d) {
                this.s.add((cn.mucang.android.jiakaoyi.hpmap.a.a.g.d) bVarCreateCollision);
            }
            arrayList.add(bVarCreateCollision);
        }
        LiveBus.d(ShangPoDataList.class).l(shangPoDataList);
        Iterator<List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> it = this.f4723d.values().iterator();
        while (it.hasNext()) {
            for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : it.next()) {
                Step stepS = bVar.s();
                List<cn.mucang.android.jiakaoyi.hpmap.c.a> arrayList2 = this.t.get(stepS);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    this.t.put(stepS, arrayList2);
                }
                K2RenderModel k2RenderModel = (K2RenderModel) bVar.d();
                arrayList2.add(k2RenderModel);
                this.u.i(bVar.b());
                this.c.add(bVar.getKey());
                getBound(bVar.s().type, k2RenderModel.stepDirection).i(bVar.b());
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图宽:" + this.u.l() + ",地图高:" + this.u.f() + ",maxX:" + this.u.c + ",maxY:" + this.u.f5817d + ",minX:" + this.u.f5816a + ",minY:" + this.u.f5817d + ",中心点:" + this.u.f5818e.x + "," + this.u.f5818e.y);
        long jNanoTime3 = (System.nanoTime() - jNanoTime) / 1000000;
        StringBuilder sb = new StringBuilder();
        sb.append("整个数据处理时间: ");
        sb.append(jNanoTime3);
        t.h("TAG", sb.toString());
        StringBuilder sb2 = new StringBuilder();
        sb2.append("整个数据处理时间:");
        sb2.append(jNanoTime3);
        sb2.append("ms");
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb2.toString());
    }

    private void k(List<String> list, List<SourceData> list2) {
        if (cn.mucang.android.core.utils.g.b(list2) || cn.mucang.android.core.utils.g.b(list)) {
            return;
        }
        Iterator<SourceData> it = list2.iterator();
        while (it.hasNext()) {
            SourceData next = it.next();
            if (!list.contains(next.createKey())) {
                it.remove();
            } else if (next instanceof C2DaoKuSrcData) {
                C2DaoKuSrcData c2DaoKuSrcData = (C2DaoKuSrcData) next;
                if (c2DaoKuSrcData.hasTurnOrientation) {
                    Gps gps = c2DaoKuSrcData.gps6;
                    if (list.contains(gps.latitude + "," + gps.longitude)) {
                        it.remove();
                    }
                }
            }
        }
    }

    private void parseCarData() {
        HpCarMapModel hpCarMapModelH = cn.mucang.android.jiakaoyi.mapcollect.collect.car.d.h();
        if (hpCarMapModelH == null) {
            u.h("车子没有车身数据");
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("车型编码：" + hpCarMapModelH.modelCode + ",车型名称：" + hpCarMapModelH.modelName + ",车牌号：" + hpCarMapModelH.plateNum + ",方向：" + hpCarMapModelH.getMethodDesc());
        StringBuilder sb = new StringBuilder();
        sb.append("车身数据：");
        sb.append(hpCarMapModelH.bodyData);
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        this.w = hpCarMapModelH.getCarSrcData().generateCarData();
    }

    /* JADX WARN: Code duplicated, block: B:11:0x0027  */
    /* JADX WARN: Code duplicated, block: B:13:0x002b  */
    /* JADX WARN: Code duplicated, block: B:9:0x0021  */
    protected cn.mucang.android.jiakaoyi.signal.i.a b(a aVar) {
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
                    n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.d
                        @Override // java.lang.Runnable
                        public final void run() {
                            j.f(examSiteModelD, gps);
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
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        j.f(examSiteModelD, gps);
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
        Iterator<List<cn.mucang.android.jiakaoyi.hpmap.c.a>> it = this.t.values().iterator();
        while (it.hasNext()) {
            Iterator<cn.mucang.android.jiakaoyi.hpmap.c.a> it2 = it.next().iterator();
            while (it2.hasNext()) {
                arrayList.addAll(it2.next().createMapLayers(mapView, false, z2));
            }
        }
        return arrayList;
    }

    public List<Gps> d() {
        List<SourceData> list = this.x.c;
        ArrayList arrayList = new ArrayList();
        for (SourceData sourceData : list) {
            if (sourceData instanceof C2DaoKuSrcData) {
                C2DaoKuSrcData c2DaoKuSrcData = (C2DaoKuSrcData) sourceData;
                arrayList.add(c2DaoKuSrcData.gps1);
                arrayList.add(c2DaoKuSrcData.gps2);
                arrayList.add(c2DaoKuSrcData.gps3);
                arrayList.add(c2DaoKuSrcData.gps4);
                arrayList.add(c2DaoKuSrcData.gps5);
                arrayList.add(c2DaoKuSrcData.gps6);
                arrayList.add(c2DaoKuSrcData.gps7);
                arrayList.add(c2DaoKuSrcData.gps8);
            } else if (sourceData instanceof C2CeFangSrcData) {
                C2CeFangSrcData c2CeFangSrcData = (C2CeFangSrcData) sourceData;
                arrayList.add(c2CeFangSrcData.gps1);
                arrayList.add(c2CeFangSrcData.gps2);
                arrayList.add(c2CeFangSrcData.gps3);
                arrayList.add(c2CeFangSrcData.gps4);
                arrayList.add(c2CeFangSrcData.gps5);
                arrayList.add(c2CeFangSrcData.gps6);
                arrayList.add(c2CeFangSrcData.gps7);
                arrayList.add(c2CeFangSrcData.gps8);
            } else if (sourceData instanceof C2ZhiJiaoSrcData) {
                C2ZhiJiaoSrcData c2ZhiJiaoSrcData = (C2ZhiJiaoSrcData) sourceData;
                arrayList.add(c2ZhiJiaoSrcData.gps1);
                arrayList.add(c2ZhiJiaoSrcData.gps2);
                arrayList.add(c2ZhiJiaoSrcData.gps3);
                arrayList.add(c2ZhiJiaoSrcData.gps4);
                arrayList.add(c2ZhiJiaoSrcData.gps5);
                arrayList.add(c2ZhiJiaoSrcData.gps6);
            } else if (sourceData instanceof C2SQuXianSrcData) {
                C2SQuXianSrcData c2SQuXianSrcData = (C2SQuXianSrcData) sourceData;
                arrayList.add(c2SQuXianSrcData.leftPoints.get(0));
                List<Gps> list2 = c2SQuXianSrcData.leftPoints;
                arrayList.add(list2.get(list2.size() - 1));
                arrayList.add(c2SQuXianSrcData.rightPoints.get(0));
                List<Gps> list3 = c2SQuXianSrcData.rightPoints;
                arrayList.add(list3.get(list3.size() - 1));
            } else if (sourceData instanceof C2ShangPoSrcData) {
                C2ShangPoSrcData c2ShangPoSrcData = (C2ShangPoSrcData) sourceData;
                arrayList.add(c2ShangPoSrcData.gps1);
                arrayList.add(c2ShangPoSrcData.gps2);
                arrayList.add(c2ShangPoSrcData.gps3);
                arrayList.add(c2ShangPoSrcData.gps4);
                arrayList.add(c2ShangPoSrcData.gps5);
                arrayList.add(c2ShangPoSrcData.gps6);
                arrayList.add(c2ShangPoSrcData.gps7);
                arrayList.add(c2ShangPoSrcData.gps8);
                arrayList.add(c2ShangPoSrcData.gps9);
                arrayList.add(c2ShangPoSrcData.gps10);
                Gps gps = c2ShangPoSrcData.gps11;
                if (gps != null && c2ShangPoSrcData.gps12 != null) {
                    arrayList.add(gps);
                    arrayList.add(c2ShangPoSrcData.gps12);
                }
            } else if (sourceData instanceof C2QuKaSrcData) {
                C2QuKaSrcData c2QuKaSrcData = (C2QuKaSrcData) sourceData;
                arrayList.add(c2QuKaSrcData.gps1);
                arrayList.add(c2QuKaSrcData.gps2);
                arrayList.add(c2QuKaSrcData.gps3);
                arrayList.add(c2QuKaSrcData.gps4);
                arrayList.add(c2QuKaSrcData.gps5);
                arrayList.add(c2QuKaSrcData.gps6);
            } else if (sourceData instanceof C2QiDianSrcData) {
                C2QiDianSrcData c2QiDianSrcData = (C2QiDianSrcData) sourceData;
                arrayList.add(c2QiDianSrcData.gps1);
                arrayList.add(c2QiDianSrcData.gps2);
                arrayList.add(c2QiDianSrcData.gps3);
                arrayList.add(c2QiDianSrcData.gps4);
            } else if (sourceData instanceof C2ZhaiLuSrcData) {
                C2ZhaiLuSrcData c2ZhaiLuSrcData = (C2ZhaiLuSrcData) sourceData;
                arrayList.add(c2ZhaiLuSrcData.gps1);
                arrayList.add(c2ZhaiLuSrcData.gps2);
                arrayList.add(c2ZhaiLuSrcData.gps3);
                arrayList.add(c2ZhaiLuSrcData.gps4);
            } else if (sourceData instanceof C2JinJiSrcData) {
                C2JinJiSrcData c2JinJiSrcData = (C2JinJiSrcData) sourceData;
                arrayList.add(c2JinJiSrcData.gps1);
                arrayList.add(c2JinJiSrcData.gps2);
                arrayList.add(c2JinJiSrcData.gps3);
                arrayList.add(c2JinJiSrcData.gps4);
                arrayList.add(c2JinJiSrcData.gps5);
                arrayList.add(c2JinJiSrcData.gps6);
            } else if (sourceData instanceof C2HuaLuSrcData) {
                C2HuaLuSrcData c2HuaLuSrcData = (C2HuaLuSrcData) sourceData;
                arrayList.add(c2HuaLuSrcData.leftPoints.get(0));
                List<Gps> list4 = c2HuaLuSrcData.leftPoints;
                arrayList.add(list4.get(list4.size() - 1));
                arrayList.add(c2HuaLuSrcData.rightPoints.get(0));
                List<Gps> list5 = c2HuaLuSrcData.rightPoints;
                arrayList.add(list5.get(list5.size() - 1));
            } else if (sourceData instanceof C2SuiDaoSrcData) {
                C2SuiDaoSrcData c2SuiDaoSrcData = (C2SuiDaoSrcData) sourceData;
                arrayList.add(c2SuiDaoSrcData.leftPoints.get(0));
                List<Gps> list6 = c2SuiDaoSrcData.leftPoints;
                arrayList.add(list6.get(list6.size() - 1));
                arrayList.add(c2SuiDaoSrcData.rightPoints.get(0));
                List<Gps> list7 = c2SuiDaoSrcData.rightPoints;
                arrayList.add(list7.get(list7.size() - 1));
            } else if (sourceData instanceof C2ETCSrcData) {
                C2ETCSrcData c2ETCSrcData = (C2ETCSrcData) sourceData;
                arrayList.add(c2ETCSrcData.gps1);
                arrayList.add(c2ETCSrcData.gps2);
                arrayList.add(c2ETCSrcData.gps3);
                arrayList.add(c2ETCSrcData.gps4);
                arrayList.add(c2ETCSrcData.gps5);
                arrayList.add(c2ETCSrcData.gps6);
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public CarData getCarData() {
        return this.w;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> getCollisions() {
        return this.f4723d;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.i.a getConverter() {
        return this.v;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public String getExamSiteId() {
        return this.f4722a;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.pos.a getMapBound() {
        return this.u;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> getRenders() {
        return this.t;
    }

    public j(String str, boolean z, a aVar) {
        this(str, z, aVar, false);
    }

    public j(String str, boolean z, a aVar, boolean z2) {
        this.b = new HashSet<>();
        this.c = new ArrayList();
        this.f4723d = new HashMap();
        this.f4724e = new ArrayList();
        this.f4725f = new ArrayList();
        this.f4726g = new ArrayList();
        this.f4727h = new ArrayList();
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
        this.t = new HashMap();
        this.u = new cn.mucang.android.jiakaoyi.signal.pos.a(Double.MAX_VALUE, Double.MAX_VALUE, -1.7976931348623157E308d, -1.7976931348623157E308d);
        this.y = false;
        this.f4722a = str;
        this.x = aVar;
        this.y = z2;
        if (z) {
            i(true);
        } else {
            new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4706a.h();
                }
            }).start();
        }
    }
}
