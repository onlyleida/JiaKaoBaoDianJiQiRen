package com.google.mlkit.common.sdkinternal;

import android.content.Context;
import android.content.Intent;
import android.text.TextUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.mlkit_common.zzan;
import java.util.Iterator;
import java.util.List;

/* JADX INFO: loaded from: classes4.dex */
@KeepForSdk
public class OptionalModuleUtils {

    @KeepForSdk
    public static final String BARCODE = "barcode";

    @KeepForSdk
    public static final String CUSTOM_ICA = "custom_ica";

    @KeepForSdk
    public static final String DEPRECATED_DYNAMITE_MODULE_ID = "com.google.android.gms.vision.dynamite";

    @KeepForSdk
    public static final String FACE = "face";

    @KeepForSdk
    public static final String ICA = "ica";

    @KeepForSdk
    public static final String LANGID = "langid";

    @KeepForSdk
    public static final String MLKIT_BARCODE_UI = "barcode_ui";

    @KeepForSdk
    public static final String NLCLASSIFIER = "nlclassifier";

    @KeepForSdk
    public static final String NLCLASSIFIER_MODULE_ID = "com.google.android.gms.mlkit.nlclassifier";

    @KeepForSdk
    public static final String OCR = "ocr";

    @KeepForSdk
    public static final String TFLITE_DYNAMITE = "tflite_dynamite";

    @KeepForSdk
    public static final String TFLITE_DYNAMITE_MODULE_ID = "com.google.android.gms.tflite_dynamite";

    private OptionalModuleUtils() {
    }

    @KeepForSdk
    public static boolean areAllRequiredModulesAvailable(Context context, List<String> list) {
        try {
            Iterator<String> it = list.iterator();
            while (it.hasNext()) {
                DynamiteModule.load(context, DynamiteModule.PREFER_REMOTE, it.next());
            }
            return true;
        } catch (DynamiteModule.LoadingException unused) {
            return false;
        }
    }

    @KeepForSdk
    public static void requestDownload(Context context, String str) {
        requestDownload(context, zzan.zzj(str));
    }

    @KeepForSdk
    public static void requestDownload(Context context, List<String> list) {
        Intent intent = new Intent();
        intent.setClassName("com.google.android.gms", "com.google.android.gms.vision.DependencyBroadcastReceiverProxy");
        intent.setAction("com.google.android.gms.vision.DEPENDENCY");
        intent.putExtra("com.google.android.gms.vision.DEPENDENCIES", TextUtils.join(",", list));
        intent.putExtra("requester_app_package", context.getApplicationInfo().packageName);
        context.sendBroadcast(intent);
    }
}
