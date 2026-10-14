package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoTingCheSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class i extends u0<MotoTingCheSrcData> {
    public i() {
        super(new MotoTingCheSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoTingCheSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoTingCheSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoTingCheSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoTingCheSrcData) t).gps4 != null) {
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
        ((MotoTingCheSrcData) t).gps1 = null;
        ((MotoTingCheSrcData) t).gps2 = null;
        ((MotoTingCheSrcData) t).gps3 = null;
        ((MotoTingCheSrcData) t).gps4 = null;
        ((MotoTingCheSrcData) t).start1 = null;
        ((MotoTingCheSrcData) t).start2 = null;
        ((MotoTingCheSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        if (i == 1) {
            ((MotoTingCheSrcData) this.f4847a).gps1 = new Gps(gps);
        } else if (i == 2) {
            ((MotoTingCheSrcData) this.f4847a).gps2 = new Gps(gps);
        } else if (i == 3) {
            ((MotoTingCheSrcData) this.f4847a).gps3 = new Gps(gps);
        } else if (i == 4) {
            ((MotoTingCheSrcData) this.f4847a).gps4 = new Gps(gps);
        }
        e("采集点" + i);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoTingCheSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoTingCheSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
