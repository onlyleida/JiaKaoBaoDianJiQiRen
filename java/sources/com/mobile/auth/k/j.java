package com.mobile.auth.k;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;

/* JADX INFO: loaded from: classes5.dex */
public class j {
    public static PackageInfo a(Context context) {
        try {
            return e(context).getPackageInfo(context.getPackageName(), 0);
        } catch (PackageManager.NameNotFoundException e2) {
            e2.printStackTrace();
            return null;
        }
    }

    public static String b(Context context) {
        PackageInfo packageInfoA = a(context);
        if (packageInfoA != null) {
            return packageInfoA.packageName;
        }
        return null;
    }

    public static String c(Context context) {
        try {
            PackageManager packageManagerE = e(context);
            String str = (String) packageManagerE.getApplicationLabel(packageManagerE.getApplicationInfo(b(context), 0));
            if (str != null) {
                return str;
            }
            PackageInfo packageInfoA = a(context);
            if (packageInfoA == null) {
                return null;
            }
            String string = context.getResources().getString(packageInfoA.applicationInfo.labelRes);
            if (string != null) {
                return string;
            }
        } catch (Exception e2) {
            e2.printStackTrace();
        }
        return null;
    }

    public static String d(Context context) {
        PackageInfo packageInfoA = a(context);
        if (packageInfoA == null) {
            return null;
        }
        return b(context) + "&" + packageInfoA.versionName;
    }

    private static PackageManager e(Context context) {
        return context.getPackageManager();
    }
}
