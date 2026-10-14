package com.google.android.gms.internal.mlkit_vision_face_bundled;

import java.util.Collections;
import java.util.HashMap;
import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class zzny {
    static final zzny zza = new zzny(true);
    private static volatile boolean zzb = false;
    private static volatile zzny zzc;
    private final Map zzd;

    zzny() {
        this.zzd = new HashMap();
    }

    public static zzny zza() {
        zzny zznyVar = zzc;
        if (zznyVar == null) {
            synchronized (zzny.class) {
                zznyVar = zzc;
                if (zznyVar == null) {
                    zznyVar = zza;
                    zzc = zznyVar;
                }
            }
        }
        return zznyVar;
    }

    public static zzny zzb() {
        return new zzny();
    }

    public final zzol zzc(zzps zzpsVar, int i) {
        return (zzol) this.zzd.get(new zznx(zzpsVar, i));
    }

    public final void zzd(zzol zzolVar) {
        Map map = this.zzd;
        zzps zzpsVar = zzolVar.zza;
        zzok zzokVar = zzolVar.zzd;
        map.put(new zznx(zzpsVar, 202056002), zzolVar);
    }

    zzny(boolean z) {
        this.zzd = Collections.emptyMap();
    }
}
