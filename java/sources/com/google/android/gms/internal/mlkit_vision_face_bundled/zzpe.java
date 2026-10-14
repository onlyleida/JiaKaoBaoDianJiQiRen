package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
final class zzpe extends zzpg {
    private zzpe() {
        super(null);
    }

    /* synthetic */ zzpe(zzpd zzpdVar) {
        super(null);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpg
    final void zza(Object obj, long j) {
        ((zzos) zzrf.zzf(obj, j)).zzb();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpg
    final void zzb(Object obj, Object obj2, long j) {
        zzos zzosVarZzd = (zzos) zzrf.zzf(obj, j);
        zzos zzosVar = (zzos) zzrf.zzf(obj2, j);
        int size = zzosVarZzd.size();
        int size2 = zzosVar.size();
        if (size > 0 && size2 > 0) {
            if (!zzosVarZzd.zzc()) {
                zzosVarZzd = zzosVarZzd.zzd(size2 + size);
            }
            zzosVarZzd.addAll(zzosVar);
        }
        if (size > 0) {
            zzosVar = zzosVarZzd;
        }
        zzrf.zzs(obj, j, zzosVar);
    }
}
