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
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.m;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.n;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.o;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.p;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.q;
import cn.mucang.android.jiakaoyi.hpmap.car.CarData;
import cn.mucang.android.jiakaoyi.hpmap.render.b2.B2RenderModel;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.b.utils.ExamModelUtils;
import cn.mucang.android.jiakaoyi.mapcollect.collect.data.SourceData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.model.HpCarMapModel;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.K2SrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2CeFangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ChunHuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2DanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2GaoSuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2HuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2JinJiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2QiFuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShanLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2XianKuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhaiLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhangAiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhiJiaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhuangKaoSrcData;
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
public class h extends cn.mucang.android.jiakaoyi.mapcollect.render.f {
    private final boolean A;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final String f4709a;
    public HashSet<Step> b;
    public List<String> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public final Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> f4710d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.a> f4711e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.i> f4712f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.k> f4713g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public final List<p> f4714h;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.g> i;
    public final List<n> j;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.f> k;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.e> l;
    public final List<l> m;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.c> n;
    public final List<m> o;
    public final List<o> p;
    public final List<q> q;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.h> r;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.j> s;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.d> t;
    public final List<cn.mucang.android.jiakaoyi.hpmap.a.a.f.b> u;
    public final Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> v;
    public final cn.mucang.android.jiakaoyi.signal.pos.a w;
    public cn.mucang.android.jiakaoyi.signal.i.a x;
    public CarData y;
    private final a z;

    public static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public final String f4715a;
        public final List<Class<? extends SourceData>> b = Arrays.asList(B2CeFangSrcData.class, B2DanBianSrcData.class, B2GaoSuSrcData.class, B2HuaLuSrcData.class, B2JinJiSrcData.class, B2QiDianSrcData.class, B2QiFuSrcData.class, B2ShangPoSrcData.class, B2ShanLuSrcData.class, B2SQuXianSrcData.class, B2SuiDaoSrcData.class, B2XianKuanSrcData.class, B2ZhaiLuSrcData.class, B2ZhangAiSrcData.class, B2ZhiJiaoSrcData.class, B2ZhuangKaoSrcData.class, B2ChunHuaLuSrcData.class);
        protected final List<SourceData> c = new ArrayList();

        public a(String str) {
            this.f4715a = str;
        }

        protected void a() throws Throwable {
            if (cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.b(Long.parseLong(this.f4715a))) {
                Iterator<Class<? extends SourceData>> it = this.b.iterator();
                while (it.hasNext()) {
                    this.c.addAll(new cn.mucang.android.jiakaoyi.mapcollect.collect.data.e(this.f4715a, it.next()).h());
                }
                return;
            }
            Iterator<Class<? extends SourceData>> it2 = this.b.iterator();
            while (it2.hasNext()) {
                this.c.addAll(cn.mucang.android.jiakaoyi.mapcollect.collect.a1.a.a(this.f4715a, it2.next()));
            }
        }
    }

    public h(String str, boolean z, boolean z2) {
        this(str, z, new a(str), z2);
    }

    private Gps a() {
        Gps gps = new Gps();
        int i = 0;
        for (Gps gps2 : d()) {
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

    private List<Gps> d() {
        ArrayList arrayList = new ArrayList();
        Iterator<SourceData> it = this.z.c.iterator();
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
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g() {
        h(false);
    }

    private void h(boolean z) {
        StringBuilder sb;
        long jNanoTime = System.nanoTime();
        try {
            i();
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
    private void i() throws Throwable {
        List<String> listB;
        long jNanoTime = System.nanoTime();
        this.z.a();
        long jNanoTime2 = (System.nanoTime() - jNanoTime) / 1000000;
        t.h("TAG", "解析时间 : " + jNanoTime2);
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图解析耗时:" + jNanoTime2 + "ms");
        List<SourceData> list = this.z.c;
        ExamModelUtils examModelUtils = ExamModelUtils.f4701a;
        boolean zA = examModelUtils.a();
        if (!this.A && zA && (listB = examModelUtils.b()) != null && !listB.isEmpty()) {
            j(listB, list);
        }
        cn.mucang.android.jiakaoyi.signal.i.a aVarB = b();
        this.x = aVarB;
        if (aVarB == null) {
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图解析后原点坐标：" + this.x.getZero().longitude + "," + this.x.getZero().latitude);
        cn.mucang.android.jiakaoyi.signal.i.a aVar = this.x;
        if (aVar instanceof cn.mucang.android.jiakaoyi.signal.i.b) {
            LiveBus.c(new SetInitDebugGps(((cn.mucang.android.jiakaoyi.signal.i.b) aVar).c()));
        }
        this.b.clear();
        this.c.clear();
        this.v.clear();
        ShangPoDataList shangPoDataList = new ShangPoDataList();
        shangPoDataList.list = new ArrayList();
        for (SourceData sourceData : list) {
            cn.mucang.android.jiakaoyi.hpmap.a.a.b bVarCreateCollision = sourceData.createCollision(this.x, sourceData.getName());
            if ((sourceData instanceof K2SrcData) && (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.e)) {
                ((cn.mucang.android.jiakaoyi.hpmap.a.a.e) bVarCreateCollision).c = ((K2SrcData) sourceData).alias;
            }
            Step stepFindWithType = Step.findWithType(sourceData.stepId());
            this.b.add(stepFindWithType);
            List<cn.mucang.android.jiakaoyi.hpmap.a.a.b> arrayList = this.f4710d.get(stepFindWithType);
            if (arrayList == null) {
                arrayList = new ArrayList<>();
                this.f4710d.put(stepFindWithType, arrayList);
            }
            arrayList.add(bVarCreateCollision);
            if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.a) {
                this.f4711e.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.a) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.c) {
                this.n.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.c) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.d) {
                this.t.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.d) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.e) {
                this.l.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.e) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.f) {
                this.k.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.f) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.g) {
                this.i.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.g) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.h) {
                this.r.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.h) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.k) {
                cn.mucang.android.jiakaoyi.hpmap.a.a.f.k kVar = (cn.mucang.android.jiakaoyi.hpmap.a.a.f.k) bVarCreateCollision;
                this.f4713g.add(kVar);
                shangPoDataList.list.add(new cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.c(kVar));
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.j) {
                this.s.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.j) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.i) {
                this.f4712f.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.i) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof l) {
                this.m.add((l) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof m) {
                this.o.add((m) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof n) {
                this.j.add((n) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof o) {
                this.p.add((o) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof p) {
                this.f4714h.add((p) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof q) {
                this.q.add((q) bVarCreateCollision);
            } else if (bVarCreateCollision instanceof cn.mucang.android.jiakaoyi.hpmap.a.a.f.b) {
                this.u.add((cn.mucang.android.jiakaoyi.hpmap.a.a.f.b) bVarCreateCollision);
            }
        }
        LiveBus.d(ShangPoDataList.class).l(shangPoDataList);
        Iterator<List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> it = this.f4710d.values().iterator();
        while (it.hasNext()) {
            for (cn.mucang.android.jiakaoyi.hpmap.a.a.b bVar : it.next()) {
                Step stepS = bVar.s();
                List<cn.mucang.android.jiakaoyi.hpmap.c.a> arrayList2 = this.v.get(stepS);
                if (arrayList2 == null) {
                    arrayList2 = new ArrayList<>();
                    this.v.put(stepS, arrayList2);
                }
                B2RenderModel b2RenderModel = (B2RenderModel) bVar.d();
                arrayList2.add(b2RenderModel);
                this.w.i(bVar.b());
                this.c.add(bVar.getKey());
                getBound(bVar.s().type, b2RenderModel.stepDirection).i(bVar.b());
            }
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("地图宽:" + this.w.l() + ",地图高:" + this.w.f() + ",maxX:" + this.w.c + ",maxY:" + this.w.f5817d + ",minX:" + this.w.f5816a + ",minY:" + this.w.f5817d + ",中心点:" + this.w.f5818e.x + "," + this.w.f5818e.y);
        long jNanoTime3 = (System.nanoTime() - jNanoTime) / 1000000;
        StringBuilder sb = new StringBuilder();
        sb.append("整个数据处理时间:");
        sb.append(jNanoTime3);
        sb.append("ms");
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
    }

    private void j(List<String> list, List<? extends SourceData> list2) {
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
            return;
        }
        cn.mucang.android.jiakaoyi.framework.log.f.o("车型编码：" + hpCarMapModelH.modelCode + ",车型名称：" + hpCarMapModelH.modelName + ",车牌号：" + hpCarMapModelH.plateNum + ",方向：" + hpCarMapModelH.getMethodDesc());
        StringBuilder sb = new StringBuilder();
        sb.append("车身数据：");
        sb.append(hpCarMapModelH.bodyData);
        cn.mucang.android.jiakaoyi.framework.log.f.o(sb.toString());
        this.y = hpCarMapModelH.getCarSrcData().generateCarData();
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
                    n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.b
                        @Override // java.lang.Runnable
                        public final void run() {
                            h.e(examSiteModelD, gps);
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
                n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        h.e(examSiteModelD, gps);
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

    public List<Gps> c() {
        List<SourceData> list = this.z.c;
        ArrayList arrayList = new ArrayList();
        for (SourceData sourceData : list) {
            if (sourceData instanceof B2CeFangSrcData) {
                B2CeFangSrcData b2CeFangSrcData = (B2CeFangSrcData) sourceData;
                arrayList.add(b2CeFangSrcData.gps1);
                arrayList.add(b2CeFangSrcData.gps2);
                arrayList.add(b2CeFangSrcData.gps3);
                arrayList.add(b2CeFangSrcData.gps4);
                arrayList.add(b2CeFangSrcData.gps5);
                arrayList.add(b2CeFangSrcData.gps6);
                arrayList.add(b2CeFangSrcData.gps7);
                arrayList.add(b2CeFangSrcData.gps8);
            } else if (sourceData instanceof B2ShangPoSrcData) {
                B2ShangPoSrcData b2ShangPoSrcData = (B2ShangPoSrcData) sourceData;
                arrayList.add(b2ShangPoSrcData.gps1);
                arrayList.add(b2ShangPoSrcData.gps2);
                arrayList.add(b2ShangPoSrcData.gps3);
                arrayList.add(b2ShangPoSrcData.gps4);
                arrayList.add(b2ShangPoSrcData.gps5);
                arrayList.add(b2ShangPoSrcData.gps6);
                arrayList.add(b2ShangPoSrcData.gps7);
                arrayList.add(b2ShangPoSrcData.gps8);
                arrayList.add(b2ShangPoSrcData.gps9);
                arrayList.add(b2ShangPoSrcData.gps10);
                Gps gps = b2ShangPoSrcData.gps11;
                if (gps != null && b2ShangPoSrcData.gps12 != null) {
                    arrayList.add(gps);
                    arrayList.add(b2ShangPoSrcData.gps12);
                }
            } else if (sourceData instanceof B2ZhiJiaoSrcData) {
                B2ZhiJiaoSrcData b2ZhiJiaoSrcData = (B2ZhiJiaoSrcData) sourceData;
                arrayList.add(b2ZhiJiaoSrcData.gps1);
                arrayList.add(b2ZhiJiaoSrcData.gps2);
                arrayList.add(b2ZhiJiaoSrcData.gps3);
                arrayList.add(b2ZhiJiaoSrcData.gps4);
                arrayList.add(b2ZhiJiaoSrcData.gps5);
                arrayList.add(b2ZhiJiaoSrcData.gps6);
            } else if (sourceData instanceof B2SQuXianSrcData) {
                B2SQuXianSrcData b2SQuXianSrcData = (B2SQuXianSrcData) sourceData;
                arrayList.add(b2SQuXianSrcData.leftPoints.get(0));
                List<Gps> list2 = b2SQuXianSrcData.leftPoints;
                arrayList.add(list2.get(list2.size() - 1));
                arrayList.add(b2SQuXianSrcData.rightPoints.get(0));
                List<Gps> list3 = b2SQuXianSrcData.rightPoints;
                arrayList.add(list3.get(list3.size() - 1));
            } else if (sourceData instanceof B2ZhuangKaoSrcData) {
                B2ZhuangKaoSrcData b2ZhuangKaoSrcData = (B2ZhuangKaoSrcData) sourceData;
                arrayList.add(b2ZhuangKaoSrcData.gps1);
                arrayList.add(b2ZhuangKaoSrcData.gps2);
                arrayList.add(b2ZhuangKaoSrcData.gps3);
                arrayList.add(b2ZhuangKaoSrcData.gps4);
                arrayList.add(b2ZhuangKaoSrcData.gps5);
                arrayList.add(b2ZhuangKaoSrcData.gps6);
                arrayList.add(b2ZhuangKaoSrcData.gps7);
                arrayList.add(b2ZhuangKaoSrcData.gps8);
                arrayList.add(b2ZhuangKaoSrcData.gps9);
                arrayList.add(b2ZhuangKaoSrcData.gps10);
            } else if (sourceData instanceof B2XianKuanSrcData) {
                B2XianKuanSrcData b2XianKuanSrcData = (B2XianKuanSrcData) sourceData;
                arrayList.add(b2XianKuanSrcData.gps1);
                arrayList.add(b2XianKuanSrcData.gps2);
                arrayList.add(b2XianKuanSrcData.gps9);
                arrayList.add(b2XianKuanSrcData.gps10);
            } else if (sourceData instanceof B2QiDianSrcData) {
                B2QiDianSrcData b2QiDianSrcData = (B2QiDianSrcData) sourceData;
                arrayList.add(b2QiDianSrcData.gps1);
                arrayList.add(b2QiDianSrcData.gps2);
                arrayList.add(b2QiDianSrcData.gps3);
                arrayList.add(b2QiDianSrcData.gps4);
            } else if (sourceData instanceof B2ZhaiLuSrcData) {
                B2ZhaiLuSrcData b2ZhaiLuSrcData = (B2ZhaiLuSrcData) sourceData;
                arrayList.add(b2ZhaiLuSrcData.gps1);
                arrayList.add(b2ZhaiLuSrcData.gps2);
                arrayList.add(b2ZhaiLuSrcData.gps3);
                arrayList.add(b2ZhaiLuSrcData.gps4);
            } else if (sourceData instanceof B2JinJiSrcData) {
                B2JinJiSrcData b2JinJiSrcData = (B2JinJiSrcData) sourceData;
                arrayList.add(b2JinJiSrcData.gps1);
                arrayList.add(b2JinJiSrcData.gps2);
                arrayList.add(b2JinJiSrcData.gps3);
                arrayList.add(b2JinJiSrcData.gps4);
                arrayList.add(b2JinJiSrcData.gps5);
                arrayList.add(b2JinJiSrcData.gps6);
            } else if (sourceData instanceof B2HuaLuSrcData) {
                B2HuaLuSrcData b2HuaLuSrcData = (B2HuaLuSrcData) sourceData;
                arrayList.add(b2HuaLuSrcData.leftPoints.get(0));
                List<Gps> list4 = b2HuaLuSrcData.leftPoints;
                arrayList.add(list4.get(list4.size() - 1));
                arrayList.add(b2HuaLuSrcData.rightPoints.get(0));
                List<Gps> list5 = b2HuaLuSrcData.rightPoints;
                arrayList.add(list5.get(list5.size() - 1));
            } else if (sourceData instanceof B2SuiDaoSrcData) {
                B2SuiDaoSrcData b2SuiDaoSrcData = (B2SuiDaoSrcData) sourceData;
                arrayList.add(b2SuiDaoSrcData.leftPoints.get(0));
                List<Gps> list6 = b2SuiDaoSrcData.leftPoints;
                arrayList.add(list6.get(list6.size() - 1));
                arrayList.add(b2SuiDaoSrcData.rightPoints.get(0));
                List<Gps> list7 = b2SuiDaoSrcData.rightPoints;
                arrayList.add(list7.get(list7.size() - 1));
            } else if (sourceData instanceof B2ChunHuaLuSrcData) {
                B2ChunHuaLuSrcData b2ChunHuaLuSrcData = (B2ChunHuaLuSrcData) sourceData;
                arrayList.add(b2ChunHuaLuSrcData.leftPoints.get(0));
                List<Gps> list8 = b2ChunHuaLuSrcData.leftPoints;
                arrayList.add(list8.get(list8.size() - 1));
                arrayList.add(b2ChunHuaLuSrcData.rightPoints.get(0));
                List<Gps> list9 = b2ChunHuaLuSrcData.rightPoints;
                arrayList.add(list9.get(list9.size() - 1));
            } else if (sourceData instanceof B2DanBianSrcData) {
                B2DanBianSrcData b2DanBianSrcData = (B2DanBianSrcData) sourceData;
                arrayList.add(b2DanBianSrcData.gps1);
                arrayList.add(b2DanBianSrcData.gps2);
                arrayList.add(b2DanBianSrcData.gps11);
                arrayList.add(b2DanBianSrcData.gps12);
            } else if (sourceData instanceof B2ShanLuSrcData) {
                B2ShanLuSrcData b2ShanLuSrcData = (B2ShanLuSrcData) sourceData;
                arrayList.add(b2ShanLuSrcData.leftPoints.get(0));
                List<Gps> list10 = b2ShanLuSrcData.leftPoints;
                arrayList.add(list10.get(list10.size() - 1));
                arrayList.add(b2ShanLuSrcData.rightPoints.get(0));
                List<Gps> list11 = b2ShanLuSrcData.rightPoints;
                arrayList.add(list11.get(list11.size() - 1));
            } else if (sourceData instanceof B2QiFuSrcData) {
                B2QiFuSrcData b2QiFuSrcData = (B2QiFuSrcData) sourceData;
                arrayList.add(b2QiFuSrcData.gps1);
                arrayList.add(b2QiFuSrcData.gps2);
                arrayList.add(b2QiFuSrcData.gps11);
                arrayList.add(b2QiFuSrcData.gps12);
            } else if (sourceData instanceof B2ZhangAiSrcData) {
                B2ZhangAiSrcData b2ZhangAiSrcData = (B2ZhangAiSrcData) sourceData;
                arrayList.add(b2ZhangAiSrcData.gps1);
                arrayList.add(b2ZhangAiSrcData.gps2);
                arrayList.add(b2ZhangAiSrcData.gps9);
                arrayList.add(b2ZhangAiSrcData.gps10);
            } else if (sourceData instanceof B2GaoSuSrcData) {
                B2GaoSuSrcData b2GaoSuSrcData = (B2GaoSuSrcData) sourceData;
                arrayList.add(b2GaoSuSrcData.leftPoints.get(0));
                List<Gps> list12 = b2GaoSuSrcData.leftPoints;
                arrayList.add(list12.get(list12.size() - 1));
                arrayList.add(b2GaoSuSrcData.rightPoints.get(0));
                List<Gps> list13 = b2GaoSuSrcData.rightPoints;
                arrayList.add(list13.get(list13.size() - 1));
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> createLayers(MapView mapView, boolean z, boolean z2) {
        ArrayList arrayList = new ArrayList();
        Iterator<List<cn.mucang.android.jiakaoyi.hpmap.c.a>> it = this.v.values().iterator();
        while (it.hasNext()) {
            Iterator<cn.mucang.android.jiakaoyi.hpmap.c.a> it2 = it.next().iterator();
            while (it2.hasNext()) {
                arrayList.addAll(it2.next().createMapLayers(mapView, false, z2));
            }
        }
        return arrayList;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public CarData getCarData() {
        return this.y;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.a.a.b>> getCollisions() {
        return this.f4710d;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.i.a getConverter() {
        return this.x;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public String getExamSiteId() {
        return this.f4709a;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public cn.mucang.android.jiakaoyi.signal.pos.a getMapBound() {
        return this.w;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.render.f
    public Map<Step, List<cn.mucang.android.jiakaoyi.hpmap.c.a>> getRenders() {
        return this.v;
    }

    public h(String str, boolean z, a aVar) {
        this(str, z, aVar, false);
    }

    public h(String str, boolean z, a aVar, boolean z2) {
        this.b = new HashSet<>();
        this.c = new ArrayList();
        this.f4710d = new HashMap();
        this.f4711e = new ArrayList();
        this.f4712f = new ArrayList();
        this.f4713g = new ArrayList();
        this.f4714h = new ArrayList();
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
        this.t = new ArrayList();
        this.u = new ArrayList();
        this.v = new HashMap();
        this.w = new cn.mucang.android.jiakaoyi.signal.pos.a(Double.MAX_VALUE, Double.MAX_VALUE, -1.7976931348623157E308d, -1.7976931348623157E308d);
        this.f4709a = str;
        this.z = aVar;
        this.A = z2;
        if (z) {
            h(true);
        } else {
            new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.c.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f4702a.g();
                }
            }).start();
        }
    }
}
