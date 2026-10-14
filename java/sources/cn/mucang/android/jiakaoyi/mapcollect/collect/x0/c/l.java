package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhiXingSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class l extends u0<MotoZhiXingSrcData> {
    public l() {
        super(new MotoZhiXingSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoZhiXingSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoZhiXingSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoZhiXingSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoZhiXingSrcData) t).gps4 != null) {
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
        ((MotoZhiXingSrcData) t).gps1 = null;
        ((MotoZhiXingSrcData) t).gps2 = null;
        ((MotoZhiXingSrcData) t).gps3 = null;
        ((MotoZhiXingSrcData) t).gps4 = null;
        ((MotoZhiXingSrcData) t).start1 = null;
        ((MotoZhiXingSrcData) t).start2 = null;
        ((MotoZhiXingSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        if (i == 1) {
            ((MotoZhiXingSrcData) this.f4847a).gps1 = new Gps(gps);
        } else if (i == 2) {
            ((MotoZhiXingSrcData) this.f4847a).gps2 = new Gps(gps);
        } else if (i == 3) {
            ((MotoZhiXingSrcData) this.f4847a).gps3 = new Gps(gps);
        } else if (i == 4) {
            ((MotoZhiXingSrcData) this.f4847a).gps4 = new Gps(gps);
        }
        e("采集点" + i);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoZhiXingSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoZhiXingSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
