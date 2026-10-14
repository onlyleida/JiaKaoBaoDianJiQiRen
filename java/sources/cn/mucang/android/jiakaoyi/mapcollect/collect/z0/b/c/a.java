package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoBanMaXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class a implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<MotoBanMaXianSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.a> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"1号点", "2号点", "3号点", "4号点", "评判区域1号点", "评判区域2号点", "评判区域3号点", "评判区域4号点", "斑马线1号点", "斑马线2号点", "斑马线3号点", "斑马线4号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.a aVar, Gps gps) {
        if (i < 12) {
            aVar.f(i + 1, gps, b()[i]);
        } else if (i == 12) {
            aVar.g(gps);
        } else if (i == 13) {
            aVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.a aVar2, MotoBanMaXianSrcData motoBanMaXianSrcData) {
        MapView mapView2;
        ArrayList arrayList;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps7, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps8, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps9, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps10, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps11, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.gps12, aVar);
        Pos posJ13 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.start1, aVar);
        Pos posJ14 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoBanMaXianSrcData.start2, aVar);
        ArrayList arrayList2 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList2, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList2, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList2, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList2, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ5, arrayList2, "评判1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ6, arrayList2, "评判2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ5, posJ6, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ7, arrayList2, "评判3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ8, posJ7, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ8, arrayList2, "评判4", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ7, posJ8, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList2, mapView, motoBanMaXianSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ7, posJ8, arrayList2, mapView, motoBanMaXianSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ9, arrayList2, "斑马线1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ10, posJ9, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ10, arrayList2, "斑马线2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ9, posJ11, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ11, arrayList2, "斑马线3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ12, posJ11, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ12, arrayList2, "斑马线4", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ11, posJ12, f2));
        if (posJ9 == null || posJ10 == null || posJ11 == null || posJ12 == null) {
            mapView2 = mapView;
            arrayList = arrayList2;
        } else {
            Pos posMeanWith = new Pos(posJ9).meanWith(posJ10);
            Pos posMeanWith2 = new Pos(posJ11).meanWith(posJ12);
            cn.mucang.android.jiakaoyi.hpmap.view.p.e.a aVar3 = new cn.mucang.android.jiakaoyi.hpmap.view.p.e.a((float) Math.max(posJ9.distanceTo(posJ10), posJ11.distanceTo(posJ12)), -1);
            aVar3.c(30.0f);
            aVar3.d(30.0f);
            mapView2 = mapView;
            arrayList = arrayList2;
            arrayList.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.e(mapView2, posMeanWith, posMeanWith2, aVar3));
        }
        ArrayList arrayList3 = arrayList;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList3, mapView, motoBanMaXianSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList3, mapView, motoBanMaXianSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ13, posJ14, arrayList3, mapView, motoBanMaXianSrcData.lineWidth, -10032010, null, true);
        ArrayList arrayList4 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList4);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList4);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList4);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList4);
        if (arrayList4.size() > 0) {
            Iterator it = arrayList4.iterator();
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = -1.7976931348623157E308d;
            double d7 = Double.MAX_VALUE;
            while (it.hasNext()) {
                Pos pos = (Pos) it.next();
                ArrayList arrayList5 = arrayList4;
                Iterator it2 = it;
                double d8 = pos.x;
                double d9 = d4 + d8;
                double d10 = pos.y;
                d5 += d10;
                if (d7 > d8) {
                    d7 = d8;
                }
                if (d2 < d8) {
                    d2 = d8;
                }
                if (d3 > d10) {
                    d3 = d10;
                }
                if (d6 < d10) {
                    d6 = d10;
                }
                arrayList4 = arrayList5;
                it = it2;
                d4 = d9;
            }
            ArrayList arrayList6 = arrayList4;
            double size = d4 / ((double) arrayList6.size());
            double size2 = d5 / ((double) arrayList6.size());
            mapView2.u.j();
            mapView2.u.h(arrayList);
            mapView2.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d7, d6 - d3, mapView2));
            mapView2.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
