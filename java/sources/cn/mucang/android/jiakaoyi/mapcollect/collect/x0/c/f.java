package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoJiaJianDangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class f extends u0<MotoJiaJianDangSrcData> {
    public f() {
        super(new MotoJiaJianDangSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoJiaJianDangSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoJiaJianDangSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoJiaJianDangSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoJiaJianDangSrcData) t).gps4 != null) {
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
        ((MotoJiaJianDangSrcData) t).gps1 = null;
        ((MotoJiaJianDangSrcData) t).gps2 = null;
        ((MotoJiaJianDangSrcData) t).gps3 = null;
        ((MotoJiaJianDangSrcData) t).gps4 = null;
        ((MotoJiaJianDangSrcData) t).start1 = null;
        ((MotoJiaJianDangSrcData) t).start2 = null;
        ((MotoJiaJianDangSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        if (i == 1) {
            ((MotoJiaJianDangSrcData) this.f4847a).gps1 = new Gps(gps);
        } else if (i == 2) {
            ((MotoJiaJianDangSrcData) this.f4847a).gps2 = new Gps(gps);
        } else if (i == 3) {
            ((MotoJiaJianDangSrcData) this.f4847a).gps3 = new Gps(gps);
        } else if (i == 4) {
            ((MotoJiaJianDangSrcData) this.f4847a).gps4 = new Gps(gps);
        }
        e("采集点" + i);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoJiaJianDangSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoJiaJianDangSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
