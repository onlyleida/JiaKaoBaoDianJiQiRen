package f.a.a.a.o;

import android.app.Activity;
import android.app.Application;
import android.content.Intent;
import android.os.Bundle;
import cn.mucang.android.core.config.MucangConfig;
import cn.mucang.android.core.config.l;
import cn.mucang.android.core.utils.d;
import cn.mucang.android.core.utils.t;
import cn.mucang.android.framework.core.R;
import cn.mucang.android.push.activity.PushActivity;
import f.a.a.a.p010s.PrivacyAgreementSetting;

/* JADX INFO: loaded from: classes.dex */
public class a implements b.c {

    /* JADX INFO: renamed from: f.a.a.a.o.a$a, reason: collision with other inner class name */
    class C0297a extends l {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ Application f14476a;
        final /* synthetic */ Intent b;

        C0297a(a aVar, Application application, Intent intent) {
            this.f14476a = application;
            this.b = intent;
        }

        @Override // cn.mucang.android.core.config.l, android.app.Application.ActivityLifecycleCallbacks
        public void onActivityCreated(Activity activity, Bundle bundle) {
            boolean z;
            try {
                Bundle bundle2 = activity.getPackageManager().getActivityInfo(activity.getComponentName(), 128).metaData;
                if (bundle2 == null) {
                    return;
                } else {
                    z = bundle2.getBoolean(activity.getString(R.string.core__mc_main_page_key));
                }
            } catch (Throwable th) {
                t.c("PullUpManager", th);
                z = false;
            }
            if (z && PrivacyAgreementSetting.d()) {
                this.f14476a.unregisterActivityLifecycleCallbacks(this);
                Activity activityI = MucangConfig.i();
                if (activityI == null || d.d(activityI)) {
                    return;
                }
                Intent intent = new Intent(activityI, (Class<?>) PushActivity.class);
                if (this.b.getExtras() != null) {
                    intent.putExtras(this.b.getExtras());
                }
                intent.setData(this.b.getData());
                activityI.startActivity(intent);
            }
        }
    }

    private void b(Intent intent) {
        Application application = (Application) MucangConfig.getContext().getApplicationContext();
        application.registerActivityLifecycleCallbacks(new C0297a(this, application, intent));
    }

    private void c(Activity activity) {
        Intent launchIntentForPackage = activity.getPackageManager().getLaunchIntentForPackage(activity.getPackageName());
        if (launchIntentForPackage != null) {
            activity.startActivity(launchIntentForPackage);
        }
    }

    @Override // f.a.a.a.o.b.c
    public boolean a(Activity activity, Intent intent) {
        if (PrivacyAgreementSetting.d()) {
            return false;
        }
        c(activity);
        b(intent);
        return true;
    }
}
