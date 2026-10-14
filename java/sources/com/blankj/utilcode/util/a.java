package com.blankj.utilcode.util;

import android.content.ComponentName;
import android.content.Intent;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.os.Build;
import android.os.Process;
import android.util.Log;
import java.io.File;
import java.util.List;
import java.util.Objects;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes5.dex */
public final class a {

    /* JADX INFO: renamed from: com.blankj.utilcode.util.a$a, reason: collision with other inner class name */
    public static class C0191a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private String f11609a;
        private String b;
        private Drawable c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private String f11610d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private String f11611e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f11612f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private boolean f11613g;

        public C0191a(String str, String str2, Drawable drawable, String str3, String str4, int i, boolean z) {
            i(str2);
            h(drawable);
            j(str);
            k(str3);
            n(str4);
            m(i);
            l(z);
        }

        public Drawable a() {
            return this.c;
        }

        public String b() {
            return this.b;
        }

        public String c() {
            return this.f11609a;
        }

        public String d() {
            return this.f11610d;
        }

        public int e() {
            return this.f11612f;
        }

        public String f() {
            return this.f11611e;
        }

        public boolean g() {
            return this.f11613g;
        }

        public void h(Drawable drawable) {
            this.c = drawable;
        }

        public void i(String str) {
            this.b = str;
        }

        public void j(String str) {
            this.f11609a = str;
        }

        public void k(String str) {
            this.f11610d = str;
        }

        public void l(boolean z) {
            this.f11613g = z;
        }

        public void m(int i) {
            this.f11612f = i;
        }

        public void n(String str) {
            this.f11611e = str;
        }

        public String toString() {
            return "{\n  pkg name: " + c() + "\n  app icon: " + a() + "\n  app name: " + b() + "\n  app path: " + d() + "\n  app v name: " + f() + "\n  app v code: " + e() + "\n  is system: " + g() + VectorFormat.DEFAULT_SUFFIX;
        }
    }

    public static C0191a a(File file) {
        if (file != null && file.isFile() && file.exists()) {
            return b(file.getAbsolutePath());
        }
        return null;
    }

    public static C0191a b(String str) {
        PackageManager packageManager;
        PackageInfo packageArchiveInfo;
        if (n(str) || (packageManager = Utils.d().getPackageManager()) == null || (packageArchiveInfo = packageManager.getPackageArchiveInfo(str, 0)) == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageArchiveInfo.applicationInfo;
        applicationInfo.sourceDir = str;
        applicationInfo.publicSourceDir = str;
        return h(packageManager, packageArchiveInfo);
    }

    public static String c() {
        return Utils.d().getPackageName();
    }

    public static int d() {
        return e(Utils.d().getPackageName());
    }

    public static int e(String str) {
        if (n(str)) {
            return -1;
        }
        try {
            PackageInfo packageInfo = Utils.d().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return -1;
            }
            return packageInfo.versionCode;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return -1;
        }
    }

    public static String f() {
        return g(Utils.d().getPackageName());
    }

    public static String g(String str) {
        if (n(str)) {
            return "";
        }
        try {
            PackageInfo packageInfo = Utils.d().getPackageManager().getPackageInfo(str, 0);
            if (packageInfo == null) {
                return null;
            }
            return packageInfo.versionName;
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return "";
        }
    }

    private static C0191a h(PackageManager packageManager, PackageInfo packageInfo) {
        if (packageInfo == null) {
            return null;
        }
        ApplicationInfo applicationInfo = packageInfo.applicationInfo;
        return new C0191a(packageInfo.packageName, applicationInfo.loadLabel(packageManager).toString(), applicationInfo.loadIcon(packageManager), applicationInfo.sourceDir, packageInfo.versionName, packageInfo.versionCode, (applicationInfo.flags & 1) != 0);
    }

    private static Intent i(File file, boolean z) {
        Uri uriE;
        Intent intent = new Intent("android.intent.action.VIEW");
        if (Build.VERSION.SDK_INT < 24) {
            uriE = Uri.fromFile(file);
        } else {
            uriE = androidx.core.a.b.e(Utils.d(), Utils.d().getPackageName() + ".utilcode.provider", file);
            intent.setFlags(1);
        }
        Utils.d().grantUriPermission(Utils.d().getPackageName(), uriE, 1);
        intent.setDataAndType(uriE, "application/vnd.android.package-archive");
        return z ? intent.addFlags(268435456) : intent;
    }

    private static Intent j(String str, boolean z) {
        String strK = k(str);
        if (strK.isEmpty()) {
            return null;
        }
        Intent intent = new Intent("android.intent.action.MAIN");
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setComponent(new ComponentName(str, strK));
        return z ? intent.addFlags(268435456) : intent;
    }

    private static String k(String str) {
        Objects.requireNonNull(str, "Argument 'pkg' of type String (#0 out of 1, zero-based) is marked by @androidx.annotation.NonNull but got null for it");
        Intent intent = new Intent("android.intent.action.MAIN", (Uri) null);
        intent.addCategory("android.intent.category.LAUNCHER");
        intent.setPackage(str);
        List<ResolveInfo> listQueryIntentActivities = Utils.d().getPackageManager().queryIntentActivities(intent, 0);
        int size = listQueryIntentActivities.size();
        if (size == 0) {
            return "";
        }
        for (int i = 0; i < size; i++) {
            ResolveInfo resolveInfo = listQueryIntentActivities.get(i);
            if (resolveInfo.activityInfo.processName.equals(str)) {
                return resolveInfo.activityInfo.name;
            }
        }
        return listQueryIntentActivities.get(0).activityInfo.name;
    }

    public static void l(File file) {
        if (m(file)) {
            Utils.d().startActivity(i(file, true));
        }
    }

    private static boolean m(File file) {
        return file != null && file.exists();
    }

    private static boolean n(String str) {
        if (str == null) {
            return true;
        }
        int length = str.length();
        for (int i = 0; i < length; i++) {
            if (!Character.isWhitespace(str.charAt(i))) {
                return false;
            }
        }
        return true;
    }

    public static void o(boolean z) {
        Intent intentJ = j(Utils.d().getPackageName(), true);
        if (intentJ == null) {
            Log.e("AppUtils", "Didn't exist launcher activity.");
            return;
        }
        intentJ.addFlags(335577088);
        Utils.d().startActivity(intentJ);
        if (z) {
            Process.killProcess(Process.myPid());
            System.exit(0);
        }
    }
}
