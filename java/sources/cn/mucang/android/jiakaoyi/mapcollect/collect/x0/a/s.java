package cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a;

import android.content.DialogInterface;
import android.util.SparseArray;
import cn.mucang.android.jiakaoyi.mapcollect.collect.PosCollectActivity;
import cn.mucang.android.jiakaoyi.mapcollect.collect.source.b2.B2GaoSuSrcData;
import cn.mucang.android.jiakaoyi.mapcollect.collect.t0;
import cn.mucang.android.jiakaoyi.mapcollect.collect.u0;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class s extends u0<B2GaoSuSrcData> {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final PosCollectActivity f4896d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final SparseArray<Gps> f4897e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public boolean f4898f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public boolean f4899g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Runnable f4900h;
    private final Runnable i;
    private final Runnable j;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            t0 t0Var;
            T t = s.this.f4847a;
            if (((B2GaoSuSrcData) t).leftPoints == null) {
                ((B2GaoSuSrcData) t).leftPoints = new ArrayList();
            }
            Gps gpsB = s.this.f4896d.v.b();
            if (gpsB != null) {
                s sVar = s.this;
                if (sVar.h(gpsB, ((B2GaoSuSrcData) sVar.f4847a).leftPoints) && (t0Var = s.this.b) != null) {
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
            T t = s.this.f4847a;
            if (((B2GaoSuSrcData) t).middlePoints == null) {
                ((B2GaoSuSrcData) t).middlePoints = new ArrayList();
            }
            Gps gpsB = s.this.f4896d.v.b();
            if (gpsB != null) {
                s sVar = s.this;
                if (sVar.h(gpsB, ((B2GaoSuSrcData) sVar.f4847a).middlePoints) && (t0Var = s.this.b) != null) {
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
            T t = s.this.f4847a;
            if (((B2GaoSuSrcData) t).rightPoints == null) {
                ((B2GaoSuSrcData) t).rightPoints = new ArrayList();
            }
            Gps gpsB = s.this.f4896d.v.b();
            if (gpsB != null) {
                s sVar = s.this;
                if (sVar.h(gpsB, ((B2GaoSuSrcData) sVar.f4847a).rightPoints) && (t0Var = s.this.b) != null) {
                    t0Var.l();
                }
            }
            cn.mucang.android.core.utils.u.d(this, 500L);
        }
    }

    public s(PosCollectActivity posCollectActivity) {
        super(new B2GaoSuSrcData());
        this.f4897e = new SparseArray<>();
        this.f4900h = new a();
        this.i = new b();
        this.j = new c();
        this.f4898f = false;
        this.f4899g = false;
        this.f4896d = posCollectActivity;
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
        if (((B2GaoSuSrcData) t).middlePoints != null) {
            ((B2GaoSuSrcData) t).middlePoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.c(this.i);
        e("开始采集中间线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2GaoSuSrcData) t).leftPoints != null) {
            ((B2GaoSuSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4898f = false;
        cn.mucang.android.core.utils.u.e(this.f4900h);
        cn.mucang.android.core.utils.u.c(this.f4900h);
        e("开始采集左边线");
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(DialogInterface dialogInterface, int i) {
        T t = this.f4847a;
        if (((B2GaoSuSrcData) t).rightPoints != null) {
            ((B2GaoSuSrcData) t).rightPoints.clear();
        }
        this.c = true;
        this.f4899g = false;
        cn.mucang.android.core.utils.u.e(this.j);
        cn.mucang.android.core.utils.u.c(this.j);
        e("开始采集右边线");
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void a() {
        super.a();
        cn.mucang.android.core.utils.u.e(this.j);
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.e(this.f4900h);
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean b() {
        T t = this.f4847a;
        if (((B2GaoSuSrcData) t).leftPoints == null || ((B2GaoSuSrcData) t).leftPoints.size() < 20) {
            e("左边线没有采集足够点");
            return false;
        }
        T t2 = this.f4847a;
        if (((B2GaoSuSrcData) t2).middlePoints == null || ((B2GaoSuSrcData) t2).middlePoints.size() < 20) {
            e("中间线没有采集足够点");
            return false;
        }
        T t3 = this.f4847a;
        if (((B2GaoSuSrcData) t3).rightPoints == null || ((B2GaoSuSrcData) t3).rightPoints.size() < 20) {
            e("右边线没有采集足够点");
            return false;
        }
        T t4 = this.f4847a;
        if (((B2GaoSuSrcData) t4).gps1 == null) {
            e("点1没有采集");
            return false;
        }
        if (((B2GaoSuSrcData) t4).gps2 == null) {
            e("点2没有采集");
            return false;
        }
        if (((B2GaoSuSrcData) t4).gps9 == null) {
            e("点9没有采集");
            return false;
        }
        if (((B2GaoSuSrcData) t4).gps10 == null) {
            e("点10没有采集");
            return false;
        }
        if (this.f4897e.size() < 2 || this.f4897e.size() >= 6) {
            return true;
        }
        e("请把剩余点采集完");
        return false;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public boolean c() {
        return this.c;
    }

    @Override // cn.mucang.android.jiakaoyi.mapcollect.collect.u0
    public void d() {
        T t = this.f4847a;
        ((B2GaoSuSrcData) t).leftPoints = null;
        ((B2GaoSuSrcData) t).middlePoints = null;
        ((B2GaoSuSrcData) t).rightPoints = null;
        ((B2GaoSuSrcData) t).gps1 = null;
        ((B2GaoSuSrcData) t).gps2 = null;
        ((B2GaoSuSrcData) t).gps3 = null;
        ((B2GaoSuSrcData) t).gps4 = null;
        ((B2GaoSuSrcData) t).gps5 = null;
        ((B2GaoSuSrcData) t).gps6 = null;
        ((B2GaoSuSrcData) t).gps7 = null;
        ((B2GaoSuSrcData) t).gps8 = null;
        ((B2GaoSuSrcData) t).gps9 = null;
        ((B2GaoSuSrcData) t).gps10 = null;
        ((B2GaoSuSrcData) t).start1 = null;
        ((B2GaoSuSrcData) t).start2 = null;
        ((B2GaoSuSrcData) t).name = null;
        this.c = false;
        this.f4898f = false;
        this.f4899g = false;
    }

    public void i() {
        e("结束采集中间线");
        cn.mucang.android.core.utils.u.e(this.i);
    }

    public void j() {
        e("结束采集左边线");
        this.f4898f = true;
        cn.mucang.android.core.utils.u.e(this.f4900h);
    }

    public void k() {
        e("结束采集右边线");
        this.f4899g = true;
        cn.mucang.android.core.utils.u.e(this.j);
    }

    public boolean l() {
        return this.f4898f && this.f4899g;
    }

    public void s(int i, Gps gps, String str) {
        this.c = true;
        switch (i) {
            case 18:
                ((B2GaoSuSrcData) this.f4847a).line0Gps1 = new Gps(gps);
                break;
            case 19:
                ((B2GaoSuSrcData) this.f4847a).line0Gps2 = new Gps(gps);
                break;
            case 20:
                ((B2GaoSuSrcData) this.f4847a).line50Gps1 = new Gps(gps);
                break;
            case 21:
                ((B2GaoSuSrcData) this.f4847a).line50Gps2 = new Gps(gps);
                break;
            case 22:
                ((B2GaoSuSrcData) this.f4847a).line100Gps1 = new Gps(gps);
                break;
            case 23:
                ((B2GaoSuSrcData) this.f4847a).line100Gps2 = new Gps(gps);
                break;
            case 24:
                ((B2GaoSuSrcData) this.f4847a).line150Gps1 = new Gps(gps);
                break;
            case 25:
                ((B2GaoSuSrcData) this.f4847a).line150Gps2 = new Gps(gps);
                break;
            case 26:
                ((B2GaoSuSrcData) this.f4847a).line200Gps1 = new Gps(gps);
                break;
            case 27:
                ((B2GaoSuSrcData) this.f4847a).line200Gps2 = new Gps(gps);
                break;
        }
        e(str);
    }

    public void t() {
        this.f4898f = true;
        this.f4899g = true;
    }

    public void u(int i, Gps gps) {
        this.c = true;
        switch (i) {
            case 1:
                ((B2GaoSuSrcData) this.f4847a).gps1 = new Gps(gps);
                break;
            case 2:
                ((B2GaoSuSrcData) this.f4847a).gps2 = new Gps(gps);
                break;
            case 3:
                ((B2GaoSuSrcData) this.f4847a).gps3 = new Gps(gps);
                this.f4897e.put(3, ((B2GaoSuSrcData) this.f4847a).gps3);
                break;
            case 4:
                ((B2GaoSuSrcData) this.f4847a).gps4 = new Gps(gps);
                this.f4897e.put(4, ((B2GaoSuSrcData) this.f4847a).gps4);
                break;
            case 5:
                ((B2GaoSuSrcData) this.f4847a).gps5 = new Gps(gps);
                this.f4897e.put(5, ((B2GaoSuSrcData) this.f4847a).gps5);
                break;
            case 6:
                ((B2GaoSuSrcData) this.f4847a).gps6 = new Gps(gps);
                this.f4897e.put(6, ((B2GaoSuSrcData) this.f4847a).gps6);
                break;
            case 7:
                ((B2GaoSuSrcData) this.f4847a).gps7 = new Gps(gps);
                this.f4897e.put(7, ((B2GaoSuSrcData) this.f4847a).gps7);
                break;
            case 8:
                ((B2GaoSuSrcData) this.f4847a).gps8 = new Gps(gps);
                this.f4897e.put(8, ((B2GaoSuSrcData) this.f4847a).gps8);
                break;
            case 9:
                ((B2GaoSuSrcData) this.f4847a).gps9 = new Gps(gps);
                break;
            case 10:
                ((B2GaoSuSrcData) this.f4847a).gps10 = new Gps(gps);
                break;
        }
        e("采集点" + i);
    }

    public void v(Gps gps) {
        ((B2GaoSuSrcData) this.f4847a).start1 = new Gps(gps);
        e("采集预报点1");
        this.c = true;
    }

    public void w(Gps gps) {
        ((B2GaoSuSrcData) this.f4847a).start2 = new Gps(gps);
        this.c = true;
        e("采集预报点2");
    }

    public void x() {
        if (cn.mucang.android.core.utils.g.d(((B2GaoSuSrcData) this.f4847a).middlePoints)) {
            e("是否覆盖中间线?");
            new androidx.appcompat.app.c.a(this.f4896d).setMessage("是否覆盖中间线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.d
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4876a.n(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2GaoSuSrcData) t).middlePoints != null) {
            ((B2GaoSuSrcData) t).middlePoints.clear();
        }
        this.c = true;
        cn.mucang.android.core.utils.u.e(this.i);
        cn.mucang.android.core.utils.u.c(this.i);
        e("开始采集中间线");
    }

    public void y() {
        if (cn.mucang.android.core.utils.g.d(((B2GaoSuSrcData) this.f4847a).leftPoints)) {
            e("是否覆盖左边线?");
            new androidx.appcompat.app.c.a(this.f4896d).setMessage("是否覆盖左边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.f
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4878a.p(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2GaoSuSrcData) t).leftPoints != null) {
            ((B2GaoSuSrcData) t).leftPoints.clear();
        }
        this.c = true;
        this.f4898f = false;
        cn.mucang.android.core.utils.u.e(this.f4900h);
        cn.mucang.android.core.utils.u.c(this.f4900h);
        e("开始采集左边线");
    }

    public void z() {
        if (cn.mucang.android.core.utils.g.d(((B2GaoSuSrcData) this.f4847a).rightPoints)) {
            e("是否覆盖右边线?");
            new androidx.appcompat.app.c.a(this.f4896d).setMessage("是否覆盖右边线，重新采集?").setNegativeButton("取消", (DialogInterface.OnClickListener) null).setPositiveButton("重新采集", new DialogInterface.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.mapcollect.collect.x0.a.e
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i) {
                    this.f4877a.r(dialogInterface, i);
                }
            }).create().show();
            return;
        }
        T t = this.f4847a;
        if (((B2GaoSuSrcData) t).rightPoints != null) {
            ((B2GaoSuSrcData) t).rightPoints.clear();
        }
        this.c = true;
        this.f4899g = false;
        cn.mucang.android.core.utils.u.e(this.j);
        cn.mucang.android.core.utils.u.c(this.j);
        e("开始采集右边线");
    }
}
