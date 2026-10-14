package com.google.android.gms.internal.mlkit_vision_face;

/* JADX INFO: loaded from: classes2.dex */
public final class zznk {
    private static zznj zza;

    public static synchronized zzmz zza(zzmq zzmqVar) {
        if (zza == null) {
            zza = new zznj(null);
        }
        return (zzmz) zza.get(zzmqVar);
    }

    public static synchronized zzmz zzb(String str) {
        return zza(zzmq.zzd(str).zzd());
    }
}
