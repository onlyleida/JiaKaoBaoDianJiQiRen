package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import android.content.DialogInterface;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2SuiDaoSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class a0 extends u0<B2SuiDaoSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4867d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Runnable f4868e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final Runnable f4869f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4870g;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = a0.this.f4847a;
            if (((B2SuiDaoSrcData) t).leftPoints == null) {
                ((B2SuiDaoSrcData) t).leftPoints = new ArrayList();
            }
            Gps gpsB = a0.this.f4867d.v.b();
            if (gpsB != null) {
                a0 a0Var = a0.this;
                if (a0Var.h(gpsB, ((B2SuiDaoSrcData) a0Var.f4847a).leftPoints) && (t0Var = a0.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 500L);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = a0.this.f4847a;
            if (((B2SuiDaoSrcData) t).centerPoints == null) {
                ((B2SuiDaoSrcData) t).centerPoints = new ArrayList();
            }
            Gps gpsB = a0.this.f4867d.v.b();
            if (gpsB != null) {
                a0 a0Var = a0.this;
                if (a0Var.h(gpsB, ((B2SuiDaoSrcData) a0Var.f4847a).centerPoints) && (t0Var = a0.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 500L);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = a0.this.f4847a;
            if (((B2SuiDaoSrcData) t).rightPoints == null) {
                ((B2SuiDaoSrcData) t).rightPoints = new ArrayList();
            }
            Gps gpsB = a0.this.f4867d.v.b();
            if (gpsB != null) {
                a0 a0Var = a0.this;
                if (a0Var.h(gpsB, ((B2SuiDaoSrcData) a0Var.f4847a).rightPoints) && (t0Var = a0.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 500L);
        }
    }

    public a0(PosCollectActivity posCollectActivity) {
        super(new B2SuiDaoSrcData());
        this.f4868e = new a();
        this.f4869f = new b();
        this.f4870g = new c();
        this.f4867d = posCollectActivity;
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
        if (Math.abs(gps2.latitude - gps.latitude) + Math.abs(gps2.longitude - gps.longitude) < 1.0E-10d || gps.distanceTo(gps2) <= 0.05d) {
            return false;
        }
        list.add(gps);
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).centerPoints != null) {
            ((B2SuiDaoSrcData) t).centerPoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4869f);
        cn.mucang.android.core.utils.u.c(this.f4869f);
        e("开始采集中间线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).leftPoints != null) {
            ((B2SuiDaoSrcData) t).leftPoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4868e);
        cn.mucang.android.core.utils.u.c(this.f4868e);
        e("开始采集左边线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void q(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).rightPoints != null) {
            ((B2SuiDaoSrcData) t).rightPoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4870g);
        cn.mucang.android.core.utils.u.c(this.f4870g);
        e("开始采集右边线");
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void a() {
        super.a();
        cn.mucang.android.core.utils.u.e(this.f4870g);
        cn.mucang.android.core.utils.u.e(this.f4869f);
        cn.mucang.android.core.utils.u.e(this.f4868e);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).start1 == null || ((B2SuiDaoSrcData) t).start2 == null) {
            e("预报点没采集");
            return false;
        }
        if (((B2SuiDaoSrcData) t).gps1 == null || ((B2SuiDaoSrcData) t).gps2 == null) {
            e("开始线没采集");
            return false;
        }
        if (((B2SuiDaoSrcData) t).gps3 == null || ((B2SuiDaoSrcData) t).gps4 == null) {
            e("结束线没采集");
            return false;
        }
        if (((B2SuiDaoSrcData) t).leftPoints != null && ((B2SuiDaoSrcData) t).leftPoints.size() == 1) {
            e("左边线没有采集足够点");
            return false;
        }
        T t2 = this.f4847a;
        if (((B2SuiDaoSrcData) t2).centerPoints != null && ((B2SuiDaoSrcData) t2).centerPoints.size() == 1) {
            e("中间线没有采集足够点");
            return false;
        }
        T t3 = this.f4847a;
        if (((B2SuiDaoSrcData) t3).rightPoints != null && ((B2SuiDaoSrcData) t3).rightPoints.size() == 1) {
            e("右边线没有采集足够点");
            return false;
        }
        T t4 = this.f4847a;
        if (((B2SuiDaoSrcData) t4).leftPoints != null && ((B2SuiDaoSrcData) t4).leftPoints.size() > 1 && ((B2SuiDaoSrcData) this.f4847a).rightPoints == null) {
            e("右边线必须采集");
            return false;
        }
        T t5 = this.f4847a;
        if (((B2SuiDaoSrcData) t5).rightPoints != null && ((B2SuiDaoSrcData) t5).rightPoints.size() > 1 && ((B2SuiDaoSrcData) this.f4847a).leftPoints == null) {
            e("左边线必须采集");
            return false;
        }
        if (((B2SuiDaoSrcData) this.f4847a).distance != 0.0d) {
            return true;
        }
        e("隧道长度没采集");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((B2SuiDaoSrcData) t).gps1 = null;
        ((B2SuiDaoSrcData) t).gps2 = null;
        ((B2SuiDaoSrcData) t).gps3 = null;
        ((B2SuiDaoSrcData) t).gps4 = null;
        ((B2SuiDaoSrcData) t).leftPoints = null;
        ((B2SuiDaoSrcData) t).centerPoints = null;
        ((B2SuiDaoSrcData) t).rightPoints = null;
        ((B2SuiDaoSrcData) t).start1 = null;
        ((B2SuiDaoSrcData) t).start2 = null;
        ((B2SuiDaoSrcData) t).name = null;
        this.c = false;
        ((B2SuiDaoSrcData) t).distance = 0.0d;
    }

    public void i() {
        e("结束采集中间线");
        cn.mucang.android.core.utils.u.e(this.f4869f);
    }

    public void j() {
        e("结束采集左边线");
        cn.mucang.android.core.utils.u.e(this.f4868e);
    }

    public void k() {
        e("结束采集右边线");
        cn.mucang.android.core.utils.u.e(this.f4870g);
    }

    public void r(double d2) {
        ((B2SuiDaoSrcData) this.f4847a).distance = d2;
    }

    public void s(int i, Gps gps) {
        if (i == 2) {
            ((B2SuiDaoSrcData) this.f4847a).gps1 = new Gps(gps);
        } else if (i == 3) {
            ((B2SuiDaoSrcData) this.f4847a).gps2 = new Gps(gps);
        } else if (i == 4) {
            ((B2SuiDaoSrcData) this.f4847a).gps3 = new Gps(gps);
        } else if (i == 5) {
            ((B2SuiDaoSrcData) this.f4847a).gps4 = new Gps(gps);
        }
        this.c = true;
        e("采集点" + (i - 1));
    }

    public void t(Gps gps) {
        ((B2SuiDaoSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void u(Gps gps) {
        ((B2SuiDaoSrcData) this.f4847a).start2 = new Gps(gps);
        this.c = true;
        e("采集预报点2");
    }

    public void v() {
        if (cn.mucang.android.core.utils.g.d(((B2SuiDaoSrcData) this.f4847a).centerPoints)) {
            e("是否覆盖中间线?");
            new androidx.appcompat.app.c.a(this.f4867d).setMessage("是否覆盖中间线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.o
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4887a.m(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).centerPoints != null) {
            ((B2SuiDaoSrcData) t).centerPoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4869f);
        cn.mucang.android.core.utils.u.c(this.f4869f);
        e("开始采集中间线");
    }

    public void w() {
        if (cn.mucang.android.core.utils.g.d(((B2SuiDaoSrcData) this.f4847a).leftPoints)) {
            e("是否覆盖左边线?");
            new androidx.appcompat.app.c.a(this.f4867d).setMessage("是否覆盖左边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.m
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4885a.o(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).leftPoints != null) {
            ((B2SuiDaoSrcData) t).leftPoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4868e);
        cn.mucang.android.core.utils.u.c(this.f4868e);
        e("开始采集左边线");
    }

    public void x() {
        if (cn.mucang.android.core.utils.g.d(((B2SuiDaoSrcData) this.f4847a).rightPoints)) {
            e("是否覆盖右边线?");
            new androidx.appcompat.app.c.a(this.f4867d).setMessage("是否覆盖右边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.n
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4886a.q(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2SuiDaoSrcData) t).rightPoints != null) {
            ((B2SuiDaoSrcData) t).rightPoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4870g);
        cn.mucang.android.core.utils.u.c(this.f4870g);
        e("开始采集右边线");
    }
}
