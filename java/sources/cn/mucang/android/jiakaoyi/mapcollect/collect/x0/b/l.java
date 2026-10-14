package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class l extends u0<C2QiDianSrcData> {
    public l() {
        super(new C2QiDianSrcData());
        i();
    }

    private void i() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((C2QiDianSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((C2QiDianSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((C2QiDianSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((C2QiDianSrcData) t).gps4 != null) {
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
        ((C2QiDianSrcData) t).gps1 = null;
        ((C2QiDianSrcData) t).gps2 = null;
        ((C2QiDianSrcData) t).gps3 = null;
        ((C2QiDianSrcData) t).gps4 = null;
        ((C2QiDianSrcData) t).start1 = null;
        ((C2QiDianSrcData) t).start2 = null;
        ((C2QiDianSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        if (i == 1) {
            ((C2QiDianSrcData) this.f4847a).gps1 = new Gps(gps);
        } else if (i == 2) {
            ((C2QiDianSrcData) this.f4847a).gps2 = new Gps(gps);
        } else if (i == 3) {
            ((C2QiDianSrcData) this.f4847a).gps3 = new Gps(gps);
        } else if (i == 4) {
            ((C2QiDianSrcData) this.f4847a).gps4 = new Gps(gps);
        }
        this.c = true;
        e("采集点" + i);
    }

    public void g(Gps gps) {
        ((C2QiDianSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((C2QiDianSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
