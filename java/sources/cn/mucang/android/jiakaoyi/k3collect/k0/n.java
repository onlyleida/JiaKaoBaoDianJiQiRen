package cn.mucang.android.jiakaoyi.k3collect.k0;

import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.k3collect.src.K3SrcData;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final Object f4022a = new Object();

    class a implements Runnable {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f4023a;
        final /* synthetic */ MapView b;

        a(n nVar, List list, MapView mapView) {
            this.f4023a = list;
            this.b = mapView;
        }

        @Override // java.lang.Runnable
        public void run() {
            a aVar = this;
            Iterator it = aVar.f4023a.iterator();
            double d2 = -1.7976931348623157E308d;
            double d3 = Double.MAX_VALUE;
            double d4 = 0.0d;
            double d5 = 0.0d;
            double d6 = -1.7976931348623157E308d;
            double d7 = Double.MAX_VALUE;
            while (it.hasNext()) {
                Pos pos = (Pos) it.next();
                Iterator it2 = it;
                double d8 = pos.x;
                double d9 = d4 + d8;
                double d10 = pos.y;
                d5 += d10;
                if (d7 > d8) {
                    d7 = d8;
                }
                if (d2 < d8) {
                    d2 = d8;
                }
                if (d3 > d10) {
                    d3 = d10;
                }
                if (d6 < d10) {
                    d6 = d10;
                }
                aVar = this;
                it = it2;
                d4 = d9;
            }
            double size = d4 / ((double) aVar.f4023a.size());
            double size2 = d5 / ((double) aVar.f4023a.size());
            aVar.b.setCurrentZoom(n.a(d2 - d7, d6 - d3, aVar.b));
            aVar.b.i((float) size, (float) size2);
            aVar.b.r();
        }
    }

    public static float a(double d2, double d3, MapView mapView) {
        if (d2 <= 0.0d || d3 <= 0.0d || Double.isNaN(d2) || Double.isInfinite(d2) || Double.isNaN(d3) || Double.isInfinite(d3)) {
            return mapView.getCurrentZoom();
        }
        int measuredWidth = mapView.getMeasuredWidth();
        int measuredHeight = mapView.getMeasuredHeight();
        return measuredWidth * measuredHeight <= 0 ? mapView.getCurrentZoom() : (float) Math.min(((double) measuredWidth) / d2, ((double) measuredHeight) / d3);
    }

    static /* synthetic */ void d(List list, MapView mapView) {
        Iterator it = list.iterator();
        double d2 = -1.7976931348623157E308d;
        double d3 = Double.MAX_VALUE;
        double d4 = 0.0d;
        double d5 = 0.0d;
        double d6 = -1.7976931348623157E308d;
        double d7 = Double.MAX_VALUE;
        while (it.hasNext()) {
            Pos pos = (Pos) it.next();
            Iterator it2 = it;
            double d8 = pos.x;
            double d9 = d4 + d8;
            double d10 = pos.y;
            d5 += d10;
            if (d7 > d8) {
                d7 = d8;
            }
            if (d2 < d8) {
                d2 = d8;
            }
            if (d3 > d10) {
                d3 = d10;
            }
            if (d6 < d10) {
                d6 = d10;
            }
            it = it2;
            d4 = d9;
        }
        double size = d4 / ((double) list.size());
        double size2 = d5 / ((double) list.size());
        mapView.setCurrentZoom(a(d2 - d7, d6 - d3, mapView));
        mapView.i((float) size, (float) size2);
        mapView.r();
    }

    public void b(MapView mapView) {
        synchronized (f4022a) {
            List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listS = mapView.u.s();
            if (listS != null && listS.size() > 0) {
                for (int size = listS.size() - 1; size >= 0; size--) {
                    cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar = listS.get(size);
                    if (kVar instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j) {
                        mapView.u.Q(kVar);
                    }
                }
            }
        }
    }

    public cn.mucang.android.jiakaoyi.k3collect.g0.j c(Long l, MapView mapView) {
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listS = mapView.u.s();
        if (listS == null || listS.size() <= 0) {
            return null;
        }
        synchronized (f4022a) {
            for (cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar : listS) {
                if (kVar instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j) {
                    cn.mucang.android.jiakaoyi.k3collect.g0.j jVar = (cn.mucang.android.jiakaoyi.k3collect.g0.j) kVar;
                    if (l == null && jVar.j == null) {
                        return jVar;
                    }
                    if (l != null && l.equals(jVar.j)) {
                        return jVar;
                    }
                }
            }
            return null;
        }
    }

    public void e(final MapView mapView, final List<Pos> list) {
        mapView.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.k3collect.k0.e
            @Override // java.lang.Runnable
            public final void run() {
                n.d(list, mapView);
            }
        });
    }

    public void f(K3SrcData k3SrcData, MapView mapView) {
        List<cn.mucang.android.jiakaoyi.hpmap.view.p.k> listS = mapView.u.s();
        ArrayList arrayList = new ArrayList();
        if (listS != null && listS.size() > 0) {
            for (cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar : listS) {
                if (kVar instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j) {
                    cn.mucang.android.jiakaoyi.k3collect.g0.j jVar = (cn.mucang.android.jiakaoyi.k3collect.g0.j) kVar;
                    Long l = jVar.j;
                    if (l == null) {
                        arrayList.add(jVar);
                    } else {
                        Long l2 = k3SrcData.id;
                        if (l2 != null && l2.equals(l)) {
                            arrayList.add(jVar);
                        }
                    }
                }
            }
        }
        if (arrayList.size() > 0) {
            Iterator it = arrayList.iterator();
            while (it.hasNext()) {
                mapView.u.Q((cn.mucang.android.jiakaoyi.k3collect.g0.j) it.next());
            }
        }
    }

    public cn.mucang.android.jiakaoyi.k3collect.g0.j g(K3SrcData k3SrcData, MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        return h(k3SrcData, mapView, aVar, false);
    }

    public cn.mucang.android.jiakaoyi.k3collect.g0.j h(K3SrcData k3SrcData, MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, boolean z) {
        cn.mucang.android.jiakaoyi.k3collect.g0.j jVar;
        if (k3SrcData == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        synchronized (f4022a) {
            ArrayList<cn.mucang.android.jiakaoyi.hpmap.view.p.k> arrayList2 = new ArrayList();
            arrayList2.addAll(mapView.u.s());
            if (arrayList2.size() > 0) {
                jVar = null;
                for (cn.mucang.android.jiakaoyi.hpmap.view.p.k kVar : arrayList2) {
                    if (kVar instanceof cn.mucang.android.jiakaoyi.k3collect.g0.j) {
                        cn.mucang.android.jiakaoyi.k3collect.g0.j jVar2 = (cn.mucang.android.jiakaoyi.k3collect.g0.j) kVar;
                        Long l = jVar2.j;
                        if (l == null) {
                            arrayList.add(jVar2);
                        } else {
                            Long l2 = k3SrcData.id;
                            if (l2 != null && l2.equals(l)) {
                                jVar = jVar2;
                            }
                        }
                    }
                }
            } else {
                jVar = null;
            }
            if (arrayList.size() > 0) {
                Iterator it = arrayList.iterator();
                while (it.hasNext()) {
                    mapView.u.Q((cn.mucang.android.jiakaoyi.k3collect.g0.j) it.next());
                }
            }
        }
        p.b bVarA = p.a(k3SrcData.type);
        if (bVarA == null) {
            return null;
        }
        bVarA.b(k3SrcData, aVar);
        if (jVar == null) {
            cn.mucang.android.jiakaoyi.k3collect.g0.j jVarA = bVarA.a(mapView);
            jVarA.f3759d = z;
            mapView.u.g(jVarA);
            return jVarA;
        }
        if (jVar.i == k3SrcData.type) {
            jVar.o(bVarA.c());
            mapView.r();
            return jVar;
        }
        cn.mucang.android.jiakaoyi.k3collect.g0.j jVarA2 = bVarA.a(mapView);
        jVarA2.f3759d = z;
        mapView.u.g(jVarA2);
        mapView.u.Q(jVar);
        return jVarA2;
    }

    public void i(MapView mapView, float f2, float f3) {
        mapView.setCurrentZoom(0.4f);
        mapView.i(f2, f3);
        mapView.r();
    }

    public void j(MapView mapView, float f2, float f3, float f4) {
        mapView.setCurrentZoom(f4);
        mapView.i(f2, f3);
        mapView.r();
    }

    public void k(MapView mapView, cn.mucang.android.jiakaoyi.signal.i.a aVar, List<Gps> list) {
        if (list == null || list.size() <= 0) {
            return;
        }
        mapView.post(new a(this, o.f(aVar, list), mapView));
    }
}
