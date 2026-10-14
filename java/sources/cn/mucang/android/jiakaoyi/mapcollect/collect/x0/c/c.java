package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.c;

import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.moto.MotoChangDiSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class c extends u0<MotoChangDiSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private boolean f4961d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f4962e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final PosCollectActivity f4963f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4964g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f4965h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            Gps gpsB = c.this.f4963f.v.b();
            if (gpsB != null) {
                c cVar = c.this;
                T t = cVar.f4847a;
                if (cVar.h(gpsB, ((MotoChangDiSrcData) t).solidLines.get(((MotoChangDiSrcData) t).solidLines.size() - 1)) && (t0Var = c.this.b) != null) {
                    t0Var.l();
                }
            }
            u.d(this, 500L);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            Gps gpsB = c.this.f4963f.v.b();
            if (gpsB != null) {
                c cVar = c.this;
                T t = cVar.f4847a;
                if (cVar.h(gpsB, ((MotoChangDiSrcData) t).dashLines.get(((MotoChangDiSrcData) t).dashLines.size() - 1)) && (t0Var = c.this.b) != null) {
                    t0Var.l();
                }
            }
            u.d(this, 500L);
        }
    }

    public c(PosCollectActivity posCollectActivity) {
        super(new MotoChangDiSrcData());
        this.f4961d = true;
        this.f4962e = true;
        this.f4964g = new a();
        this.f4965h = new b();
        this.f4963f = posCollectActivity;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean h(Gps gps, List<Gps> list) {
        if (Math.abs(gps.longitude) < 1.0E-5d || Math.abs(gps.latitude) < 1.0E-5d) {
            return false;
        }
        if (list.size() < 1) {
            list.add(gps);
            return true;
        }
        Gps gps2 = list.get(list.size() - 1);
        if (Math.abs(gps2.latitude - gps.latitude) + Math.abs(gps2.longitude - gps.longitude) < 1.0E-10d || gps.distanceTo(gps2) <= 0.2d) {
            return false;
        }
        list.add(gps);
        return true;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void a() {
        super.a();
        u.e(this.f4964g);
        u.e(this.f4965h);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        if (!cn.mucang.android.core.utils.g.b(((MotoChangDiSrcData) this.f4847a).solidLines) || !cn.mucang.android.core.utils.g.b(((MotoChangDiSrcData) this.f4847a).dashLines)) {
            return true;
        }
        e("没有采集任何线");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        ((MotoChangDiSrcData) this.f4847a).solidLines.clear();
        ((MotoChangDiSrcData) this.f4847a).dashLines.clear();
        T t = this.f4847a;
        ((MotoChangDiSrcData) t).start1 = null;
        ((MotoChangDiSrcData) t).start2 = null;
        ((MotoChangDiSrcData) t).name = null;
        this.c = false;
    }

    public void i() {
        if (!this.f4961d) {
            e("请先结束实线的采集");
            return;
        }
        e("结束地虚线采集");
        this.f4962e = true;
        u.e(this.f4965h);
    }

    public void j() {
        if (!this.f4962e) {
            e("请先结束虚线的采集");
            return;
        }
        e("结束场地实线采集");
        this.f4961d = true;
        u.e(this.f4964g);
    }

    public void k() {
        if (!this.f4962e) {
            e("请先结束采集");
            return;
        }
        if (!this.f4961d) {
            e("请先结束实线的采集");
            return;
        }
        this.c = true;
        this.f4962e = false;
        ((MotoChangDiSrcData) this.f4847a).dashLines.add(new ArrayList());
        u.e(this.f4965h);
        u.c(this.f4965h);
        e("开始场地虚线采集");
    }

    public void l() {
        if (!this.f4961d) {
            e("请先结束采集");
            return;
        }
        if (!this.f4962e) {
            e("请先结束虚线的采集");
            return;
        }
        this.c = true;
        this.f4961d = false;
        ((MotoChangDiSrcData) this.f4847a).solidLines.add(new ArrayList());
        u.e(this.f4964g);
        u.c(this.f4964g);
        e("开始场地实线采集");
    }
}
