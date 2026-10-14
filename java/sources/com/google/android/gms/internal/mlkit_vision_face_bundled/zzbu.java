package com.google.android.gms.internal.mlkit_vision_face_bundled;

import javax.annotation.CheckForNull;

/* JADX INFO: loaded from: classes2.dex */
final class zzbu extends zzbn {
    static final zzbn zza = new zzbu(null, new Object[0], 0);
    final transient Object[] zzb;
    private final transient int zzc;

    private zzbu(@CheckForNull Object obj, Object[] objArr, int i) {
        this.zzb = objArr;
        this.zzc = i;
    }

    static zzbu zzg(int i, Object[] objArr, zzbm zzbmVar) {
        Object obj = objArr[0];
        obj.getClass();
        Object obj2 = objArr[1];
        obj2.getClass();
        zzbe.zza(obj, obj2);
        return new zzbu(null, objArr, 1);
    }

    /* JADX WARN: Code duplicated, block: B:4:0x0007  */
    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzbn, java.util.Map
    @CheckForNull
    public final Object get(@CheckForNull Object obj) {
        Object obj2;
        Object[] objArr = this.zzb;
        int i = this.zzc;
        if (obj != null && i == 1) {
            Object obj3 = objArr[0];
            obj3.getClass();
            if (obj3.equals(obj)) {
                obj2 = objArr[1];
                obj2.getClass();
            } else {
                obj2 = null;
            }
        } else {
            obj2 = null;
        }
        if (obj2 == null) {
            return null;
        }
        return obj2;
    }

    @Override // java.util.Map
    public final int size() {
        return this.zzc;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzbn
    final zzbh zza() {
        return new zzbt(this.zzb, 1, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzbn
    final zzbo zzd() {
        return new zzbr(this, this.zzb, 0, this.zzc);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzbn
    final zzbo zze() {
        return new zzbs(this, new zzbt(this.zzb, 0, this.zzc));
    }
}
