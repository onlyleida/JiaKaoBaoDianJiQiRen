package cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch;

import androidx.lifecycle.BusLiveData;
import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.signal.center.model.CarPos;
import cn.mucang.android.jiakaoyi.signal.pos.Pos;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public class d {

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final d f5167f = new d();

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private volatile boolean f5168a = false;
    private volatile boolean b = false;
    private final List<c> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a0<ShangPoDataList> f5169d = new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.a
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            this.f5164a.g((ShangPoDataList) obj);
        }
    };

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final a0<cn.mucang.android.jiakaoyi.engine.h.a> f5170e = new a0() { // from class: cn.mucang.android.jiakaoyi.mapcollect.poshandle.pitch.b
        @Override // androidx.lifecycle.a0
        public final void onChanged(Object obj) {
            this.f5165a.i((cn.mucang.android.jiakaoyi.engine.h.a) obj);
        }
    };

    private d() {
    }

    public static double a(double d2, CarPos carPos) {
        double d3;
        boolean z;
        double d4;
        Pos pos;
        synchronized (d.class) {
            try {
                try {
                    List<c> list = f5167f.c;
                    d3 = AppUtils.i() ? 0.0d : d2;
                    try {
                        double d5 = AppUtils.i() ? 1.0d : 0.85d;
                        double d6 = 0.4d * d3;
                        if (!g.d(list)) {
                            z = false;
                            break;
                        }
                        Iterator<c> it = list.iterator();
                        while (true) {
                            if (!it.hasNext()) {
                                z = false;
                                break;
                            }
                            c next = it.next();
                            Pos pos2 = next.c;
                            cn.mucang.android.jiakaoyi.signal.pos.c cVar = next.f5166a;
                            if (cVar == null) {
                                d4 = 0.0d;
                            } else {
                                double d7 = cVar.f5823f;
                                d4 = d7 * d7;
                            }
                            cn.mucang.android.jiakaoyi.signal.pos.c cVar2 = carPos.carRect;
                            if (cVar2 == null || cVar == null || d(cVar2.f5820a, pos2) <= d4 || d(carPos.carRect.b, pos2) <= d4 || d(carPos.carRect.c, pos2) <= d4 || d(carPos.carRect.f5821d, pos2) <= d4) {
                                cn.mucang.android.jiakaoyi.signal.pos.c cVar3 = next.f5166a;
                                if (cVar3 != null && (pos = carPos.center) != null && cn.mucang.android.jiakaoyi.hpmap.a.b.c.a(cVar3, pos)) {
                                    d6 = next.b;
                                    f.o("进入坡道范围:" + next.b + "," + d3);
                                    z = true;
                                    break;
                                }
                            }
                        }
                        double d8 = (d6 * d5) + ((1.0d - d5) * d3);
                        d dVar = f5167f;
                        dVar.f5168a = z || Math.abs(d8) > 2.0d;
                        cn.mucang.android.jiakaoyi.signal.h.a.f5675a.set(dVar.f5168a || dVar.b);
                        return d8;
                    } catch (Throwable th) {
                        th = th;
                        u.h(th.getLocalizedMessage());
                        t.d("TAG", th.getLocalizedMessage());
                        return d3;
                    }
                } catch (Throwable th2) {
                    th = th2;
                    d3 = d2;
                }
            } catch (Throwable th3) {
                throw th3;
            }
        }
    }

    public static void b() {
        synchronized (d.class) {
            f5167f.c.clear();
        }
    }

    public static void c() {
        b();
        LiveBus.d(ShangPoDataList.class).m(f5167f.f5169d);
    }

    private static double d(Pos pos, Pos pos2) {
        double d2 = pos.x - pos2.x;
        double d3 = pos.y - pos2.y;
        return (d2 * d2) + (d3 * d3);
    }

    public static void e() {
        BusLiveData busLiveDataD = LiveBus.d(ShangPoDataList.class);
        d dVar = f5167f;
        busLiveDataD.i(dVar.f5169d);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.h.a.class).i(dVar.f5170e);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void g(ShangPoDataList shangPoDataList) {
        synchronized (d.class) {
            this.c.clear();
            this.c.addAll(shangPoDataList.list);
            Iterator<c> it = shangPoDataList.list.iterator();
            while (it.hasNext()) {
                f.o("收到坡道数据:" + it.next().b);
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(cn.mucang.android.jiakaoyi.engine.h.a aVar) {
        Step step = aVar.f3082a;
        if ((step != Step.K2_ShangPoQiBu && step != Step.B2_ShangPoQiBu) || !aVar.b || aVar.c) {
            this.b = false;
        } else {
            this.b = true;
            f.o("进入坡道");
        }
    }
}
