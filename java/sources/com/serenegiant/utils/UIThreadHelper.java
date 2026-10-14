package com.serenegiant.utils;

import android.os.Handler;
import android.os.Looper;
import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
public final class UIThreadHelper {
    private static final String TAG = "UIThreadHelper";
    private static final Handler sUIHandler;
    private static final Thread sUiThread;

    static {
        Handler handler = new Handler(Looper.getMainLooper());
        sUIHandler = handler;
        sUiThread = handler.getLooper().getThread();
    }

    public static final void removeFromUiThread(Runnable runnable) {
        sUIHandler.removeCallbacks(runnable);
    }

    public static final void runOnUiThread(Runnable runnable) {
        if (Thread.currentThread() != sUiThread) {
            sUIHandler.post(runnable);
            return;
        }
        try {
            runnable.run();
        } catch (Exception e2) {
            Log.w(TAG, e2);
        }
    }

    public static final void runOnUiThread(Runnable runnable, long j) {
        if (j <= 0 && Thread.currentThread() == sUiThread) {
            try {
                runnable.run();
                return;
            } catch (Exception e2) {
                Log.w(TAG, e2);
                return;
            }
        }
        sUIHandler.postDelayed(runnable, j);
    }
}
