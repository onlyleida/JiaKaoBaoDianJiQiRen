package com.serenegiant.utils;

import android.app.Activity;
import android.view.WindowManager;

/* JADX INFO: loaded from: classes6.dex */
public class BrightnessHelper {
    public static void setBrightness(Activity activity, float f2) {
        WindowManager.LayoutParams attributes = activity.getWindow().getAttributes();
        if (f2 > 1.0f) {
            f2 = 1.0f;
        }
        attributes.screenBrightness = f2;
        activity.getWindow().setAttributes(attributes);
    }

    public float getBrightness(Activity activity) {
        return activity.getWindow().getAttributes().screenBrightness;
    }
}
