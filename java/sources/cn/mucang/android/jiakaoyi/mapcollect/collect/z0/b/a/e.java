package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.a;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2HuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.t;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class e implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<B2HuaLuSrcData, t> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"开始采集左边线", "结束采集左边线", "开始采集右边线", "结束采集右边线", "开始采集中间线", "结束采集中间线", "采集预报点1", "采集预报点2"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, t tVar, Gps gps) {
        if (i == 0) {
            tVar.w();
            return;
        }
        if (i == 1) {
            tVar.j();
            return;
        }
        if (i == 2) {
            tVar.x();
            return;
        }
        if (i == 3) {
            tVar.k();
            return;
        }
        if (i == 4) {
            tVar.v();
            return;
        }
        if (i == 5) {
            tVar.i();
        } else if (i == 6) {
            tVar.t(gps);
        } else if (i == 7) {
            tVar.u(gps);
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, t tVar, B2HuaLuSrcData b2HuaLuSrcData) {
        int i;
        int i2;
        double d2;
        Pos posJ = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2HuaLuSrcData.start1, aVar);
        Pos posJ2 = cn.mucang.android.jiakaoyi.hpmap.c.b.j(b2HuaLuSrcData.start2, aVar);
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        ArrayList arrayList3 = new ArrayList();
        ArrayList arrayList4 = new ArrayList();
        float f2 = cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a;
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ, arrayList4, "r1", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ2, posJ, f2));
        cn.mucang.android.jiakaoyi.hpmap.c.b.f(posJ2, arrayList4, "r2", -1282049, mapView, cn.mucang.android.jiakaoyi.hpmap.c.b.g(posJ, posJ2, f2));
        List<Gps> list = b2HuaLuSrcData.leftPoints;
        if (list != null) {
            Iterator<Gps> it = list.iterator();
            i = 1;
            while (it.hasNext()) {
                Pos posA = aVar.a(it.next());
                arrayList.add(posA);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA, arrayList4, String.valueOf(i), -1282049, mapView);
                i++;
            }
        } else {
            i = 1;
        }
        List<Gps> list2 = b2HuaLuSrcData.middlePoints;
        if (list2 != null) {
            Iterator<Gps> it2 = list2.iterator();
            while (it2.hasNext()) {
                Pos posA2 = aVar.a(it2.next());
                arrayList2.add(posA2);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA2, arrayList4, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        List<Gps> list3 = b2HuaLuSrcData.rightPoints;
        if (list3 != null) {
            Iterator<Gps> it3 = list3.iterator();
            while (it3.hasNext()) {
                Pos posA3 = aVar.a(it3.next());
                arrayList3.add(posA3);
                cn.mucang.android.jiakaoyi.hpmap.c.b.e(posA3, arrayList4, String.valueOf(i), -1282049, mapView);
                i++;
            }
        }
        cn.mucang.android.jiakaoyi.hpmap.c.b.c(posJ, posJ2, arrayList4, mapView, b2HuaLuSrcData.lineWidth, -10032010, null, true);
        if (arrayList.size() > 0) {
            int i3 = 0;
            while (i3 < arrayList.size() - 1) {
                int i4 = i3 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList.get(i3), (Pos) arrayList.get(i4), arrayList4, mapView, b2HuaLuSrcData.lineWidth, -1, null, false);
                i3 = i4;
            }
        }
        if (arrayList2.size() > 0) {
            int i5 = 0;
            while (i5 < arrayList2.size() - 1) {
                Pos pos = (Pos) arrayList2.get(i5);
                int i6 = i5 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, (Pos) arrayList2.get(i6), arrayList4, mapView, b2HuaLuSrcData.lineWidth, -1, null, false);
                i5 = i6;
            }
        }
        if (arrayList3.size() > 0) {
            int i7 = 0;
            while (i7 < arrayList3.size() - 1) {
                int i8 = i7 + 1;
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList3.get(i7), (Pos) arrayList3.get(i8), arrayList4, mapView, b2HuaLuSrcData.lineWidth, -1, null, false);
                i7 = i8;
            }
        }
        if (arrayList.size() > 0 && arrayList3.size() > 0) {
            cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList.get(0), (Pos) arrayList3.get(0), arrayList4, mapView, b2HuaLuSrcData.lineWidth, -10032010, "入口", true);
            if (tVar.l()) {
                cn.mucang.android.jiakaoyi.hpmap.c.b.c((Pos) arrayList3.get(arrayList3.size() - 1), (Pos) arrayList.get(arrayList.size() - 1), arrayList4, mapView, b2HuaLuSrcData.lineWidth, -46528, "出口", true);
            }
        }
        ArrayList<Pos> arrayList5 = new ArrayList();
        if (posJ != null && posJ2 != null) {
            arrayList5.add(posJ);
            arrayList5.add(posJ2);
        }
        arrayList5.addAll(arrayList);
        arrayList5.addAll(arrayList3);
        if (arrayList5.size() > 0) {
            double d3 = -1.7976931348623157E308d;
            double d4 = Double.MAX_VALUE;
            double d5 = Double.MAX_VALUE;
            double d6 = -1.7976931348623157E308d;
            for (Pos pos2 : arrayList5) {
                double d7 = pos2.x;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d3 < d7) {
                    d3 = d7;
                }
                double d8 = pos2.y;
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
            mapView.u.h(arrayList4);
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d3 - d4, d6 - d5, mapView) * 0.8f);
            Double dValueOf = null;
            if (arrayList.size() <= 0 || arrayList3.size() <= 0) {
                if (arrayList.size() > 1) {
                    i2 = 0;
                    dValueOf = Double.valueOf(((Pos) arrayList.get(0)).angleTo((Pos) arrayList.get(1)));
                } else {
                    i2 = 0;
                }
                if (dValueOf == null && arrayList3.size() > 1) {
                    dValueOf = Double.valueOf(((Pos) arrayList3.get(i2)).angleTo((Pos) arrayList3.get(1)));
                }
                d2 = b2HuaLuSrcData.fromLeft ? 0.0d : 180.0d;
            } else {
                dValueOf = Double.valueOf(((Pos) arrayList.get(0)).angleTo((Pos) arrayList3.get(0)));
                d2 = b2HuaLuSrcData.fromLeft ? 90.0d : -90.0d;
            }
            if (dValueOf != null) {
                mapView.setCurrentRotateDegrees((float) (d2 - Math.toDegrees(dValueOf.doubleValue())));
            }
            mapView.i((float) d9, (float) d10);
            mapView.r();
        }
    }
}
