package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoDiaoTouSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;

/* JADX INFO: loaded from: classes3.dex */
public class e extends u0<MotoDiaoTouSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final SparseArray<Gps> f4968d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<Gps> f4969e;

    public e() {
        super(new MotoDiaoTouSrcData());
        this.f4968d = new SparseArray<>();
        this.f4969e = new SparseArray<>();
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((MotoDiaoTouSrcData) t).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((MotoDiaoTouSrcData) t).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((MotoDiaoTouSrcData) t).gps3 == null) {
            e("点3没有采集");
            return false;
        }
        if (((MotoDiaoTouSrcData) t).gps4 == null) {
            e("点4没有采集");
            return false;
        }
        if (this.f4968d.size() > 0 && this.f4968d.size() < 4) {
            e("请把掉头区域采集完");
            return false;
        }
        if (this.f4969e.size() <= 0 || this.f4969e.size() >= 4) {
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
        ((MotoDiaoTouSrcData) t).gps1 = null;
        ((MotoDiaoTouSrcData) t).gps2 = null;
        ((MotoDiaoTouSrcData) t).gps3 = null;
        ((MotoDiaoTouSrcData) t).gps4 = null;
        ((MotoDiaoTouSrcData) t).gps5 = null;
        ((MotoDiaoTouSrcData) t).gps6 = null;
        ((MotoDiaoTouSrcData) t).gps7 = null;
        ((MotoDiaoTouSrcData) t).gps8 = null;
        ((MotoDiaoTouSrcData) t).gps9 = null;
        ((MotoDiaoTouSrcData) t).gps10 = null;
        ((MotoDiaoTouSrcData) t).gps11 = null;
        ((MotoDiaoTouSrcData) t).gps12 = null;
        ((MotoDiaoTouSrcData) t).start1 = null;
        ((MotoDiaoTouSrcData) t).start2 = null;
        ((MotoDiaoTouSrcData) t).name = null;
        this.c = false;
    }

    public void f(int i, Gps gps, String str) {
        switch (i) {
            case 1:
                ((MotoDiaoTouSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((MotoDiaoTouSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((MotoDiaoTouSrcData) this.f4847a).gps3 = new Gps(gps);
                break;
            case 4:
                ((MotoDiaoTouSrcData) this.f4847a).gps4 = new Gps(gps);
                break;
            case 5:
                ((MotoDiaoTouSrcData) this.f4847a).gps5 = new Gps(gps);
                this.f4968d.put(5, gps);
                break;
            case 6:
                ((MotoDiaoTouSrcData) this.f4847a).gps6 = new Gps(gps);
                this.f4968d.put(6, gps);
                break;
            case 7:
                ((MotoDiaoTouSrcData) this.f4847a).gps7 = new Gps(gps);
                this.f4968d.put(7, gps);
                break;
            case 8:
                ((MotoDiaoTouSrcData) this.f4847a).gps8 = new Gps(gps);
                this.f4968d.put(8, gps);
                break;
            case 9:
                ((MotoDiaoTouSrcData) this.f4847a).gps9 = new Gps(gps);
                this.f4969e.put(9, gps);
                break;
            case 10:
                ((MotoDiaoTouSrcData) this.f4847a).gps10 = new Gps(gps);
                this.f4969e.put(10, gps);
                break;
            case 11:
                ((MotoDiaoTouSrcData) this.f4847a).gps11 = new Gps(gps);
                this.f4969e.put(11, gps);
                break;
            case 12:
                ((MotoDiaoTouSrcData) this.f4847a).gps12 = new Gps(gps);
                this.f4969e.put(12, gps);
                break;
        }
        e("采集" + str);
        this.c = true;
    }

    public void g(Gps gps) {
        ((MotoDiaoTouSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void h(Gps gps) {
        ((MotoDiaoTouSrcData) this.f4847a).start2 = new Gps(gps);
        e("采集预报点2");
        this.c = true;
    }
}
