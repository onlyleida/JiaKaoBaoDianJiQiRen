package cn.mucang.jiakaoyi.uilib;

import android.app.Activity;
import android.app.Application;
import android.content.Context;
import android.location.Location;
import android.os.Bundle;
import android.os.SystemClock;
import androidx.lifecycle.a0;
import cn.mucang.android.core.config.l;
import cn.mucang.android.core.config.p;
import cn.mucang.android.core.utils.u;
import cn.mucang.android.jiakaoyi.engine.model.KeMu;
import cn.mucang.android.jiakaoyi.framework.base.ExceptionReporter;
import cn.mucang.android.jiakaoyi.framework.base.JkyUncaughtExceptionHandler;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.tts.TtsManager;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.framework.utils.x;
import cn.mucang.android.jiakaoyi.signal.com.monitor.ComMonitor;
import cn.mucang.android.jiakaoyi.signal.communicate.w.m;
import cn.mucang.android.selectcity.v;
import cn.mucang.jiakaoyi.uilib.api.DeviceApi;
import cn.mucang.jiakaoyi.uilib.debug.DebugCpuUtils;
import cn.mucang.jiakaoyi.uilib.socket.SocketModel;
import cn.mucang.jiakaoyi.uilib.socket.o;
import cn.mucang.jiakaoyi.uilib.socket.s;
import cn.mucang.jiakaoyi.uilib.socket.t;
import cn.mucang.jiakaoyi.uilib.ui.login.JkyJsBridge;
import cn.mucang.jiakaoyi.uilib.ui.login.p008j.AccountUtils;
import cn.mucang.jiakaoyi.uilib.utils.ExamSiteUtil;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import com.google.android.exoplayer2.SimpleExoPlayer;
import com.tencent.bugly.crashreport.CrashReport;
import f.a.a.a.p010s.PrivacyAgreementSetting;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: loaded from: classes5.dex */
public class e extends p implements cn.mucang.android.jiakaoyi.framework.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected AtomicInteger f9310a = new AtomicInteger(0);
    private int b = 0;
    private final List<Activity> c = new ArrayList();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private long f9311d = 0;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f9312e = 0;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private boolean f9313f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final cn.mucang.android.jiakaoyi.signal.c.f.a f9314g = new a();

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Application.ActivityLifecycleCallbacks f9315h = new b();

    class a implements cn.mucang.android.jiakaoyi.signal.c.f.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b() {
            try {
                if (new DeviceApi().r(4)) {
                    return;
                }
                e.D(e.this);
                if (e.this.f9312e < 15) {
                    if (e.this.f9312e < 5) {
                        e.this.f9311d = SystemClock.elapsedRealtime() - DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
                    } else {
                        e.this.f9311d = SystemClock.elapsedRealtime();
                    }
                    cn.mucang.android.jiakaoyi.signal.c.d.m.b(e.this.f9314g);
                }
            } catch (Exception e2) {
                e2.printStackTrace();
                e.D(e.this);
                if (e.this.f9312e < 15) {
                    if (e.this.f9312e < 5) {
                        e.this.f9311d = SystemClock.elapsedRealtime() - DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS;
                    } else {
                        e.this.f9311d = SystemClock.elapsedRealtime();
                    }
                    cn.mucang.android.jiakaoyi.signal.c.d.m.b(e.this.f9314g);
                }
            }
        }

        @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
        public void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
            Location location = eVar.getCurrentPosition().f5281g;
            if ((location.getLatitude() >= 1.0E-8d || location.getLongitude() >= 1.0E-8d) && SystemClock.elapsedRealtime() - e.this.f9311d > 10000) {
                cn.mucang.android.jiakaoyi.signal.c.d.m.n(e.this.f9314g);
                n0.a(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.a
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f9179a.b();
                    }
                });
            }
        }
    }

    class b extends l {

        class a implements o {
            a(b bVar) {
            }

            @Override // cn.mucang.jiakaoyi.uilib.socket.o
            public void a() {
            }

            @Override // cn.mucang.jiakaoyi.uilib.socket.o
            public void c(SocketModel socketModel) {
            }

            @Override // cn.mucang.jiakaoyi.uilib.socket.o
            public void onConnect() {
                try {
                    if (AppUtils.k() || AccountUtils.b()) {
                        ByteBuffer byteBufferAllocate = ByteBuffer.allocate(9);
                        if (AppUtils.n()) {
                            KeMu keMu = KeMu.K2;
                            long jN = ExamSiteUtil.n(keMu, 0L);
                            byteBufferAllocate.put((byte) Integer.parseInt(keMu.serverKeMu));
                            byteBufferAllocate.putLong(jN);
                            t.a().K(s.c(byteBufferAllocate.array(), (byte) -125));
                            cn.mucang.android.jiakaoyi.framework.log.f.o("上报所选规则组,机器人科二;id：" + jN);
                            KeMu keMu2 = KeMu.K3;
                            long jN2 = ExamSiteUtil.n(keMu2, 0L);
                            ByteBuffer byteBufferAllocate2 = ByteBuffer.allocate(9);
                            byteBufferAllocate2.put((byte) Integer.parseInt(keMu2.serverKeMu));
                            byteBufferAllocate2.putLong(jN2);
                            t.a().K(s.c(byteBufferAllocate2.array(), (byte) -125));
                            cn.mucang.android.jiakaoyi.framework.log.f.o("上报所选规则组,机器人科三;id：" + jN2);
                        } else {
                            int iA = AppUtils.a();
                            long jN3 = ExamSiteUtil.n(KeMu.parse(iA), 0L);
                            byteBufferAllocate.put((byte) iA);
                            byteBufferAllocate.putLong(jN3);
                            t.a().K(s.c(byteBufferAllocate.array(), (byte) -125));
                            cn.mucang.android.jiakaoyi.framework.log.f.o("上报所选规则组,科目：" + iA + ";id：" + jN3);
                        }
                        t.a().S(this);
                    }
                } catch (Exception e2) {
                    e2.printStackTrace();
                    cn.mucang.android.jiakaoyi.framework.log.f.o("首次上报规则组id异常：" + e2.getLocalizedMessage());
                }
            }
        }

        b() {
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            e.this.f9310a.getAndIncrement();
            cn.mucang.android.jiakaoyi.framework.log.f.o("进入:" + activity.getClass().getName() + " , " + e.this.f9310a.get());
            if (e.this.f9310a.get() == 1) {
                ExceptionReporter.b();
                cn.mucang.android.jiakaoyi.framework.log.f.o("打开App页面:" + activity.getClass().getName() + ",开机时间:" + (System.currentTimeMillis() - SystemClock.elapsedRealtime()));
                t.a().F(new a(this));
                e.this.K();
            }
            if (e.this.c.contains(activity)) {
                return;
            }
            e.this.c.add(activity);
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityDestroyed(Activity activity) {
            e.this.f9310a.getAndDecrement();
            cn.mucang.android.jiakaoyi.framework.log.f.o("退出:" + activity.getClass().getName() + " , " + e.this.f9310a.get());
            if (e.this.f9310a.get() < 0) {
                e.this.f9310a.set(0);
            }
            if (e.this.f9310a.get() == 0) {
                e.this.J();
            }
            e.this.c.remove(activity);
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStarted(Activity activity) {
            super.onActivityStarted(activity);
            if (e.this.Q(activity)) {
                if (e.this.b == 0) {
                    e.this.f9313f = true;
                    e.this.N();
                }
                e.F(e.this);
            }
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityStopped(Activity activity) {
            super.onActivityStopped(activity);
            if (e.this.Q(activity)) {
                e.G(e.this);
                if (e.this.b == 0) {
                    e.this.f9313f = false;
                    e.this.M();
                }
            }
        }
    }

    class c extends cn.mucang.android.jiakaoyi.framework.base.k.c {
        c(e eVar, int i) {
            super(i);
        }

        @Override // cn.mucang.android.jiakaoyi.framework.base.k.c, java.lang.Runnable
        public void run() {
            cn.mucang.android.jiakaoyi.framework.log.f.t();
        }
    }

    class d extends cn.mucang.android.jiakaoyi.framework.base.k.c {
        d(int i) {
            super(i);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b() {
            if (e.this.f9310a.get() == 0) {
                e.this.O();
            }
        }

        @Override // cn.mucang.android.jiakaoyi.framework.base.k.c, java.lang.Runnable
        public void run() {
            SystemClock.sleep(SimpleExoPlayer.DEFAULT_DETACH_SURFACE_TIMEOUT_MS);
            if (e.this.f9310a.get() == 0) {
                u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f9195a.b();
                    }
                });
            }
        }
    }

    static /* synthetic */ int D(e eVar) {
        int i = eVar.f9312e;
        eVar.f9312e = i + 1;
        return i;
    }

    static /* synthetic */ int F(e eVar) {
        int i = eVar.b;
        eVar.b = i + 1;
        return i;
    }

    static /* synthetic */ int G(e eVar) {
        int i = eVar.b;
        eVar.b = i - 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: S, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void T() {
        for (Activity activity : this.c) {
            if (activity != null && !activity.isFinishing() && !activity.isDestroyed()) {
                activity.finish();
            }
        }
    }

    public final void J() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("Application:当前没有activity在活动");
        cn.mucang.android.jiakaoyi.framework.base.k.d.b(P());
        cn.mucang.android.jiakaoyi.framework.base.k.d.a();
    }

    protected void K() {
        m.h().R();
        t.a().Q();
    }

    protected void L() {
        m.h().L();
        cn.mucang.android.jiakaoyi.signal.c.d.m.r();
        t.a().G();
        TtsManager.o();
        if (AppUtils.k()) {
            ComMonitor.i();
        }
    }

    public void M() {
        DebugCpuUtils.f9207a.h();
    }

    public void N() {
    }

    protected final void O() {
        L();
        System.exit(0);
    }

    protected List<cn.mucang.android.jiakaoyi.framework.base.k.c> P() {
        ArrayList arrayList = new ArrayList();
        arrayList.add(new c(this, 0));
        arrayList.add(new d(10000));
        return arrayList;
    }

    protected boolean Q(Activity activity) {
        return true;
    }

    public boolean R() {
        return this.f9313f;
    }

    @Override // cn.mucang.android.core.config.p, android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
    }

    @Override // cn.mucang.android.jiakaoyi.framework.b
    public void c() {
        u.c(new Runnable() { // from class: cn.mucang.jiakaoyi.uilib.d
            @Override // java.lang.Runnable
            public final void run() {
                this.f9198a.T();
            }
        });
    }

    @Override // cn.mucang.android.core.config.w
    public String h() {
        return "";
    }

    public void j() {
        cn.mucang.android.jiakaoyi.framework.log.f.o("Application:发生异常");
        m.h().L();
    }

    @Override // cn.mucang.android.jiakaoyi.framework.b
    public void m() {
    }

    @Override // android.app.Application, android.content.ComponentCallbacks
    public void onLowMemory() {
        super.onLowMemory();
        Runtime.getRuntime().gc();
    }

    @Override // android.app.Application
    public void onTerminate() {
        super.onTerminate();
        unregisterActivityLifecycleCallbacks(this.f9315h);
    }

    @Override // cn.mucang.android.core.config.p
    protected void q() {
    }

    @Override // cn.mucang.android.core.config.p
    protected void s() {
        PrivacyAgreementSetting.k(true);
    }

    @Override // cn.mucang.android.core.config.p
    protected void u() {
        x.b(this);
        TtsManager.i(this);
        CrashReport.initCrashReport(this);
        Thread.setDefaultUncaughtExceptionHandler(new JkyUncaughtExceptionHandler(Thread.getDefaultUncaughtExceptionHandler(), this));
        registerActivityLifecycleCallbacks(this.f9315h);
        LiveBus.d(cn.mucang.android.jiakaoyi.framework.p002e.intercept.b.class).i(new a0() { // from class: cn.mucang.jiakaoyi.uilib.c
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                cn.mucang.jiakaoyi.uilib.ui.login.h.c();
            }
        });
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.f9314g);
        JkyJsBridge.c();
        DebugCpuUtils.f9207a.i();
        cn.mucang.jiakaoyi.uilib.n.b.b();
        CrashReport.setUserId(this, DeviceUtils.c());
        v.a(new cn.mucang.android.selectcity.x());
        f.a.a.a.f.a();
        cn.mucang.android.core.location.d.a(this);
        JNet.j();
    }

    @Override // cn.mucang.android.core.config.p
    protected void v() {
    }
}
