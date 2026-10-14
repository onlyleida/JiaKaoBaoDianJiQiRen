package com.unity3d.splash.services.b.b;

import java.util.Collections;
import java.util.LinkedHashSet;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public class a {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static Set f14367a = Collections.synchronizedSet(new LinkedHashSet());

    public static void a(com.unity3d.splash.a aVar) {
        if (aVar == null || f14367a.contains(aVar)) {
            return;
        }
        f14367a.add(aVar);
    }
}
