package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
public final class zzlx {
    private static zzlw zza;

    public static synchronized zzlm zza(zzlf zzlfVar) {
        if (zza == null) {
            zza = new zzlw(null);
        }
        return (zzlm) zza.get(zzlfVar);
    }

    public static synchronized zzlm zzb(String str) {
        return zza(zzlf.zzd("common").zzd());
    }
}
