package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhuangKaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import com.tencent.connect.common.Constants;
import java.util.ArrayList;
import java.util.Iterator;

/* JADX INFO: loaded from: classes3.dex */
public class m implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<MotoZhuangKaoSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.m> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private float f4992a;

    private cn.mucang.android.jiakaoyi.hpmap.view.p.g.a d() {
        return new cn.mucang.android.jiakaoyi.hpmap.view.p.g.a(this.f4992a, -65536, -1);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集5号点", "采集6号点", "采集7号点", "采集8号点", "采集9号点", "采集10号点", "采集11号点", "采集12号点", "采集13号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.m mVar, Gps gps) {
        if (i < 13) {
            mVar.f(i + 1, gps);
        } else if (i == 13) {
            mVar.g(gps);
        } else if (i == 14) {
            mVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.m mVar, MotoZhuangKaoSrcData motoZhuangKaoSrcData) {
        this.f4992a = motoZhuangKaoSrcData.poleRadius;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps2, aVar);
        Pos posJ3 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps3, aVar);
        Pos posJ4 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps4, aVar);
        Pos posJ5 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gpsB5, aVar);
        Pos posJ6 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gpsB6, aVar);
        Pos posJ7 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gpsB7, aVar);
        Pos posJ8 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gpsB8, aVar);
        Pos posJ9 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gpsB9, aVar);
        Pos posJ10 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps10, aVar);
        Pos posJ11 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps11, aVar);
        Pos posJ12 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps12, aVar);
        Pos posJ13 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.gps13, aVar);
        Pos posJ14 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.start1, aVar);
        Pos posJ15 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(motoZhuangKaoSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList, "1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList, "2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ3, arrayList, "3", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ4, posJ3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ4, arrayList, Constants.VIA_TO_TYPE_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ3, posJ4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ10, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QQ, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ11, posJ10, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ11, arrayList, Constants.VIA_REPORT_TYPE_SHARE_TO_QZONE, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ10, posJ11, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ12, arrayList, Constants.VIA_REPORT_TYPE_SET_AVATAR, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ13, posJ12, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ13, arrayList, Constants.VIA_REPORT_TYPE_JOININ_GROUP, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ12, posJ13, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ5, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ6, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ7, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ8, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.b(posJ9, arrayList, null, mapView, null, d());
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList, mapView, motoZhuangKaoSrcData.lineWidth, -10032010, "入口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ12, posJ13, arrayList, mapView, motoZhuangKaoSrcData.lineWidth, -46528, "出口", true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ14, posJ15, arrayList, mapView, motoZhuangKaoSrcData.lineWidth, -10032010, null, true);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ3, posJ10, arrayList, mapView, motoZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ3, posJ10), false);
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ4, posJ11, arrayList, mapView, motoZhuangKaoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posJ4, posJ11), false);
        ArrayList arrayList2 = new ArrayList();
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ2, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ3, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ4, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ5, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ6, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ7, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ8, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ9, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ10, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ11, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ12, arrayList2);
        cn.mucang.android.jiakaoyi.hpmap.c.b.d(posJ13, arrayList2);
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
