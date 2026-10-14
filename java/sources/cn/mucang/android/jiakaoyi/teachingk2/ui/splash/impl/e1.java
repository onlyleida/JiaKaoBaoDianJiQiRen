package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import android.os.Handler;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.communicate.receive.ReceiveWaitOta;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public class e1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private int i;
    private Handler j;
    private final cn.mucang.android.jiakaoyi.signal.c.f.a k;
    private final androidx.lifecycle.a0<ReceiveWaitOta> l;
    private final androidx.lifecycle.a0<cn.mucang.android.jiakaoyi.signal.communicate.receive.k0> m;

    public e1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_signal_reporting));
        this.j = new Handler();
        this.k = new cn.mucang.android.jiakaoyi.signal.c.f.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.j
            @Override // cn.mucang.android.jiakaoyi.signal.c.f.a
            public final void onSignalChanged(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
                this.f8302a.j(eVar);
            }
        };
        this.l = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.i
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f8300a.l((ReceiveWaitOta) obj);
            }
        };
        this.m = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.g
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f8295a.n((cn.mucang.android.jiakaoyi.signal.communicate.receive.k0) obj);
            }
        };
    }

    private void h() {
        this.i = 0;
        this.j.removeCallbacksAndMessages(null);
        cn.mucang.android.jiakaoyi.signal.c.d.m.n(this.k);
        LiveBus.d(ReceiveWaitOta.class).m(this.l);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.k0.class).m(this.m);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void j(cn.mucang.android.jiakaoyi.signal.c.e eVar) {
        int i = this.i + 1;
        this.i = i;
        if (i < 5) {
            LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l((i * 5) + 20.0f));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: k, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void l(ReceiveWaitOta receiveWaitOta) {
        this.f8341a.e(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j(true, false));
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(cn.mucang.android.jiakaoyi.signal.communicate.receive.k0 k0Var) {
        this.f8341a.e(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.j(false, true));
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p() {
        cn.mucang.android.jiakaoyi.signal.communicate.w.m.h().J();
        cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.b1
            @Override // java.lang.Runnable
            public final void run() {
                this.f8284a.f();
            }
        }, 3000L);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        if (this.i >= 3 || cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            g();
        } else {
            w();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(View view) {
        new Thread(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.m
            @Override // java.lang.Runnable
            public final void run() {
                this.f8311a.p();
            }
        }).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v(View view) {
        h();
        this.b.finish();
    }

    private void w() {
        if (c()) {
            return;
        }
        new CommonAlertDialog(this.b, new CommonAlertDialog.DialogParams(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_can_not_find_signal_box), String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_contact_official), cn.mucang.android.core.utils.n0.c(R.string.mc_contact_number)), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.l
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8308a.t(view);
            }
        }, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.h
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8298a.v(view);
            }
        })).show();
        cn.mucang.android.jiakaoyi.framework.log.f.o("无法检测到信号盒");
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    protected void d() {
        super.d();
        h();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_checking_connect));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(20.0f));
        h();
        cn.mucang.android.jiakaoyi.signal.c.d.m.b(this.k);
        LiveBus.d(ReceiveWaitOta.class).h(this.b, this.l);
        LiveBus.d(cn.mucang.android.jiakaoyi.signal.communicate.receive.k0.class).h(this.b, this.m);
        this.j.postDelayed(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.k
            @Override // java.lang.Runnable
            public final void run() {
                this.f8305a.r();
            }
        }, 1000L);
    }
}
