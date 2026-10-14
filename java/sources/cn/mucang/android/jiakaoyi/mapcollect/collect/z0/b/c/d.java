package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class d implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<MotoDanBianSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.d> {
    private boolean f(MapView mapView, Pos pos, Pos pos2, float f2) {
        if (pos == null || pos2 == null) {
            return false;
        }
        mapView.setCurrentRotateDegrees((float) (((double) f2) - Math.toDegrees(pos.angleTo(pos2))));
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集5号点", "采集6号点", "采集7号点", "采集8号点", "采集9号点", "采集10号点", "采集11号点", "采集12号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.d dVar, Gps gps) {
        if (i < 12) {
            dVar.f(i + 1, gps);
        } else if (i == 12) {
            dVar.g(gps);
        } else if (i == 13) {
            dVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.d dVar, MotoDanBianSrcData motoDanBianSrcData) {
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps7, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps8, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps9, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps10, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps11, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.gps12, aVar);
        Pos posJ13 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.start1, aVar);
        Pos posJ14 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoDanBianSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ5, arrayList, "5", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ6, arrayList, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ5, posJ6, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ7, arrayList, "7", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ8, posJ7, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ8, arrayList, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ7, posJ8, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ9, arrayList, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ10, posJ9, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ10, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ9, posJ10, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ11, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ12, posJ11, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ12, arrayList, Constants.VIA_REPORT_TYPE_SET_AVATAR, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ11, posJ12, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList, mapView, motoDanBianSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ11, posJ12, arrayList, mapView, motoDanBianSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ13, posJ14, arrayList, mapView, motoDanBianSrcData.lineWidth, -10032010, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ12, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ, posJ12), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ2, posJ11, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ2, posJ11), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ3, posJ4), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ4, posJ5, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ4, posJ5), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ5, posJ6, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ5, posJ6), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ6, posJ3, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ5, posJ6), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ7, posJ8, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ7, posJ8), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ8, posJ9, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ8, posJ9), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ9, posJ10, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ9, posJ10), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ10, posJ7, arrayList, mapView, motoDanBianSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ10, posJ7), false);
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ5, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ6, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ7, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ8, arrayList2);
        Pos pos = posJ9;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ10, arrayList2);
        Pos pos2 = posJ11;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos2, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ12, arrayList2);
        if (arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = -1.7976931348623157E308d;
            double d7 = Double.MAX_VALUE;
            while (it.hasNext()) {
                Pos pos3 = (Pos) it.next();
                Pos pos4 = pos;
                Pos pos5 = pos2;
                double d8 = pos3.x;
                d4 += d8;
                Iterator it2 = it;
                double d9 = pos3.y;
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
                pos2 = pos5;
                it = it2;
                pos = pos4;
            }
            Pos pos6 = pos;
            Pos pos7 = pos2;
            double size = d4 / ((double) arrayList2.size());
            double size2 = d5 / ((double) arrayList2.size());
            mapView.u.j();
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d7, d6 - d3, mapView));
            if (!f(mapView, posJ, posJ2, 90.0f) && !f(mapView, posJ2, pos7, BitmapDescriptorFactory.HUE_RED) && !f(mapView, pos7, posJ12, -90.0f) && !f(mapView, posJ12, posJ, BitmapDescriptorFactory.HUE_RED) && !f(mapView, posJ3, posJ4, -90.0f) && !f(mapView, posJ4, posJ5, BitmapDescriptorFactory.HUE_RED) && !f(mapView, posJ5, posJ6, 90.0f) && !f(mapView, posJ6, posJ3, BitmapDescriptorFactory.HUE_RED) && !f(mapView, posJ7, posJ8, 90.0f) && !f(mapView, posJ8, pos6, BitmapDescriptorFactory.HUE_RED) && !f(mapView, pos6, posJ10, -90.0f) && !f(mapView, posJ10, posJ7, BitmapDescriptorFactory.HUE_RED)) {
                t.d("TAG", "一个设置成功的都没有，悲哀");
            }
            mapView.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
