package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2CeFangSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class p extends u0<B2CeFangSrcData> {
    public p() {
        super(new B2CeFangSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2CeFangSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((B2CeFangSrcData) t).gps8 != null) {
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
        ((B2CeFangSrcData) t).gps1 = null;
        ((B2CeFangSrcData) t).gps2 = null;
        ((B2CeFangSrcData) t).gps3 = null;
        ((B2CeFangSrcData) t).gps4 = null;
        ((B2CeFangSrcData) t).gps5 = null;
        ((B2CeFangSrcData) t).gps6 = null;
        ((B2CeFangSrcData) t).gps7 = null;
        ((B2CeFangSrcData) t).gps8 = null;
        ((B2CeFangSrcData) t).start1 = null;
        ((B2CeFangSrcData) t).start2 = null;
        ((B2CeFangSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        switch (i) {
            case 1:
                ((B2CeFangSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((B2CeFangSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((B2CeFangSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((B2CeFangSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((B2CeFangSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((B2CeFangSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
            case 7:
                ((B2CeFangSrcData) this.f4847a).gps7 = new Gps(gps);
                break;
            case 8:
                ((B2CeFangSrcData) this.f4847a).gps8 = new Gps(gps);
                break;
        }
        e("采集点" + i);
        this.c = true;
    }

    public void g(Gps gps) {
        ((B2CeFangSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((B2CeFangSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
