package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import android.content.DialogInterface;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ChunHuaLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class q extends u0<B2ChunHuaLuSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4888d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4889e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4890f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4891g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f4892h;
    private final Runnable i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = q.this.f4847a;
            if (((B2ChunHuaLuSrcData) t).leftPoints == null) {
                ((B2ChunHuaLuSrcData) t).leftPoints = new ArrayList();
            }
            Gps gpsB = q.this.f4888d.v.b();
            if (gpsB != null) {
                q qVar = q.this;
                if (qVar.h(gpsB, ((B2ChunHuaLuSrcData) qVar.f4847a).leftPoints) && (t0Var = q.this.b) != null) {
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
            T t = q.this.f4847a;
            if (((B2ChunHuaLuSrcData) t).middlePoints == null) {
                ((B2ChunHuaLuSrcData) t).middlePoints = new ArrayList();
            }
            Gps gpsB = q.this.f4888d.v.b();
            if (gpsB != null) {
                q qVar = q.this;
                if (qVar.h(gpsB, ((B2ChunHuaLuSrcData) qVar.f4847a).middlePoints) && (t0Var = q.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 334L);
        }
    }

    class c implements Runnable {
        c() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = q.this.f4847a;
            if (((B2ChunHuaLuSrcData) t).rightPoints == null) {
                ((B2ChunHuaLuSrcData) t).rightPoints = new ArrayList();
            }
            Gps gpsB = q.this.f4888d.v.b();
            if (gpsB != null) {
                q qVar = q.this;
                if (qVar.h(gpsB, ((B2ChunHuaLuSrcData) qVar.f4847a).rightPoints) && (t0Var = q.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 334L);
        }
    }

    public q(PosCollectActivity posCollectActivity) {
        super(new B2ChunHuaLuSrcData());
        this.f4891g = new a();
        this.f4892h = new b();
        this.i = new c();
        this.f4888d = posCollectActivity;
        this.f4889e = false;
        this.f4890f = false;
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
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).middlePoints != null) {
            ((B2ChunHuaLuSrcData) t).middlePoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4892h);
        cn.mucang.android.core.utils.u.c(this.f4892h);
        e("开始采集中间线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).leftPoints != null) {
            ((B2ChunHuaLuSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4889e = false;
        cn.mucang.android.core.utils.u.e(this.f4891g);
        cn.mucang.android.core.utils.u.c(this.f4891g);
        e("开始采集左边线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).rightPoints != null) {
            ((B2ChunHuaLuSrcData) t).rightPoints.clear();
        }
        this.c = true;
        this.f4890f = false;
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.c(this.i);
        e("开始采集右边线");
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void a() {
        super.a();
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.e(this.f4891g);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).start1 == null || ((B2ChunHuaLuSrcData) t).start2 == null) {
            e("预报点没采集");
            return false;
        }
        if (((B2ChunHuaLuSrcData) t).leftPoints == null || ((B2ChunHuaLuSrcData) t).leftPoints.size() < 2) {
            e("左边线没有采集或者没有采集足够点");
            return false;
        }
        T t2 = this.f4847a;
        if (((B2ChunHuaLuSrcData) t2).middlePoints != null && ((B2ChunHuaLuSrcData) t2).middlePoints.size() < 2) {
            e("中间线没有采集足够点");
            return false;
        }
        T t3 = this.f4847a;
        if (((B2ChunHuaLuSrcData) t3).rightPoints != null && ((B2ChunHuaLuSrcData) t3).rightPoints.size() >= 2) {
            return true;
        }
        e("右边线没有采集或者没有采集足够点");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((B2ChunHuaLuSrcData) t).leftPoints = null;
        ((B2ChunHuaLuSrcData) t).middlePoints = null;
        ((B2ChunHuaLuSrcData) t).rightPoints = null;
        ((B2ChunHuaLuSrcData) t).start1 = null;
        ((B2ChunHuaLuSrcData) t).start2 = null;
        ((B2ChunHuaLuSrcData) t).name = null;
        this.f4889e = false;
        this.f4890f = false;
        this.c = false;
    }

    public void i() {
        e("结束采集中间线");
        cn.mucang.android.core.utils.u.e(this.f4892h);
    }

    public void j() {
        e("结束采集左边线");
        cn.mucang.android.core.utils.u.e(this.f4891g);
        this.f4889e = true;
    }

    public void k() {
        e("结束采集右边线");
        cn.mucang.android.core.utils.u.e(this.i);
        this.f4890f = true;
    }

    public boolean l() {
        return this.f4889e && this.f4890f;
    }

    public void s() {
        this.f4889e = true;
        this.f4890f = true;
    }

    public void t(Gps gps) {
        this.c = true;
        e("采集预报点1");
        ((B2ChunHuaLuSrcData) this.f4847a).start1 = new Gps(gps);
    }

    public void u(Gps gps) {
        this.c = true;
        e("采集预报点2");
        ((B2ChunHuaLuSrcData) this.f4847a).start2 = new Gps(gps);
    }

    public void v() {
        if (cn.mucang.android.core.utils.g.d(((B2ChunHuaLuSrcData) this.f4847a).middlePoints)) {
            e("是否覆盖中间线?");
            new androidx.appcompat.app.c.a(this.f4888d).setMessage("是否覆盖中间线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.a
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4866a.n(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).middlePoints != null) {
            ((B2ChunHuaLuSrcData) t).middlePoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4892h);
        cn.mucang.android.core.utils.u.c(this.f4892h);
        e("开始采集中间线");
    }

    public void w() {
        if (cn.mucang.android.core.utils.g.d(((B2ChunHuaLuSrcData) this.f4847a).leftPoints)) {
            e("是否覆盖左边线?");
            new androidx.appcompat.app.c.a(this.f4888d).setMessage("是否覆盖左边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.b
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4874a.p(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).leftPoints != null) {
            ((B2ChunHuaLuSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4889e = false;
        cn.mucang.android.core.utils.u.e(this.f4891g);
        cn.mucang.android.core.utils.u.c(this.f4891g);
        e("开始采集左边线");
    }

    public void x() {
        if (!this.f4889e) {
            e("左边线还没有采集完成");
            return;
        }
        if (cn.mucang.android.core.utils.g.d(((B2ChunHuaLuSrcData) this.f4847a).rightPoints)) {
            e("是否覆盖右边线?");
            new androidx.appcompat.app.c.a(this.f4888d).setMessage("是否覆盖右边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.c
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4875a.r(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2ChunHuaLuSrcData) t).rightPoints != null) {
            ((B2ChunHuaLuSrcData) t).rightPoints.clear();
        }
        this.f4890f = false;
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.c(this.i);
        e("开始采集右边线");
    }
}
