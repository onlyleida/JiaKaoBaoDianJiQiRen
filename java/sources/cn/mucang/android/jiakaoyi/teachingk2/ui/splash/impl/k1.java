package cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl;

import android.content.Intent;
import android.media.projection.MediaProjectionManager;
import android.view.View;
import cn.mucang.android.core.permission.model.PermissionsResult;
import cn.mucang.android.jiakaoyi.framework.base.dialog.JCommonDialog;
import cn.mucang.android.jiakaoyi.framework.base.ui.BaseActivity;
import cn.mucang.android.jiakaoyi.framework.bus.LiveBus;
import cn.mucang.android.jiakaoyi.teachbase.R;
import cn.mucang.android.jiakaoyi.teachingk2.audio.AudioManager;
import cn.mucang.android.jiakaoyi.teachingk2.highlight.HighlightVideoManager;

/* JADX INFO: loaded from: classes4.dex */
public class k1 extends cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k {

    class a implements f.a.a.a.j.c {
        a() {
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void b(PermissionsResult permissionsResult) {
            if (permissionsResult.getGrantedAll()) {
                k1.this.n();
            } else {
                k1.this.s();
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: c, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void d(PermissionsResult permissionsResult) {
            if (((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) k1.this).b.isFinishing() || ((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) k1.this).b.isDestroyed()) {
                return;
            }
            if (!permissionsResult.getGrantedAll()) {
                k1.this.s();
            } else if (cn.mucang.android.jiakaoyi.framework.utils.d0.a()) {
                k1.this.n();
            } else {
                cn.mucang.android.jiakaoyi.framework.utils.d0.c(((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) k1.this).b, new f.a.a.a.p009n.c.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.r0
                    @Override // f.a.a.a.p009n.c.a
                    public final void permissionsResult(PermissionsResult permissionsResult2) {
                        this.f8323a.b(permissionsResult2);
                    }
                });
            }
        }

        /* JADX INFO: Access modifiers changed from: private */
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public /* synthetic */ void f() {
            cn.mucang.android.jiakaoyi.framework.utils.d0.d(((cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k) k1.this).b, new f.a.a.a.p009n.c.a() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.t0
                @Override // f.a.a.a.p009n.c.a
                public final void permissionsResult(PermissionsResult permissionsResult) {
                    this.f8327a.d(permissionsResult);
                }
            }, "android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE", "android.permission.RECORD_AUDIO", "android.permission.ACCESS_FINE_LOCATION", "android.permission.ACCESS_COARSE_LOCATION", "android.permission.ACCESS_WIFI_STATE");
        }

        @Override // f.a.a.a.j.c
        public void onActivityResult(int i, int i2, Intent intent) {
            if (i2 != -1) {
                k1.this.s();
            } else {
                HighlightVideoManager.t(intent);
                cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.s0
                    @Override // java.lang.Runnable
                    public final void run() {
                        this.f8325a.f();
                    }
                }, 50L);
            }
        }
    }

    public k1(BaseActivity baseActivity, cn.mucang.android.jiakaoyi.framework.h.b<String> bVar, cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k kVar) {
        super(baseActivity, bVar, kVar, "权限申请");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void n() {
        AudioManager.v();
        g();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void p(View view) {
        this.b.finish();
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX INFO: renamed from: q, reason: merged with bridge method [inline-methods] */
    public /* synthetic */ void r(View view) {
        f();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void s() {
        new JCommonDialog(this.b, new JCommonDialog.DialogParams(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_no_permission), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_please_agree_permission), cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_dialog_button_cancel), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.u0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8329a.p(view);
            }
        }, cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_retry), new View.OnClickListener() { // from class: cn.mucang.android.jiakaoyi.teachingk2.ui.splash.impl.v0
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                this.f8331a.r(view);
            }
        }, false)).show();
    }

    @Override // cn.mucang.android.jiakaoyi.teachingk2.ui.splash.k
    public void f() {
        this.c.callback(cn.mucang.android.jiakaoyi.framework.utils.k0.a(R.string.teachbase_check_permissions));
        LiveBus.c(new cn.mucang.android.jiakaoyi.teachingk2.ui.splash.l(10.0f));
        BaseActivity baseActivity = this.b;
        if (baseActivity == null || baseActivity.isFinishing() || this.b.isDestroyed()) {
            return;
        }
        f.a.a.a.j.a.a(this.b).c(((MediaProjectionManager) this.b.getSystemService("media_projection")).createScreenCaptureIntent(), 1000, new a());
        HighlightVideoManager.r();
    }
}
