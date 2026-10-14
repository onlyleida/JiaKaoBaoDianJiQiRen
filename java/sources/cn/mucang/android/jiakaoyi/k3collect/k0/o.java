package cn.mucang.android.jiakaoyi.k3collect.k0;

import cn.mucang.android.jiakaoyi.hpmap.model.Line;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class o {
    public static Pos a(Pos pos, Pos pos2) {
        if (pos == null || pos2 == null) {
            return null;
        }
        return new Pos((pos.x + pos2.x) / 2.0d, (pos.y + pos2.y) / 2.0d, (pos.z + pos2.z) / 2.0d);
    }

    public static Pos b(List<Pos> list) {
        if (list.size() <= 0) {
            return null;
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        for (Pos pos : list) {
            d2 += pos.x;
            d3 += pos.y;
            d4 += pos.z;
        }
        return new Pos(d2 / ((double) list.size()), d3 / ((double) list.size()), d4 / ((double) list.size()));
    }

    public static Pos c(Pos pos, Pos pos2, Pos pos3) {
        double d2 = pos.x;
        double d3 = pos.y;
        double d4 = (d2 * d2) + (d3 * d3);
        double d5 = pos2.x;
        double d6 = pos2.y;
        double d7 = (d5 * d5) + (d6 * d6);
        double d8 = pos3.x;
        double d9 = pos3.y;
        double d10 = d7 - d4;
        double d11 = ((d8 * d8) + (d9 * d9)) - d4;
        return new Pos((((d10 * (d9 - d3)) - (d11 * (d6 - d3))) * 0.5d) / (((d6 - d3) * (d2 - d8)) - ((d9 - d3) * (d2 - d5))), ((((d8 - d2) * d10) - ((d5 - d2) * d11)) * 0.5d) / (((d3 - d9) * (d5 - d2)) - ((d3 - d6) * (d8 - d2))), pos.z);
    }

    public static List<Pos> d(List<Pos> list, double d2, boolean z) {
        if (list.size() < 2) {
            return new ArrayList(list);
        }
        ArrayList arrayList = new ArrayList();
        int i = 0;
        while (true) {
            int i2 = i + 1;
            if (i2 >= list.size()) {
                break;
            }
            Line lineO = cn.mucang.android.jiakaoyi.hpmap.d.a.o(list.get(i), list.get(i2), d2, z);
            arrayList.add(lineO.start);
            arrayList.add(lineO.end);
            i += 2;
        }
        if (list.size() % 2 == 1) {
            arrayList.add(cn.mucang.android.jiakaoyi.hpmap.d.a.o(list.get(list.size() - 2), list.get(list.size() - 1), d2, z).end);
        }
        return arrayList;
    }

    public static List<Gps> e(cn.mucang.android.jiakaoyi.signal.i.a aVar, List<Pos> list) {
        ArrayList arrayList = new ArrayList();
        Iterator<Pos> it = list.iterator();
        while (it.hasNext()) {
            arrayList.add(aVar.b(it.next()));
        }
        return arrayList;
    }

    public static List<Pos> f(cn.mucang.android.jiakaoyi.signal.i.a aVar, List<Gps> list) {
        if (list == null) {
            return null;
        }
        ArrayList arrayList = new ArrayList();
        for (Gps gps : list) {
            if (gps != null) {
                arrayList.add(cn.mucang.android.jiakaoyi.hpmap.c.b.j(gps, aVar));
            }
        }
        return arrayList;
    }
}
