package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.b;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b.o;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Arrays;

/* JADX INFO: loaded from: classes3.dex */
public class i implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<C2ShangPoSrcData, o> {
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
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, o oVar, Gps gps) {
        if (i < 12) {
            oVar.f(i + 1, gps);
        } else if (i == 12) {
            oVar.g(gps);
        } else if (i == 13) {
            oVar.h(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, o oVar, C2ShangPoSrcData c2ShangPoSrcData) {
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
        Pos pos11;
        Pos pos12;
        Pos posF = f(c2ShangPoSrcData.gps1, aVar);
        Pos posF2 = f(c2ShangPoSrcData.gps2, aVar);
        Pos posF3 = f(c2ShangPoSrcData.gps3, aVar);
        Pos posF4 = f(c2ShangPoSrcData.gps4, aVar);
        Pos posF5 = f(c2ShangPoSrcData.gps5, aVar);
        Pos posF6 = f(c2ShangPoSrcData.gps6, aVar);
        Pos posF7 = f(c2ShangPoSrcData.gps7, aVar);
        Pos posF8 = f(c2ShangPoSrcData.gps8, aVar);
        Pos posF9 = f(c2ShangPoSrcData.gps9, aVar);
        Pos posF10 = f(c2ShangPoSrcData.gps10, aVar);
        Pos posF11 = f(c2ShangPoSrcData.gps11, aVar);
        Pos posF12 = f(c2ShangPoSrcData.gps12, aVar);
        Pos posF13 = f(c2ShangPoSrcData.start1, aVar);
        Pos posF14 = f(c2ShangPoSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        String strValueOf = String.valueOf(1);
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        Pos pos13 = posF8;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF, arrayList, strValueOf, -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF2, posF, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF2, arrayList, String.valueOf(2), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF, posF2, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF3, arrayList, String.valueOf(3), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF4, posF3, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF4, arrayList, String.valueOf(4), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF3, posF4, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF5, arrayList, String.valueOf(5), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF6, posF5, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF6, arrayList, String.valueOf(6), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF5, posF6, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF7, arrayList, String.valueOf(7), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos13, posF7, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos13, arrayList, String.valueOf(8), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF7, pos13, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF9, arrayList, String.valueOf(9), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF10, posF9, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF10, arrayList, String.valueOf(10), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF9, posF10, f2));
        if (posF11 == null || posF12 == null) {
            pos = posF11;
            pos2 = posF12;
        } else {
            pos = posF11;
            pos2 = posF12;
            cn.mucang.android.jiakaoyi.hpmap.c.b.f(posF11, arrayList, String.valueOf(11), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posF12, posF11, f2));
            cn.mucang.android.jiakaoyi.hpmap.c.b.f(pos2, arrayList, String.valueOf(12), -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(pos, pos2, f2));
        }
        if (arrayList.size() > 0) {
            ArrayList arrayList2 = new ArrayList();
            Pos pos14 = pos2;
            Pos pos15 = pos;
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF, posF2, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -10032010, "入口", true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF13, posF14, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -10032010, null, true);
            cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF3, posF4, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -3212, null, true);
            if (posF5 != null) {
                pos4 = posF6;
                if (pos4 != null) {
                    pos3 = posF7;
                    if (pos3 != null && pos13 != null) {
                        cn.mucang.android.jiakaoyi.hpmap.c.b.a(Arrays.asList(posF5, pos4, pos3, pos13), arrayList2, mapView, -3212);
                    }
                } else {
                    pos3 = posF7;
                }
            } else {
                pos3 = posF7;
                pos4 = posF6;
            }
            if (pos15 == null || pos14 == null) {
                pos5 = pos14;
                pos6 = posF2;
                pos7 = pos15;
                pos8 = pos4;
                pos9 = posF;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(r9, posF10, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -46528, "出口", true);
                pos10 = r9;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos9, r9, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos9, r9), false);
                pos11 = posF10;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos6, pos11, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(pos6, pos11), false);
            } else {
                pos3 = pos3;
                pos13 = pos13;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(r9, posF10, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -3212, null, true);
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos15, pos14, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -46528, "出口", true);
                double d2 = c2ShangPoSrcData.lineWidth;
                String strI = cn.mucang.android.jiakaoyi.hpmap.c.b.i(posF2, pos15);
                pos7 = pos15;
                pos6 = posF2;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF2, pos15, arrayList2, mapView, d2, -1, strI, false);
                pos5 = pos14;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(posF, pos14, arrayList2, mapView, c2ShangPoSrcData.lineWidth, -1, cn.mucang.android.jiakaoyi.hpmap.c.b.i(posF, pos14), false);
                pos8 = pos4;
                pos9 = posF;
                pos10 = posF9;
                pos11 = posF10;
            }
            ArrayList<Pos> arrayList3 = new ArrayList();
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos9, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos6, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF3, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF4, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(posF5, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos8, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos3, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos13, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos10, arrayList3);
            cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos11, arrayList3);
            if (pos7 != null && (pos12 = pos5) != null) {
                cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos7, arrayList3);
                cn.mucang.android.jiakaoyi.hpmap.c.b.d(pos12, arrayList3);
            }
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            for (Pos pos16 : arrayList3) {
                double d7 = pos16.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos16.y;
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
            if (arrayList2.size() > 0) {
                mapView.u.h(arrayList2);
            }
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
