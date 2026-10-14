package com.unity3d.splash;

import android.app.Activity;

/* JADX INFO: loaded from: classes6.dex */
public final class UnityAds {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static boolean f14364a = false;

    public enum FinishState {
        ERROR,
        SKIPPED,
        COMPLETED
    }

    public enum PlacementState {
        READY,
        NOT_AVAILABLE,
        DISABLED,
        WAITING,
        NO_FILL
    }

    public enum UnityAdsError {
        NOT_INITIALIZED,
        INITIALIZE_FAILED,
        INVALID_ARGUMENT,
        VIDEO_PLAYER_ERROR,
        INIT_SANITY_CHECK_FAIL,
        AD_BLOCKER_DETECTED,
        FILE_IO_ERROR,
        DEVICE_ID_ERROR,
        SHOW_ERROR,
        INTERNAL_ERROR
    }

    public static void a(Activity activity, String str, a aVar) {
        com.unity3d.splash.services.b.a.b(activity, str, aVar, false, false);
    }

    public static boolean b() {
        return f14364a;
    }

    public static void c(boolean z) {
        f14364a = z;
    }
}
