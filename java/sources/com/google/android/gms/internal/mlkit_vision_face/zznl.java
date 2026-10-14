package com.google.android.gms.internal.mlkit_vision_face;

/* JADX INFO: loaded from: classes2.dex */
public final class zznl {
    private static zznl zza;

    private zznl() {
    }

    public static synchronized zznl zza() {
        if (zza == null) {
            zza = new zznl();
        }
        return zza;
    }
}
