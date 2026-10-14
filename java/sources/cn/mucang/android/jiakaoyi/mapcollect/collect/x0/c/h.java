package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoShangPoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class h extends u0<MotoShangPoSrcData> {
    public h() {
        super(new MotoShangPoSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoShangPoSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps8 == null) {
            e("点8没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps9 == null) {
            e("点9没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps10 == null) {
            e("点10没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps12 != null && ((MotoShangPoSrcData) t).gps11 == null) {
            e("点11没有采集");
            return false;
        }
        if (((MotoShangPoSrcData) t).gps11 == null || ((MotoShangPoSrcData) t).gps12 != null) {
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
        ((MotoShangPoSrcData) t).gps1 = null;
        ((MotoShangPoSrcData) t).gps2 = null;
        ((MotoShangPoSrcData) t).gps3 = null;
        ((MotoShangPoSrcData) t).gps4 = null;
        ((MotoShangPoSrcData) t).gps5 = null;
        ((MotoShangPoSrcData) t).gps6 = null;
        ((MotoShangPoSrcData) t).gps7 = null;
        ((MotoShangPoSrcData) t).gps8 = null;
        ((MotoShangPoSrcData) t).gps9 = null;
        ((MotoShangPoSrcData) t).gps10 = null;
        ((MotoShangPoSrcData) t).gps11 = null;
        ((MotoShangPoSrcData) t).gps12 = null;
        ((MotoShangPoSrcData) t).start1 = null;
        ((MotoShangPoSrcData) t).start2 = null;
        ((MotoShangPoSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        switch (i) {
            case 1:
                ((MotoShangPoSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoShangPoSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoShangPoSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoShangPoSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoShangPoSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((MotoShangPoSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
            case 7:
                ((MotoShangPoSrcData) this.f4847a).gps7 = new Gps(gps);
                break;
            case 8:
                ((MotoShangPoSrcData) this.f4847a).gps8 = new Gps(gps);
                break;
            case 9:
                ((MotoShangPoSrcData) this.f4847a).gps9 = new Gps(gps);
                break;
            case 10:
                ((MotoShangPoSrcData) this.f4847a).gps10 = new Gps(gps);
                break;
            case 11:
                ((MotoShangPoSrcData) this.f4847a).gps11 = new Gps(gps);
                break;
            case 12:
                ((MotoShangPoSrcData) this.f4847a).gps12 = new Gps(gps);
                break;
        }
        this.c = true;
        e("采集点" + i);
    }

    public void g(Gps gps) {
        this.c = true;
        ((MotoShangPoSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
    }

    public void h(Gps gps) {
        this.c = true;
        ((MotoShangPoSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
    }
}
