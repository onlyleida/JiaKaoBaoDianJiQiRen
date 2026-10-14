package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.m;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.p;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<C2SuiDaoSrcData, p> {
    private void d(Pos pos, Pos pos2, List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> list, MapView mapView, double d2, int i, String str, boolean z) {
        if (pos == null || pos2 == null) {
            return;
        }
        Line lineP = cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a * 1.2f);
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
        return new String[]{"采集预报点1", "采集预报点2", "采集开始线1号点", "采集开始线2号点", "采集结束线3号点", "采集结束线4号点", "开始采集左边实线5号点", "结束采集左边实线6号点", "开始采集右边实线7号点", "结束采集右边实线8号点", "开始采集中间实线9号点", "结束采集中间实线10号点"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, p pVar, Gps gps) {
        if (i == 0) {
            pVar.t(gps);
            return;
        }
        if (i == 1) {
            pVar.u(gps);
            return;
        }
        if (i == 2) {
            pVar.s(2, gps);
            return;
        }
        if (i == 3) {
            pVar.s(3, gps);
            return;
        }
        if (i == 4) {
            pVar.s(4, gps);
            return;
        }
        if (i == 5) {
            pVar.s(5, gps);
            return;
        }
        if (i == 6) {
            pVar.w();
            return;
        }
        if (i == 7) {
            pVar.j();
            return;
        }
        if (i == 8) {
            pVar.x();
            return;
        }
        if (i == 9) {
            pVar.k();
        } else if (i == 10) {
            pVar.v();
        } else if (i == 11) {
            pVar.i();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, p pVar, C2SuiDaoSrcData c2SuiDaoSrcData) {
        int i;
        Double dValueOf;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SuiDaoSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SuiDaoSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SuiDaoSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SuiDaoSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SuiDaoSrcData.start1, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2SuiDaoSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        f(posJ, arrayList4, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        f(posJ2, arrayList4, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        f(posJ3, arrayList4, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(posJ, posJ3, posJ4, f2));
        f(posJ4, arrayList4, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        f(posJ5, arrayList4, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ5, f2));
        f(posJ6, arrayList4, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ5, posJ6, f2));
        List<Gps> list = c2SuiDaoSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar.a(it.next());
                arrayList.add(posA);
                e(posA, arrayList4, String.valueOf(i), -1282049, mapView);
                i++;
            }
        } else {
            i = 1;
        }
        List<Gps> list2 = c2SuiDaoSrcData.centerPoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar.a(it2.next());
                arrayList2.add(posA2);
                e(posA2, arrayList4, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        List<Gps> list3 = c2SuiDaoSrcData.rightPoints;
        if (list3 != null) {
            Iterator<Gps> it3 = list3.iterator();
            while (it3.hasNext()) {
                Pos posA3 = aVar.a(it3.next());
                arrayList3.add(posA3);
                e(posA3, arrayList4, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        ArrayList arrayList5 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList5, mapView, c2SuiDaoSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList5, mapView, c2SuiDaoSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList5, mapView, c2SuiDaoSrcData.lineWidth, -10032010, null, true);
        if (arrayList.size() > 0) {
            int i2 = 0;
            while (i2 < arrayList.size() - 1) {
                int i3 = i2 + 1;
                d((Pos) arrayList.get(i2), (Pos) arrayList.get(i3), arrayList5, mapView, c2SuiDaoSrcData.lineWidth, -1, null, false);
                i2 = i3;
            }
        }
        if (arrayList2.size() > 0) {
            int i4 = 0;
            while (i4 < arrayList2.size() - 1) {
                int i5 = i4 + 1;
                d((Pos) arrayList2.get(i4), (Pos) arrayList2.get(i5), arrayList5, mapView, c2SuiDaoSrcData.lineWidth, -1, null, false);
                i4 = i5;
            }
        }
        if (arrayList3.size() > 0) {
            int i6 = 0;
            while (i6 < arrayList3.size() - 1) {
                int i7 = i6 + 1;
                d((Pos) arrayList3.get(i6), (Pos) arrayList3.get(i7), arrayList5, mapView, c2SuiDaoSrcData.lineWidth, -1, null, false);
                i6 = i7;
            }
        }
        if (arrayList4.size() > 0) {
            Iterator<m> it4 = arrayList4.iterator();
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            while (it4.hasNext()) {
                Pos pos = it4.next().i;
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
            }
            double d9 = (d4 + d3) * 0.5d;
            double d10 = (d5 + d6) * 0.5d;
            mapView.u.j();
            if (arrayList5.size() > 0) {
                mapView.u.h(arrayList5);
            }
            mapView.u.h(arrayList4);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            if (arrayList.size() <= 0 || arrayList3.size() <= 0) {
                dValueOf = arrayList.size() > 1 ? Double.valueOf(((Pos) arrayList.get(0)).angleTo((Pos) arrayList.get(1))) : null;
                if (dValueOf == null && arrayList3.size() > 1) {
                    dValueOf = Double.valueOf(((Pos) arrayList3.get(0)).angleTo((Pos) arrayList3.get(1)));
                }
                d2 = c2SuiDaoSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList.get(0)).angleTo((Pos) arrayList3.get(0)));
                d2 = c2SuiDaoSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
