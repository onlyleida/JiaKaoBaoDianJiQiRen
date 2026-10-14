package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.m;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.n;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class h implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<C2SQuXianSrcData, n> {
    private void d(Pos pos, Pos pos2, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, MapView mapView, double d2, int i, String str, boolean z) {
        if (pos == null || pos2 == null) {
            return;
        }
        Line lineP = (str == null || !str.contains("入口")) ? cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a * 1.2f) : cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a * 1.2f);
        if (!z) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.b.a aVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.b.a((float) d2, i);
            aVar.a(str);
            aVar.b(lineP.start.meanWith(lineP.end));
            list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.i(mapView, pos, pos2, aVar));
            return;
        }
        cn.mucang.android.jiakaoyi.hpmap.view.p.e.a aVar2 = new cn.mucang.android.jiakaoyi.hpmap.view.p.e.a((float) d2, i);
        aVar2.e(str);
        aVar2.c(20.0f);
        aVar2.d(40.0f);
        aVar2.f(lineP.start.meanWith(lineP.end));
        list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.e(mapView, pos, pos2, aVar2));
    }

    private void e(Pos pos, List<m> list, String str, int i, MapView mapView) {
        if (pos != null) {
            m.a aVar = new m.a(cn.mucang.android.jiakaoyi.hpmap.b.a.b, i);
            aVar.a(str);
            list.add(new m(mapView, pos, aVar));
        }
    }

    public static void f(Pos pos, List<m> list, String str, int i, MapView mapView, Pos pos2) {
        if (pos != null) {
            m.a aVar = new m.a(cn.mucang.android.jiakaoyi.hpmap.b.a.b, i);
            aVar.a(str);
            aVar.b(pos2);
            list.add(new m(mapView, pos, aVar));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"开始采集1号线", "结束采集1号线", "开始采集2号线", "结束采集2号线", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, n nVar, Gps gps) {
        if (i == 0) {
            nVar.u();
            return;
        }
        if (i == 1) {
            nVar.o();
            return;
        }
        if (i == 2) {
            nVar.v();
            return;
        }
        if (i == 3) {
            nVar.p();
        } else if (i == 4) {
            nVar.s(gps);
        } else if (i == 5) {
            nVar.t(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, n nVar, C2SQuXianSrcData c2SQuXianSrcData) {
        int i;
        Double dValueOf;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SQuXianSrcData.start1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SQuXianSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        f(posJ, arrayList3, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        f(posJ2, arrayList3, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        List<Gps> list = c2SQuXianSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar.a(it.next());
                arrayList.add(posA);
                e(posA, arrayList3, String.valueOf(i), -1282049, mapView);
                i++;
            }
        } else {
            i = 1;
        }
        List<Gps> list2 = c2SQuXianSrcData.rightPoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar.a(it2.next());
                arrayList2.add(posA2);
                e(posA2, arrayList3, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        ArrayList arrayList4 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList4, mapView, c2SQuXianSrcData.lineWidth, -10032010, null, true);
        if (arrayList.size() > 0) {
            int i2 = 0;
            while (i2 < arrayList.size() - 1) {
                int i3 = i2 + 1;
                d((Pos) arrayList.get(i2), (Pos) arrayList.get(i3), arrayList4, mapView, c2SQuXianSrcData.lineWidth, -1, null, false);
                arrayList4 = arrayList4;
                i2 = i3;
            }
        }
        ArrayList arrayList5 = arrayList4;
        if (arrayList2.size() > 0) {
            int i4 = 0;
            while (i4 < arrayList2.size() - 1) {
                int i5 = i4 + 1;
                d((Pos) arrayList2.get(i4), (Pos) arrayList2.get(i5), arrayList5, mapView, c2SQuXianSrcData.lineWidth, -1, null, false);
                i4 = i5;
            }
        }
        if (arrayList.size() > 0 && arrayList2.size() > 0) {
            d((Pos) arrayList.get(0), (Pos) arrayList2.get(0), arrayList5, mapView, c2SQuXianSrcData.lineWidth, -10032010, "入口", true);
            if (nVar.q()) {
                d((Pos) arrayList.get(arrayList.size() - 1), (Pos) arrayList2.get(arrayList2.size() - 1), arrayList5, mapView, c2SQuXianSrcData.lineWidth, -46528, "出口", true);
            }
        }
        if (arrayList3.size() > 0) {
            Iterator<m> it3 = arrayList3.iterator();
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            while (it3.hasNext()) {
                Pos pos = it3.next().i;
                ArrayList arrayList6 = arrayList;
                double d7 = pos.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos.y;
                if (d5 > d8) {
                    d5 = d8;
                }
                if (d6 < d8) {
                    d6 = d8;
                }
                arrayList = arrayList6;
            }
            ArrayList arrayList7 = arrayList;
            double d9 = (d4 + d3) * 0.5d;
            double d10 = (d5 + d6) * 0.5d;
            mapView.u.j();
            if (arrayList5.size() > 0) {
                mapView.u.h(arrayList5);
            }
            mapView.u.h(arrayList3);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            if (arrayList7.size() <= 0 || arrayList2.size() <= 0) {
                dValueOf = arrayList7.size() > 1 ? Double.valueOf(((Pos) arrayList7.get(0)).angleTo((Pos) arrayList7.get(1))) : null;
                if (dValueOf == null && arrayList2.size() > 1) {
                    dValueOf = Double.valueOf(((Pos) arrayList2.get(0)).angleTo((Pos) arrayList2.get(1)));
                }
                d2 = c2SQuXianSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList7.get(0)).angleTo((Pos) arrayList2.get(0)));
                d2 = c2SQuXianSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
