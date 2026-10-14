package cn.mucang.android.jiakaoyi.hpmap.a.b;

import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
public class c {
    static {
        new cn.mucang.android.jiakaoyi.signal.pos.a();
    }

    public static boolean a(cn.mucang.android.jiakaoyi.signal.pos.c cVar, Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.f5820a, cVar.b, pos) * cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.c, cVar.f5821d, pos) >= 0.0d && cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.b, cVar.c, pos) * cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.f5821d, cVar.f5820a, pos) >= 0.0d;
    }

    public static boolean b(cn.mucang.android.jiakaoyi.signal.pos.c cVar, cn.mucang.android.jiakaoyi.signal.pos.c cVar2) {
        return a(cVar, cVar2.f5820a) && a(cVar, cVar2.b) && a(cVar, cVar2.c) && a(cVar, cVar2.f5821d);
    }

    public static boolean c(cn.mucang.android.jiakaoyi.signal.pos.c cVar, Pos pos) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.f5820a, cVar.b, pos) * cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.c, cVar.f5821d, pos) > 0.0d && cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.b, cVar.c, pos) * cn.mucang.android.jiakaoyi.hpmap.d.a.h(cVar.f5821d, cVar.f5820a, pos) > 0.0d;
    }

    public static cn.mucang.android.jiakaoyi.signal.pos.c d(Pos pos, Pos pos2, Pos pos3, Pos pos4) {
        return cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos4, pos2, pos3) ? new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, pos4, pos3) : new cn.mucang.android.jiakaoyi.signal.pos.c(pos, pos2, pos3, pos4);
    }

    public static double e(cn.mucang.android.jiakaoyi.signal.pos.c cVar, Pos pos) {
        if (a(cVar, pos)) {
            return -1.0d;
        }
        return Math.min(Math.min(Math.min(cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, cVar.f5820a, cVar.b), cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, cVar.b, cVar.c)), cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, cVar.c, cVar.f5821d)), cn.mucang.android.jiakaoyi.hpmap.d.a.k(pos, cVar.f5821d, cVar.f5820a));
    }

    public static boolean f(cn.mucang.android.jiakaoyi.signal.pos.c cVar, Pos pos, Pos pos2) {
        double dMin = Math.min(pos.x, pos2.x);
        double dMin2 = Math.min(pos.y, pos2.y);
        double dMax = Math.max(pos.x, pos2.x);
        double dMax2 = Math.max(pos.y, pos2.y);
        cn.mucang.android.jiakaoyi.signal.pos.a aVar = cVar.f5822e;
        if (dMin <= aVar.c && dMin2 <= aVar.f5817d && dMax >= aVar.f5816a && dMax2 >= aVar.b) {
            return a(cVar, pos) || a(cVar, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar.f5820a, cVar.b, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar.b, cVar.c, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar.c, cVar.f5821d, pos, pos2) || cn.mucang.android.jiakaoyi.hpmap.d.a.C(cVar.f5821d, cVar.f5820a, pos, pos2);
        }
        return false;
    }

    public static boolean g(cn.mucang.android.jiakaoyi.signal.pos.c cVar, cn.mucang.android.jiakaoyi.signal.pos.c cVar2) {
        if (cVar.f5822e.h(cVar2.f5822e)) {
            return false;
        }
        if (a(cVar, cVar2.b()) || a(cVar2, cVar.b())) {
            return true;
        }
        Pos[] posArr = {cVar.f5820a, cVar.b, cVar.c, cVar.f5821d};
        Pos[] posArr2 = {cVar2.f5820a, cVar2.b, cVar2.c, cVar2.f5821d};
        int i = 0;
        while (i < 4) {
            Pos pos = posArr[i];
            Pos pos2 = i == 3 ? posArr[0] : posArr[i + 1];
            int i2 = 0;
            while (i2 < 4) {
                if (cn.mucang.android.jiakaoyi.hpmap.d.a.C(pos, pos2, posArr2[i2], i2 == 3 ? posArr2[0] : posArr2[i2 + 1])) {
                    return true;
                }
                i2++;
            }
            i++;
        }
        return false;
    }

    public static boolean h(cn.mucang.android.jiakaoyi.signal.pos.c cVar, List<Pos> list, boolean z) {
        if (cn.mucang.android.jiakaoyi.hpmap.d.a.A(cVar.f5820a, cVar.b, list, z) || cn.mucang.android.jiakaoyi.hpmap.d.a.A(cVar.b, cVar.c, list, z) || cn.mucang.android.jiakaoyi.hpmap.d.a.A(cVar.c, cVar.f5821d, list, z)) {
            return true;
        }
        return cn.mucang.android.jiakaoyi.hpmap.d.a.A(cVar.f5821d, cVar.f5820a, list, z);
    }

    public static boolean i(Pos pos, List<Pos> list) {
        int i;
        if (g.b(list)) {
            return false;
        }
        double d2 = pos.x;
        double d3 = pos.y;
        int size = list.size();
        int i2 = size - 1;
        int i3 = 0;
        boolean z = false;
        while (i3 < size) {
            Pos pos2 = list.get(i3);
            Pos pos3 = list.get(i2);
            double d4 = pos2.y;
            double d5 = d2;
            boolean z2 = d4 > d3;
            double d6 = pos3.y;
            if (z2 != (d6 > d3)) {
                double d7 = pos3.x;
                i = size;
                double d8 = pos2.x;
                if (d5 < (((d7 - d8) * (d3 - d4)) / (d6 - d4)) + d8) {
                    z = !z;
                }
            } else {
                i = size;
            }
            i2 = i3;
            d2 = d5;
            i3++;
            size = i;
        }
        return z;
    }

    public static cn.mucang.android.jiakaoyi.signal.pos.c j(cn.mucang.android.jiakaoyi.signal.pos.c cVar, double d2, double d3) {
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.b, cVar.f5820a, d3);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.f5820a, cVar.b, d3);
        Pos posS3 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.f5821d, cVar.c, d3);
        Pos posS4 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(cVar.c, cVar.f5821d, d3);
        Pos posS5 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS4, posS, d2);
        Pos posS6 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS, posS4, d2);
        return new cn.mucang.android.jiakaoyi.signal.pos.c(posS5, cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS3, posS2, d2), cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS2, posS3, d2), posS6);
    }
}
