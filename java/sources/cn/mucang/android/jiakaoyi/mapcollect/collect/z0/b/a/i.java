package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.x;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class i implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2SQuXianSrcData, x> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"开始采集1号线", "结束采集1号线", "开始采集2号线", "结束采集2号线", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, x xVar, Gps gps) {
        if (i == 0) {
            xVar.u();
            return;
        }
        if (i == 1) {
            xVar.o();
            return;
        }
        if (i == 2) {
            xVar.v();
            return;
        }
        if (i == 3) {
            xVar.p();
        } else if (i == 4) {
            xVar.s(gps);
        } else if (i == 5) {
            xVar.t(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, x xVar, B2SQuXianSrcData b2SQuXianSrcData) {
        int i;
        Double dValueOf;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SQuXianSrcData.start1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2SQuXianSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList3, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList3, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        List<Gps> list = b2SQuXianSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar.a(it.next());
                arrayList.add(posA);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA, arrayList3, String.valueOf(i), -1282049, mapView);
                i++;
            }
        } else {
            i = 1;
        }
        List<Gps> list2 = b2SQuXianSrcData.rightPoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar.a(it2.next());
                arrayList2.add(posA2);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA2, arrayList3, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList3, mapView, b2SQuXianSrcData.lineWidth, -10032010, null, true);
        if (arrayList.size() > 0) {
            int i2 = 0;
            while (i2 < arrayList.size() - 1) {
                int i3 = i2 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList.get(i2), (Pos) arrayList.get(i3), arrayList3, mapView, b2SQuXianSrcData.lineWidth, -1, null, false);
                i2 = i3;
            }
        }
        if (arrayList2.size() > 0) {
            int i4 = 0;
            while (i4 < arrayList2.size() - 1) {
                Pos pos = (Pos) arrayList2.get(i4);
                int i5 = i4 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, (Pos) arrayList2.get(i5), arrayList3, mapView, b2SQuXianSrcData.lineWidth, -1, null, false);
                i4 = i5;
            }
        }
        if (arrayList.size() > 0 && arrayList2.size() > 0) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList.get(0), (Pos) arrayList2.get(0), arrayList3, mapView, b2SQuXianSrcData.lineWidth, -10032010, "入口", true);
            if (xVar.q()) {
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList2.get(arrayList2.size() - 1), (Pos) arrayList.get(arrayList.size() - 1), arrayList3, mapView, b2SQuXianSrcData.lineWidth, -46528, "出口", true);
            }
        }
        ArrayList<Pos> arrayList4 = new ArrayList();
        if (posJ != null && posJ2 != null) {
            arrayList4.add(posJ);
            arrayList4.add(posJ2);
        }
        arrayList4.addAll(arrayList);
        arrayList4.addAll(arrayList2);
        if (arrayList4.size() > 0) {
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            for (Pos pos2 : arrayList4) {
                double d7 = pos2.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos2.y;
                if (d5 > d8) {
                    d5 = d8;
                }
                if (d6 < d8) {
                    d6 = d8;
                }
            }
            double d9 = (d4 + d3) * 0.5d;
            double d10 = 0.5d * (d5 + d6);
            mapView.u.j();
            mapView.u.h(arrayList3);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            if (arrayList.size() <= 0 || arrayList2.size() <= 0) {
                dValueOf = arrayList.size() > 1 ? Double.valueOf(((Pos) arrayList.get(0)).angleTo((Pos) arrayList.get(1))) : null;
                if (dValueOf == null && arrayList2.size() > 1) {
                    dValueOf = Double.valueOf(((Pos) arrayList2.get(0)).angleTo((Pos) arrayList2.get(1)));
                }
                d2 = b2SQuXianSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList.get(0)).angleTo((Pos) arrayList2.get(0)));
                d2 = b2SQuXianSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
