package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.b;

import android.content.DialogInterface;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.c2.C2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class n extends u0<C2SQuXianSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4943d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4944e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4945f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4946g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f4947h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = n.this.f4847a;
            if (((C2SQuXianSrcData) t).leftPoints == null) {
                ((C2SQuXianSrcData) t).leftPoints = new ArrayList();
            }
            Gps gpsB = n.this.f4943d.v.b();
            if (gpsB != null) {
                n nVar = n.this;
                if (nVar.n(gpsB, ((C2SQuXianSrcData) nVar.f4847a).leftPoints) && (t0Var = n.this.b) != null) {
                    t0Var.l();
                }
            }
            u.d(this, 334L);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = n.this.f4847a;
            if (((C2SQuXianSrcData) t).rightPoints == null) {
                ((C2SQuXianSrcData) t).rightPoints = new ArrayList();
            }
            Gps gpsB = n.this.f4943d.v.b();
            if (gpsB != null) {
                n nVar = n.this;
                if (nVar.n(gpsB, ((C2SQuXianSrcData) nVar.f4847a).rightPoints) && (t0Var = n.this.b) != null) {
                    t0Var.l();
                }
            }
            u.d(this, 334L);
        }
    }

    class c implements DialogInterface.OnClickListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            T t = n.this.f4847a;
            if (((C2SQuXianSrcData) t).leftPoints != null) {
                ((C2SQuXianSrcData) t).leftPoints.clear();
            }
            ((u0) n.this).c = true;
            n nVar = n.this;
            nVar.f4944e = false;
            u.e(nVar.f4946g);
            u.c(n.this.f4946g);
            n.this.e("开始采集1号线");
        }
    }

    class d implements DialogInterface.OnClickListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            T t = n.this.f4847a;
            if (((C2SQuXianSrcData) t).rightPoints != null) {
                ((C2SQuXianSrcData) t).rightPoints.clear();
            }
            ((u0) n.this).c = true;
            n nVar = n.this;
            nVar.f4945f = false;
            u.e(nVar.f4947h);
            u.c(n.this.f4947h);
            n.this.e("开始采集2号线");
        }
    }

    public n(PosCollectActivity posCollectActivity) {
        super(new C2SQuXianSrcData());
        this.f4946g = new a();
        this.f4947h = new b();
        this.f4943d = posCollectActivity;
        this.f4944e = false;
        this.f4945f = false;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean n(Gps gps, List<Gps> list) {
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
        u.e(this.f4947h);
        u.e(this.f4946g);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((C2SQuXianSrcData) t).leftPoints == null || ((C2SQuXianSrcData) t).leftPoints.size() < 20) {
            e("1号线没有采集或者没有采集足够点");
            return false;
        }
        T t2 = this.f4847a;
        if (((C2SQuXianSrcData) t2).rightPoints != null && ((C2SQuXianSrcData) t2).rightPoints.size() >= 20) {
            return true;
        }
        e("2号线没有采集或者没有采集足够点");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((C2SQuXianSrcData) t).leftPoints = null;
        ((C2SQuXianSrcData) t).rightPoints = null;
        ((C2SQuXianSrcData) t).start1 = null;
        ((C2SQuXianSrcData) t).start2 = null;
        ((C2SQuXianSrcData) t).name = null;
        this.f4944e = false;
        this.f4945f = false;
        this.c = false;
    }

    public void o() {
        e("结束采集1号线");
        u.e(this.f4946g);
        this.f4944e = true;
    }

    public void p() {
        e("结束采集2号线");
        u.e(this.f4947h);
        this.f4945f = true;
    }

    public boolean q() {
        return this.f4944e && this.f4945f;
    }

    public void r() {
        this.f4944e = true;
        this.f4945f = true;
    }

    public void s(Gps gps) {
        this.c = true;
        e("采集预报点1");
        ((C2SQuXianSrcData) this.f4847a).start1 = new Gps(gps);
    }

    public void t(Gps gps) {
        this.c = true;
        e("采集预报点2");
        ((C2SQuXianSrcData) this.f4847a).start2 = new Gps(gps);
    }

    public void u() {
        if (cn.mucang.android.core.utils.g.d(((C2SQuXianSrcData) this.f4847a).leftPoints)) {
            e("是否覆盖1号线?");
            new androidx.appcompat.app.c.a(this.f4943d).setMessage("是否覆盖1号线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new c()).create().show();
            return;
        }
        T t = this.f4847a;
        if (((C2SQuXianSrcData) t).leftPoints != null) {
            ((C2SQuXianSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4944e = false;
        u.e(this.f4946g);
        u.c(this.f4946g);
        e("开始采集1号线");
    }

    public void v() {
        if (!this.f4944e) {
            e("一号线还没有采集完成");
            return;
        }
        if (cn.mucang.android.core.utils.g.d(((C2SQuXianSrcData) this.f4847a).rightPoints)) {
            e("是否覆盖2号线?");
            new androidx.appcompat.app.c.a(this.f4943d).setMessage("是否覆盖2号线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new d()).create().show();
            return;
        }
        T t = this.f4847a;
        if (((C2SQuXianSrcData) t).rightPoints != null) {
            ((C2SQuXianSrcData) t).rightPoints.clear();
        }
        this.f4945f = false;
        this.c = true;
        u.e(this.f4947h);
        u.c(this.f4947h);
        e("开始采集2号线");
    }
}
