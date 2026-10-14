package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes3.dex */
public class f implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<C2QiDianSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.l> {
    private boolean f(MapView mapView, Pos pos, Pos pos2, float f2) {
        if (pos == null || pos2 == null) {
            return false;
        }
        mapView.setCurrentRotateDegrees((float) (((double) f2) - Math.toDegrees(pos.angleTo(pos2))));
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.l lVar, Gps gps) {
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
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.l lVar, C2QiDianSrcData c2QiDianSrcData) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2QiDianSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2QiDianSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2QiDianSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2QiDianSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2QiDianSrcData.start1, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(c2QiDianSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList2, mapView, c2QiDianSrcData.lineWidth, -1, null, false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ2, posJ3, arrayList2, mapView, c2QiDianSrcData.lineWidth, -1, null, false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList2, mapView, c2QiDianSrcData.lineWidth, -1, null, false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ4, posJ, arrayList2, mapView, c2QiDianSrcData.lineWidth, -1, null, false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList2, mapView, c2QiDianSrcData.lineWidth, -10032010, null, true);
        ArrayList<Pos> arrayList3 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList3);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList3);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList3);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList3);
        if (arrayList3.size() > 0) {
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = -1.7976931348623157E308d;
            double d7 = Double.MAX_VALUE;
            for (Pos pos : arrayList3) {
                Pos pos2 = posJ;
                double d8 = pos.x;
                d4 += d8;
                Pos pos3 = posJ2;
                Pos pos4 = posJ3;
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
                posJ = pos2;
                posJ2 = pos3;
                posJ3 = pos4;
            }
            Pos pos5 = posJ;
            Pos pos6 = posJ2;
            Pos pos7 = posJ3;
            double size = d4 / ((double) arrayList3.size());
            double size2 = d5 / ((double) arrayList3.size());
            mapView.u.j();
            if (arrayList2.size() > 0) {
                mapView.u.h(arrayList2);
            }
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d7, d6 - d3, mapView));
            if (!f(mapView, pos5, pos6, BitmapDescriptorFactory.HUE_RED) && !f(mapView, pos6, pos7, -90.0f)) {
                t.d("TAG", "一个设置成功的都没有，悲哀");
            }
            mapView.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
