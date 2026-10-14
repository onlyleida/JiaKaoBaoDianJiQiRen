package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
public class zzoi extends zzoh implements zzpt {
    protected zzoi(zzoj zzojVar) {
        super(zzojVar);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzoh, com.google.android.gms.internal.mlkit_vision_face_bundled.zzpr
    /* JADX INFO: renamed from: zza, reason: merged with bridge method [inline-methods] */
    public final zzoj zzs() {
        if (this.zzb) {
            return (zzoj) this.zza;
        }
        ((zzoj) this.zza).zzb.zzh();
        return (zzoj) super.zzs();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzoh
    protected final void zzu() {
        super.zzu();
        zzoj zzojVar = (zzoj) this.zza;
        zzojVar.zzb = zzojVar.zzb.clone();
    }
}
