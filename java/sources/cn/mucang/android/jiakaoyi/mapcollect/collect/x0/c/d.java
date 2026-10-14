package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDanBianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class d extends u0<MotoDanBianSrcData> {
    public d() {
        super(new MotoDanBianSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoDanBianSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps8 == null) {
            e("点8没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps9 == null) {
            e("点9没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps10 == null) {
            e("点10没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps11 == null) {
            e("点11没有采集");
            return false;
        }
        if (((MotoDanBianSrcData) t).gps12 != null) {
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
        ((MotoDanBianSrcData) t).gps1 = null;
        ((MotoDanBianSrcData) t).gps2 = null;
        ((MotoDanBianSrcData) t).gps3 = null;
        ((MotoDanBianSrcData) t).gps4 = null;
        ((MotoDanBianSrcData) t).gps5 = null;
        ((MotoDanBianSrcData) t).gps6 = null;
        ((MotoDanBianSrcData) t).gps7 = null;
        ((MotoDanBianSrcData) t).gps8 = null;
        ((MotoDanBianSrcData) t).gps9 = null;
        ((MotoDanBianSrcData) t).gps10 = null;
        ((MotoDanBianSrcData) t).gps11 = null;
        ((MotoDanBianSrcData) t).gps12 = null;
        ((MotoDanBianSrcData) t).start1 = null;
        ((MotoDanBianSrcData) t).start2 = null;
        ((MotoDanBianSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        switch (i) {
            case 1:
                ((MotoDanBianSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoDanBianSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoDanBianSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoDanBianSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoDanBianSrcData) this.f4847a).gps5 = new Gps(gps);
                break;
            case 6:
                ((MotoDanBianSrcData) this.f4847a).gps6 = new Gps(gps);
                break;
            case 7:
                ((MotoDanBianSrcData) this.f4847a).gps7 = new Gps(gps);
                break;
            case 8:
                ((MotoDanBianSrcData) this.f4847a).gps8 = new Gps(gps);
                break;
            case 9:
                ((MotoDanBianSrcData) this.f4847a).gps9 = new Gps(gps);
                break;
            case 10:
                ((MotoDanBianSrcData) this.f4847a).gps10 = new Gps(gps);
                break;
            case 11:
                ((MotoDanBianSrcData) this.f4847a).gps11 = new Gps(gps);
                break;
            case 12:
                ((MotoDanBianSrcData) this.f4847a).gps12 = new Gps(gps);
                break;
        }
        e("采集点" + i);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoDanBianSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoDanBianSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
