package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2DaoKuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class h extends u0<C2DaoKuSrcData> {
    public h() {
        super(new C2DaoKuSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((C2DaoKuSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((C2DaoKuSrcData) t).gps8 != null) {
            return true;
        }
        e("点8没有采集");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((C2DaoKuSrcData) t).gps1 = null;
        ((C2DaoKuSrcData) t).gps2 = null;
        ((C2DaoKuSrcData) t).gps3 = null;
        ((C2DaoKuSrcData) t).gps4 = null;
        ((C2DaoKuSrcData) t).gps5 = null;
        ((C2DaoKuSrcData) t).gps6 = null;
        ((C2DaoKuSrcData) t).gps7 = null;
        ((C2DaoKuSrcData) t).gps8 = null;
        ((C2DaoKuSrcData) t).start1 = null;
        ((C2DaoKuSrcData) t).start2 = null;
        ((C2DaoKuSrcData) t).name = null;
        this.c = false;
    }

    public void f() {
        T t = this.f4847a;
        Gps[] gpsArrA = cn.mucang.android.jiakaoyi.mapcollect.collect.c1.b.a(((C2DaoKuSrcData) t).gps1, ((C2DaoKuSrcData) t).gps2, ((C2DaoKuSrcData) t).gps3, ((C2DaoKuSrcData) t).gps4, ((C2DaoKuSrcData) t).gps5, ((C2DaoKuSrcData) t).gps6, ((C2DaoKuSrcData) t).gps7, ((C2DaoKuSrcData) t).gps8);
        if (gpsArrA != null) {
            T t2 = this.f4847a;
            ((C2DaoKuSrcData) t2).gps1 = gpsArrA[0];
            ((C2DaoKuSrcData) t2).gps2 = gpsArrA[1];
            ((C2DaoKuSrcData) t2).gps7 = gpsArrA[2];
            ((C2DaoKuSrcData) t2).gps8 = gpsArrA[3];
            e("点位已补全");
        }
    }

    public void g(int i, Gps gps) {
        switch (i) {
            case 1:
                ((C2DaoKuSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((C2DaoKuSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((C2DaoKuSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((C2DaoKuSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((C2DaoKuSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((C2DaoKuSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
            case 7:
                ((C2DaoKuSrcData) this.f4847a).gps7 = new Gps(gps);
                break;
            case 8:
                ((C2DaoKuSrcData) this.f4847a).gps8 = new Gps(gps);
                break;
        }
        this.c = true;
        e("采集点" + i);
    }

    public void h(Gps gps) {
        ((C2DaoKuSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void i(Gps gps) {
        ((C2DaoKuSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
