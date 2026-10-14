package com.google.android.gms.internal.mlkit_vision_face;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes2.dex */
public final class zzjp {
    private final zzjn zza;
    private final Integer zzb;
    private final Integer zzc = null;
    private final Boolean zzd = null;

    /* synthetic */ zzjp(zzjm zzjmVar, zzjo zzjoVar) {
        this.zza = zzjmVar.zza;
        this.zzb = zzjmVar.zzb;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zzjp)) {
            return false;
        }
        zzjp zzjpVar = (zzjp) obj;
        if (Objects.equal(this.zza, zzjpVar.zza) && Objects.equal(this.zzb, zzjpVar.zzb)) {
            Integer num = zzjpVar.zzc;
            if (Objects.equal(null, null)) {
                Boolean bool = zzjpVar.zzd;
                if (Objects.equal(null, null)) {
                    return true;
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, this.zzb, null, null);
    }

    @zzcu(zza = 1)
    public final zzjn zza() {
        return this.zza;
    }

    @zzcu(zza = 2)
    public final Integer zzb() {
        return this.zzb;
    }
}
