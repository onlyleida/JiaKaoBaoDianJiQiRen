package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.PermissionGroupInfo;
import android.net.Uri;
import android.util.Log;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes6.dex */
public final class PermissionCheck {
    public static final void dumpPermissions(Context context) {
        if (context == null) {
            return;
        }
        try {
            Iterator<PermissionGroupInfo> it = context.getPackageManager().getAllPermissionGroups(128).iterator();
            while (it.hasNext()) {
                Log.d("PermissionCheck", it.next().name);
            }
        } catch (Exception e2) {
            Log.w("", e2);
        }
    }

    public static boolean hasAccessCoarseLocation(Context context) {
        return hasPermission(context, "android.permission.ACCESS_COARSE_LOCATION");
    }

    public static boolean hasAccessFineLocation(Context context) {
        return hasPermission(context, "android.permission.ACCESS_FINE_LOCATION");
    }

    public static boolean hasAccessLocation(Context context) {
        return hasPermission(context, "android.permission.ACCESS_COARSE_LOCATION") && hasPermission(context, "android.permission.ACCESS_FINE_LOCATION");
    }

    public static boolean hasAudio(Context context) {
        return hasPermission(context, "android.permission.RECORD_AUDIO");
    }

    public static boolean hasCamera(Context context) {
        return hasPermission(context, "android.permission.CAMERA");
    }

    public static boolean hasNetwork(Context context) {
        return hasPermission(context, "android.permission.INTERNET");
    }

    @SuppressLint({"NewApi"})
    public static boolean hasPermission(Context context, String str) {
        if (context == null) {
            return false;
        }
        try {
            return (BuildCheck.isMarshmallow() ? context.checkSelfPermission(str) : context.getPackageManager().checkPermission(str, context.getPackageName())) == 0;
        } catch (Exception e2) {
            Log.w("", e2);
            return false;
        }
    }

    @SuppressLint({"InlinedApi"})
    public static boolean hasReadExternalStorage(Context context) {
        return BuildCheck.isAndroid4() ? hasPermission(context, "android.permission.READ_EXTERNAL_STORAGE") : hasPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public static boolean hasWriteExternalStorage(Context context) {
        return hasPermission(context, "android.permission.WRITE_EXTERNAL_STORAGE");
    }

    public static List<String> missingPermissions(Context context, String[] strArr) throws PackageManager.NameNotFoundException, IllegalArgumentException {
        return missingPermissions(context, new ArrayList(Arrays.asList(strArr)));
    }

    public static void openSettings(Context context) {
        Intent intent = new Intent("android.settings.APPLICATION_DETAILS_SETTINGS");
        intent.setData(Uri.fromParts("package", context.getPackageName(), null));
        context.startActivity(intent);
    }

    public static List<String> missingPermissions(Context context, List<String> list) throws PackageManager.NameNotFoundException, IllegalArgumentException {
        String[] strArr = context.getPackageManager().getPackageInfo(context.getPackageName(), 4096).requestedPermissions;
        if (strArr != null) {
            for (String str : strArr) {
                list.remove(str);
            }
        }
        return list;
    }
}
