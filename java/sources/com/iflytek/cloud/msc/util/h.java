package com.iflytek.cloud.msc.util;

import android.content.Context;
import android.media.AudioManager;
import android.os.Build;
import android.view.View;
import com.iflytek.cloud.msc.util.log.DebugLog;

/* JADX INFO: loaded from: classes4.dex */
public class h {
    public static boolean a(Context context, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        try {
            DebugLog.LogD("start request music_stream focus");
            ((AudioManager) context.getSystemService("audio")).requestAudioFocus(onAudioFocusChangeListener, 3, 2);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static boolean b(Context context, AudioManager.OnAudioFocusChangeListener onAudioFocusChangeListener) {
        try {
            DebugLog.LogD("start abandon audio focus");
            ((AudioManager) context.getSystemService("audio")).abandonAudioFocus(onAudioFocusChangeListener);
            return true;
        } catch (Exception unused) {
            return false;
        }
    }

    public static void a(View view) {
        if (Build.VERSION.SDK_INT >= 11) {
            view.setLayerType(1, null);
        }
    }
}
