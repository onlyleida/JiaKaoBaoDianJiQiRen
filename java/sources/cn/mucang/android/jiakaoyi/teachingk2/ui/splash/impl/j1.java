package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import android.app.Dialog;
import android.view.View;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.framework.utils.AppUtils;
import cn.mucang.android.jiakaoyi.framework.utils.JNet;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.dtu.DTUManager;

/* JADX INFO: loaded from: classes4.dex */
public class j1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {
    private Dialog i;
    private long j;
    private int k;
    private final Runnable l;

    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            cn.mucang.android.core.utils.u.e(j1.this.l);
            cn.mucang.android.core.utils.u.d(j1.this.l, 1000L);
            j1.i(j1.this);
            j1.this.l();
        }
    }

    public j1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, "网络");
        this.l = new a();
    }

    static /* synthetic */ int i(j1 j1Var) {
        int i = j1Var.k;
        j1Var.k = i + 1;
        return i;
    }

    private void k() {
        try {
            Dialog dialog = this.i;
            if (dialog != null) {
                dialog.dismiss();
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void l() {
        q();
        if (cn.mucang.android.core.utils.x.e() && JNet.e()) {
            k();
            if (AppUtils.n()) {
                DTUManager.f6989a.f();
            }
            cn.mucang.android.core.utils.u.e(this.l);
            g();
            cn.mucang.android.jiakaoyi.framework.log.f.o("网络检查完成，耗时" + this.k + "秒");
            return;
        }
        BaseActivity baseActivity = this.b;
        if (baseActivity == null || baseActivity.isFinishing() || this.b.isDestroyed()) {
            cn.mucang.android.core.utils.u.e(this.l);
        } else {
            if (System.currentTimeMillis() - this.j < 90000) {
                return;
            }
            cn.mucang.android.core.utils.u.e(this.l);
            JCommonDialog jCommonDialog = new JCommonDialog(this.b, new JCommonDialog.DialogParams(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_device_no_net), String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_contact_official), cn.mucang.android.core.utils.n0.c(R.string.mc_contact_number)), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_dialog_button_cancel), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.a0
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8280a.n(view);
                }
            }, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.z
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    this.f8338a.p(view);
                }
            }, false));
            this.i = jCommonDialog;
            jCommonDialog.show();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: m, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void n(View view) {
        this.b.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(View view) {
        f();
    }

    private void q() {
        this.c.callback(String.format(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_check_network), Integer.valueOf(this.k)));
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        this.k = 0;
        q();
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(5.0f));
        this.j = System.currentTimeMillis();
        cn.mucang.android.core.utils.u.e(this.l);
        cn.mucang.android.core.utils.u.d(this.l, 1000L);
    }
}
