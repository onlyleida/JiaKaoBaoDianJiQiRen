package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2GaoSuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.s;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2GaoSuSrcData, s> {
    private void d(Pos pos, List<cn.mucang.android.jiakaoyi.hpmap.view.p.m> list, String str, int i, MapView mapView) {
        if (pos != null) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.m.a aVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.m.a(cn.mucang.android.jiakaoyi.hpmap.b.a.b, i);
            aVar.a(str);
            list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.m(mapView, pos, aVar));
        }
    }

    public static void e(Pos pos, List<cn.mucang.android.jiakaoyi.hpmap.view.p.m> list, String str, int i, MapView mapView, Pos pos2) {
        if (pos != null) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.m.a aVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.m.a(cn.mucang.android.jiakaoyi.hpmap.b.a.b, i);
            aVar.a(str);
            aVar.b(pos2);
            list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.m(mapView, pos, aVar));
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集预报点1", "采集预报点2", "开始采集左边实线1号点", "结束采集左边实线2号点", "开始采集右边实线3号点", "结束采集右边实线4号点", "开始采集中间实线5号点", "结束采集中间实线6号点", "采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集5号点", "采集6号点", "采集7号点", "采集8号点", "采集9号点", "采集10号点", "采集0米点1", "采集0米点2", "采集50米点1", "采集50米点2", "采集100米点1", "采集100米点2", "采集150米点1", "采集150米点2", "采集200米点1", "采集200米点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, s sVar, Gps gps) {
        if (i == 0) {
            sVar.v(gps);
            return;
        }
        if (i == 1) {
            sVar.w(gps);
            return;
        }
        if (i == 2) {
            sVar.y();
            return;
        }
        if (i == 3) {
            sVar.j();
            return;
        }
        if (i == 4) {
            sVar.z();
            return;
        }
        if (i == 5) {
            sVar.k();
            return;
        }
        if (i == 6) {
            sVar.x();
            return;
        }
        if (i == 7) {
            sVar.i();
        } else if (i <= 7 || i >= 18) {
            sVar.s(i, gps, b()[i]);
        } else {
            sVar.u(i - 7, gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, s sVar, B2GaoSuSrcData b2GaoSuSrcData) {
        cn.mucang.android.jiakaoyi.signal.i.a aVar2;
        int i;
        Double dValueOf;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.start1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.start2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps1, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps2, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps3, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps4, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps5, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps6, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps7, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps8, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps9, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.gps10, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        e(posJ3, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        e(posJ4, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        e(posJ5, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ5, f2));
        e(posJ6, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(posJ4, posJ6, posJ7, f2));
        e(posJ7, arrayList, "5", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ7, f2));
        e(posJ8, arrayList, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ7, posJ8, f2));
        e(posJ9, arrayList, "7", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(posJ8, posJ9, posJ12, f2));
        e(posJ10, arrayList, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ9, posJ10, f2));
        e(posJ11, arrayList, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ12, posJ11, f2));
        e(posJ12, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ11, posJ12, f2));
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -10032010, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ3, posJ4), true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ5, posJ6), true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ6, posJ7, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ6, posJ7), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ7, posJ8, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ7, posJ8), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ8, posJ9, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ8, posJ9), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ9, posJ10, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ9, posJ10), true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ11, posJ12, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ11, posJ12), true);
        e(posJ, arrayList, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        e(posJ2, arrayList, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        Gps gps = b2GaoSuSrcData.line0Gps1;
        if (gps == null || b2GaoSuSrcData.line0Gps2 == null) {
            aVar2 = aVar;
        } else {
            aVar2 = aVar;
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps, aVar2), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.line0Gps2, aVar2), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
        }
        Gps gps2 = b2GaoSuSrcData.line50Gps1;
        if (gps2 != null && b2GaoSuSrcData.line50Gps2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps2, aVar2), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.line50Gps2, aVar2), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
        }
        Gps gps3 = b2GaoSuSrcData.line100Gps1;
        if (gps3 != null && b2GaoSuSrcData.line100Gps2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps3, aVar2), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.line100Gps2, aVar2), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
        }
        Gps gps4 = b2GaoSuSrcData.line150Gps1;
        if (gps4 != null && b2GaoSuSrcData.line150Gps2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps4, aVar2), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.line150Gps2, aVar2), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
        }
        Gps gps5 = b2GaoSuSrcData.line200Gps1;
        if (gps5 != null && b2GaoSuSrcData.line200Gps2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps5, aVar2), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2GaoSuSrcData.line200Gps2, aVar2), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
        }
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        List<Gps> list = b2GaoSuSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar2.a(it.next());
                arrayList3.add(posA);
                d(posA, arrayList, String.valueOf(i), -1282049, mapView);
                i++;
            }
        } else {
            i = 1;
        }
        List<Gps> list2 = b2GaoSuSrcData.middlePoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar2.a(it2.next());
                arrayList4.add(posA2);
                d(posA2, arrayList, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        List<Gps> list3 = b2GaoSuSrcData.rightPoints;
        if (list3 != null) {
            Iterator<Gps> it3 = list3.iterator();
            while (it3.hasNext()) {
                Pos posA3 = aVar2.a(it3.next());
                arrayList5.add(posA3);
                d(posA3, arrayList, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -10032010, null, true);
        if (arrayList3.size() > 0) {
            int i2 = 0;
            while (i2 < arrayList3.size() - 1) {
                int i3 = i2 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList3.get(i2), (Pos) arrayList3.get(i3), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
                i2 = i3;
            }
        }
        if (arrayList4.size() > 0) {
            Pos pos = (Pos) arrayList4.get(0);
            for (int i4 = 1; i4 < arrayList4.size() - 1; i4++) {
                Pos pos2 = (Pos) arrayList4.get(i4);
                if (pos.distanceTo(pos2) >= 50.0d || i4 == arrayList4.size() - 1) {
                    cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, pos2, arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, true);
                    pos = pos2;
                }
            }
        }
        if (arrayList5.size() > 0) {
            int i5 = 0;
            while (i5 < arrayList5.size() - 1) {
                int i6 = i5 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList5.get(i5), (Pos) arrayList5.get(i6), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -1, null, false);
                i5 = i6;
            }
        }
        if (arrayList3.size() > 0 && arrayList5.size() > 0) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList3.get(0), (Pos) arrayList5.get(0), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -10032010, "入口", true);
            if (sVar.l()) {
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList5.get(arrayList5.size() - 1), (Pos) arrayList3.get(arrayList3.size() - 1), arrayList2, mapView, b2GaoSuSrcData.lineWidth, -46528, "出口", true);
            }
        }
        if (arrayList.size() > 0) {
            Iterator<cn.mucang.android.jiakaoyi.hpmap.view.p.m> it4 = arrayList.iterator();
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            while (it4.hasNext()) {
                Pos pos3 = it4.next().i;
                double d7 = pos3.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos3.y;
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
            if (arrayList2.size() > 0) {
                mapView.u.h(arrayList2);
            }
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            if (arrayList3.size() <= 0 || arrayList5.size() <= 0) {
                Double dValueOf2 = arrayList3.size() > 1 ? Double.valueOf(((Pos) arrayList3.get(0)).angleTo((Pos) arrayList3.get(1))) : null;
                dValueOf = (dValueOf2 != null || arrayList5.size() <= 1) ? dValueOf2 : Double.valueOf(((Pos) arrayList5.get(0)).angleTo((Pos) arrayList5.get(1)));
                d2 = b2GaoSuSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList3.get(0)).angleTo((Pos) arrayList5.get(0)));
                d2 = b2GaoSuSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
