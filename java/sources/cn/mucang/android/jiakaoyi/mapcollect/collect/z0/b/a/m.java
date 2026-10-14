package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2XianKuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.b0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class m implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2XianKuanSrcData, b0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f4989a;

    private cn.mucang.android.jiakaoyi.hpmap.view.p.g.a d() {
        return new cn.mucang.android.jiakaoyi.hpmap.view.p.g.a(this.f4989a, -65536, -1);
    }

    private boolean g(MapView mapView, Pos pos, Pos pos2, float f2) {
        if (pos == null || pos2 == null) {
            return false;
        }
        mapView.setCurrentRotateDegrees((float) (((double) f2) - Math.toDegrees(pos.angleTo(pos2))));
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "标杆3号点", "标杆4号点", "标杆5号点", "标杆6号点", "标杆7号点", "标杆8号点", "采集9号点", "采集10号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, b0 b0Var, Gps gps) {
        if (i < 10) {
            b0Var.f(i + 1, gps);
        } else if (i == 10) {
            b0Var.g(gps);
        } else if (i == 11) {
            b0Var.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, b0 b0Var, B2XianKuanSrcData b2XianKuanSrcData) {
        this.f4989a = b2XianKuanSrcData.poleRadius;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gpsB3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gpsB4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gpsB5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gpsB6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gpsB7, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gpsB8, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gps9, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.gps10, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.start1, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2XianKuanSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ3, arrayList, "3", mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2), d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ4, arrayList, Constants.VIA_TO_TYPE_QZONE, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2), d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ5, arrayList, "5", mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ6, posJ5, f2), d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ6, arrayList, Constants.VIA_SHARE_TYPE_INFO, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ5, posJ6, f2), d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ7, arrayList, "7", mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ8, posJ7, f2), d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ8, arrayList, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ7, posJ8, f2), d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ9, arrayList, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ10, posJ9, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ10, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ9, posJ10, f2));
        Pos pos = posJ5;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList, mapView, b2XianKuanSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ9, posJ10, arrayList, mapView, b2XianKuanSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ11, posJ12, arrayList, mapView, b2XianKuanSrcData.lineWidth, -10032010, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ10, arrayList, mapView, b2XianKuanSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ, posJ10), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ2, posJ9, arrayList, mapView, b2XianKuanSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ2, posJ9), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ4, arrayList, mapView, b2XianKuanSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ3, posJ4), true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, posJ6, arrayList, mapView, b2XianKuanSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos, posJ6), true);
        Pos pos2 = posJ7;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos2, posJ8, arrayList, mapView, b2XianKuanSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos2, posJ8), true);
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ6, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos2, arrayList2);
        Pos pos3 = posJ8;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos3, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ9, arrayList2);
        Pos pos4 = posJ10;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos4, arrayList2);
        if (arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = -1.7976931348623157E308d;
            double d7 = Double.MAX_VALUE;
            while (it.hasNext()) {
                Pos pos5 = pos3;
                Pos pos6 = (Pos) it.next();
                Pos pos7 = pos4;
                Iterator it2 = it;
                double d8 = pos6.x;
                d4 += d8;
                Pos pos8 = pos;
                Pos pos9 = pos2;
                double d9 = pos6.y;
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
                pos3 = pos5;
                it = it2;
                pos4 = pos7;
                pos = pos8;
                pos2 = pos9;
            }
            Pos pos10 = pos3;
            Pos pos11 = pos4;
            Pos pos12 = pos;
            Pos pos13 = pos2;
            double size = d4 / ((double) arrayList2.size());
            double size2 = d5 / ((double) arrayList2.size());
            mapView.u.j();
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d7, d6 - d3, mapView));
            if (!g(mapView, posJ, posJ2, 90.0f) && !g(mapView, posJ2, posJ9, BitmapDescriptorFactory.HUE_RED) && !g(mapView, posJ9, pos11, -90.0f) && !g(mapView, pos11, posJ, BitmapDescriptorFactory.HUE_RED) && !g(mapView, posJ3, posJ4, -90.0f) && !g(mapView, pos12, posJ6, -90.0f) && !g(mapView, pos13, pos10, 90.0f)) {
                t.d("TAG", "一个设置成功的都没有，悲哀");
            }
            mapView.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
