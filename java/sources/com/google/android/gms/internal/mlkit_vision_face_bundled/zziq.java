package com.google.android.gms.internal.mlkit_vision_face_bundled;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zziq {
    private final zzin zza;
    private final zzil zzb;
    private final zzio zzc;
    private final zzim zzd;
    private final Boolean zze;
    private final Float zzf;

    /* synthetic */ zziq(zzik zzikVar, zzip zzipVar) {
        this.zza = zzikVar.zza;
        this.zzb = zzikVar.zzb;
        this.zzc = zzikVar.zzc;
        this.zzd = zzikVar.zzd;
        this.zze = zzikVar.zze;
        this.zzf = zzikVar.zzf;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zziq)) {
            return false;
        }
        zziq zziqVar = (zziq) obj;
        return Objects.equal(this.zza, zziqVar.zza) && Objects.equal(this.zzb, zziqVar.zzb) && Objects.equal(this.zzc, zziqVar.zzc) && Objects.equal(this.zzd, zziqVar.zzd) && Objects.equal(this.zze, zziqVar.zze) && Objects.equal(this.zzf, zziqVar.zzf);
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, this.zzc, this.zzd, this.zze, this.zzf);
    }

    @zzcd(zza = 2)
    public final zzil zza() {
        return this.zzb;
    }

    @zzcd(zza = 4)
    public final zzim zzb() {
        return this.zzd;
    }

    @zzcd(zza = 1)
    public final zzin zzc() {
        return this.zza;
    }

    @zzcd(zza = 3)
    public final zzio zzd() {
        return this.zzc;
    }

    @zzcd(zza = 5)
    public final Boolean zze() {
        return this.zze;
    }

    @zzcd(zza = 6)
    public final Float zzf() {
        return this.zzf;
    }
}
