package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class zzir {
    private final String zza;
    private final zzip zzc;
    private final String zze;
    private final zzio zzf;
    private final String zzb = null;
    private final String zzd = null;
    private final Long zzg = null;
    private final Boolean zzh = null;
    private final Boolean zzi = null;

    /* synthetic */ zzir(zzin zzinVar, zziq zziqVar) {
        this.zza = zzinVar.zza;
        this.zzc = zzinVar.zzb;
        this.zze = zzinVar.zzc;
        this.zzf = zzinVar.zzd;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzir)) {
            return false;
        }
        zzir zzirVar = (zzir) obj;
        if (Objects.equal(this.zza, zzirVar.zza)) {
            String str = zzirVar.zzb;
            if (Objects.equal(null, null) && Objects.equal(this.zzc, zzirVar.zzc)) {
                String str2 = zzirVar.zzd;
                if (Objects.equal(null, null) && Objects.equal(this.zze, zzirVar.zze) && Objects.equal(this.zzf, zzirVar.zzf)) {
                    Long l = zzirVar.zzg;
                    if (Objects.equal(null, null)) {
                        Boolean bool = zzirVar.zzh;
                        if (Objects.equal(null, null)) {
                            Boolean bool2 = zzirVar.zzi;
                            if (Objects.equal(null, null)) {
                                return true;
                            }
                        }
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, null, this.zzc, null, this.zze, this.zzf, null, null, null);
    }

    @zzbj(zza = 6)
    public final zzio zza() {
        return this.zzf;
    }

    @zzbj(zza = 3)
    public final zzip zzb() {
        return this.zzc;
    }

    @zzbj(zza = 5)
    public final String zzc() {
        return this.zze;
    }

    @zzbj(zza = 1)
    public final String zzd() {
        return this.zza;
    }
}
