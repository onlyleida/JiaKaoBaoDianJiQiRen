package cn.mucang.android.jiakaoyi.mapcollect.collect;

import android.os.Bundle;
import android.os.SystemClock;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.jiakaoyi.framework.tts.TtsGrade;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.hpmap.view.MapView;
import cn.mucang.android.jiakaoyi.signal.pos.Gps;
import cn.mucang.sundial.library.activity.BaseActivity;
import com.noober.background.BackgroundLibrary;
import java.util.ArrayList;
import java.util.LinkedList;
import java.util.List;

/* JADX INFO: loaded from: classes3.dex */
public abstract class q0 extends cn.mucang.android.core.config.n {
    protected MapView c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    protected cn.mucang.android.jiakaoyi.signal.i.b f4813d;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    public int f4815f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    public float f4816g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    public float f4817h;
    private long i;
    public double j;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected final Gps f4812a = new Gps();
    protected final Gps b = new Gps();

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private LinkedList<Gps> f4814e = new LinkedList<>();
    private List<Gps> k = new ArrayList();
    protected cn.mucang.android.jiakaoyi.signal.c.f.a l = new a();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        /* JADX WARN: Code duplicated, block: B:21:0x00bf  */
        /* JADX WARN: Code duplicated, block: B:23:0x00e9  */
        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            if (eVar.d().M != 3) {
                return;
            }
            q0.this.f4817h = eVar.getCurrentPosition().f5278d;
            q0.this.f4816g = eVar.getCurrentPosition().f5277a;
            q0.this.f4815f = eVar.getCurrentPosition().f5282h;
            q0.this.j = eVar.getCurrentPosition().f5279e;
            Gps gpsFrom = Gps.from(eVar.getCurrentPosition().f5281g);
            if (Math.abs(gpsFrom.latitude - q0.this.b.latitude) + Math.abs(gpsFrom.longitude - q0.this.b.longitude) < 1.0E-10d) {
                return;
            }
            q0.this.b.setGps(gpsFrom);
            if (!cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(q0.this.f4815f) && !MucangConfig.v()) {
                q0.this.f4812a.setGps(0.0d, 0.0d, 0.0d);
                q0.this.k.clear();
                q0.this.f4814e.clear();
            } else if (q0.this.k.size() < 2) {
                q0 q0Var = q0.this;
                Gps gps = q0Var.f4812a;
                if (gps.latitude >= 1.0E-10d || gps.longitude >= 1.0E-10d) {
                    q0.this.f4812a.setGps(gpsFrom);
                    q0.this.i = SystemClock.elapsedRealtime();
                    q0.this.f4814e.addLast(new Gps(gpsFrom));
                    if (q0.this.f4814e.size() > 2) {
                        q0.this.f4814e.removeFirst();
                    }
                } else {
                    q0Var.k.add(gpsFrom);
                }
            } else {
                q0.this.f4812a.setGps(gpsFrom);
                q0.this.i = SystemClock.elapsedRealtime();
                q0.this.f4814e.addLast(new Gps(gpsFrom));
                if (q0.this.f4814e.size() > 2) {
                    q0.this.f4814e.removeFirst();
                }
            }
            q0.this.l(eVar.getCurrentPosition().i);
        }
    }

    public cn.mucang.android.jiakaoyi.signal.i.b j() {
        return this.f4813d;
    }

    public Gps k() {
        if (!cn.mucang.android.jiakaoyi.signal.handle.gps.f.a(this.f4815f)) {
            m("当前gps精度不够");
            return null;
        }
        if (SystemClock.elapsedRealtime() - this.i > BaseActivity.INTERVAL) {
            m("当前gps点是2秒之前的定位点，请检查gps组件是否连接完好");
            return null;
        }
        if (this.f4814e.size() < 2) {
            m("当前gps点还没稳定，请稍后采集");
            return null;
        }
        int i = 0;
        while (i < this.f4814e.size() - 1) {
            Gps gps = this.f4814e.get(i);
            i++;
            if (gps.distanceTo(this.f4814e.get(i)) > 2.0d) {
                m("当前gps点还没稳定，请稍后再采集");
                return null;
            }
        }
        double d2 = 0.0d;
        double d3 = 0.0d;
        double d4 = 0.0d;
        for (Gps gps2 : this.f4814e) {
            d2 += gps2.latitude;
            d3 += gps2.longitude;
            d4 += gps2.altitude;
        }
        return new Gps(Math.round((d2 / ((double) this.f4814e.size())) * 1.0E9d) / 1.0E9d, Math.round((d3 / ((double) this.f4814e.size())) * 1.0E9d) / 1.0E9d, Math.round((d4 / ((double) this.f4814e.size())) * 1000.0d) / 1000.0d);
    }

    protected abstract void l(int i);

    protected void m(String str) {
        TtsManager.H();
        TtsManager.r(str, TtsGrade.GlobalTip);
        cn.mucang.android.core.utils.u.h(str);
    }

    @Override // cn.mucang.android.core.config.n, androidx.fragment.app.d, androidx.activity.ComponentActivity, androidx.core.app.f, android.app.Activity
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        BackgroundLibrary.inject2(this);
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.l);
    }

    @Override // cn.mucang.android.core.config.n, androidx.appcompat.app.d, androidx.fragment.app.d, android.app.Activity
    protected void onDestroy() {
        super.onDestroy();
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.l);
    }
}
