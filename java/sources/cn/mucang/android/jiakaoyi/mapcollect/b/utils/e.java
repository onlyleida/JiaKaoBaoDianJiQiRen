package cn.mucang.android.jiakaoyi.mapcollect.b.utils;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.site.TraceSiteItemModel;
import cn.mucang.android.jiakaoyi.engine.trace.upload.c;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.a;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.f;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.g;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.h;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.i;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.k;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.m;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.n;
import cn.mucang.android.jiakaoyi.hpmap.a.a.g.o;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.j;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class e {
    public static void a(final j jVar) {
        if (jVar == null) {
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.b.b.b
            @Override // java.lang.Runnable
            public final void run() {
                e.b(jVar);
            }
        });
    }

    static /* synthetic */ void b(j jVar) {
        ArrayList arrayList = new ArrayList();
        try {
            String str = jVar.v.getZero().longitude + "," + jVar.v.getZero().latitude;
            w.r.xy = str;
            if (new c().m(jVar.f4722a, ExamSiteUtil.k(KeMu.K2), str)) {
                w.p.l(arrayList);
                return;
            }
        } catch (Exception unused) {
            t.d("Trace", "地图 check 接口出错或地图不存在");
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (b bVar : jVar.f4724e) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(bVar.i.start);
            arrayList2.add(bVar.i.end);
            arrayList2.add(bVar.v.f5820a);
            arrayList2.add(bVar.v.b);
            arrayList2.add(bVar.v.c);
            arrayList2.add(bVar.v.f5821d);
            arrayList2.add(bVar.q.end);
            arrayList2.add(bVar.r.start);
            TraceSiteItemModel traceSiteItemModel = new TraceSiteItemModel(arrayList2, Step.K2_CeFangTingChe.type);
            Line line = bVar.s;
            if (line != null) {
                arrayList3.add(line.start);
                arrayList3.add(bVar.s.end);
                traceSiteItemModel.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel);
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.c cVar : jVar.f4725f) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(cVar.i.start);
            arrayList2.add(cVar.i.end);
            arrayList2.add(cVar.w.f5820a);
            arrayList2.add(cVar.w.b);
            arrayList2.add(cVar.w.c);
            arrayList2.add(cVar.w.f5821d);
            arrayList2.add(cVar.q.end);
            arrayList2.add(cVar.r.start);
            TraceSiteItemModel traceSiteItemModel2 = new TraceSiteItemModel(arrayList2, Step.K2_DaoCheRuKu.type);
            Line line2 = cVar.s;
            if (line2 != null) {
                arrayList3.add(line2.start);
                arrayList3.add(cVar.s.end);
                traceSiteItemModel2.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel2);
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.j jVar2 : jVar.f4726g) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.addAll(jVar2.i);
            TraceSiteItemModel traceSiteItemModel3 = new TraceSiteItemModel(arrayList2, Step.K2_SQuXian.type);
            traceSiteItemModel3.setAssistPoints(jVar2.j);
            Line line3 = jVar2.m;
            if (line3 != null) {
                arrayList3.add(line3.start);
                arrayList3.add(jVar2.m.end);
                traceSiteItemModel3.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel3);
        }
        for (k kVar : jVar.f4727h) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(kVar.i.start);
            arrayList2.add(kVar.i.end);
            arrayList2.add(kVar.l.start);
            arrayList2.add(kVar.l.end);
            arrayList2.add(kVar.m.start);
            arrayList2.add(kVar.m.end);
            arrayList2.add(kVar.n.start);
            arrayList2.add(kVar.n.end);
            if (kVar.p != null) {
                arrayList2.add(kVar.o.start);
                arrayList2.add(kVar.o.end);
            }
            arrayList2.add(kVar.j.start);
            arrayList2.add(kVar.j.end);
            TraceSiteItemModel traceSiteItemModel4 = new TraceSiteItemModel(arrayList2, Step.K2_ShangPoQiBu.type);
            Line line4 = kVar.t;
            if (line4 != null) {
                arrayList3.add(line4.start);
                arrayList3.add(kVar.t.end);
                traceSiteItemModel4.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel4);
        }
        for (o oVar : jVar.i) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(oVar.i.start);
            arrayList2.add(oVar.i.end);
            arrayList2.add(oVar.l.start);
            arrayList2.add(oVar.l.end);
            arrayList2.add(oVar.m.start);
            arrayList2.add(oVar.m.end);
            TraceSiteItemModel traceSiteItemModel5 = new TraceSiteItemModel(arrayList2, Step.K2_ZhiJiaoZhuanWan.type);
            Line line5 = oVar.o;
            if (line5 != null) {
                arrayList3.add(line5.start);
                arrayList3.add(oVar.o.end);
                traceSiteItemModel5.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel5);
        }
        for (i iVar : jVar.j) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(iVar.i.start);
            arrayList2.add(iVar.i.end);
            arrayList2.add(iVar.k.start);
            arrayList2.add(iVar.k.end);
            arrayList2.add(iVar.j.start);
            arrayList2.add(iVar.j.end);
            TraceSiteItemModel traceSiteItemModel6 = new TraceSiteItemModel(arrayList2, Step.K2_QuKa.type);
            Line line6 = iVar.n;
            if (line6 != null) {
                arrayList3.add(line6.start);
                arrayList3.add(iVar.n.end);
                traceSiteItemModel6.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel6);
        }
        for (h hVar : jVar.k) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(hVar.i.start);
            arrayList2.add(hVar.j.start);
            arrayList2.add(hVar.k.start);
            arrayList2.add(hVar.l.start);
            TraceSiteItemModel traceSiteItemModel7 = new TraceSiteItemModel(arrayList2, Step.K2_QiDianQuYu.type);
            Line line7 = hVar.m;
            if (line7 != null) {
                arrayList3.add(line7.start);
                arrayList3.add(hVar.m.end);
                traceSiteItemModel7.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel7);
        }
        for (n nVar : jVar.l) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(nVar.i.start);
            arrayList2.add(nVar.i.end);
            arrayList2.add(nVar.k.start);
            arrayList2.add(nVar.l.start);
            TraceSiteItemModel traceSiteItemModel8 = new TraceSiteItemModel(arrayList2, Step.K2_ZhaiLuDiaoTou.type);
            Line line8 = nVar.q;
            if (line8 != null) {
                arrayList3.add(line8.start);
                arrayList3.add(nVar.q.end);
                traceSiteItemModel8.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel8);
        }
        for (g gVar : jVar.m) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(gVar.i.start);
            arrayList2.add(gVar.i.end);
            arrayList2.add(gVar.k.start);
            arrayList2.add(gVar.k.end);
            arrayList2.add(gVar.j.start);
            arrayList2.add(gVar.j.end);
            TraceSiteItemModel traceSiteItemModel9 = new TraceSiteItemModel(arrayList2, Step.K2_JinJiQingKuang.type);
            Line line9 = gVar.o;
            if (line9 != null) {
                arrayList3.add(line9.start);
                arrayList3.add(gVar.o.end);
                traceSiteItemModel9.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel9);
        }
        for (f fVar : jVar.n) {
            arrayList2.clear();
            arrayList3.clear();
            TraceSiteItemModel traceSiteItemModel10 = new TraceSiteItemModel(fVar.i, Step.K2_ShiHuaLuMian.type);
            traceSiteItemModel10.setAssistPoints(fVar.k);
            if (cn.mucang.android.core.utils.g.d(fVar.j)) {
                traceSiteItemModel10.setAssistPoints2(fVar.j);
            }
            Line line10 = fVar.n;
            if (line10 != null) {
                arrayList3.add(line10.start);
                arrayList3.add(fVar.n.end);
                traceSiteItemModel10.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel10);
        }
        for (l lVar : jVar.o) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(lVar.l.start);
            arrayList2.add(lVar.l.end);
            arrayList2.add(lVar.m.start);
            arrayList2.add(lVar.m.end);
            arrayList2.addAll(lVar.i);
            TraceSiteItemModel traceSiteItemModel11 = new TraceSiteItemModel(arrayList2, Step.K2_SuiDao.type);
            traceSiteItemModel11.setAssistPoints(lVar.k);
            traceSiteItemModel11.setAssistPoints2(lVar.j);
            Line line11 = lVar.n;
            if (line11 != null) {
                arrayList3.add(line11.start);
                arrayList3.add(lVar.n.end);
                traceSiteItemModel11.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel11);
        }
        for (a aVar : jVar.p) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(aVar.j.start);
            arrayList2.add(aVar.j.end);
            arrayList2.add(aVar.k.start);
            arrayList2.add(aVar.k.end);
            TraceSiteItemModel traceSiteItemModel12 = new TraceSiteItemModel(arrayList2, Step.K2_BianXianShiBie.type);
            Line line12 = aVar.l;
            if (line12 != null) {
                arrayList3.add(line12.start);
                arrayList3.add(aVar.l.end);
                traceSiteItemModel12.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel12);
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.g.e eVar : jVar.q) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(eVar.i.start);
            arrayList2.add(eVar.i.end);
            arrayList2.add(eVar.k.start);
            arrayList2.add(eVar.k.end);
            arrayList2.add(eVar.j.start);
            arrayList2.add(eVar.j.end);
            TraceSiteItemModel traceSiteItemModel13 = new TraceSiteItemModel(arrayList2, Step.K2_ETC.type);
            Line line13 = eVar.n;
            if (line13 != null) {
                arrayList3.add(line13.start);
                arrayList3.add(eVar.n.end);
                traceSiteItemModel13.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel13);
        }
        for (m mVar : jVar.r) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(mVar.m);
            arrayList2.add(mVar.l);
            arrayList2.addAll(mVar.j);
            TraceSiteItemModel traceSiteItemModel14 = new TraceSiteItemModel(arrayList2, Step.K2_YuanHuanLianXi.type);
            traceSiteItemModel14.setAssistPoints(mVar.i);
            arrayList.add(traceSiteItemModel14);
        }
        w.p.l(arrayList);
    }
}
