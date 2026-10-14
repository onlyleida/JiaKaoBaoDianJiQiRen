package cn.mucang.android.jiakaoyi.mapcollect.b.utils;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.engine.trace.site.TraceSiteItemModel;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.a;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.b;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.d;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.e;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.f;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.g;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.i;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.j;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.k;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.l;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.m;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.n;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.o;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.p;
import cn.mucang.android.jiakaoyi.hpmap.a.a.f.q;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.mapcollect.c.h;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class c {
    public static void a(final h hVar) {
        if (hVar == null) {
            return;
        }
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.mapcollect.b.b.a
            @Override // java.lang.Runnable
            public final void run() {
                c.b(hVar);
            }
        });
    }

    static /* synthetic */ void b(h hVar) {
        ArrayList arrayList = new ArrayList();
        try {
            String str = hVar.x.getZero().longitude + "," + hVar.x.getZero().latitude;
            w.r.xy = str;
            if (new cn.mucang.android.jiakaoyi.engine.trace.upload.c().m(hVar.f4709a, ExamSiteUtil.k(KeMu.B2), str)) {
                w.p.l(arrayList);
                return;
            }
        } catch (Exception unused) {
            t.d("Trace", "地图 check 接口出错或地图不存在");
        }
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        for (a aVar : hVar.f4711e) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(aVar.i.start);
            arrayList2.add(aVar.i.end);
            arrayList2.add(aVar.v.f5820a);
            arrayList2.add(aVar.v.b);
            arrayList2.add(aVar.v.c);
            arrayList2.add(aVar.v.f5821d);
            arrayList2.add(aVar.q.end);
            arrayList2.add(aVar.r.start);
            TraceSiteItemModel traceSiteItemModel = new TraceSiteItemModel(arrayList2, Step.B2_CeFangTingChe.type);
            Line line = aVar.s;
            if (line != null) {
                arrayList3.add(line.start);
                arrayList3.add(aVar.s.end);
                traceSiteItemModel.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel);
        }
        for (i iVar : hVar.f4712f) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.addAll(iVar.i);
            TraceSiteItemModel traceSiteItemModel2 = new TraceSiteItemModel(arrayList2, Step.B2_SQuXian.type);
            traceSiteItemModel2.setAssistPoints(iVar.j);
            Line line2 = iVar.m;
            if (line2 != null) {
                arrayList3.add(line2.start);
                arrayList3.add(iVar.m.end);
                traceSiteItemModel2.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel2);
        }
        for (k kVar : hVar.f4713g) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(kVar.i.start);
            arrayList2.add(kVar.i.end);
            arrayList2.add(kVar.k.start);
            arrayList2.add(kVar.k.end);
            arrayList2.add(kVar.l.start);
            arrayList2.add(kVar.l.end);
            arrayList2.add(kVar.m.start);
            arrayList2.add(kVar.m.end);
            if (kVar.o != null) {
                arrayList2.add(kVar.n.start);
                arrayList2.add(kVar.n.end);
            }
            arrayList2.add(kVar.j.start);
            arrayList2.add(kVar.j.end);
            TraceSiteItemModel traceSiteItemModel3 = new TraceSiteItemModel(arrayList2, Step.B2_ShangPoQiBu.type);
            Line line3 = kVar.r;
            if (line3 != null) {
                arrayList3.add(line3.start);
                arrayList3.add(kVar.r.end);
                traceSiteItemModel3.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel3);
        }
        for (p pVar : hVar.f4714h) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(pVar.i.start);
            arrayList2.add(pVar.i.end);
            arrayList2.add(pVar.l.start);
            arrayList2.add(pVar.l.end);
            arrayList2.add(pVar.m.start);
            arrayList2.add(pVar.m.end);
            TraceSiteItemModel traceSiteItemModel4 = new TraceSiteItemModel(arrayList2, Step.B2_ZhiJiaoZhuanWan.type);
            Line line4 = pVar.o;
            if (line4 != null) {
                arrayList3.add(line4.start);
                arrayList3.add(pVar.o.end);
                traceSiteItemModel4.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel4);
        }
        for (g gVar : hVar.i) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(gVar.i.start);
            arrayList2.add(gVar.j.start);
            arrayList2.add(gVar.k.start);
            arrayList2.add(gVar.l.start);
            TraceSiteItemModel traceSiteItemModel5 = new TraceSiteItemModel(arrayList2, Step.B2_QiDianQuYu.type);
            Line line5 = gVar.m;
            if (line5 != null) {
                arrayList3.add(line5.start);
                arrayList3.add(gVar.m.end);
                traceSiteItemModel5.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel5);
        }
        for (n nVar : hVar.j) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(nVar.i.start);
            arrayList2.add(nVar.i.end);
            arrayList2.add(nVar.k.start);
            arrayList2.add(nVar.l.start);
            TraceSiteItemModel traceSiteItemModel6 = new TraceSiteItemModel(arrayList2, Step.B2_ZhaiLuDiaoTou.type);
            Line line6 = nVar.n;
            if (line6 != null) {
                arrayList3.add(line6.start);
                arrayList3.add(nVar.n.end);
                traceSiteItemModel6.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel6);
        }
        for (f fVar : hVar.k) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(fVar.i.start);
            arrayList2.add(fVar.i.end);
            arrayList2.add(fVar.k.start);
            arrayList2.add(fVar.k.end);
            arrayList2.add(fVar.j.start);
            arrayList2.add(fVar.j.end);
            TraceSiteItemModel traceSiteItemModel7 = new TraceSiteItemModel(arrayList2, Step.B2_JinJiQingKuang.type);
            Line line7 = fVar.o;
            if (line7 != null) {
                arrayList3.add(line7.start);
                arrayList3.add(fVar.o.end);
                traceSiteItemModel7.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel7);
        }
        for (e eVar : hVar.l) {
            arrayList2.clear();
            arrayList3.clear();
            TraceSiteItemModel traceSiteItemModel8 = new TraceSiteItemModel(eVar.i, Step.B2_ShiHuaLuMian.type);
            traceSiteItemModel8.setAssistPoints(eVar.k);
            if (cn.mucang.android.core.utils.g.d(eVar.j)) {
                traceSiteItemModel8.setAssistPoints2(eVar.j);
            }
            Line line8 = eVar.n;
            if (line8 != null) {
                arrayList3.add(line8.start);
                arrayList3.add(eVar.n.end);
                traceSiteItemModel8.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel8);
        }
        for (l lVar : hVar.m) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(lVar.l.start);
            arrayList2.add(lVar.l.end);
            arrayList2.add(lVar.m.start);
            arrayList2.add(lVar.m.end);
            arrayList2.addAll(lVar.i);
            TraceSiteItemModel traceSiteItemModel9 = new TraceSiteItemModel(arrayList2, Step.B2_SuiDao.type);
            traceSiteItemModel9.setAssistPoints(lVar.k);
            traceSiteItemModel9.setAssistPoints2(lVar.j);
            Line line9 = lVar.n;
            if (line9 != null) {
                arrayList3.add(line9.start);
                arrayList3.add(lVar.n.end);
                traceSiteItemModel9.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel9);
        }
        for (q qVar : hVar.q) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(qVar.i.start);
            arrayList2.add(qVar.i.end);
            arrayList2.add(qVar.F.f5820a);
            arrayList2.add(qVar.F.b);
            arrayList2.add(qVar.F.c);
            arrayList2.add(qVar.F.f5821d);
            arrayList2.add(qVar.s.start);
            arrayList2.add(qVar.s.end);
            arrayList2.add(qVar.j.start);
            arrayList2.add(qVar.j.end);
            TraceSiteItemModel traceSiteItemModel10 = new TraceSiteItemModel(arrayList2, Step.B2_ZhuangKao.type);
            Line line10 = qVar.B;
            if (line10 != null) {
                arrayList3.add(line10.start);
                arrayList3.add(qVar.B.end);
                traceSiteItemModel10.setReportPoints(arrayList3);
            }
            ArrayList arrayList4 = new ArrayList();
            arrayList4.add(qVar.v);
            arrayList4.add(qVar.w);
            arrayList4.add(qVar.x);
            arrayList4.add(qVar.y);
            arrayList4.add(qVar.z);
            arrayList4.add(qVar.A);
            traceSiteItemModel10.setAssistPoints(arrayList4);
            arrayList.add(traceSiteItemModel10);
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.f.c cVar : hVar.n) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(cVar.i.start);
            arrayList2.add(cVar.i.end);
            arrayList2.add(cVar.w.f5820a);
            arrayList2.add(cVar.w.b);
            arrayList2.add(cVar.w.c);
            arrayList2.add(cVar.w.f5821d);
            arrayList2.add(cVar.x.f5820a);
            arrayList2.add(cVar.x.b);
            arrayList2.add(cVar.x.c);
            arrayList2.add(cVar.x.f5821d);
            arrayList2.add(cVar.j.start);
            arrayList2.add(cVar.j.end);
            TraceSiteItemModel traceSiteItemModel11 = new TraceSiteItemModel(arrayList2, Step.B2_DanBian.type);
            Line line11 = cVar.u;
            if (line11 != null) {
                arrayList3.add(line11.start);
                arrayList3.add(cVar.u.end);
                traceSiteItemModel11.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel11);
        }
        for (m mVar : hVar.o) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(mVar.i.start);
            arrayList2.add(mVar.i.end);
            arrayList2.add(mVar.k.start);
            arrayList2.add(mVar.k.end);
            arrayList2.add(mVar.l.start);
            arrayList2.add(mVar.l.end);
            arrayList2.add(mVar.m.start);
            arrayList2.add(mVar.m.end);
            arrayList2.add(mVar.j.start);
            arrayList2.add(mVar.j.end);
            TraceSiteItemModel traceSiteItemModel12 = new TraceSiteItemModel(arrayList2, Step.B2_XianKuan.type);
            Line line12 = mVar.p;
            if (line12 != null) {
                arrayList3.add(line12.start);
                arrayList3.add(mVar.p.end);
                traceSiteItemModel12.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel12);
        }
        for (o oVar : hVar.p) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(oVar.i.start);
            arrayList2.add(oVar.i.end);
            arrayList2.add(oVar.k);
            arrayList2.add(oVar.l);
            arrayList2.add(oVar.m);
            arrayList2.add(oVar.n);
            arrayList2.add(oVar.o);
            arrayList2.add(oVar.p);
            arrayList2.add(oVar.j.start);
            arrayList2.add(oVar.j.end);
            TraceSiteItemModel traceSiteItemModel13 = new TraceSiteItemModel(arrayList2, Step.B2_ZhangAi.type);
            Line line13 = oVar.s;
            if (line13 != null) {
                arrayList3.add(line13.start);
                arrayList3.add(oVar.s.end);
                traceSiteItemModel13.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel13);
        }
        for (cn.mucang.android.jiakaoyi.hpmap.a.a.f.h hVar2 : hVar.r) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(hVar2.i.start);
            arrayList2.add(hVar2.i.end);
            arrayList2.add(hVar2.k);
            arrayList2.add(hVar2.l);
            arrayList2.add(hVar2.m);
            arrayList2.add(hVar2.n);
            arrayList2.add(hVar2.o);
            arrayList2.add(hVar2.p);
            arrayList2.add(hVar2.q);
            arrayList2.add(hVar2.r);
            arrayList2.add(hVar2.j.start);
            arrayList2.add(hVar2.j.end);
            TraceSiteItemModel traceSiteItemModel14 = new TraceSiteItemModel(arrayList2, Step.B2_QiFu.type);
            Line line14 = hVar2.s;
            if (line14 != null) {
                arrayList3.add(line14.start);
                arrayList3.add(hVar2.s.end);
                traceSiteItemModel14.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel14);
        }
        for (j jVar : hVar.s) {
            arrayList2.clear();
            arrayList3.clear();
            TraceSiteItemModel traceSiteItemModel15 = new TraceSiteItemModel(jVar.i, Step.B2_ShanLu.type);
            traceSiteItemModel15.setAssistPoints(jVar.j);
            traceSiteItemModel15.setAssistPoints2(jVar.k);
            Line line15 = jVar.p;
            if (line15 != null) {
                arrayList3.add(line15.start);
                arrayList3.add(jVar.p.end);
            } else {
                arrayList3.add(new Pos());
                arrayList3.add(new Pos());
            }
            Line line16 = jVar.q;
            if (line16 != null) {
                arrayList3.add(line16.start);
                arrayList3.add(jVar.q.end);
            }
            Line line17 = jVar.r;
            if (line17 != null) {
                arrayList3.add(line17.start);
                arrayList3.add(jVar.r.end);
            }
            Line line18 = jVar.s;
            if (line18 != null) {
                arrayList3.add(line18.start);
                arrayList3.add(jVar.s.end);
            }
            Line line19 = jVar.t;
            if (line19 != null) {
                arrayList3.add(line19.start);
                arrayList3.add(jVar.t.end);
            }
            traceSiteItemModel15.setReportPoints(arrayList3);
            arrayList.add(traceSiteItemModel15);
        }
        for (d dVar : hVar.t) {
            arrayList2.clear();
            arrayList3.clear();
            arrayList2.add(dVar.t.start);
            arrayList2.add(dVar.t.end);
            arrayList2.add(dVar.u.start);
            arrayList2.add(dVar.u.end);
            arrayList2.addAll(dVar.i);
            TraceSiteItemModel traceSiteItemModel16 = new TraceSiteItemModel(arrayList2, Step.B2_GaoSu.type);
            traceSiteItemModel16.setAssistPoints(dVar.j);
            traceSiteItemModel16.setAssistPoints2(dVar.k);
            Line line20 = dVar.x;
            if (line20 != null) {
                arrayList3.add(line20.start);
                arrayList3.add(dVar.x.end);
            } else {
                arrayList3.add(new Pos());
                arrayList3.add(new Pos());
            }
            Line line21 = dVar.z;
            if (line21 != null) {
                arrayList3.add(line21.start);
                arrayList3.add(dVar.z.end);
            }
            Line line22 = dVar.A;
            if (line22 != null) {
                arrayList3.add(line22.start);
                arrayList3.add(dVar.A.end);
            }
            Line line23 = dVar.B;
            if (line23 != null) {
                arrayList3.add(line23.start);
                arrayList3.add(dVar.B.end);
            }
            Line line24 = dVar.C;
            if (line24 != null) {
                arrayList3.add(line24.start);
                arrayList3.add(dVar.C.end);
            }
            Line line25 = dVar.D;
            if (line25 != null) {
                arrayList3.add(line25.start);
                arrayList3.add(dVar.D.end);
            }
            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = dVar.G;
            if (cVar2 != null) {
                arrayList3.add(cVar2.f5820a);
                arrayList3.add(dVar.G.b);
                arrayList3.add(dVar.G.b);
                arrayList3.add(dVar.G.c);
                arrayList3.add(dVar.G.c);
                arrayList3.add(dVar.G.f5821d);
            }
            Line line26 = dVar.I;
            if (line26 != null) {
                arrayList3.add(line26.start);
                arrayList3.add(dVar.I.end);
            }
            Line line27 = dVar.J;
            if (line27 != null) {
                arrayList3.add(line27.start);
                arrayList3.add(dVar.J.end);
            }
            traceSiteItemModel16.setReportPoints(arrayList3);
            arrayList.add(traceSiteItemModel16);
        }
        for (b bVar : hVar.u) {
            arrayList2.clear();
            arrayList3.clear();
            TraceSiteItemModel traceSiteItemModel17 = new TraceSiteItemModel(bVar.i, Step.B2_ChunHuaLu.type);
            traceSiteItemModel17.setAssistPoints(bVar.k);
            if (cn.mucang.android.core.utils.g.d(bVar.j)) {
                traceSiteItemModel17.setAssistPoints2(bVar.j);
            }
            Line line28 = bVar.n;
            if (line28 != null) {
                arrayList3.add(line28.start);
                arrayList3.add(bVar.n.end);
                traceSiteItemModel17.setReportPoints(arrayList3);
            }
            arrayList.add(traceSiteItemModel17);
        }
        w.p.l(arrayList);
    }
}
