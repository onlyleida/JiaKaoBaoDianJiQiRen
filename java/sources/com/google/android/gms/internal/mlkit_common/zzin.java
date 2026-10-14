package com.google.android.gms.internal.mlkit_common;

/* JADX INFO: loaded from: classes.dex */
public final class zzin {
    private String zza;
    private zzip zzb;
    private String zzc;
    private zzio zzd;

    public final zzin zza(String str) {
        this.zzc = str;
        return this;
    }

    public final zzin zzb(zzio zzioVar) {
        this.zzd = zzioVar;
        return this;
    }

    public final zzin zzc(String str) {
        this.zza = str;
        return this;
    }

    public final zzin zzd(zzip zzipVar) {
        this.zzb = zzipVar;
        return this;
    }

    public final zzir zzg() {
        return new zzir(this, null);
    }
}
