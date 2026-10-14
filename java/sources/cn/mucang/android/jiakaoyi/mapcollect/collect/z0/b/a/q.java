package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ZhuangKaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.f0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class q implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2ZhuangKaoSrcData, f0> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f4991a;

    private cn.mucang.android.jiakaoyi.hpmap.view.p.g.a d() {
        return new cn.mucang.android.jiakaoyi.hpmap.view.p.g.a(this.f4991a, -65536, -1);
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
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集5号点", "采集6号点", "采集7号点", "采集8号点", "采集9号点", "采集10号点", "标杆3号点", "标杆4号点", "标杆5号点", "标杆6号点", "标杆7号点", "标杆8号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, f0 f0Var, Gps gps) {
        if (i < 16) {
            f0Var.f(i + 1, gps);
        } else if (i == 16) {
            f0Var.g(gps);
        } else if (i == 17) {
            f0Var.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, f0 f0Var, B2ZhuangKaoSrcData b2ZhuangKaoSrcData) {
        Pos pos;
        Pos pos2;
        Pos pos3;
        Pos pos4;
        Pos pos5;
        Pos pos6;
        Pos pos7;
        Pos pos8;
        Pos pos9;
        Pos pos10;
        this.f4991a = b2ZhuangKaoSrcData.poleRadius;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps7, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps8, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps9, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gps10, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gpsB3, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gpsB4, aVar);
        Pos posJ13 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gpsB5, aVar);
        Pos posJ14 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gpsB6, aVar);
        Pos posJ15 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gpsB7, aVar);
        Pos posJ16 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.gpsB8, aVar);
        Pos posJ17 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.start1, aVar);
        Pos posJ18 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2ZhuangKaoSrcData.start2, aVar);
        if (posJ == null || posJ2 == null || posJ3 == null || posJ4 == null || posJ5 == null || posJ6 == null || posJ7 == null || posJ8 == null || posJ9 == null || posJ10 == null) {
            pos = posJ;
            pos2 = posJ2;
            pos3 = posJ5;
            pos4 = posJ6;
            pos5 = posJ9;
            pos6 = posJ10;
            pos7 = posJ3;
            pos8 = posJ4;
            pos9 = posJ7;
            pos10 = posJ8;
        } else {
            Pos posN = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posJ6, posJ2, posJ9);
            Pos posN2 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posJ3, posJ2, posJ9);
            Pos posN3 = cn.mucang.android.jiakaoyi.hpmap.d.a.n(posJ7, posJ2, posJ9);
            double dDistanceTo = (posJ3.distanceTo(posN2) + posJ6.distanceTo(posN)) * 0.5d * 0.5d;
            Pos posW = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ2, posJ10, posJ, dDistanceTo);
            Pos posW2 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posN2, posJ, posJ2, dDistanceTo);
            double d2 = -dDistanceTo;
            Pos posW3 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ4, posJ2, posN2, d2);
            Pos posW4 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ5, posN2, posJ4, dDistanceTo);
            Pos posW5 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ4, posJ6, posJ5, dDistanceTo);
            Pos posW6 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ3, posJ5, posJ6, dDistanceTo);
            Pos posW7 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ8, posJ9, posN3, d2);
            Pos posW8 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ5, posN3, posJ8, dDistanceTo);
            Pos posW9 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ10, posN3, posJ9, dDistanceTo);
            Pos posW10 = cn.mucang.android.jiakaoyi.hpmap.d.a.w(posJ, posJ9, posJ10, dDistanceTo);
            pos7 = posW3;
            pos3 = posW5;
            pos4 = posW6;
            pos10 = posW8;
            pos = posW;
            pos9 = posW7;
            pos5 = posW9;
            pos6 = posW10;
            pos8 = posW4;
            pos2 = posW2;
        }
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        Pos pos11 = pos6;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos2, pos, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos, pos2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos7, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(pos2, pos7, pos8, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos8, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos7, pos8, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos3, arrayList, "5", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos4, pos3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos4, arrayList, Constants.VIA_SHARE_TYPE_INFO, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos3, pos4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos9, arrayList, "7", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.h(pos10, pos9, pos5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos10, arrayList, Constants.VIA_SHARE_TYPE_PUBLISHVIDEO, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos9, pos10, f2));
        Pos posG = cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos11, pos5, f2);
        Pos pos12 = pos9;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos5, arrayList, Constants.VIA_SHARE_TYPE_MINI_PROGRAM, -1282049, mapView, posG);
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos11, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos5, pos11, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ11, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ12, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ13, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ14, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ15, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ16, arrayList, null, mapView, null, d());
        Pos pos13 = pos5;
        Pos pos14 = pos10;
        Pos pos15 = pos4;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, pos2, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos13, pos11, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ17, posJ18, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -10032010, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos2, pos7, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos2, pos7), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos7, pos8, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos7, pos8), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos8, pos3, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos8, pos3), false);
        Pos pos16 = pos8;
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos3, pos14, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos3, pos14), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos12, pos14, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos12, pos14), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos12, pos13, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos12, pos13), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos11, pos, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos11, pos), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos7, pos15, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -3212, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos15, pos12, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -3212, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos3, pos15, arrayList, mapView, b2ZhuangKaoSrcData.lineWidth, -3212, null, true);
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos2, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos7, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos16, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos3, arrayList2);
        Pos pos17 = pos15;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos17, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos12, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos14, arrayList2);
        Pos pos18 = pos13;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos18, arrayList2);
        Pos pos19 = pos11;
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos19, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ11, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ12, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ13, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ14, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ15, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ16, arrayList2);
        if (arrayList2.size() > 0) {
            Iterator it = arrayList2.iterator();
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = 0.0d;
            double d6 = 0.0d;
            double d7 = -1.7976931348623157E308d;
            double d8 = Double.MAX_VALUE;
            while (it.hasNext()) {
                Pos pos20 = (Pos) it.next();
                Pos pos21 = pos19;
                Iterator it2 = it;
                double d9 = pos20.x;
                d5 += d9;
                Pos pos22 = pos18;
                Pos pos23 = pos17;
                double d10 = pos20.y;
                d6 += d10;
                if (d8 > d9) {
                    d8 = d9;
                }
                if (d3 < d9) {
                    d3 = d9;
                }
                if (d4 > d10) {
                    d4 = d10;
                }
                if (d7 < d10) {
                    d7 = d10;
                }
                it = it2;
                pos17 = pos23;
                pos18 = pos22;
                pos19 = pos21;
            }
            Pos pos24 = pos19;
            Pos pos25 = pos18;
            Pos pos26 = pos17;
            double size = d5 / ((double) arrayList2.size());
            double size2 = d6 / ((double) arrayList2.size());
            mapView.u.j();
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d8, d7 - d4, mapView));
            if (!g(mapView, pos, pos2, 90.0f) && !g(mapView, pos7, pos2, BitmapDescriptorFactory.HUE_RED) && !g(mapView, pos7, pos16, 90.0f) && !g(mapView, pos3, pos16, BitmapDescriptorFactory.HUE_RED) && !g(mapView, pos26, pos3, 90.0f) && !g(mapView, pos12, pos26, BitmapDescriptorFactory.HUE_RED) && !g(mapView, pos14, pos12, 90.0f) && !g(mapView, pos14, pos25, 90.0f) && !g(mapView, pos25, pos24, 90.0f) && !g(mapView, pos24, pos, BitmapDescriptorFactory.HUE_RED)) {
                t.d("TAG", "一个设置成功的都没有，悲哀");
            }
            mapView.i((float) size, (float) size2);
            mapView.r();
        }
    }
}
