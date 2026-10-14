package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2DanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class r extends u0<B2DanBianSrcData> {
    public r() {
        super(new B2DanBianSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2DanBianSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps8 == null) {
            e("点8没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps9 == null) {
            e("点9没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps10 == null) {
            e("点10没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps11 == null) {
            e("点11没有采集");
            return false;
        }
        if (((B2DanBianSrcData) t).gps12 != null) {
            return true;
        }
        e("点12没有采集");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((B2DanBianSrcData) t).gps1 = null;
        ((B2DanBianSrcData) t).gps2 = null;
        ((B2DanBianSrcData) t).gps3 = null;
        ((B2DanBianSrcData) t).gps4 = null;
        ((B2DanBianSrcData) t).gps5 = null;
        ((B2DanBianSrcData) t).gps6 = null;
        ((B2DanBianSrcData) t).gps7 = null;
        ((B2DanBianSrcData) t).gps8 = null;
        ((B2DanBianSrcData) t).gps9 = null;
        ((B2DanBianSrcData) t).gps10 = null;
        ((B2DanBianSrcData) t).gps11 = null;
        ((B2DanBianSrcData) t).gps12 = null;
        ((B2DanBianSrcData) t).start1 = null;
        ((B2DanBianSrcData) t).start2 = null;
        ((B2DanBianSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        switch (i) {
            case 1:
                ((B2DanBianSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((B2DanBianSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((B2DanBianSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((B2DanBianSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((B2DanBianSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((B2DanBianSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
            case 7:
                ((B2DanBianSrcData) this.f4847a).gps7 = new Gps(gps);
                break;
            case 8:
                ((B2DanBianSrcData) this.f4847a).gps8 = new Gps(gps);
                break;
            case 9:
                ((B2DanBianSrcData) this.f4847a).gps9 = new Gps(gps);
                break;
            case 10:
                ((B2DanBianSrcData) this.f4847a).gps10 = new Gps(gps);
                break;
            case 11:
                ((B2DanBianSrcData) this.f4847a).gps11 = new Gps(gps);
                break;
            case 12:
                ((B2DanBianSrcData) this.f4847a).gps12 = new Gps(gps);
                break;
        }
        e("采集点" + i);
        this.c = true;
    }

    public void g(Gps gps) {
        ((B2DanBianSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((B2DanBianSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
