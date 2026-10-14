package com.unity3d.player;

import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes6.dex */
public class GoogleVrApi {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static AtomicReference f14184a = new AtomicReference();

    private GoogleVrApi() {
    }

    static void a() {
        f14184a.set(null);
    }

    static void a(f fVar) {
        f14184a.compareAndSet(null, new GoogleVrProxy(fVar));
    }

    static GoogleVrProxy b() {
        return (GoogleVrProxy) f14184a.get();
    }

    public static GoogleVrVideo getGoogleVrVideo() {
        return (GoogleVrVideo) f14184a.get();
    }
}
