package cn.mucang.android.jiakaoyi.signal.c;

import android.os.Handler;
import android.os.Looper;
import android.os.SystemClock;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.utils.b0;
import cn.mucang.android.jiakaoyi.framework.utils.q0;
import cn.mucang.android.jiakaoyi.signal.center.model.CarModel;
import cn.mucang.android.jiakaoyi.signal.center.model.Gear;
import cn.mucang.android.jiakaoyi.signal.handle.gps.f;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import org.opencv.videoio.Videoio;

/* JADX INFO: loaded from: classes3.dex */
public class d {
    public static final d m = new d();
    private static final Object n = new Object();
    private static final Object o = new Object();
    private static final Object p = new Object();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f5232a;
    private int b = 0;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f5233d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f5234e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private int f5235f = 0;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.center.model.d f5236g = new cn.mucang.android.jiakaoyi.signal.center.model.d();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private cn.mucang.android.jiakaoyi.signal.center.model.d f5237h = new cn.mucang.android.jiakaoyi.signal.center.model.d();
    private final List<cn.mucang.android.jiakaoyi.signal.c.f.a> i = new ArrayList();
    private final Handler j = new Handler(Looper.getMainLooper());
    private final cn.mucang.android.jiakaoyi.framework.h.b<Float> k = new cn.mucang.android.jiakaoyi.framework.h.b() { // from class: cn.mucang.android.jiakaoyi.signal.c.b
        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        public final void callback(Object obj) {
            d.u(new d.a() { // from class: cn.mucang.android.jiakaoyi.signal.c.a
                @Override // cn.mucang.android.jiakaoyi.signal.c.d.a
                public final boolean a(cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
                    return d.l(f, dVar);
                }
            });
        }
    };
    private cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.center.model.d> l;

    public interface a {
        boolean a(cn.mucang.android.jiakaoyi.signal.center.model.d dVar);
    }

    public static float c() {
        return m.f5236g.getCurrentPosition().f5277a;
    }

    public static int d() {
        return m.f5236g.d().F.direction;
    }

    public static Gear e() {
        return m.f5236g.d().m;
    }

    public static float f() {
        return m.f5236g.d().c;
    }

    public static Gps g() {
        return Gps.from(m.f5236g.getCurrentPosition().f5281g);
    }

    static /* synthetic */ boolean l(Float f2, cn.mucang.android.jiakaoyi.signal.center.model.d dVar) {
        dVar.d().B = f2.floatValue();
        dVar.d().C = f2.floatValue();
        dVar.d().M = (byte) 2;
        return true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public void k(final e eVar) {
        if (Looper.myLooper() != Looper.getMainLooper()) {
            this.j.post(new Runnable() { // from class: cn.mucang.android.jiakaoyi.signal.c.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f5231a.k(eVar);
                }
            });
            return;
        }
        synchronized (p) {
            Iterator it = new ArrayList(this.i).iterator();
            while (it.hasNext()) {
                ((cn.mucang.android.jiakaoyi.signal.c.f.a) it.next()).onSignalChanged(eVar);
            }
        }
    }

    public static void p() {
        synchronized (o) {
            m.f5236g.b().f();
        }
    }

    public static void q() {
        synchronized (o) {
            m.f5236g.f();
        }
    }

    public static e t() {
        cn.mucang.android.jiakaoyi.signal.center.model.d dVar;
        synchronized (n) {
            dVar = m.f5237h;
        }
        return dVar;
    }

    public static void u(a aVar) {
        v(aVar, true);
    }

    public static void v(a aVar, boolean z) {
        boolean zA;
        d dVar = m;
        cn.mucang.android.jiakaoyi.signal.center.model.d dVar2 = dVar.f5236g;
        try {
            dVar2.d().L = SystemClock.elapsedRealtime();
            Object obj = o;
            synchronized (obj) {
                zA = aVar.a(dVar2);
            }
            if (zA) {
                synchronized (obj) {
                    cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.center.model.d> bVar = dVar.l;
                    if (bVar != null) {
                        bVar.callback(dVar2);
                    }
                    CarModel carModelD = dVar2.d();
                    if (b0.a().b() && f.a(dVar2.getCurrentPosition().f5282h)) {
                        float fJ = cn.mucang.android.jiakaoyi.signal.d.k.c.j(dVar2.getCurrentPosition().f5281g);
                        carModelD.C = fJ;
                        carModelD.B = fJ;
                    } else {
                        dVar2.d().C = cn.mucang.android.jiakaoyi.signal.d.k.c.i(dVar2.d().b);
                        dVar2.d().B = dVar2.d().C;
                    }
                }
                dVar.f5232a = dVar2.getCurrentPosition().f5282h;
                cn.mucang.android.jiakaoyi.signal.center.model.d dVarE = cn.mucang.android.jiakaoyi.signal.center.model.d.e(dVar.f5236g);
                synchronized (n) {
                    dVar.f5237h = dVarE;
                }
                if (z) {
                    dVar.j(dVarE);
                }
                if (dVar2.d().h() && b0.a().b()) {
                    int i = dVar.b + 1;
                    dVar.b = i;
                    int i2 = dVar.f5232a;
                    if (i2 == 5) {
                        dVar.c++;
                    } else if (i2 == 4) {
                        dVar.f5233d++;
                    } else if (i2 == 2) {
                        dVar.f5235f++;
                    } else if (i2 == 1) {
                        dVar.f5234e++;
                    }
                    if (i % Videoio.CAP_GSTREAMER != 0 || i <= 0) {
                        return;
                    }
                    cn.mucang.android.jiakaoyi.framework.log.f.o("总数=" + i + ",gps4=" + dVar.f5233d + ",占比=" + ((dVar.f5233d * 100) / i) + "%,gps5=" + dVar.c + ",占比=" + ((dVar.c * 100) / i) + "%,gps1=" + dVar.f5234e + ",占比=" + ((dVar.f5234e * 100) / i) + "%,gps2=" + dVar.f5235f + ",占比=" + ((dVar.f5235f * 100) / i) + "%");
                }
            }
        } catch (Throwable th) {
            t.d("SignalCenter", "Update Error : " + th.getMessage());
            cn.mucang.android.jiakaoyi.framework.log.f.f("信号更新失败:" + q0.d(th));
        }
    }

    public void a() {
        cn.mucang.android.jiakaoyi.signal.d.k.c.l(this.k);
    }

    public void b(cn.mucang.android.jiakaoyi.signal.c.f.a aVar) {
        synchronized (p) {
            if (aVar != null) {
                if (!this.i.contains(aVar)) {
                    this.i.add(aVar);
                }
            }
        }
    }

    public int h() {
        return this.f5232a;
    }

    public void n(cn.mucang.android.jiakaoyi.signal.c.f.a aVar) {
        synchronized (p) {
            if (aVar != null) {
                this.i.remove(aVar);
            }
        }
    }

    public void o() {
        cn.mucang.android.jiakaoyi.signal.d.k.c.o(this.k);
    }

    public void r() {
        synchronized (p) {
            this.i.clear();
        }
    }

    public void s(cn.mucang.android.jiakaoyi.framework.h.b<cn.mucang.android.jiakaoyi.signal.center.model.d> bVar) {
        this.l = bVar;
    }
}
