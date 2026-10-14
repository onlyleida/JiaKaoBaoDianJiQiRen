package io.agora.rtc.utils;

import android.content.Context;
import android.os.Process;
import android.view.WindowManager;
import io.agora.rtc.internal.RtcEngineImpl;

/* JADX INFO: loaded from: classes6.dex */
public class AgoraUtils {
    private static final String TAG = "AgoraUtils";

    public static boolean ensureNativeLibsInitialized() {
        return RtcEngineImpl.initializeNativeLibs();
    }

    public static String getAppStorageDir(Context context) {
        if (context == null || context.checkPermission("android.permission.READ_EXTERNAL_STORAGE", Process.myPid(), Process.myUid()) != 0) {
            return null;
        }
        return "/sdcard/" + context.getApplicationInfo().packageName;
    }

    public static int getDisplayRotation(Context context) {
        int rotation = ((WindowManager) context.getSystemService("window")).getDefaultDisplay().getRotation();
        if (rotation == 1) {
            return 90;
        }
        if (rotation != 2) {
            return rotation != 3 ? 0 : 270;
        }
        return 180;
    }

    public static int getFrameOrientation(int i, int i2, boolean z, boolean z2) {
        if (!z) {
            return ((i2 - i) + 360) % 360;
        }
        int i3 = (i2 + i) % 360;
        return z2 ? (360 - i3) % 360 : i3;
    }
}
