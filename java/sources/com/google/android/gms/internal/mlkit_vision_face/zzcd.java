package com.google.android.gms.internal.mlkit_vision_face;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzcd extends zzbn {
    final /* synthetic */ zzce zza;

    zzcd(zzce zzceVar) {
        this.zza = zzceVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzab.zza(i, this.zza.zzc, "index");
        zzce zzceVar = this.zza;
        int i2 = i + i;
        Object obj = zzceVar.zzb[i2];
        obj.getClass();
        Object obj2 = zzceVar.zzb[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }
}
