package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2QiDianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class v extends u0<B2QiDianSrcData> {
    public v() {
        super(new B2QiDianSrcData());
        i();
    }

    private void i() {
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2QiDianSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((B2QiDianSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((B2QiDianSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((B2QiDianSrcData) t).gps4 != null) {
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
        ((B2QiDianSrcData) t).gps1 = null;
        ((B2QiDianSrcData) t).gps2 = null;
        ((B2QiDianSrcData) t).gps3 = null;
        ((B2QiDianSrcData) t).gps4 = null;
        ((B2QiDianSrcData) t).start1 = null;
        ((B2QiDianSrcData) t).start2 = null;
        ((B2QiDianSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        if (i == 1) {
            ((B2QiDianSrcData) this.f4847a).gps1 = new Gps(gps);
        } else if (i == 2) {
            ((B2QiDianSrcData) this.f4847a).gps2 = new Gps(gps);
        } else if (i == 3) {
            ((B2QiDianSrcData) this.f4847a).gps3 = new Gps(gps);
        } else if (i == 4) {
            ((B2QiDianSrcData) this.f4847a).gps4 = new Gps(gps);
        }
        this.c = true;
        e("采集点" + i);
    }

    public void g(Gps gps) {
        ((B2QiDianSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((B2QiDianSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
