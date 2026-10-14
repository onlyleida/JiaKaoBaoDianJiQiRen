package com.unity3d.player;

import android.os.Build;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final boolean f14303a;
    static final boolean b;
    static final boolean c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    static final e f14304d;

    static {
        int i = Build.VERSION.SDK_INT;
        f14303a = i >= 21;
        boolean z = i >= 23;
        b = z;
        c = i >= 24;
        f14304d = z ? new h() : null;
    }
}
