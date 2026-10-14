package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ZhiJiaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.r;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class l implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<C2ZhiJiaoSrcData, r> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集5号点", "采集6号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, r rVar, Gps gps) {
        if (i < 6) {
            rVar.f(i + 1, gps);
        } else if (i == 6) {
            rVar.g(gps);
        } else if (i == 7) {
            rVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, r rVar, C2ZhiJiaoSrcData c2ZhiJiaoSrcData) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.gps5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.gps6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.start1, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2ZhiJiaoSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        String strValueOf = String.valueOf(1);
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, strValueOf, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, String.valueOf(2), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList, String.valueOf(3), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(posJ2, posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList, String.valueOf(4), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ5, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ5, arrayList, String.valueOf(5), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ6, arrayList, String.valueOf(6), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(posJ5, posJ6, posJ, -f2));
        if (arrayList.size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -10032010, "入口", true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ4, posJ5, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -46528, "出口", true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ7, posJ8, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -10032010, null, true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ2, posJ3, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ2, posJ3), false);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ3, posJ4), false);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ5, posJ6), false);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ6, posJ, arrayList2, mapView, c2ZhiJiaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ6, posJ), false);
            ArrayList<Pos> arrayList3 = new ArrayList();
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ5, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ6, arrayList3);
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = Double.MAX_VALUE;
            double d5 = 0.0d;
            double d6 = 0.0d;
            double d7 = -1.7976931348623157E308d;
            for (Pos pos : arrayList3) {
                Pos pos2 = posJ2;
                Pos pos3 = posJ3;
                double d8 = pos.x;
                double d9 = d5 + d8;
                double d10 = pos.y;
                d6 += d10;
                if (d3 > d8) {
                    d3 = d8;
                }
                if (d2 < d8) {
                    d2 = d8;
                }
                if (d4 > d10) {
                    d4 = d10;
                }
                if (d7 < d10) {
                    d7 = d10;
                }
                posJ2 = pos2;
                posJ3 = pos3;
                d5 = d9;
            }
            Pos pos4 = posJ2;
            Pos pos5 = posJ3;
            double size = d5 / ((double) arrayList.size());
            double size2 = d6 / ((double) arrayList.size());
            mapView.u.j();
            if (arrayList2.size() > 0) {
                mapView.u.h(arrayList2);
            }
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d3, d7 - d4, mapView) * 0.95f);
            if (posJ != null && pos4 != null) {
                if (pos5 == null || pos4.vectorTo(posJ).cross(pos4.vectorTo(pos5)) > 0.0d) {
                    mapView.setCurrentRotateDegrees(90.0f - ((float) Math.toDegrees(posJ.angleTo(pos4))));
                } else {
                    mapView.setCurrentRotateDegrees((-180.0f) - ((float) Math.toDegrees(posJ.angleTo(pos4))));
                }
            }
            mapView.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
