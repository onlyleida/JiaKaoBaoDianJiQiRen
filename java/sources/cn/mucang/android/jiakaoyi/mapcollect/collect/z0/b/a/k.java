package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.z;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class k implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2ShangPoSrcData, z> {
    private Pos f(Gps gps, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        if (gps == null) {
            return null;
        }
        return aVar.a(gps);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"采集1号点", "采集2号点", "采集3号点", "采集4号点", "采集5号点", "采集6号点", "采集7号点", "采集8号点", "采集9号点", "采集10号点", "采集11号点", "采集12号点", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, z zVar, Gps gps) {
        if (i < 12) {
            zVar.f(i + 1, gps);
        } else if (i == 12) {
            zVar.g(gps);
        } else if (i == 13) {
            zVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, z zVar, B2ShangPoSrcData b2ShangPoSrcData) {
        Pos pos;
        Pos pos2;
        ArrayList arrayList;
        Pos pos3;
        Pos pos4;
        Pos pos5;
        Pos pos6;
        Pos pos7;
        Pos pos8;
        Pos pos9;
        Pos pos10;
        Pos pos11;
        Pos posF = f(b2ShangPoSrcData.gps1, aVar);
        Pos posF2 = f(b2ShangPoSrcData.gps2, aVar);
        Pos posF3 = f(b2ShangPoSrcData.gps3, aVar);
        Pos posF4 = f(b2ShangPoSrcData.gps4, aVar);
        Pos posF5 = f(b2ShangPoSrcData.gps5, aVar);
        Pos posF6 = f(b2ShangPoSrcData.gps6, aVar);
        Pos posF7 = f(b2ShangPoSrcData.gps7, aVar);
        Pos posF8 = f(b2ShangPoSrcData.gps8, aVar);
        Pos posF9 = f(b2ShangPoSrcData.gps9, aVar);
        Pos posF10 = f(b2ShangPoSrcData.gps10, aVar);
        Pos posF11 = f(b2ShangPoSrcData.gps11, aVar);
        Pos posF12 = f(b2ShangPoSrcData.gps12, aVar);
        Pos posF13 = f(b2ShangPoSrcData.start1, aVar);
        Pos posF14 = f(b2ShangPoSrcData.start2, aVar);
        ArrayList arrayList2 = new ArrayList();
        String strValueOf = String.valueOf(1);
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        Pos pos12 = posF8;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF, arrayList2, strValueOf, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF2, posF, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF2, arrayList2, String.valueOf(2), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF, posF2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF3, arrayList2, String.valueOf(3), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF4, posF3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF4, arrayList2, String.valueOf(4), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF3, posF4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF5, arrayList2, String.valueOf(5), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF6, posF5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF6, arrayList2, String.valueOf(6), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF5, posF6, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF7, arrayList2, String.valueOf(7), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos12, posF7, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos12, arrayList2, String.valueOf(8), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF7, pos12, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF9, arrayList2, String.valueOf(9), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF10, posF9, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF10, arrayList2, String.valueOf(10), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF9, posF10, f2));
        if (posF11 == null || posF12 == null) {
            pos = posF11;
            pos2 = posF12;
        } else {
            pos = posF11;
            pos2 = posF12;
            cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF11, arrayList2, String.valueOf(11), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF12, posF11, f2));
            cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos2, arrayList2, String.valueOf(12), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos, pos2, f2));
        }
        if (arrayList2.size() > 0) {
            Pos pos13 = pos2;
            Pos pos14 = pos;
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF, posF2, arrayList2, mapView, b2ShangPoSrcData.lineWidth, -10032010, "入口", true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF13, posF14, arrayList2, mapView, b2ShangPoSrcData.lineWidth, -10032010, null, true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF3, posF4, arrayList2, mapView, b2ShangPoSrcData.lineWidth, -3212, null, true);
            if (posF5 != null) {
                pos4 = posF6;
                if (pos4 != null) {
                    pos3 = posF7;
                    if (pos3 == null || pos12 == null) {
                        arrayList = arrayList2;
                    } else {
                        arrayList = arrayList2;
                        cn.mucang.android.jiakaoyi.hpmap.c.b.a(Arrays.asList(posF5, pos4, pos3, pos12), arrayList, mapView, -3212);
                    }
                } else {
                    arrayList = arrayList2;
                    pos3 = posF7;
                }
            } else {
                arrayList = arrayList2;
                pos3 = posF7;
                pos4 = posF6;
            }
            if (pos14 == null || pos13 == null) {
                pos5 = pos13;
                pos6 = posF2;
                pos7 = pos14;
                List list = arrayList;
                pos8 = pos4;
                pos9 = posF;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF10, r9, list, mapView, b2ShangPoSrcData.lineWidth, -46528, "出口", true);
                pos10 = r9;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos9, r9, list, mapView, b2ShangPoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos9, r9), false);
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos6, posF10, list, mapView, b2ShangPoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos6, posF10), false);
            } else {
                arrayList = arrayList;
                pos3 = pos3;
                pos12 = pos12;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(r9, posF10, arrayList, mapView, b2ShangPoSrcData.lineWidth, -3212, null, true);
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos14, pos13, arrayList, mapView, b2ShangPoSrcData.lineWidth, -46528, "出口", true);
                double d2 = b2ShangPoSrcData.lineWidth;
                String strI = cn.mucang.android.jiakaoyi.hpmap.c.b.i(posF2, pos14);
                pos7 = pos14;
                pos6 = posF2;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF2, pos14, arrayList, mapView, d2, -1, strI, false);
                pos5 = pos13;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF, pos13, arrayList, mapView, b2ShangPoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posF, pos13), false);
                pos8 = pos4;
                pos9 = posF;
                pos10 = posF9;
            }
            ArrayList<Pos> arrayList3 = new ArrayList();
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos9, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos6, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF3, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF4, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF5, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos8, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos3, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos12, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos10, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF10, arrayList3);
            if (pos7 != null && (pos11 = pos5) != null) {
                cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos7, arrayList3);
                cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos11, arrayList3);
            }
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            for (Pos pos15 : arrayList3) {
                double d7 = pos15.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos15.y;
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
            mapView.u.h(arrayList);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView));
            if (pos9 != null && pos6 != null) {
                mapView.setCurrentRotateDegrees(90.0f - ((float) Math.toDegrees(pos9.angleTo(pos6))));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
