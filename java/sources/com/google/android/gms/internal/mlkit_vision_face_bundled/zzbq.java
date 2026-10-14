package com.google.android.gms.internal.mlkit_vision_face_bundled;

import java.util.AbstractMap;

/* JADX INFO: loaded from: classes2.dex */
final class zzbq extends zzbl {
    final /* synthetic */ zzbr zza;

    zzbq(zzbr zzbrVar) {
        this.zza = zzbrVar;
    }

    @Override // java.util.List
    public final /* bridge */ /* synthetic */ Object get(int i) {
        zzay.zza(i, this.zza.zzc, "index");
        zzbr zzbrVar = this.zza;
        int i2 = i + i;
        Object obj = zzbrVar.zzb[i2];
        obj.getClass();
        Object obj2 = zzbrVar.zzb[i2 + 1];
        obj2.getClass();
        return new AbstractMap.SimpleImmutableEntry(obj, obj2);
    }

    @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
    public final int size() {
        return this.zza.zzc;
    }
}
