package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import android.os.Handler;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.model.HardwareInfo;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.DeviceUtils;
import cn.mucang.android.jiakaoyi.signal.communicate.McCommandManager;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindApi;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarBindInfo;
import cn.mucang.android.jiakaoyi.teachingk2.ui.car.CarInfoManager;

/* JADX INFO: loaded from: classes4.dex */
public class g1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private int i;
    private final Runnable j;
    private final androidx.lifecycle.a0<HardwareInfo> k;
    private final Handler l;

    class a implements Runnable {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b(View view) {
            g1.this.f();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(View view) {
            ((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) g1.this).b.finish();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void f() {
            McCommandManager.f5380a.f();
            g1.this.l.postDelayed(g1.this.j, 500L);
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void h() {
            McCommandManager.f5380a.f();
            g1.this.l.postDelayed(this, 4000L);
        }

        @Override // java.lang.Runnable
        public void run() {
            g1.i(g1.this);
            if (g1.this.i <= 15) {
                if (g1.this.i % 3 == 0) {
                    cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.s
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f8324a.f();
                        }
                    });
                    return;
                } else {
                    cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.r
                        @Override // java.lang.Runnable
                        public final void run() {
                            this.f8322a.h();
                        }
                    });
                    return;
                }
            }
            g1.this.l.removeCallbacksAndMessages(this);
            if (g1.this.c()) {
                return;
            }
            new CommonAlertDialog(((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) g1.this).b, new CommonAlertDialog.DialogParams(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_device_not_recognized), String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_contact_official), cn.mucang.android.core.utils.n0.c(R.string.mc_contact_number)), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.p
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8317a.b(view);
                }
            }, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.q
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8319a.d(view);
                }
            })).show();
            cn.mucang.android.jiakaoyi.framework.log.f.o("TestDeviceId : 设备无法识别");
        }
    }

    public g1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_deveice_id));
        this.i = 0;
        this.j = new a();
        this.k = new androidx.lifecycle.a0() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.u
            @Override // androidx.lifecycle.a0
            public final void onChanged(Object obj) {
                this.f8328a.o((HardwareInfo) obj);
            }
        };
        this.l = new Handler();
    }

    private void A(String str) {
        if (c()) {
            return;
        }
        new JCommonDialog(this.b, new JCommonDialog.DialogParams(str, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_contact_coach), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_dialog_button_cancel), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.y
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8336a.x(view);
            }
        }, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8326a.z(view);
            }
        }, false)).show();
    }

    static /* synthetic */ int i(g1 g1Var) {
        int i = g1Var.i;
        g1Var.i = i + 1;
        return i;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o(HardwareInfo hardwareInfo) {
        cn.mucang.android.core.utils.u.h("检测到设备：" + hardwareInfo.hardwareNumber);
        d();
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.v
            @Override // java.lang.Runnable
            public final void run() {
                this.f8330a.r();
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r() {
        try {
            final CarBindInfo carBindInfoN = new CarBindApi().n();
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.x
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8334a.t(carBindInfoN);
                }
            });
        } catch (Throwable unused) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.w
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8332a.v();
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void t(CarBindInfo carBindInfo) {
        if (cn.mucang.android.core.utils.n0.e(carBindInfo.getDeviceNum())) {
            A(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_not_find_device_id));
            return;
        }
        CarInfoManager.c(carBindInfo);
        DeviceUtils.v(carBindInfo.getDeviceNum());
        cn.mucang.android.core.utils.t.h("RobotCommunicateManager", "获取到设备号:" + DeviceUtils.c());
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void v() {
        A(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_device_state_fail));
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: w, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void x(View view) {
        this.b.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: y, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void z(View view) {
        f();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    protected void d() {
        this.i = 0;
        LiveBus.d(HardwareInfo.class).m(this.k);
        this.l.removeCallbacksAndMessages(null);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        if (cn.mucang.android.jiakaoyi.framework.utils.n.a()) {
            g();
            return;
        }
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_checking_device_state));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(70.0f));
        d();
        LiveBus.d(HardwareInfo.class).h(this.b, this.k);
        this.l.post(this.j);
    }
}
