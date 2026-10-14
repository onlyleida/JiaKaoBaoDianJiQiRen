package cn.mucang.android.core.config;

import android.app.Application;
import android.content.Context;
import android.os.Build;
import android.webkit.WebView;
import cn.mucang.android.core.config.mapping.ProfileManager;
import cn.mucang.android.core.identity.OaidProviderForInit;
import cn.mucang.android.core.jni.Riddle;
import cn.mucang.android.core.task.ServerTask;
import cn.mucang.android.core.utils.a0;
import cn.mucang.android.core.utils.l0;
import cn.mucang.android.selectcity.CityNameCodeMapping;
import com.google.android.exoplayer2.DefaultRenderersFactory;
import f.a.a.a.p010s.PrivacyAgreementSetting;

/* JADX INFO: loaded from: classes.dex */
public abstract class p extends Application implements w {
    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        cn.mucang.android.core.utils.t.a("core", "initPrivacyDependency...");
        boolean zE = a0.e();
        r();
        if (zE) {
            v.d();
            if (MucangConfig.v()) {
                WebView.setWebContentsDebuggingEnabled(true);
            }
            cn.mucang.android.core.utils.u.d(new Runnable() { // from class: cn.mucang.android.core.config.c
                @Override // java.lang.Runnable
                public final void run() {
                    ServerTask.a();
                }
            }, DefaultRenderersFactory.DEFAULT_ALLOWED_VIDEO_JOINING_TIME_MS);
            OaidProviderForInit.c(this);
            cn.mucang.android.core.callphone.a.h().r();
            u();
        } else {
            x();
            v();
        }
        q();
    }

    private void r() {
        ProfileManager.g();
        CityNameCodeMapping.a();
        s.h();
        cn.mucang.android.core.glide.a.a();
        t();
    }

    private void t() {
        if (a0.e()) {
            Thread.setDefaultUncaughtExceptionHandler(new f.a.a.a.l.f(this, new f.a.a.a.l.a(this), Thread.getDefaultUncaughtExceptionHandler()));
        }
    }

    private void w() {
        f.a.a.a.activity.h.b(this);
        s();
        Riddle.c();
    }

    private void x() {
        String strB;
        if (Build.VERSION.SDK_INT < 28 || (strB = a0.b()) == null) {
            return;
        }
        String[] strArrSplit = strB.split(":");
        WebView.setDataDirectorySuffix(strArrSplit[strArrSplit.length - 1]);
    }

    @Override // android.content.ContextWrapper
    protected void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        a0.d(context);
        MucangConfig.t(this, this);
    }

    @Override // android.app.Application
    public final void onCreate() {
        long jCurrentTimeMillis = System.currentTimeMillis();
        super.onCreate();
        w();
        PrivacyAgreementSetting.j(new Runnable() { // from class: cn.mucang.android.core.config.a
            @Override // java.lang.Runnable
            public final void run() {
                this.f2467a.p();
            }
        });
        cn.mucang.android.core.utils.t.a("core", "Application.create: " + (System.currentTimeMillis() - jCurrentTimeMillis) + "ms");
    }

    @Override // android.app.Application, android.content.ComponentCallbacks2
    public void onTrimMemory(int i) {
        super.onTrimMemory(i);
        if (PrivacyAgreementSetting.d() && i == 20) {
            l0.g();
            cn.mucang.android.core.utils.t.a(p.class.getName(), "手动触发上传");
        }
    }

    protected abstract void q();

    protected abstract void s();

    protected abstract void u();

    protected abstract void v();
}
