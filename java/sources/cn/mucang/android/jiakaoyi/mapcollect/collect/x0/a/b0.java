package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import cn.mucang.android.core.utils.n0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2XianKuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class b0 extends u0<B2XianKuanSrcData> {
    public b0() {
        super(new B2XianKuanSrcData());
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2XianKuanSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gpsB3 == null) {
            e("标杆点3没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gpsB4 == null) {
            e("标杆点4没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gpsB5 == null) {
            e("标杆点5没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gpsB6 == null) {
            e("标杆点6没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gpsB7 == null) {
            e("标杆点7没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gpsB8 == null) {
            e("标杆点8没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gps9 == null) {
            e("点9没有采集");
            return false;
        }
        if (((B2XianKuanSrcData) t).gps10 != null) {
            return true;
        }
        e("点10没有采集");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((B2XianKuanSrcData) t).gps1 = null;
        ((B2XianKuanSrcData) t).gps2 = null;
        ((B2XianKuanSrcData) t).gpsB3 = null;
        ((B2XianKuanSrcData) t).gpsB4 = null;
        ((B2XianKuanSrcData) t).gpsB5 = null;
        ((B2XianKuanSrcData) t).gpsB6 = null;
        ((B2XianKuanSrcData) t).gpsB7 = null;
        ((B2XianKuanSrcData) t).gpsB8 = null;
        ((B2XianKuanSrcData) t).gps9 = null;
        ((B2XianKuanSrcData) t).gps10 = null;
        ((B2XianKuanSrcData) t).start1 = null;
        ((B2XianKuanSrcData) t).start2 = null;
        ((B2XianKuanSrcData) t).name = null;
        this.c = false;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public void f(int i, Gps gps) {
        String str;
        switch (i) {
            case 1:
                ((B2XianKuanSrcData) this.f4847a).gps1 = new Gps(gps);
                str = "";
                break;
            case 2:
                ((B2XianKuanSrcData) this.f4847a).gps2 = new Gps(gps);
                str = "";
                break;
            case 3:
                ((B2XianKuanSrcData) this.f4847a).gpsB3 = new Gps(gps);
                str = "采集标杆3号点";
                break;
            case 4:
                ((B2XianKuanSrcData) this.f4847a).gpsB4 = new Gps(gps);
                str = "采集标杆4号点";
                break;
            case 5:
                ((B2XianKuanSrcData) this.f4847a).gpsB5 = new Gps(gps);
                str = "采集标杆5号点";
                break;
            case 6:
                ((B2XianKuanSrcData) this.f4847a).gpsB6 = new Gps(gps);
                str = "采集标杆6号点";
                break;
            case 7:
                ((B2XianKuanSrcData) this.f4847a).gpsB7 = new Gps(gps);
                str = "采集标杆7号点";
                break;
            case 8:
                ((B2XianKuanSrcData) this.f4847a).gpsB8 = new Gps(gps);
                str = "采集标杆8号点";
                break;
            case 9:
                ((B2XianKuanSrcData) this.f4847a).gps9 = new Gps(gps);
                str = "";
                break;
            case 10:
                ((B2XianKuanSrcData) this.f4847a).gps10 = new Gps(gps);
                str = "";
                break;
            default:
                str = "";
                break;
        }
        if (n0.g(str)) {
            e(str);
        } else {
            e("采集点" + i);
        }
        this.c = true;
    }

    public void g(Gps gps) {
        ((B2XianKuanSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((B2XianKuanSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
