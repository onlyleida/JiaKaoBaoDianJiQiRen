package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
final class zzpj implements zzpq {
    private final zzpq[] zza;

    zzpj(zzpq... zzpqVarArr) {
        this.zza = zzpqVarArr;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpq
    public final zzpp zzb(Class cls) {
        zzpq[] zzpqVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            zzpq zzpqVar = zzpqVarArr[i];
            if (zzpqVar.zzc(cls)) {
                return zzpqVar.zzb(cls);
            }
        }
        String strValueOf = String.valueOf(cls.getName());
        throw new UnsupportedOperationException(strValueOf.length() != 0 ? "No factory is available for message type: ".concat(strValueOf) : new String("No factory is available for message type: "));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpq
    public final boolean zzc(Class cls) {
        zzpq[] zzpqVarArr = this.zza;
        for (int i = 0; i < 2; i++) {
            if (zzpqVarArr[i].zzc(cls)) {
                return true;
            }
        }
        return false;
    }
}
