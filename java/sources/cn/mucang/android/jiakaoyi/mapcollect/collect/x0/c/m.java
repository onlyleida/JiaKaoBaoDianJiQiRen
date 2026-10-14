package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZhuangKaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class m extends u0<MotoZhuangKaoSrcData> {
    public m() {
        super(new MotoZhuangKaoSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoZhuangKaoSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gpsB5 == null) {
            e("点5没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gpsB6 == null) {
            e("点6没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gpsB7 == null) {
            e("点7没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gpsB8 == null) {
            e("点8没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gpsB9 == null) {
            e("点9没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps10 == null) {
            e("点10没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps11 == null) {
            e("点11没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps12 == null) {
            e("点12没有采集");
            return false;
        }
        if (((MotoZhuangKaoSrcData) t).gps13 != null) {
            return true;
        }
        e("点13没有采集");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((MotoZhuangKaoSrcData) t).gps1 = null;
        ((MotoZhuangKaoSrcData) t).gps2 = null;
        ((MotoZhuangKaoSrcData) t).gps3 = null;
        ((MotoZhuangKaoSrcData) t).gps4 = null;
        ((MotoZhuangKaoSrcData) t).gps10 = null;
        ((MotoZhuangKaoSrcData) t).gps11 = null;
        ((MotoZhuangKaoSrcData) t).gps12 = null;
        ((MotoZhuangKaoSrcData) t).gps13 = null;
        ((MotoZhuangKaoSrcData) t).gpsB5 = null;
        ((MotoZhuangKaoSrcData) t).gpsB6 = null;
        ((MotoZhuangKaoSrcData) t).gpsB7 = null;
        ((MotoZhuangKaoSrcData) t).gpsB8 = null;
        ((MotoZhuangKaoSrcData) t).gpsB9 = null;
        ((MotoZhuangKaoSrcData) t).start1 = null;
        ((MotoZhuangKaoSrcData) t).start2 = null;
        ((MotoZhuangKaoSrcData) t).cheKuIsLeft = true;
        ((MotoZhuangKaoSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps) {
        switch (i) {
            case 1:
                ((MotoZhuangKaoSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoZhuangKaoSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoZhuangKaoSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoZhuangKaoSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoZhuangKaoSrcData) this.f4847a).gpsB5 = new Gps(gps);
                break;
            case 6:
                ((MotoZhuangKaoSrcData) this.f4847a).gpsB6 = new Gps(gps);
                break;
            case 7:
                ((MotoZhuangKaoSrcData) this.f4847a).gpsB7 = new Gps(gps);
                break;
            case 8:
                ((MotoZhuangKaoSrcData) this.f4847a).gpsB8 = new Gps(gps);
                break;
            case 9:
                ((MotoZhuangKaoSrcData) this.f4847a).gpsB9 = new Gps(gps);
                break;
            case 10:
                ((MotoZhuangKaoSrcData) this.f4847a).gps10 = new Gps(gps);
                break;
            case 11:
                ((MotoZhuangKaoSrcData) this.f4847a).gps11 = new Gps(gps);
                break;
            case 12:
                ((MotoZhuangKaoSrcData) this.f4847a).gps12 = new Gps(gps);
                break;
            case 13:
                ((MotoZhuangKaoSrcData) this.f4847a).gps13 = new Gps(gps);
                break;
        }
        this.c = true;
        if (n0.g("")) {
            e("");
            return;
        }
        e("采集点" + i);
    }

    public void g(Gps gps) {
        ((MotoZhuangKaoSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoZhuangKaoSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
