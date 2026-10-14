package cn.mucang.android.jiakaoyi.framework.utils;

import android.app.Activity;
import android.content.Intent;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
public class e0 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private f.a.a.a.j.b f3611a;

    private e0(Activity activity, String str) {
        if (!b(activity)) {
            cn.mucang.android.core.utils.t.d("StartForResult", "Activity is null or has finished");
            return;
        }
        f.a.a.a.j.b bVar = (f.a.a.a.j.b) activity.getFragmentManager().findFragmentByTag(str);
        this.f3611a = bVar;
        if (bVar == null) {
            this.f3611a = new f.a.a.a.j.b();
            activity.getFragmentManager().beginTransaction().add(this.f3611a, "__start_for_result").commitAllowingStateLoss();
            activity.getFragmentManager().executePendingTransactions();
        }
    }

    public static e0 a(Activity activity, String str) {
        return new e0(activity, str);
    }

    private static boolean b(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return false;
        }
        return Build.VERSION.SDK_INT < 17 || !activity.isDestroyed();
    }

    public void c(Intent intent, int i, f.a.a.a.j.c cVar) {
        if (i <= 0 || cVar == null) {
            cn.mucang.android.core.utils.t.m("StartForResult", "RequestCode should in >0 and listener should not be null");
        }
        f.a.a.a.j.b bVar = this.f3611a;
        if (bVar == null) {
            cn.mucang.android.core.utils.t.m("StartForResult", "Please check you activity state");
        } else {
            bVar.a(cVar);
            this.f3611a.startActivityForResult(intent, i);
        }
    }
}
