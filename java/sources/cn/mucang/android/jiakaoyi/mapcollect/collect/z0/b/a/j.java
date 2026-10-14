package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShanLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.y;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class j implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2ShanLuSrcData, y> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集预报点1", "采集预报点2", "开始采集左边实线1号点", "结束采集左边实线2号点", "开始采集右边实线3号点", "结束采集右边实线4号点", "开始采集中间实线5号点", "结束采集中间实线6号点", "采集弯道1第一个预报点", "采集弯道1第二个预报点", "采集弯道1第一个检测点", "采集弯道1第二个检测点", "采集弯道2第一个预报点", "采集弯道2第二个预报点", "采集弯道2第一个检测点", "采集弯道2第二个检测点"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, y yVar, Gps gps) {
        if (i == 0) {
            yVar.u(gps);
            return;
        }
        if (i == 1) {
            yVar.v(gps);
            return;
        }
        if (i == 2) {
            yVar.x();
            return;
        }
        if (i == 3) {
            yVar.j();
            return;
        }
        if (i == 4) {
            yVar.y();
            return;
        }
        if (i == 5) {
            yVar.k();
            return;
        }
        if (i == 6) {
            yVar.w();
        } else if (i == 7) {
            yVar.i();
        } else {
            yVar.t(i, gps, b()[i]);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, y yVar, B2ShanLuSrcData b2ShanLuSrcData) {
        int i;
        ArrayList arrayList;
        int i2;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ShanLuSrcData.start1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ShanLuSrcData.start2, aVar);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList5, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList5, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        List<Gps> list = b2ShanLuSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar.a(it.next());
                arrayList2.add(posA);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA, arrayList5, String.valueOf(i), -1282049, mapView);
                i++;
            }
        } else {
            i = 1;
        }
        List<Gps> list2 = b2ShanLuSrcData.middlePoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar.a(it2.next());
                arrayList3.add(posA2);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA2, arrayList5, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        List<Gps> list3 = b2ShanLuSrcData.rightPoints;
        if (list3 != null) {
            Iterator<Gps> it3 = list3.iterator();
            while (it3.hasNext()) {
                Pos posA3 = aVar.a(it3.next());
                arrayList4.add(posA3);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA3, arrayList5, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        ArrayList arrayList6 = arrayList4;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList5, mapView, b2ShanLuSrcData.lineWidth, -10032010, null, true);
        if (arrayList2.size() > 0) {
            int i3 = 0;
            while (i3 < arrayList2.size() - 1) {
                int i4 = i3 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList2.get(i3), (Pos) arrayList2.get(i4), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
                i3 = i4;
            }
        }
        if (arrayList3.size() > 0) {
            int i5 = 0;
            while (i5 < arrayList3.size() - 1) {
                Pos pos = (Pos) arrayList3.get(i5);
                int i6 = i5 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, (Pos) arrayList3.get(i6), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
                i5 = i6;
            }
        }
        if (arrayList6.size() > 0) {
            int i7 = 0;
            while (i7 < arrayList6.size() - 1) {
                ArrayList arrayList7 = arrayList6;
                Pos pos2 = (Pos) arrayList7.get(i7);
                int i8 = i7 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos2, (Pos) arrayList7.get(i8), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
                i7 = i8;
                arrayList6 = arrayList7;
            }
        }
        ArrayList arrayList8 = arrayList6;
        if (arrayList2.size() <= 0 || arrayList8.size() <= 0) {
            arrayList = arrayList8;
        } else {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList2.get(0), (Pos) arrayList8.get(0), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -10032010, "入口", true);
            if (yVar.l()) {
                arrayList = arrayList8;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList8.get(arrayList8.size() - 1), (Pos) arrayList2.get(arrayList2.size() - 1), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -46528, "出口", true);
            } else {
                arrayList = arrayList8;
            }
        }
        Gps gps = b2ShanLuSrcData.firstHonkReport1;
        if (gps != null && b2ShanLuSrcData.firstHonkReport2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps, aVar), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ShanLuSrcData.firstHonkReport2, aVar), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
        }
        Gps gps2 = b2ShanLuSrcData.firstHonk1;
        if (gps2 != null && b2ShanLuSrcData.firstHonk2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps2, aVar), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ShanLuSrcData.firstHonk2, aVar), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
        }
        Gps gps3 = b2ShanLuSrcData.secondHonkReport1;
        if (gps3 != null && b2ShanLuSrcData.secondHonkReport2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps3, aVar), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ShanLuSrcData.secondHonkReport2, aVar), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
        }
        Gps gps4 = b2ShanLuSrcData.secondHonk1;
        if (gps4 != null && b2ShanLuSrcData.secondHonk2 != null) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps4, aVar), cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ShanLuSrcData.secondHonk2, aVar), arrayList5, mapView, b2ShanLuSrcData.lineWidth, -1, null, false);
        }
        ArrayList<Pos> arrayList9 = new ArrayList();
        if (posJ != null && posJ2 != null) {
            arrayList9.add(posJ);
            arrayList9.add(posJ2);
        }
        arrayList9.addAll(arrayList2);
        arrayList9.addAll(arrayList3);
        arrayList9.addAll(arrayList);
        if (arrayList9.size() > 0) {
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            for (Pos pos3 : arrayList9) {
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
            mapView.u.h(arrayList5);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            Double dValueOf = null;
            if (arrayList2.size() <= 0 || arrayList.size() <= 0) {
                if (arrayList2.size() > 1) {
                    i2 = 0;
                    dValueOf = Double.valueOf(((Pos) arrayList2.get(0)).angleTo((Pos) arrayList2.get(1)));
                } else {
                    i2 = 0;
                }
                if (dValueOf == null && arrayList.size() > 1) {
                    dValueOf = Double.valueOf(((Pos) arrayList.get(i2)).angleTo((Pos) arrayList.get(1)));
                }
                d2 = b2ShanLuSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList2.get(0)).angleTo((Pos) arrayList.get(0)));
                d2 = b2ShanLuSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
