package com.iflytek.cloud.msc.util;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.view.View;

/* JADX INFO: loaded from: classes4.dex */
public class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static int f12365a = 9;
    public static int b = 14;

    public static boolean a(Context context, Boolean bool, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        if (!bool.booleanValue() || Build.VERSION.SDK_INT < f12365a) {
            return false;
        }
        h.a(context, onAudioFocusChangeListener);
        return false;
    }

    public static boolean b(Context context, Boolean bool, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        if (!bool.booleanValue() || Build.VERSION.SDK_INT < f12365a) {
            return false;
        }
        return h.b(context, onAudioFocusChangeListener);
    }

    public static void a(View view) {
        if (Build.VERSION.SDK_INT >= b) {
            h.a(view);
        }
    }
}
