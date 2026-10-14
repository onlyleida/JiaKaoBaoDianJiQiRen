package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhiXingSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class l implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<MotoZhiXingSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.l> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.l lVar, Gps gps) {
        if (i < 4) {
            lVar.f(i + 1, gps);
        } else if (i == 4) {
            lVar.g(gps);
        } else if (i == 5) {
            lVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.l lVar, MotoZhiXingSrcData motoZhiXingSrcData) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhiXingSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhiXingSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhiXingSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhiXingSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhiXingSrcData.start1, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhiXingSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList, mapView, motoZhiXingSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList, mapView, motoZhiXingSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList, mapView, motoZhiXingSrcData.lineWidth, -10032010, null, true);
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
                arrayList2 = arrayList3;
                it = it2;
                d4 = d9;
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
