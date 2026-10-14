package cn.mucang.android.jiakaoyi.mapcollect.collect.c1;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;

/* JADX INFO: loaded from: classes3.dex */
public class a {
    public static Gps[] a(Gps gps, Gps gps2, Gps gps3, Gps gps4, Gps gps5, Gps gps6, Gps gps7, Gps gps8) {
        if (!Gps.isValid(gps3) || !Gps.isValid(gps4) || !Gps.isValid(gps5) || !Gps.isValid(gps6)) {
            u.h("请先采集库位的3、4、5、6点");
            return null;
        }
        cn.mucang.android.jiakaoyi.signal.i.b bVar = new cn.mucang.android.jiakaoyi.signal.i.b(gps3);
        Pos posA = bVar.a(gps3);
        Pos posA2 = bVar.a(gps4);
        Pos posA3 = bVar.a(gps5);
        Pos posA4 = bVar.a(gps6);
        Pos posS = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA2, posA, 15.0d);
        Pos posS2 = cn.mucang.android.jiakaoyi.hpmap.d.a.s(posA3, posA4, 15.0d);
        if (!Gps.isValid(gps2)) {
            gps2 = new Gps();
            gps2.setGps(bVar.b(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS2, posS, 150.0d)));
        }
        if (!Gps.isValid(gps7)) {
            gps7 = new Gps();
            gps7.setGps(bVar.b(cn.mucang.android.jiakaoyi.hpmap.d.a.s(posS, posS2, 500.0d)));
        }
        double dK = Gps.isValid(gps) ? cn.mucang.android.jiakaoyi.hpmap.d.a.k(bVar.a(gps), posS2, posS) : 335.0d;
        if (Gps.isValid(gps8)) {
            dK = cn.mucang.android.jiakaoyi.hpmap.d.a.k(bVar.a(gps8), posS, posS2);
        }
        double dAngleTo = new Pos(posA2).meanWith(posA3).angleTo(new Pos(posA).meanWith(posA4));
        if (!Gps.isValid(gps)) {
            gps = new Gps();
            gps.setGps(bVar.b(new Pos(bVar.a(gps2)).translate(Math.cos(dAngleTo) * dK, Math.sin(dAngleTo) * dK)));
        }
        if (!Gps.isValid(gps8)) {
            gps8 = new Gps();
            gps8.setGps(bVar.b(new Pos(bVar.a(gps7)).translate(Math.cos(dAngleTo) * dK, dK * Math.sin(dAngleTo))));
        }
        return new Gps[]{gps, gps2, gps7, gps8};
    }
}
