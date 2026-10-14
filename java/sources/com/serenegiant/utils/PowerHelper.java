package com.serenegiant.utils;

import android.annotation.SuppressLint;
import android.app.Activity;
import android.app.KeyguardManager;
import android.os.PowerManager;
import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public class PowerHelper {
    private static final String TAG = "PowerHelper";

    @SuppressLint({"MissingPermission", "WakelockTimeout"})
    public static void wake(Activity activity, boolean z, long j) {
        try {
            PowerManager.WakeLock wakeLockNewWakeLock = ((PowerManager) activity.getSystemService("power")).newWakeLock(805306394, "PowerHelper:disableLock");
            if (j > 0) {
                wakeLockNewWakeLock.acquire(j);
            } else {
                wakeLockNewWakeLock.acquire();
            }
            try {
                ((KeyguardManager) activity.getSystemService("keyguard")).newKeyguardLock(TAG).disableKeyguard();
                wakeLockNewWakeLock.release();
                activity.getWindow().addFlags(524416);
            } catch (Throwable th) {
                wakeLockNewWakeLock.release();
                throw th;
            }
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }
}
