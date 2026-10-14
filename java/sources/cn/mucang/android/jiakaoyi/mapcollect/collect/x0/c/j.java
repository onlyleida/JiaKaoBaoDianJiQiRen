package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoYouZhuanSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class j extends u0<MotoYouZhuanSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray<Gps> f4970d;

    public j() {
        super(new MotoYouZhuanSrcData());
        this.f4970d = new SparseArray<>();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoYouZhuanSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoYouZhuanSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoYouZhuanSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoYouZhuanSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (this.f4970d.size() <= 0 || this.f4970d.size() >= 4) {
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
        ((MotoYouZhuanSrcData) t).gps1 = null;
        ((MotoYouZhuanSrcData) t).gps2 = null;
        ((MotoYouZhuanSrcData) t).gps3 = null;
        ((MotoYouZhuanSrcData) t).gps4 = null;
        ((MotoYouZhuanSrcData) t).gps5 = null;
        ((MotoYouZhuanSrcData) t).gps6 = null;
        ((MotoYouZhuanSrcData) t).gps7 = null;
        ((MotoYouZhuanSrcData) t).gps8 = null;
        ((MotoYouZhuanSrcData) t).start1 = null;
        ((MotoYouZhuanSrcData) t).start2 = null;
        ((MotoYouZhuanSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps, String str) {
        switch (i) {
            case 1:
                ((MotoYouZhuanSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoYouZhuanSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoYouZhuanSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoYouZhuanSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoYouZhuanSrcData) this.f4847a).gps5 = new Gps(gps);
                this.f4970d.put(5, gps);
                break;
            case 6:
                ((MotoYouZhuanSrcData) this.f4847a).gps6 = new Gps(gps);
                this.f4970d.put(6, gps);
                break;
            case 7:
                ((MotoYouZhuanSrcData) this.f4847a).gps7 = new Gps(gps);
                this.f4970d.put(7, gps);
                break;
            case 8:
                ((MotoYouZhuanSrcData) this.f4847a).gps8 = new Gps(gps);
                this.f4970d.put(8, gps);
                break;
        }
        e("采集" + str);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoYouZhuanSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoYouZhuanSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
