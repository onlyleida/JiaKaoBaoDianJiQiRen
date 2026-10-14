package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoZuoZhuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class n extends u0<MotoZuoZhuanSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray<Gps> f4971d;

    public n() {
        super(new MotoZuoZhuanSrcData());
        this.f4971d = new SparseArray<>();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoZuoZhuanSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoZuoZhuanSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoZuoZhuanSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoZuoZhuanSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (this.f4971d.size() <= 0 || this.f4971d.size() >= 4) {
            return true;
        }
        e("请把评判区域采集完");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((MotoZuoZhuanSrcData) t).gps1 = null;
        ((MotoZuoZhuanSrcData) t).gps2 = null;
        ((MotoZuoZhuanSrcData) t).gps3 = null;
        ((MotoZuoZhuanSrcData) t).gps4 = null;
        ((MotoZuoZhuanSrcData) t).gps5 = null;
        ((MotoZuoZhuanSrcData) t).gps6 = null;
        ((MotoZuoZhuanSrcData) t).gps7 = null;
        ((MotoZuoZhuanSrcData) t).gps8 = null;
        ((MotoZuoZhuanSrcData) t).gps9 = null;
        ((MotoZuoZhuanSrcData) t).gps10 = null;
        ((MotoZuoZhuanSrcData) t).start1 = null;
        ((MotoZuoZhuanSrcData) t).start2 = null;
        ((MotoZuoZhuanSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps, String str) {
        switch (i) {
            case 1:
                ((MotoZuoZhuanSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoZuoZhuanSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoZuoZhuanSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoZuoZhuanSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoZuoZhuanSrcData) this.f4847a).gps5 = new Gps(gps);
                this.f4971d.put(5, gps);
                break;
            case 6:
                ((MotoZuoZhuanSrcData) this.f4847a).gps6 = new Gps(gps);
                this.f4971d.put(6, gps);
                break;
            case 7:
                ((MotoZuoZhuanSrcData) this.f4847a).gps7 = new Gps(gps);
                this.f4971d.put(7, gps);
                break;
            case 8:
                ((MotoZuoZhuanSrcData) this.f4847a).gps8 = new Gps(gps);
                this.f4971d.put(8, gps);
                break;
            case 9:
                ((MotoZuoZhuanSrcData) this.f4847a).gps9 = new Gps(gps);
                break;
            case 10:
                ((MotoZuoZhuanSrcData) this.f4847a).gps10 = new Gps(gps);
                break;
        }
        e("采集" + str);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoZuoZhuanSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoZuoZhuanSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
