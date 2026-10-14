package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public class f1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private final ComStateListener i;

    public f1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, "通信连接");
        this.i = new ComStateListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.n
            @Override // cn.mucang.android.jiakaoyi.signal.communicate.ComStateListener
            public final void a(ComStateListener.State state, Throwable th) {
                this.f8313a.i(state, th);
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void i(ComStateListener.State state, Throwable th) {
        if (state == ComStateListener.State.Valid) {
            g();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k() {
        g();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    protected void d() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().N(this.i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        if (cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            g();
            return;
        }
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_initing_signal));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(20.0f));
        d();
        if (cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().b()) {
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.o
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8315a.k();
                }
            }, 1000L);
        } else {
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().a(this.i);
            cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().R();
        }
    }
}
