package com.amap.api.maps;

import android.content.Context;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import com.amap.api.mapcore.util.d5;
import com.amap.api.mapcore.util.ea;
import com.amap.api.mapcore.util.f7;
import com.amap.api.mapcore.util.i5;

/* JADX INFO: loaded from: classes5.dex */
public final class MapsInitializer {
    public static final int HTTP = 1;
    public static final int HTTPS = 2;

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f11487a = true;
    private static boolean b = true;
    private static boolean c = false;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static boolean f11488d = false;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static boolean f11489e = true;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static boolean f11490f = false;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private static boolean f11491g = false;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static boolean f11492h = true;
    private static ExceptionLogger i = null;
    private static boolean j = true;
    private static String k = "";
    private static String l = "";
    private static int m = 1;
    public static String sdcardDir = "";

    public static void disableCachedMapDataUpdate(boolean z) {
    }

    public static ExceptionLogger getExceptionLogger() {
        return i;
    }

    public static boolean getNetWorkEnable() {
        return f11487a;
    }

    public static int getProtocol() {
        return m;
    }

    public static boolean getTextureDestroyRender() {
        return f11490f;
    }

    public static boolean getTextureSizeChangedInvoked() {
        return f11491g;
    }

    public static boolean getTextureViewDestorySync() {
        return f11489e;
    }

    public static String getVersion() {
        return "7.4.0";
    }

    public static String getWorldVectorOfflineMapStyleAssetsPath() {
        return l;
    }

    public static String getWorldVectorOfflineMapStyleFilePath() {
        return k;
    }

    public static void initialize(Context context) throws RemoteException {
        if (context != null) {
            ea.f10754f = context.getApplicationContext();
        } else {
            Log.w("MapsInitializer", "the context is null");
        }
    }

    public static boolean isDisableCachedMapDataUpdate() {
        return false;
    }

    public static boolean isDownloadCoordinateConvertLibrary() {
        return b;
    }

    public static boolean isLoadWorldGridMap() {
        return c;
    }

    public static boolean isLoadWorldVectorMap() {
        return j;
    }

    public static boolean isSupportRecycleView() {
        return f11492h;
    }

    public static void loadWorldGridMap(boolean z) {
        c = z;
    }

    public static void loadWorldVectorMap(boolean z) {
        j = z;
    }

    public static void setApiKey(String str) {
        if (str == null || str.trim().length() <= 0) {
            return;
        }
        d5.l(ea.f10754f, str);
    }

    public static void setBuildingHeight(int i2) {
    }

    public static void setDownloadCoordinateConvertLibrary(boolean z) {
        b = z;
    }

    public static void setExceptionLogger(ExceptionLogger exceptionLogger) {
        i = exceptionLogger;
    }

    public static void setHost(String str) {
        if (TextUtils.isEmpty(str)) {
            f7.f10802a = -1;
            f7.b = "";
        } else {
            f7.f10802a = 1;
            f7.b = str;
        }
    }

    public static void setNetWorkEnable(boolean z) {
        f11487a = z;
    }

    public static void setProtocol(int i2) {
        m = i2;
        i5.a().e(m == 2);
    }

    public static void setSupportRecycleView(boolean z) {
        f11492h = z;
    }

    public static void setTextureDestroyedRender(boolean z) {
        f11490f = z;
    }

    public static void setTextureSizeChangedInvoked(boolean z) {
        f11491g = z;
    }

    public static void setTextureViewDestorySync(boolean z) {
        f11489e = z;
    }

    public static void setWorldVectorOfflineMapStyleAssetsPath(String str) {
        l = str;
    }

    public static void setWorldVectorOfflineMapStyleFilePath(String str) {
        k = str;
    }
}
