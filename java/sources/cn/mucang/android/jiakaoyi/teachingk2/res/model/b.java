package cn.mucang.android.jiakaoyi.teachingk2.res.model;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import cn.mucang.android.jiakaoyi.teachingk2.collectsite.polygon.PolygonModel;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final PolygonModel f7595a;
    public final List<Pos> b;
    public final List<c> c;

    public b(PolygonModel polygonModel, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        this.f7595a = polygonModel;
        if (polygonModel == null || aVar == null || !g.d(polygonModel.gpsData)) {
            this.b = null;
        } else {
            this.b = e(polygonModel.gpsData, aVar);
        }
        List<Pos> list = this.b;
        if (list == null || list.size() <= 2) {
            return;
        }
        this.c = a(this.b);
    }

    private List<c> a(List<Pos> list) {
        ArrayList arrayList = new ArrayList();
        if (list.size() == 3) {
            arrayList.add(new c(list.get(0), list.get(1), list.get(2)));
            return arrayList;
        }
        int size = list.size();
        for (int i = 2; i < size; i++) {
            arrayList.add(new c(list.get(0), list.get(i - 1), list.get(i)));
        }
        return arrayList;
    }

    private List<Pos> e(List<Gps> list, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        ArrayList arrayList = new ArrayList();
        Iterator<Gps> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.a(it.next()));
        }
        return arrayList;
    }

    public boolean b(CarPos carPos) {
        if (g.b(this.b)) {
            return false;
        }
        if (this.b.size() == 1) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(carPos.carRect, this.b.get(0));
        }
        if (this.b.size() == 2) {
            return cn.mucang.android.jiakaoyi.hpmap.a.b.c.f(carPos.carRect, this.b.get(0), this.b.get(1));
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.f5820a, this.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.b, this.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.c, this.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(carPos.carRect.f5821d, this.b) || cn.mucang.android.jiakaoyi.hpmap.a.b.c.h(carPos.carRect, this.b, true);
    }

    public boolean c(Pos pos) {
        if (g.b(this.b) || this.b.size() == 1 || this.b.size() == 2) {
            return false;
        }
        return cn.mucang.android.jiakaoyi.hpmap.a.b.c.i(pos, this.b);
    }

    public boolean d() {
        return g.d(this.b);
    }
}
