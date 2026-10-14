package com.loc;

import java.util.HashMap;
import java.util.Map;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes4.dex */
public final class eb {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public String f12763a;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    public byte[] f12764d;
    public Map<String, String> b = new HashMap();
    boolean c = true;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    public int f12765e = 10000;

    public static String a() {
        return "lc_" + ((int) dy.a());
    }

    public static String b() {
        return dy.c() + Marker.ANY_MARKER + dy.f();
    }
}
