package com.mobile.auth.g;

import android.annotation.SuppressLint;
import android.os.Build;

/* JADX INFO: loaded from: classes2.dex */
@SuppressLint({"NewApi"})
public class a {

    /* JADX INFO: renamed from: com.mobile.auth.g.a$a, reason: collision with other inner class name */
    static /* synthetic */ class C0253a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ int[] f13174a;

        static {
            int[] iArr = new int[b.values().length];
            f13174a = iArr;
            try {
                iArr[b.HUAWEI.ordinal()] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f13174a[b.SAMSUNG.ordinal()] = 2;
            } catch (NoSuchFieldError unused2) {
            }
        }
    }

    public enum b {
        UNKNOWN,
        SAMSUNG,
        HUAWEI
    }

    static int a() {
        return a(b());
    }

    private static int a(b bVar) {
        int i = C0253a.f13174a[bVar.ordinal()];
        if (i != 1) {
            return i != 2 ? -1 : 1;
        }
        return 0;
    }

    private static b b() {
        String str = Build.BRAND;
        if (str.equalsIgnoreCase("samsung")) {
            return b.SAMSUNG;
        }
        return str.equalsIgnoreCase("Huawei") ? b.HUAWEI : b.UNKNOWN;
    }
}
