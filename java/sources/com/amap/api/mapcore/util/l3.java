package com.amap.api.mapcore.util;

import android.content.Context;
import android.content.res.AssetManager;
import java.io.File;

/* JADX INFO: loaded from: classes5.dex */
public class l3 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f10982a = new File("/system/framework/amap.jar").exists();

    public static int a(Context context, float f2) {
        return (int) ((f2 * context.getResources().getDisplayMetrics().density) + 0.5f);
    }

    public static AssetManager b(Context context) {
        if (context == null) {
            return null;
        }
        AssetManager assets = context.getAssets();
        if (f10982a) {
            try {
                assets.getClass().getDeclaredMethod("addAssetPath", String.class).invoke(assets, "/system/framework/amap.jar");
            } catch (Throwable th) {
                e6.r(th, "ResourcesUtil", "getSelfAssets");
            }
        }
        return assets;
    }
}
