package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import android.content.DialogInterface;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SQuXianSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class x extends u0<B2SQuXianSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4912d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4913e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4914f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4915g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f4916h;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = x.this.f4847a;
            if (((B2SQuXianSrcData) t).leftPoints == null) {
                ((B2SQuXianSrcData) t).leftPoints = new ArrayList();
            }
            Gps gpsB = x.this.f4912d.v.b();
            if (gpsB != null) {
                x xVar = x.this;
                if (xVar.n(gpsB, ((B2SQuXianSrcData) xVar.f4847a).leftPoints) && (t0Var = x.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 334L);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = x.this.f4847a;
            if (((B2SQuXianSrcData) t).rightPoints == null) {
                ((B2SQuXianSrcData) t).rightPoints = new ArrayList();
            }
            Gps gpsB = x.this.f4912d.v.b();
            if (gpsB != null) {
                x xVar = x.this;
                if (xVar.n(gpsB, ((B2SQuXianSrcData) xVar.f4847a).rightPoints) && (t0Var = x.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 334L);
        }
    }

    class c implements DialogInterface.OnClickListener {
        c() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            T t = x.this.f4847a;
            if (((B2SQuXianSrcData) t).leftPoints != null) {
                ((B2SQuXianSrcData) t).leftPoints.clear();
            }
            ((u0) x.this).c = true;
            x xVar = x.this;
            xVar.f4913e = false;
            cn.mucang.android.core.utils.u.e(xVar.f4915g);
            cn.mucang.android.core.utils.u.c(x.this.f4915g);
            x.this.e("开始采集1号线");
        }
    }

    class d implements DialogInterface.OnClickListener {
        d() {
        }

        @Override // android.content.DialogInterface.OnClickListener
        public void onClick(DialogInterface dialogInterface, int i) {
            T t = x.this.f4847a;
            if (((B2SQuXianSrcData) t).rightPoints != null) {
                ((B2SQuXianSrcData) t).rightPoints.clear();
            }
            ((u0) x.this).c = true;
            x xVar = x.this;
            xVar.f4914f = false;
            cn.mucang.android.core.utils.u.e(xVar.f4916h);
            cn.mucang.android.core.utils.u.c(x.this.f4916h);
            x.this.e("开始采集2号线");
        }
    }

    public x(PosCollectActivity posCollectActivity) {
        super(new B2SQuXianSrcData());
        this.f4915g = new a();
        this.f4916h = new b();
        this.f4912d = posCollectActivity;
        this.f4913e = false;
        this.f4914f = false;
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
        cn.mucang.android.core.utils.u.e(this.f4916h);
        cn.mucang.android.core.utils.u.e(this.f4915g);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2SQuXianSrcData) t).leftPoints == null || ((B2SQuXianSrcData) t).leftPoints.size() < 20) {
            e("1号线没有采集或者没有采集足够点");
            return false;
        }
        T t2 = this.f4847a;
        if (((B2SQuXianSrcData) t2).rightPoints != null && ((B2SQuXianSrcData) t2).rightPoints.size() >= 20) {
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
        ((B2SQuXianSrcData) t).leftPoints = null;
        ((B2SQuXianSrcData) t).rightPoints = null;
        ((B2SQuXianSrcData) t).start1 = null;
        ((B2SQuXianSrcData) t).start2 = null;
        ((B2SQuXianSrcData) t).name = null;
        this.f4913e = false;
        this.f4914f = false;
        this.c = false;
    }

    public void o() {
        e("结束采集1号线");
        cn.mucang.android.core.utils.u.e(this.f4915g);
        this.f4913e = true;
    }

    public void p() {
        e("结束采集2号线");
        cn.mucang.android.core.utils.u.e(this.f4916h);
        this.f4914f = true;
    }

    public boolean q() {
        return this.f4913e && this.f4914f;
    }

    public void r() {
        this.f4913e = true;
        this.f4914f = true;
    }

    public void s(Gps gps) {
        this.c = true;
        e("采集预报点1");
        ((B2SQuXianSrcData) this.f4847a).start1 = new Gps(gps);
    }

    public void t(Gps gps) {
        this.c = true;
        e("采集预报点2");
        ((B2SQuXianSrcData) this.f4847a).start2 = new Gps(gps);
    }

    public void u() {
        if (cn.mucang.android.core.utils.g.d(((B2SQuXianSrcData) this.f4847a).leftPoints)) {
            e("是否覆盖1号线?");
            new androidx.appcompat.app.c.a(this.f4912d).setMessage("是否覆盖1号线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new c()).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2SQuXianSrcData) t).leftPoints != null) {
            ((B2SQuXianSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4913e = false;
        cn.mucang.android.core.utils.u.e(this.f4915g);
        cn.mucang.android.core.utils.u.c(this.f4915g);
        e("开始采集1号线");
    }

    public void v() {
        if (!this.f4913e) {
            e("一号线还没有采集完成");
            return;
        }
        if (cn.mucang.android.core.utils.g.d(((B2SQuXianSrcData) this.f4847a).rightPoints)) {
            e("是否覆盖2号线?");
            new androidx.appcompat.app.c.a(this.f4912d).setMessage("是否覆盖2号线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new d()).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2SQuXianSrcData) t).rightPoints != null) {
            ((B2SQuXianSrcData) t).rightPoints.clear();
        }
        this.f4914f = false;
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4916h);
        cn.mucang.android.core.utils.u.c(this.f4916h);
        e("开始采集2号线");
    }
}
