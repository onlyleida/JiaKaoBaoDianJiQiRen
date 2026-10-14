package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import android.content.DialogInterface;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2ShanLuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class y extends u0<B2ShanLuSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4921d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public boolean f4922e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4923f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Runnable f4924g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f4925h;
    private final Runnable i;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = y.this.f4847a;
            if (((B2ShanLuSrcData) t).leftPoints == null) {
                ((B2ShanLuSrcData) t).leftPoints = new ArrayList();
            }
            Gps gpsB = y.this.f4921d.v.b();
            if (gpsB != null) {
                y yVar = y.this;
                if (yVar.h(gpsB, ((B2ShanLuSrcData) yVar.f4847a).leftPoints) && (t0Var = y.this.b) != null) {
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
            T t = y.this.f4847a;
            if (((B2ShanLuSrcData) t).middlePoints == null) {
                ((B2ShanLuSrcData) t).middlePoints = new ArrayList();
            }
            Gps gpsB = y.this.f4921d.v.b();
            if (gpsB != null) {
                y yVar = y.this;
                if (yVar.h(gpsB, ((B2ShanLuSrcData) yVar.f4847a).middlePoints) && (t0Var = y.this.b) != null) {
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
            T t = y.this.f4847a;
            if (((B2ShanLuSrcData) t).rightPoints == null) {
                ((B2ShanLuSrcData) t).rightPoints = new ArrayList();
            }
            Gps gpsB = y.this.f4921d.v.b();
            if (gpsB != null) {
                y yVar = y.this;
                if (yVar.h(gpsB, ((B2ShanLuSrcData) yVar.f4847a).rightPoints) && (t0Var = y.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 500L);
        }
    }

    public y(PosCollectActivity posCollectActivity) {
        super(new B2ShanLuSrcData());
        this.f4924g = new a();
        this.f4925h = new b();
        this.i = new c();
        this.f4922e = false;
        this.f4923f = false;
        this.f4921d = posCollectActivity;
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

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).middlePoints != null) {
            ((B2ShanLuSrcData) t).middlePoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4925h);
        cn.mucang.android.core.utils.u.c(this.f4925h);
        e("开始采集中间线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).leftPoints != null) {
            ((B2ShanLuSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4922e = false;
        cn.mucang.android.core.utils.u.e(this.f4924g);
        cn.mucang.android.core.utils.u.c(this.f4924g);
        e("开始采集左边线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).rightPoints != null) {
            ((B2ShanLuSrcData) t).rightPoints.clear();
        }
        this.c = true;
        this.f4923f = false;
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.c(this.i);
        e("开始采集右边线");
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void a() {
        super.a();
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.e(this.f4925h);
        cn.mucang.android.core.utils.u.e(this.f4924g);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).start1 == null || ((B2ShanLuSrcData) t).start2 == null) {
            e("预报点没采集");
            return false;
        }
        if (((B2ShanLuSrcData) t).leftPoints == null || ((B2ShanLuSrcData) t).leftPoints.size() < 20) {
            e("左边线没有采集足够点");
            return false;
        }
        T t2 = this.f4847a;
        if (((B2ShanLuSrcData) t2).middlePoints == null || ((B2ShanLuSrcData) t2).middlePoints.size() < 20) {
            e("中间线没有采集足够点");
            return false;
        }
        T t3 = this.f4847a;
        if (((B2ShanLuSrcData) t3).rightPoints != null && ((B2ShanLuSrcData) t3).rightPoints.size() >= 20) {
            return true;
        }
        e("右边线没有采集足够点");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((B2ShanLuSrcData) t).leftPoints = null;
        ((B2ShanLuSrcData) t).middlePoints = null;
        ((B2ShanLuSrcData) t).rightPoints = null;
        ((B2ShanLuSrcData) t).start1 = null;
        ((B2ShanLuSrcData) t).start2 = null;
        ((B2ShanLuSrcData) t).name = null;
        this.c = false;
        this.f4922e = false;
        this.f4923f = false;
    }

    public void i() {
        e("结束采集中间线");
        cn.mucang.android.core.utils.u.e(this.f4925h);
    }

    public void j() {
        e("结束采集左边线");
        this.f4922e = true;
        cn.mucang.android.core.utils.u.e(this.f4924g);
    }

    public void k() {
        e("结束采集右边线");
        this.f4923f = true;
        cn.mucang.android.core.utils.u.e(this.i);
    }

    public boolean l() {
        return this.f4922e && this.f4923f;
    }

    public void s() {
        this.f4922e = true;
        this.f4923f = true;
    }

    public void t(int i, Gps gps, String str) {
        switch (i) {
            case 8:
                ((B2ShanLuSrcData) this.f4847a).firstHonkReport1 = new Gps(gps);
                break;
            case 9:
                ((B2ShanLuSrcData) this.f4847a).firstHonkReport2 = new Gps(gps);
                break;
            case 10:
                ((B2ShanLuSrcData) this.f4847a).firstHonk1 = new Gps(gps);
                break;
            case 11:
                ((B2ShanLuSrcData) this.f4847a).firstHonk2 = new Gps(gps);
                break;
            case 12:
                ((B2ShanLuSrcData) this.f4847a).secondHonkReport1 = new Gps(gps);
                break;
            case 13:
                ((B2ShanLuSrcData) this.f4847a).secondHonkReport2 = new Gps(gps);
                break;
            case 14:
                ((B2ShanLuSrcData) this.f4847a).secondHonk1 = new Gps(gps);
                break;
            case 15:
                ((B2ShanLuSrcData) this.f4847a).secondHonk2 = new Gps(gps);
                break;
        }
        e(str);
        this.c = true;
    }

    public void u(Gps gps) {
        ((B2ShanLuSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void v(Gps gps) {
        ((B2ShanLuSrcData) this.f4847a).start2 = new Gps(gps);
        this.c = true;
        e("采集预报点2");
    }

    public void w() {
        if (cn.mucang.android.core.utils.g.d(((B2ShanLuSrcData) this.f4847a).middlePoints)) {
            e("是否覆盖中间线?");
            new androidx.appcompat.app.c.a(this.f4921d).setMessage("是否覆盖中间线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.k
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4883a.n(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).middlePoints != null) {
            ((B2ShanLuSrcData) t).middlePoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.f4925h);
        cn.mucang.android.core.utils.u.c(this.f4925h);
        e("开始采集中间线");
    }

    public void x() {
        if (cn.mucang.android.core.utils.g.d(((B2ShanLuSrcData) this.f4847a).leftPoints)) {
            e("是否覆盖左边线?");
            new androidx.appcompat.app.c.a(this.f4921d).setMessage("是否覆盖左边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.j
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4882a.p(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).leftPoints != null) {
            ((B2ShanLuSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4922e = false;
        cn.mucang.android.core.utils.u.e(this.f4924g);
        cn.mucang.android.core.utils.u.c(this.f4924g);
        e("开始采集左边线");
    }

    public void y() {
        if (cn.mucang.android.core.utils.g.d(((B2ShanLuSrcData) this.f4847a).rightPoints)) {
            e("是否覆盖右边线?");
            new androidx.appcompat.app.c.a(this.f4921d).setMessage("是否覆盖右边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.l
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4884a.r(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2ShanLuSrcData) t).rightPoints != null) {
            ((B2ShanLuSrcData) t).rightPoints.clear();
        }
        this.c = true;
        this.f4923f = false;
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.c(this.i);
        e("开始采集右边线");
    }
}
