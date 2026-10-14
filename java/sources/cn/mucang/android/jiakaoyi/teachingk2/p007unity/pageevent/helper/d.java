package cn.mucang.android.jiakaoyi.teachingk2.p007unity.pageevent.helper;

import androidx.lifecycle.a0;
import cn.mucang.android.core.utils.g;
import cn.mucang.android.jiakaoyi.engine.model.Step;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.h.b;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.hpmap.a.b.c;
import cn.mucang.android.jiakaoyi.signal.c.e;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.res.model.AreaModel;
import cn.mucang.android.jiakaoyi.teachingk2.res.n;
import cn.mucang.jiakaoyi.uilib.socket.t;
import cn.mucang.jiakaoyi.uilib.socket.util.NetworkErrorUtil;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d implements cn.mucang.android.jiakaoyi.signal.c.f.a {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f8578e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private long f8579f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private long f8580g;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Runnable f8576a = new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.pageevent.c1.a
        @Override // java.lang.Runnable
        public final void run() {
            d.d();
        }
    };
    private b<e> b = null;
    private int c = 0;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f8577d = 0;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final a0<cn.mucang.android.jiakaoyi.engine.i.f.a> f8581h = new a();

    class a implements a0<cn.mucang.android.jiakaoyi.engine.i.f.a> {
        a() {
        }

        @Override // androidx.lifecycle.a0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void onChanged(cn.mucang.android.jiakaoyi.engine.i.f.a aVar) {
            if (aVar.b && !aVar.f3095a) {
                d.this.f8578e = aVar.c;
                d.this.f8580g = 0L;
            } else {
                if (aVar.c == Step.K2_SuiDao.type && aVar.f3095a) {
                    d.this.f8580g = System.currentTimeMillis();
                } else {
                    d.this.f8580g = 0L;
                }
                d.this.f8578e = 0;
            }
        }
    }

    private boolean c() {
        return this.f8578e == Step.K2_SuiDao.type;
    }

    static /* synthetic */ void d() {
        f.f("重连服务器连接");
        t.b().H();
    }

    public void e(b<e> bVar) {
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this);
        this.b = bVar;
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).i(this.f8581h);
    }

    public void f() {
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this);
        LiveBus.d(cn.mucang.android.jiakaoyi.engine.i.f.a.class).m(this.f8581h);
    }

    @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
    public void onSignalChanged(e eVar) {
        if (eVar.d().h()) {
            b<e> bVar = this.b;
            if (bVar != null) {
                bVar.callback(eVar);
            }
            if (this.f8579f <= 0) {
                this.f8579f = eVar.d().L;
            }
            boolean z = false;
            if (eVar.d().L - this.f8579f < 90000) {
                this.c = 0;
                return;
            }
            if (eVar.getCurrentPosition().f5282h != 2 && eVar.getCurrentPosition().f5282h != 1) {
                if (eVar.getCurrentPosition().c() || c()) {
                    if (eVar.getCurrentPosition().f5282h == 4) {
                        this.c = 0;
                        this.f8577d = 0;
                        NetworkErrorUtil.c().b();
                        return;
                    }
                    return;
                }
                int i = this.f8577d + 1;
                this.f8577d = i;
                this.c = 0;
                if (i == 3) {
                    List<AreaModel> list = n.b().n;
                    if (g.d(list)) {
                        Iterator<AreaModel> it = list.iterator();
                        while (it.hasNext()) {
                            if (c.i(eVar.c().center, it.next().pointList)) {
                                z = true;
                                break;
                            }
                        }
                    }
                    if (z) {
                        NetworkErrorUtil.c().j(k0.a(R.string.teachbase_gps_signal_blocking), null, NetworkErrorUtil.DialogGrade.Low);
                    } else {
                        NetworkErrorUtil.c().j(k0.a(R.string.teachbase_key564), null, NetworkErrorUtil.DialogGrade.Low);
                    }
                    f.f("Gps信号变成5，让客户检查天线是否被遮挡，在GPS遮挡区域:" + z);
                    return;
                }
                return;
            }
            this.c++;
            this.f8577d = 0;
            if (c()) {
                if (this.c % 50 == 1) {
                    f.f("Gps信号变成" + eVar.getCurrentPosition().f5282h + ",重试 , errorCount=" + this.c);
                    this.f8576a.run();
                    return;
                }
                return;
            }
            int i2 = this.c;
            if (i2 == 50) {
                NetworkErrorUtil.c().j(k0.a(R.string.teachbase_gps_signal_unstable), this.f8576a, NetworkErrorUtil.DialogGrade.Low);
                f.f("Gps信号变成" + eVar.getCurrentPosition().f5282h + ",弹出重试弹窗");
                return;
            }
            if (i2 == 6) {
                f.f("Gps信号变成" + eVar.getCurrentPosition().f5282h + ",重试");
                this.f8576a.run();
            }
        }
    }
}
