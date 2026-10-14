package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
public final class zzmb {
    private static zzmb zza;

    private zzmb() {
    }

    public static synchronized zzmb zza() {
        if (zza == null) {
            zza = new zzmb();
        }
        return zza;
    }
}
