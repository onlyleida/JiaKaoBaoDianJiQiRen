package com.unity3d.splash.services.c.a;

import android.graphics.drawable.Drawable;
import android.os.Build;
import android.view.View;
import com.unity3d.splash.services.core.log.DeviceLog;

/* JADX INFO: loaded from: classes6.dex */
public class c {
    public static void a(View view, Drawable drawable) {
        String str = Build.VERSION.SDK_INT < 16 ? "setBackgroundDrawable" : "setBackground";
        try {
            View.class.getMethod(str, Drawable.class).invoke(view, drawable);
        } catch (Exception e2) {
            DeviceLog.f("Couldn't run" + str, e2);
        }
    }
}
