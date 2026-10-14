package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.CommonAlertDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachbase.R;

/* JADX INFO: loaded from: classes4.dex */
public class l1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private final int i;
    private final int j;
    private final cn.mucang.jiakaoyi.uilib.unityres.a.b k;

    class a implements cn.mucang.jiakaoyi.uilib.unityres.a.b {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void e() {
            l1.this.p();
        }

        @Override // cn.mucang.jiakaoyi.uilib.unityres.a.b
        public void a(float f2) {
            LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(l1.this.j + (f2 * 10.0f)));
        }

        @Override // cn.mucang.jiakaoyi.uilib.unityres.a.b
        public void b(String str) {
            l1.this.g();
        }

        @Override // cn.mucang.jiakaoyi.uilib.unityres.a.b
        public void c(String str) {
            cn.mucang.android.core.utils.u.c(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.w0
                @Override // java.lang.Runnable
                public final void run() {
                    this.f8333a.e();
                }
            });
        }
    }

    public l1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar, int i, int i2) {
        super(baseActivity, bVar, kVar, i == cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h.f8407a ? "Unity包" : "Unity资源");
        this.k = new a();
        this.i = i;
        this.j = i2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void k(View view) {
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: l, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void m(View view) {
        this.b.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: n, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void o() {
        cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h.h(this.i, this.k);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        String str;
        int i = this.i;
        if (i == cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h.f8407a) {
            str = "Unity包加载失败";
        } else {
            str = i == cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h.b ? "Unity资源加载失败" : "";
        }
        new CommonAlertDialog(this.b, new CommonAlertDialog.DialogParams(str, String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_contact_official), cn.mucang.android.core.utils.n0.c(R.string.mc_contact_number)), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.y0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8337a.k(view);
            }
        }, new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.x0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8335a.m(view);
            }
        })).show();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        int i = this.i;
        if (i == cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h.f8407a) {
            this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_check_unity_pkg));
        } else if (i == cn.mucang.android.jiakaoyi.teachingk2.p007unity.business.h.b) {
            this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_check_unity_res));
        }
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(this.j * 1.0f));
        cn.mucang.android.jiakaoyi.framework.utils.n0.a(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.z0
            @Override // java.lang.Runnable
            public final void run() {
                this.f8339a.o();
            }
        });
    }
}
