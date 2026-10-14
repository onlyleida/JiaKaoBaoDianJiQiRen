package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.signal.upgrade.model.UpgradeInfoModel;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher;
import com.alibaba.fastjson.JSON;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
public class d1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private final cn.mucang.android.jiakaoyi.framework.h.b<Boolean> i;
    private UpgradeInfoModel j;

    class a implements FirmwareFetcher.a {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void g() {
            d1.this.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void i() {
            d1.this.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void k() {
            d1.this.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void m() {
            d1.this.g();
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void o() {
            d1.this.g();
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void a() {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.e
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8291a.k();
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void b(UpgradeInfoModel upgradeInfoModel) {
            cn.mucang.android.jiakaoyi.framework.log.f.o("需要升级app:" + JSON.toJSONString(upgradeInfoModel));
            ((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) d1.this).c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_start_upgrade_app));
            if (cn.mucang.android.core.utils.n0.e(upgradeInfoModel.getVersionName())) {
                cn.mucang.android.core.utils.u.h(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_apk_version_empty));
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.b
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f8282a.m();
                    }
                });
            } else if (upgradeInfoModel.getVersion() > cn.mucang.android.core.utils.o0.t()) {
                d1.this.m(upgradeInfoModel);
            } else {
                cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.d
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f8287a.o();
                    }
                });
            }
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void c(List<UpgradeInfoModel> list) {
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void d(Throwable th) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.a
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8279a.g();
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void e(List<UpgradeInfoModel> list) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.c
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8285a.i();
                }
            });
        }

        @Override // cn.mucang.jiakaoyi.uilib.ui.check.FirmwareFetcher.a
        public void onStart() {
            ((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) d1.this).c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_requesting_version_info));
        }
    }

    class b implements cn.mucang.android.jiakaoyi.framework.h.b<Boolean> {
        b() {
        }

        @Override // cn.mucang.android.jiakaoyi.framework.h.b
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public void callback(Boolean bool) {
            if (bool.booleanValue()) {
                d1.this.g();
            } else {
                d1 d1Var = d1.this;
                d1Var.m(d1Var.j);
            }
        }
    }

    public d1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_app_upgrade));
        this.i = new b();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void m(final UpgradeInfoModel upgradeInfoModel) {
        cn.mucang.android.core.utils.u.f(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.f
            @Override // java.lang.Runnable
            public final void run() {
                this.f8293a.o(upgradeInfoModel);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o(UpgradeInfoModel upgradeInfoModel) {
        this.j = upgradeInfoModel;
        if (upgradeInfoModel == null) {
            g();
        }
        cn.mucang.jiakaoyi.uilib.upgrade.update.q.x(upgradeInfoModel, this.i);
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_checking_app_upgrade));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(15.0f));
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.a1
            @Override // java.lang.Runnable
            public final void run() {
                this.f8281a.l();
            }
        });
    }

    public void l() {
        new FirmwareFetcher(false, false, new a()).a();
    }
}
