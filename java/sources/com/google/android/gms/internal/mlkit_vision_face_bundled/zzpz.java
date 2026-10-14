package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
final class zzpz {
    private static final zzpy zza;
    private static final zzpy zzb;

    static {
        zzpy zzpyVar;
        try {
            zzpyVar = (zzpy) Class.forName("com.google.protobuf.NewInstanceSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzpyVar = null;
        }
        zza = zzpyVar;
        zzb = new zzpy();
    }

    static zzpy zza() {
        return zza;
    }

    static zzpy zzb() {
        return zzb;
    }
}
