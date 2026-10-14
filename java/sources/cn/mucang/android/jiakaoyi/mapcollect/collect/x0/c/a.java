package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoBanMaXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class a extends u0<MotoBanMaXianSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray<Gps> f4959d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<Gps> f4960e;

    public a() {
        super(new MotoBanMaXianSrcData());
        this.f4959d = new SparseArray<>();
        this.f4960e = new SparseArray<>();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoBanMaXianSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoBanMaXianSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoBanMaXianSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoBanMaXianSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (this.f4959d.size() > 0 && this.f4959d.size() < 4) {
            e("请把评判区域采集完");
            return false;
        }
        if (this.f4960e.size() <= 0 || this.f4960e.size() >= 4) {
            return true;
        }
        e("请把斑马线区域采集完");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((MotoBanMaXianSrcData) t).gps1 = null;
        ((MotoBanMaXianSrcData) t).gps2 = null;
        ((MotoBanMaXianSrcData) t).gps3 = null;
        ((MotoBanMaXianSrcData) t).gps4 = null;
        ((MotoBanMaXianSrcData) t).gps5 = null;
        ((MotoBanMaXianSrcData) t).gps6 = null;
        ((MotoBanMaXianSrcData) t).gps7 = null;
        ((MotoBanMaXianSrcData) t).gps8 = null;
        ((MotoBanMaXianSrcData) t).gps9 = null;
        ((MotoBanMaXianSrcData) t).gps10 = null;
        ((MotoBanMaXianSrcData) t).gps11 = null;
        ((MotoBanMaXianSrcData) t).gps12 = null;
        ((MotoBanMaXianSrcData) t).start1 = null;
        ((MotoBanMaXianSrcData) t).start2 = null;
        ((MotoBanMaXianSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps, String str) {
        switch (i) {
            case 1:
                ((MotoBanMaXianSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoBanMaXianSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoBanMaXianSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoBanMaXianSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoBanMaXianSrcData) this.f4847a).gps5 = new Gps(gps);
                this.f4959d.put(5, gps);
                break;
            case 6:
                ((MotoBanMaXianSrcData) this.f4847a).gps6 = new Gps(gps);
                this.f4959d.put(6, gps);
                break;
            case 7:
                ((MotoBanMaXianSrcData) this.f4847a).gps7 = new Gps(gps);
                this.f4959d.put(7, gps);
                break;
            case 8:
                ((MotoBanMaXianSrcData) this.f4847a).gps8 = new Gps(gps);
                this.f4959d.put(8, gps);
                break;
            case 9:
                ((MotoBanMaXianSrcData) this.f4847a).gps9 = new Gps(gps);
                this.f4960e.put(9, gps);
                break;
            case 10:
                ((MotoBanMaXianSrcData) this.f4847a).gps10 = new Gps(gps);
                this.f4960e.put(10, gps);
                break;
            case 11:
                ((MotoBanMaXianSrcData) this.f4847a).gps11 = new Gps(gps);
                this.f4960e.put(11, gps);
                break;
            case 12:
                ((MotoBanMaXianSrcData) this.f4847a).gps12 = new Gps(gps);
                this.f4960e.put(12, gps);
                break;
        }
        e("采集" + str);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoBanMaXianSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoBanMaXianSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
