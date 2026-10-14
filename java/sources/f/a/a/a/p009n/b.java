package f.a.a.a.p009n;

import android.app.Activity;
import cn.mucang.android.core.utils.t;
import f.a.a.a.p009n.c.a;

/* JADX INFO: loaded from: classes.dex */
public class b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private String f14470a = "Permissions";
    private String b = "__permissions_";
    private PermissionRequestFragment c;

    private b(Activity activity) {
        if (activity == null || activity.isFinishing()) {
            return;
        }
        PermissionRequestFragment permissionRequestFragment = (PermissionRequestFragment) activity.getFragmentManager().findFragmentByTag(this.b);
        this.c = permissionRequestFragment;
        if (permissionRequestFragment == null) {
            this.c = new PermissionRequestFragment();
            activity.getFragmentManager().beginTransaction().add(this.c, this.b).commitAllowingStateLoss();
            activity.getFragmentManager().executePendingTransactions();
        }
    }

    public static b a(Activity activity) {
        return new b(activity);
    }

    public void b(a aVar, String... strArr) {
        PermissionRequestFragment permissionRequestFragment = this.c;
        if (permissionRequestFragment == null) {
            t.m(this.f14470a, "Please check you activity state");
        } else {
            permissionRequestFragment.c(aVar, strArr);
        }
    }
}
