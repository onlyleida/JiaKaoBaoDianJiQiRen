package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDiaoTouSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class e implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<MotoDiaoTouSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.e> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"1号点", "2号点", "3号点", "4号点", "掉头区域1号点", "掉头区域2号点", "掉头区域3号点", "掉头区域4号点", "评判区域1号点", "评判区域2号点", "评判区域3号点", "评判区域4号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.e eVar, Gps gps) {
        if (i < 12) {
            eVar.f(i + 1, gps, b()[i]);
        } else if (i == 12) {
            eVar.g(gps);
        } else if (i == 13) {
            eVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.e eVar, MotoDiaoTouSrcData motoDiaoTouSrcData) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps7, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps8, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps9, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps10, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps11, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.gps12, aVar);
        Pos posJ13 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.start1, aVar);
        Pos posJ14 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDiaoTouSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ6, posJ7, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ7, posJ8, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ8, posJ5, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ9, arrayList, "评判1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ10, posJ9, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ10, arrayList, "评判2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ10, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ11, arrayList, "评判3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ12, posJ11, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ12, arrayList, "评判4", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ11, posJ12, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ9, posJ10, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ11, posJ12, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -1, "", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ13, posJ14, arrayList, mapView, motoDiaoTouSrcData.lineWidth, -10032010, null, true);
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList2);
        if (arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = -1.7976931348623157E308d;
            double d7 = Double.MAX_VALUE;
            while (it.hasNext()) {
                Pos pos = (Pos) it.next();
                ArrayList arrayList3 = arrayList2;
                Iterator it2 = it;
                double d8 = pos.x;
                d4 += d8;
                double d9 = pos.y;
                d5 += d9;
                if (d7 > d8) {
                    d7 = d8;
                }
                if (d2 < d8) {
                    d2 = d8;
                }
                if (d3 > d9) {
                    d3 = d9;
                }
                if (d6 < d9) {
                    d6 = d9;
                }
                arrayList2 = arrayList3;
                it = it2;
            }
            ArrayList arrayList4 = arrayList2;
            double size = d4 / ((double) arrayList4.size());
            double size2 = d5 / ((double) arrayList4.size());
            mapView.u.j();
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d7, d6 - d3, mapView));
            mapView.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
