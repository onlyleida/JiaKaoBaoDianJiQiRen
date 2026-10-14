package com.unity3d.player;

import android.util.Log;

/* JADX INFO: loaded from: classes6.dex */
final class g {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    protected static boolean f14302a = false;

    protected static void Log(int i, String str) {
        if (f14302a) {
            return;
        }
        if (i == 6) {
            Log.e("Unity", str);
        }
        if (i == 5) {
            Log.w("Unity", str);
        }
    }
}
