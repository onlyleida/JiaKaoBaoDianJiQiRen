package f.a.a.a.j;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;
import cn.mucang.android.core.utils.t;

/* JADX INFO: loaded from: classes.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private b f14453a;

    private a(Activity activity) {
        if (!b(activity)) {
            t.d("StartForResult", "Activity is null or has finished");
            return;
        }
        b bVar = (b) activity.getFragmentManager().findFragmentByTag("__start_for_result");
        this.f14453a = bVar;
        if (bVar == null) {
            this.f14453a = new b();
            activity.getFragmentManager().beginTransaction().add(this.f14453a, "__start_for_result").commitAllowingStateLoss();
            activity.getFragmentManager().executePendingTransactions();
        }
    }

    public static a a(Activity activity) {
        return new a(activity);
    }

    private static boolean b(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        return Build.VERSION.SDK_INT < 17 || !activity.isDestroyed();
    }

    public void c(Intent intent, int i, c cVar) {
        if (i <= 0 || cVar == null) {
            t.m("StartForResult", "RequestCode should in >0 and listener should not be null");
        }
        b bVar = this.f14453a;
        if (bVar == null) {
            t.m("StartForResult", "Please check you activity state");
        } else {
            bVar.a(cVar);
            this.f14453a.startActivityForResult(intent, i);
        }
    }
}
