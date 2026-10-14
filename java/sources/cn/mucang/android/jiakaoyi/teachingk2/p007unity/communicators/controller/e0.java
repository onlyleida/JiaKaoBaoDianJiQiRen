package cn.mucang.android.jiakaoyi.teachingk2.p007unity.communicators.controller;

import android.os.Handler;
import android.os.Looper;
import cn.mucang.android.core.api.exception.ApiException;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.log.f;
import cn.mucang.android.jiakaoyi.framework.utils.FormatUtils;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.framework.utils.k0;
import cn.mucang.android.jiakaoyi.framework.utils.n0;
import cn.mucang.android.jiakaoyi.signal.c.d;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.login.RobotAccount;
import cn.mucang.android.jiakaoyi.teachingk2.login.api.RobotBusinessLoginApi;
import cn.mucang.android.jiakaoyi.teachingk2.p007unity.models.TimeTickSignal;
import cn.mucang.android.jiakaoyi.teachingk2.push.PusherManager;
import cn.mucang.android.jiakaoyi.teachingk2.safe.RainModeMgr;
import cn.mucang.android.jiakaoyi.teachingk2.safe.manager.SafeLocalParamManager;
import com.google.android.exoplayer2.upstream.DefaultLoadErrorHandlingPolicy;

/* JADX INFO: loaded from: classes4.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final Handler f8486a = new Handler(Looper.getMainLooper());
    private final TimeTickSignal b = new TimeTickSignal();
    private final Runnable c = new a();

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final Runnable f8487d = new b();

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.b.time += 1000;
            e0.this.b.phoneState = AudioManager.s();
            e0.this.b.phoneTime = AudioManager.r();
            e0.this.b.date = FormatUtils.d("HH:mm", System.currentTimeMillis());
            e0.this.b.netType = JNet.e() ? 1 : 0;
            e0.this.b.gpsType = d.t().getCurrentPosition().f5282h;
            int iE = PusherManager.E();
            if (iE == -1) {
                e0.this.b.videoStatus = k0.a(R.string.teachbase_close);
            } else if (iE == 1) {
                e0.this.b.videoStatus = k0.a(R.string.teachbase_normal);
            } else if (iE == 2) {
                e0.this.b.videoStatus = k0.a(R.string.teachbase_abnormal);
            }
            e0.this.b.satelliteCount = d.t().getCurrentPosition().i;
            e0.this.b.brakeSystem = SafeLocalParamManager.a();
            e0.this.b.rainMode = RainModeMgr.c();
            e0 e0Var = e0.this;
            e0Var.e(e0Var.b);
            LiveBus.d(TimeTickSignal.class).l(e0.this.b);
            e0.this.f8486a.postDelayed(this, 1000L);
        }
    }

    class b implements Runnable {
        b() {
        }

        @Override // java.lang.Runnable
        public void run() {
            e0.this.i(false);
            e0.this.f8486a.postDelayed(this, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
        }
    }

    static /* synthetic */ void d(boolean z) {
        try {
            new RobotBusinessLoginApi().q(z);
        } catch (Exception e2) {
            if ((e2 instanceof ApiException) && ((ApiException) e2).getErrorCode() == 403) {
                f.o("logout-notice接口403, 退出登录");
                RobotAccount.o("Api", RobotAccount.j());
            }
            t.d("TAG", e2.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void i(final boolean z) {
        n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.unity.communicators.t.v
            @Override // java.lang.Runnable
            public final void run() {
                e0.d(z);
            }
        });
    }

    public void e(TimeTickSignal timeTickSignal) {
        cn.mucang.android.jiakaoyi.unity.c.d.f(timeTickSignal, false);
    }

    public void f() {
        this.b.phoneState = AudioManager.s();
        this.b.phoneTime = AudioManager.r();
        e(this.b);
    }

    public void g() {
        this.b.time = 0;
        this.f8486a.removeCallbacks(this.c);
        this.f8486a.removeCallbacks(this.f8487d);
        this.f8486a.post(this.c);
        this.f8486a.postDelayed(this.f8487d, DefaultLoadErrorHandlingPolicy.DEFAULT_TRACK_BLACKLIST_MS);
    }

    public void h() {
        this.b.time = 0;
        this.f8486a.removeCallbacks(this.c);
        this.f8486a.removeCallbacks(this.f8487d);
        i(true);
    }
}
