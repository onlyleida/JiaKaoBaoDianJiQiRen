package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2CeFangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class g extends u0<C2CeFangSrcData> {
    public g() {
        super(new C2CeFangSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((C2CeFangSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((C2CeFangSrcData) t).gps8 != null) {
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
        ((C2CeFangSrcData) t).gps1 = null;
        ((C2CeFangSrcData) t).gps2 = null;
        ((C2CeFangSrcData) t).gps3 = null;
        ((C2CeFangSrcData) t).gps4 = null;
        ((C2CeFangSrcData) t).gps5 = null;
        ((C2CeFangSrcData) t).gps6 = null;
        ((C2CeFangSrcData) t).gps7 = null;
        ((C2CeFangSrcData) t).gps8 = null;
        ((C2CeFangSrcData) t).start1 = null;
        ((C2CeFangSrcData) t).start2 = null;
        ((C2CeFangSrcData) t).name = null;
        this.c = false;
    }

    public void f() {
        T t = this.f4847a;
        Gps[] gpsArrA = cn.mucang.android.jiakaoyi.mapcollect.collect.c1.a.a(((C2CeFangSrcData) t).gps1, ((C2CeFangSrcData) t).gps2, ((C2CeFangSrcData) t).gps3, ((C2CeFangSrcData) t).gps4, ((C2CeFangSrcData) t).gps5, ((C2CeFangSrcData) t).gps6, ((C2CeFangSrcData) t).gps7, ((C2CeFangSrcData) t).gps8);
        if (gpsArrA != null) {
            T t2 = this.f4847a;
            ((C2CeFangSrcData) t2).gps1 = gpsArrA[0];
            ((C2CeFangSrcData) t2).gps2 = gpsArrA[1];
            ((C2CeFangSrcData) t2).gps7 = gpsArrA[2];
            ((C2CeFangSrcData) t2).gps8 = gpsArrA[3];
            e("点位已补全");
        }
    }

    public void g(int i, Gps gps) {
        switch (i) {
            case 1:
                ((C2CeFangSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((C2CeFangSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((C2CeFangSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((C2CeFangSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((C2CeFangSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((C2CeFangSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
            case 7:
                ((C2CeFangSrcData) this.f4847a).gps7 = new Gps(gps);
                break;
            case 8:
                ((C2CeFangSrcData) this.f4847a).gps8 = new Gps(gps);
                break;
        }
        e("采集点" + i);
        this.c = true;
    }

    public void h(Gps gps) {
        ((C2CeFangSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void i(Gps gps) {
        ((C2CeFangSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
