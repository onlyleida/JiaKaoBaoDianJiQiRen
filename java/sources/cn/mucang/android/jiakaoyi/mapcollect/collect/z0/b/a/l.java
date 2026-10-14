package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.a0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class l implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2SuiDaoSrcData, a0> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集预报点1", "采集预报点2", "采集开始线1号点", "采集开始线2号点", "采集结束线3号点", "采集结束线4号点", "开始采集左边实线5号点", "结束采集左边实线6号点", "开始采集右边实线7号点", "结束采集右边实线8号点", "开始采集中间实线9号点", "结束采集中间实线10号点"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, a0 a0Var, Gps gps) {
        if (i == 0) {
            a0Var.t(gps);
            return;
        }
        if (i == 1) {
            a0Var.u(gps);
            return;
        }
        if (i == 2) {
            a0Var.s(2, gps);
            return;
        }
        if (i == 3) {
            a0Var.s(3, gps);
            return;
        }
        if (i == 4) {
            a0Var.s(4, gps);
            return;
        }
        if (i == 5) {
            a0Var.s(5, gps);
            return;
        }
        if (i == 6) {
            a0Var.w();
            return;
        }
        if (i == 7) {
            a0Var.j();
            return;
        }
        if (i == 8) {
            a0Var.x();
            return;
        }
        if (i == 9) {
            a0Var.k();
        } else if (i == 10) {
            a0Var.v();
        } else if (i == 11) {
            a0Var.i();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, a0 a0Var, B2SuiDaoSrcData b2SuiDaoSrcData) {
        ArrayList arrayList;
        Pos pos;
        int i;
        Double dValueOf;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SuiDaoSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SuiDaoSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SuiDaoSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SuiDaoSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SuiDaoSrcData.start1, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SuiDaoSrcData.start2, aVar);
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        ArrayList arrayList5 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        ArrayList arrayList6 = arrayList5;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList5, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList6, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList6, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(posJ, posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList6, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ5, arrayList6, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ6, arrayList6, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ5, posJ6, f2));
        List<Gps> list = b2SuiDaoSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar.a(it.next());
                arrayList2.add(posA);
                Pos pos2 = posJ6;
                ArrayList arrayList7 = arrayList6;
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA, arrayList7, String.valueOf(i), -1282049, mapView);
                i++;
                posJ6 = pos2;
                arrayList6 = arrayList7;
            }
            Pos pos3 = posJ6;
            arrayList = arrayList6;
            pos = pos3;
        } else {
            arrayList = arrayList6;
            pos = posJ6;
            i = 1;
        }
        List<Gps> list2 = b2SuiDaoSrcData.centerPoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar.a(it2.next());
                arrayList3.add(posA2);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA2, arrayList, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        List<Gps> list3 = b2SuiDaoSrcData.rightPoints;
        if (list3 != null) {
            for (Iterator<Gps> it3 = list3.iterator(); it3.hasNext(); it3 = it3) {
                Pos posA3 = aVar.a(it3.next());
                arrayList4.add(posA3);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA3, arrayList, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        ArrayList arrayList8 = arrayList3;
        ArrayList arrayList9 = arrayList2;
        Pos pos4 = pos;
        ArrayList arrayList10 = arrayList;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList, mapView, b2SuiDaoSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ4, posJ3, arrayList10, mapView, b2SuiDaoSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, pos4, arrayList10, mapView, b2SuiDaoSrcData.lineWidth, -10032010, null, true);
        if (arrayList9.size() > 0) {
            int i2 = 0;
            while (i2 < arrayList9.size() - 1) {
                ArrayList arrayList11 = arrayList9;
                int i3 = i2 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList11.get(i2), (Pos) arrayList11.get(i3), arrayList10, mapView, b2SuiDaoSrcData.lineWidth, -1, null, false);
                i2 = i3;
                arrayList9 = arrayList11;
            }
        }
        ArrayList arrayList12 = arrayList9;
        if (arrayList8.size() > 0) {
            int i4 = 0;
            while (i4 < arrayList8.size() - 1) {
                ArrayList arrayList13 = arrayList8;
                Pos pos5 = (Pos) arrayList13.get(i4);
                int i5 = i4 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos5, (Pos) arrayList13.get(i5), arrayList10, mapView, b2SuiDaoSrcData.lineWidth, -1, null, false);
                i4 = i5;
                arrayList8 = arrayList13;
            }
        }
        ArrayList arrayList14 = arrayList8;
        if (arrayList4.size() > 0) {
            int i6 = 0;
            while (i6 < arrayList4.size() - 1) {
                Pos pos6 = (Pos) arrayList4.get(i6);
                int i7 = i6 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos6, (Pos) arrayList4.get(i7), arrayList10, mapView, b2SuiDaoSrcData.lineWidth, -1, null, false);
                i6 = i7;
            }
        }
        ArrayList<Pos> arrayList15 = new ArrayList();
        if (posJ5 != null && pos4 != null) {
            arrayList15.add(posJ5);
            arrayList15.add(pos4);
        }
        if (posJ != null && posJ2 != null) {
            arrayList15.add(posJ);
            arrayList15.add(posJ2);
        }
        if (posJ3 != null && posJ4 != null) {
            arrayList15.add(posJ3);
            arrayList15.add(posJ4);
        }
        arrayList15.addAll(arrayList12);
        arrayList15.addAll(arrayList14);
        arrayList15.addAll(arrayList4);
        if (arrayList15.size() > 0) {
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            for (Pos pos7 : arrayList15) {
                double d7 = pos7.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos7.y;
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
            mapView.u.h(arrayList10);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            if (arrayList12.size() <= 0 || arrayList4.size() <= 0) {
                Double dValueOf2 = arrayList12.size() > 1 ? Double.valueOf(((Pos) arrayList12.get(0)).angleTo((Pos) arrayList12.get(1))) : null;
                dValueOf = (dValueOf2 != null || arrayList4.size() <= 1) ? dValueOf2 : Double.valueOf(((Pos) arrayList4.get(0)).angleTo((Pos) arrayList4.get(1)));
                d2 = b2SuiDaoSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList12.get(0)).angleTo((Pos) arrayList4.get(0)));
                d2 = b2SuiDaoSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
