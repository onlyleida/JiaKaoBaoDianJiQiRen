package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
public final class zzma {
    private static zzma zza;

    private zzma() {
    }

    public static synchronized zzma zza() {
        if (zza == null) {
            zza = new zzma();
        }
        return zza;
    }

    public static void zzb() {
        zzlz.zza();
    }
}
