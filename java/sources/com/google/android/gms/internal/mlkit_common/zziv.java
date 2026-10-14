package com.google.android.gms.internal.mlkit_common;

import com.google.android.gms.common.internal.Objects;

/* JADX INFO: loaded from: classes.dex */
public final class zziv {
    private final zzir zza;
    private final zzit zzb = null;
    private final zzit zzc = null;
    private final Boolean zzd = null;

    /* synthetic */ zziv(zzis zzisVar, zziu zziuVar) {
        this.zza = zzisVar.zza;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof zziv)) {
            return false;
        }
        zziv zzivVar = (zziv) obj;
        if (Objects.equal(this.zza, zzivVar.zza)) {
            zzit zzitVar = zzivVar.zzb;
            if (Objects.equal(null, null)) {
                zzit zzitVar2 = zzivVar.zzc;
                if (Objects.equal(null, null)) {
                    Boolean bool = zzivVar.zzd;
                    if (Objects.equal(null, null)) {
                        return true;
                    }
                }
            }
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(this.zza, null, null, null);
    }

    @zzbj(zza = 1)
    public final zzir zza() {
        return this.zza;
    }
}
