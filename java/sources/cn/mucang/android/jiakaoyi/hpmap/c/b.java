package cn.mucang.android.jiakaoyi.hpmap.c;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.hpmap.view.p.e;
import cn.mucang.android.jiakaoyi.hpmap.view.p.i;
import cn.mucang.android.jiakaoyi.hpmap.view.p.k;
import cn.mucang.android.jiakaoyi.hpmap.view.p.m;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class b {
    public static void a(List<Pos> list, List<k> list2, MapView mapView, int i) {
        if (g.d(list)) {
            list2.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.a(mapView, list, i, true));
        }
    }

    public static void b(Pos pos, List<k> list, String str, MapView mapView, Pos pos2, cn.mucang.android.jiakaoyi.hpmap.view.p.g.a aVar) {
        if (pos != null) {
            aVar.a(str);
            aVar.b(pos2);
            list.add(new cn.mucang.android.jiakaoyi.hpmap.view.p.g(mapView, pos, aVar));
        }
    }

    public static void c(Pos pos, Pos pos2, List<k> list, MapView mapView, double d2, int i, String str, boolean z) {
        if (pos == null || pos2 == null) {
            return;
        }
        Line lineP = (str == null || !str.contains("入口")) ? cn.mucang.android.jiakaoyi.hpmap.d.a.p(pos, pos2, cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a * 1.2f) : cn.mucang.android.jiakaoyi.hpmap.d.a.q(pos, pos2, cn.mucang.android.jiakaoyi.hpmap.b.a.f3680a * 1.2f);
        if (!z) {
            cn.mucang.android.jiakaoyi.hpmap.view.p.b.a aVar = new cn.mucang.android.jiakaoyi.hpmap.view.p.b.a((float) d2, i);
            aVar.a(str);
            aVar.b(lineP.start.meanWith(lineP.end));
            list.add(new i(mapView, pos, pos2, aVar));
            return;
        }
        e.a aVar2 = new e.a((float) d2, i);
        aVar2.e(str);
        aVar2.c(30.0f);
        aVar2.d(30.0f);
        aVar2.f(lineP.start.meanWith(lineP.end));
        list.add(new e(mapView, pos, pos2, aVar2));
    }

    public static void d(Pos pos, List<Pos> list) {
        if (pos != null) {
            list.add(pos);
        }
    }

    public static void e(Pos pos, List<k> list, String str, int i, MapView mapView) {
        f(pos, list, str, i, mapView, null);
    }

    public static void f(Pos pos, List<k> list, String str, int i, MapView mapView, Pos pos2) {
        if (pos != null) {
            m.a aVar = new m.a(cn.mucang.android.jiakaoyi.hpmap.b.a.b, i);
            aVar.a(str);
            aVar.b(pos2);
            list.add(new m(mapView, pos, aVar));
        }
    }

    public static Pos g(Pos pos, Pos pos2, double d2) {
        if (pos == null || pos2 == null) {
            return null;
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.s(pos, pos2, d2);
    }

    public static Pos h(Pos pos, Pos pos2, Pos pos3, double d2) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.e(pos, pos2, pos3, d2 * 1.3d);
    }

    public static String i(Pos pos, Pos pos2) {
        if (pos == null || pos2 == null) {
            return null;
        }
        return ((int) pos.distanceTo(pos2)) + "cm";
    }

    public static Pos j(Gps gps, cn.mucang.android.jiakaoyi.signal.i.a aVar) {
        if (gps == null) {
            return null;
        }
        return aVar.a(gps);
    }
}
