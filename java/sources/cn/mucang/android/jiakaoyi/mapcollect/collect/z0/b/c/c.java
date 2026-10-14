package cn.mucang.android.jiakaoyi.mapcollect.collect.z0.b.c;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoChangDiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.v0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c implements cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a<MotoChangDiSrcData, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.c> {
    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    public String[] b() {
        return new String[]{"开始采集实线", "结束采集实线", "开始采集虚线", "结束采集虚线"};
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
    public void c(v0 v0Var, int i, PosCollectActivity posCollectActivity, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.c cVar, Gps gps) {
        if (i == 0) {
            cVar.l();
            return;
        }
        if (i == 1) {
            cVar.j();
        } else if (i == 2) {
            cVar.k();
        } else if (i == 3) {
            cVar.i();
        }
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.z0.a
    /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
    public void a(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c.c cVar, MotoChangDiSrcData motoChangDiSrcData) {
        int i;
        ArrayList arrayList = new ArrayList();
        ArrayList<Pos> arrayList2 = new ArrayList();
        Iterator<List<Gps>> it = motoChangDiSrcData.solidLines.iterator();
        while (true) {
            i = 0;
            if (!it.hasNext()) {
                break;
            }
            List<Gps> next = it.next();
            ArrayList arrayList3 = new ArrayList();
            Iterator<Gps> it2 = next.iterator();
            while (it2.hasNext()) {
                arrayList3.add(aVar.a(it2.next()));
            }
            if (arrayList3.size() > 0) {
                while (i < arrayList3.size() - 1) {
                    Pos pos = (Pos) arrayList3.get(i);
                    i++;
                    cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos, (Pos) arrayList3.get(i), arrayList, mapView, motoChangDiSrcData.lineWidth, -1, null, false);
                    arrayList3 = arrayList3;
                    it = it;
                }
            }
            arrayList2.addAll(arrayList3);
            it = it;
        }
        for (List<Gps> list : motoChangDiSrcData.dashLines) {
            ArrayList arrayList4 = new ArrayList();
            Iterator<Gps> it3 = list.iterator();
            while (it3.hasNext()) {
                arrayList4.add(aVar.a(it3.next()));
            }
            if (arrayList4.size() > 0) {
                Pos pos2 = (Pos) arrayList4.get(i);
                int i2 = 1;
                while (i2 < arrayList4.size() - 1) {
                    Pos pos3 = (Pos) arrayList4.get(i2);
                    if (pos2.distanceTo(pos3) >= 50.0d || i2 == arrayList4.size() - 1) {
                        cn.mucang.android.jiakaoyi.hpmap.c.b.c(pos2, pos3, arrayList, mapView, motoChangDiSrcData.lineWidth, -1, null, true);
                        pos2 = pos3;
                    }
                    i2++;
                    arrayList4 = arrayList4;
                }
            }
            arrayList2.addAll(arrayList4);
            i = 0;
        }
        if (arrayList2.size() > 0) {
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = Double.MAX_VALUE;
            double d5 = -1.7976931348623157E308d;
            for (Pos pos4 : arrayList2) {
                double d6 = pos4.x;
                if (d3 > d6) {
                    d3 = d6;
                }
                if (d2 < d6) {
                    d2 = d6;
                }
                double d7 = pos4.y;
                if (d4 > d7) {
                    d4 = d7;
                }
                if (d5 < d7) {
                    d5 = d7;
                }
            }
            double d8 = (d3 + d2) * 0.5d;
            double d9 = 0.5d * (d4 + d5);
            mapView.u.j();
            if (arrayList.size() > 0) {
                mapView.u.h(arrayList);
            }
            mapView.setCurrentZoom(cn.mucang.android.jiakaoyi.hpmap.view.r.a.a(d2 - d3, d5 - d4, mapView) * 0.8f);
            mapView.i((float) d8, (float) d9);
            mapView.r();
        }
    }
}
