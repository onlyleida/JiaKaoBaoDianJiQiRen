package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2ETCSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class i extends u0<C2ETCSrcData> {
    public i() {
        super(new C2ETCSrcData());
        i();
    }

    private void i() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((C2ETCSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((C2ETCSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((C2ETCSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((C2ETCSrcData) t).gps4 != null) {
            return true;
        }
        e("点4没有采集");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((C2ETCSrcData) t).gps1 = null;
        ((C2ETCSrcData) t).gps2 = null;
        ((C2ETCSrcData) t).gps3 = null;
        ((C2ETCSrcData) t).gps4 = null;
        ((C2ETCSrcData) t).start1 = null;
        ((C2ETCSrcData) t).start2 = null;
        ((C2ETCSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        switch (i) {
            case 1:
                ((C2ETCSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((C2ETCSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((C2ETCSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((C2ETCSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((C2ETCSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((C2ETCSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
        }
        this.c = true;
        e("采集点" + i);
    }

    public void g(Gps gps) {
        ((C2ETCSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((C2ETCSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
