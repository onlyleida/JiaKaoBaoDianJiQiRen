package cn.mucang.android.jiakaoyi.exam.a;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.engine.trace.site.TraceLineModel;
import cn.mucang.android.jiakaoyi.engine.trace.site.TraceSiteItemModel;
import cn.mucang.android.jiakaoyi.engine.trace.w;
import cn.mucang.android.jiakaoyi.exam.k3.collision.K3Data;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.f;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.g;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.h;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.i;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.j;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.k;
import cn.mucang.android.jiakaoyi.k3collect.j0.b.l;
import cn.mucang.android.jiakaoyi.k3collect.style.LineStyle;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(List<TraceSiteItemModel> list, List<Pos> list2, int i, int i2, cn.mucang.android.jiakaoyi.k3collect.j0.a aVar) {
        TraceLineModel traceLineModel = new TraceLineModel(list2, i, i2);
        d(traceLineModel, aVar);
        list.add(traceLineModel);
    }

    public static void b(final K3Data k3Data) {
        if (k3Data == null || !k3Data.hasData) {
            w.p.l(new ArrayList());
        } else {
            n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.exam.a.a
                @Override // java.lang.Runnable
                public final void run() {
                    b.c(k3Data);
                }
            });
        }
    }

    static /* synthetic */ void c(K3Data k3Data) {
        ArrayList arrayList = new ArrayList();
        try {
            String str = k3Data.converter.getZero().longitude + "," + k3Data.converter.getZero().latitude;
            w.r.xy = str;
            if (new cn.mucang.android.jiakaoyi.engine.trace.upload.c().m(String.valueOf(ExamSiteUtil.e(0L)), ExamSiteUtil.k(KeMu.K3), str)) {
                w.p.l(arrayList);
                return;
            }
        } catch (Exception unused) {
            t.d("Trace", "地图 check 接口出错或地图不存在");
        }
        ArrayList arrayList2 = new ArrayList();
        for (cn.mucang.android.jiakaoyi.k3collect.j0.a aVar : k3Data.renderModels) {
            if (aVar instanceof cn.mucang.android.jiakaoyi.k3collect.j0.b.a) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.a aVar2 = (cn.mucang.android.jiakaoyi.k3collect.j0.b.a) aVar;
                arrayList2.clear();
                arrayList2.addAll(aVar2.f3949d);
                a(arrayList, arrayList2, aVar2.b, 0, aVar);
            } else if (aVar instanceof cn.mucang.android.jiakaoyi.k3collect.j0.b.b) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.b bVar = (cn.mucang.android.jiakaoyi.k3collect.j0.b.b) aVar;
                arrayList2.clear();
                arrayList2.add(bVar.f3955e);
                arrayList2.add(bVar.f3956f);
                a(arrayList, arrayList2, bVar.b, bVar.f3954d, aVar);
            } else if (aVar instanceof cn.mucang.android.jiakaoyi.k3collect.j0.b.c) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.c cVar = (cn.mucang.android.jiakaoyi.k3collect.j0.b.c) aVar;
                arrayList2.clear();
                arrayList2.add(cVar.f3959d);
                arrayList2.add(cVar.f3960e);
                arrayList2.add(cVar.f3961f);
                arrayList2.add(cVar.f3962g);
                a(arrayList, arrayList2, cVar.b, 0, aVar);
            } else if (aVar instanceof cn.mucang.android.jiakaoyi.k3collect.j0.b.e) {
                cn.mucang.android.jiakaoyi.k3collect.j0.b.e eVar = (cn.mucang.android.jiakaoyi.k3collect.j0.b.e) aVar;
                arrayList2.clear();
                for (int i = 0; i < eVar.f3969d.size(); i++) {
                    arrayList2.add(eVar.f3969d.valueAt(i));
                }
                a(arrayList, arrayList2, eVar.b, eVar.f3973h, aVar);
            } else if (aVar instanceof f) {
                f fVar = (f) aVar;
                arrayList2.clear();
                arrayList2.add(fVar.f3975e);
                arrayList2.add(fVar.f3976f);
                a(arrayList, arrayList2, fVar.b, 0, aVar);
            } else if (aVar instanceof h) {
                h hVar = (h) aVar;
                arrayList2.clear();
                for (int i2 = 0; i2 < hVar.f3985e.size(); i2++) {
                    arrayList2.add(hVar.f3985e.valueAt(i2));
                }
                a(arrayList, arrayList2, hVar.b, 0, aVar);
            } else if (aVar instanceof i) {
                i iVar = (i) aVar;
                arrayList2.clear();
                arrayList2.addAll(iVar.f3989d);
                a(arrayList, arrayList2, iVar.b, 0, aVar);
            } else if (aVar instanceof j) {
                j jVar = (j) aVar;
                if (jVar.r) {
                    TraceLineModel traceLineModel = new TraceLineModel(jVar.p, jVar.b, 0);
                    traceLineModel.setAssistPoints(jVar.q);
                    d(traceLineModel, aVar);
                    arrayList.add(traceLineModel);
                } else {
                    arrayList2.clear();
                    arrayList2.add(jVar.f3996h);
                    arrayList2.add(jVar.i);
                    arrayList2.add(jVar.j);
                    arrayList2.add(jVar.k);
                    a(arrayList, arrayList2, jVar.b, 0, aVar);
                }
            } else if (aVar instanceof k) {
                k kVar = (k) aVar;
                if (kVar.k) {
                    a(arrayList, kVar.i, kVar.b, 0, aVar);
                } else {
                    arrayList2.clear();
                    arrayList2.add(kVar.f3997d);
                    arrayList2.add(kVar.f3998e);
                    a(arrayList, arrayList2, kVar.b, 0, aVar);
                }
            } else if (aVar instanceof l) {
                l lVar = (l) aVar;
                arrayList2.clear();
                arrayList2.add(lVar.f4002d);
                arrayList2.add(lVar.f4003e);
                a(arrayList, arrayList2, lVar.b, 0, aVar);
            } else if (aVar instanceof g) {
                g gVar = (g) aVar;
                if (gVar.a()) {
                    TraceLineModel traceLineModel2 = new TraceLineModel(gVar.f3979d, gVar.b, gVar.n);
                    traceLineModel2.setAssistPoints(gVar.f3980e);
                    d(traceLineModel2, aVar);
                    arrayList.add(traceLineModel2);
                }
            }
        }
        w.p.l(arrayList);
    }

    public static void d(TraceLineModel traceLineModel, cn.mucang.android.jiakaoyi.k3collect.j0.a aVar) {
        LineStyle lineStyle = aVar.f3948a;
        traceLineModel.setStyle(lineStyle.color, lineStyle.lineWidth, lineStyle.isDashed, w.n(lineStyle.dashInterval), aVar.f3948a.dashLength);
    }
}
