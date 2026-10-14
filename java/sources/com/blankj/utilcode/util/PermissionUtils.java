package com.blankj.utilcode.util;

import android.annotation.TargetApi;
import android.app.Activity;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Bundle;
import android.provider.Settings;
import android.util.Log;
import android.view.MotionEvent;
import java.util.Arrays;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;

/* JADX INFO: loaded from: classes5.dex */
public final class PermissionUtils {
    private static final List<String> j = l();
    private static PermissionUtils k;
    private static d l;
    private static d m;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private c f11595a;
    private d b;
    private b c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private e f11596d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private Set<String> f11597e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<String> f11598f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private List<String> f11599g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private List<String> f11600h;
    private List<String> i;

    public static class PermissionActivity extends Activity {

        class a implements Runnable {
            a(PermissionActivity permissionActivity) {
            }

            @Override // java.lang.Runnable
            public void run() {
                if (PermissionUtils.p()) {
                    PermissionUtils.m.a();
                } else {
                    PermissionUtils.m.b();
                }
                d unused = PermissionUtils.m = null;
            }
        }

        @Override // android.app.Activity, android.view.Window.Callback
        public boolean dispatchTouchEvent(MotionEvent motionEvent) {
            finish();
            return true;
        }

        @Override // android.app.Activity
        protected void onActivityResult(int i, int i2, Intent intent) {
            if (i == 2) {
                if (PermissionUtils.l == null) {
                    return;
                }
                if (PermissionUtils.q()) {
                    PermissionUtils.l.a();
                } else {
                    PermissionUtils.l.b();
                }
                d unused = PermissionUtils.l = null;
            } else if (i == 3) {
                if (PermissionUtils.m == null) {
                    return;
                } else {
                    Utils.l(new a(this), 100L);
                }
            }
            finish();
        }

        @Override // android.app.Activity
        protected void onCreate(Bundle bundle) {
            getWindow().addFlags(262160);
            int intExtra = getIntent().getIntExtra("TYPE", 1);
            if (intExtra != 1) {
                if (intExtra == 2) {
                    super.onCreate(bundle);
                    PermissionUtils.x(this, 2);
                    return;
                } else {
                    if (intExtra == 3) {
                        super.onCreate(bundle);
                        PermissionUtils.w(this, 3);
                        return;
                    }
                    return;
                }
            }
            if (PermissionUtils.k == null) {
                super.onCreate(bundle);
                Log.e("PermissionUtils", "request permissions failed");
                finish();
                return;
            }
            if (PermissionUtils.k.f11596d != null) {
                PermissionUtils.k.f11596d.a(this);
            }
            super.onCreate(bundle);
            if (PermissionUtils.k.u(this) || PermissionUtils.k.f11598f == null) {
                return;
            }
            int size = PermissionUtils.k.f11598f.size();
            if (size <= 0) {
                finish();
            } else {
                requestPermissions((String[]) PermissionUtils.k.f11598f.toArray(new String[size]), 1);
            }
        }

        @Override // android.app.Activity
        public void onRequestPermissionsResult(int i, String[] strArr, int[] iArr) {
            Objects.requireNonNull(strArr, "Argument 'permissions' of type String[] (#1 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
            Objects.requireNonNull(iArr, "Argument 'grantResults' of type int[] (#2 out of 3, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
            if (PermissionUtils.k != null && PermissionUtils.k.f11598f != null) {
                PermissionUtils.k.t(this);
            }
            finish();
        }
    }

    class a implements c.a {
        a(PermissionUtils permissionUtils, Activity activity) {
        }
    }

    public interface b {
        void a(List<String> list);

        void b(List<String> list, List<String> list2);
    }

    public interface c {

        public interface a {
        }

        void a(a aVar);
    }

    public interface d {
        void a();

        void b();
    }

    public interface e {
        void a(Activity activity);
    }

    public static List<String> l() {
        return m(Utils.d().getPackageName());
    }

    public static List<String> m(String str) {
        try {
            String[] strArr = Utils.d().getPackageManager().getPackageInfo(str, 4096).requestedPermissions;
            return strArr == null ? Collections.emptyList() : Arrays.asList(strArr);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return Collections.emptyList();
        }
    }

    private void n(Activity activity) {
        for (String str : this.f11598f) {
            if (o(str)) {
                this.f11599g.add(str);
            } else {
                this.f11600h.add(str);
                if (!activity.shouldShowRequestPermissionRationale(str)) {
                    this.i.add(str);
                }
            }
        }
    }

    private static boolean o(String str) {
        return Build.VERSION.SDK_INT < 23 || androidx.core.a.a.a(Utils.d(), str) == 0;
    }

    public static boolean p() {
        return Settings.canDrawOverlays(Utils.d());
    }

    public static boolean q() {
        return Settings.System.canWrite(Utils.d());
    }

    private static boolean r(Intent intent) {
        return Utils.d().getPackageManager().queryIntentActivities(intent, 65536).size() > 0;
    }

    public static void s() {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.parse("package:" + Utils.d().getPackageName()));
        if (r(intent)) {
            Utils.d().startActivity(intent.addFlags(268435456));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void t(Activity activity) {
        n(activity);
        v();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean u(Activity activity) {
        boolean z = false;
        if (this.f11595a != null) {
            Iterator<String> it = this.f11598f.iterator();
            while (it.hasNext()) {
                if (activity.shouldShowRequestPermissionRationale(it.next())) {
                    n(activity);
                    this.f11595a.a(new a(this, activity));
                    z = true;
                    break;
                }
            }
            this.f11595a = null;
        }
        return z;
    }

    private void v() {
        if (this.b != null) {
            if (this.f11598f.size() == 0 || this.f11597e.size() == this.f11599g.size()) {
                this.b.a();
            } else if (!this.f11600h.isEmpty()) {
                this.b.b();
            }
            this.b = null;
        }
        if (this.c != null) {
            if (this.f11598f.size() == 0 || this.f11597e.size() == this.f11599g.size()) {
                this.c.a(this.f11599g);
            } else if (!this.f11600h.isEmpty()) {
                this.c.b(this.i, this.f11600h);
            }
            this.c = null;
        }
        this.f11595a = null;
        this.f11596d = null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public static void w(Activity activity, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_OVERLAY_PERMISSION");
        intent.setData(Uri.parse("package:" + Utils.d().getPackageName()));
        if (r(intent)) {
            activity.startActivityForResult(intent, i);
        } else {
            s();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @TargetApi(23)
    public static void x(Activity activity, int i) {
        Intent intent = new Intent("android.settings.action.MANAGE_WRITE_SETTINGS");
        intent.setData(Uri.parse("package:" + Utils.d().getPackageName()));
        if (r(intent)) {
            activity.startActivityForResult(intent, i);
        } else {
            s();
        }
    }
}
