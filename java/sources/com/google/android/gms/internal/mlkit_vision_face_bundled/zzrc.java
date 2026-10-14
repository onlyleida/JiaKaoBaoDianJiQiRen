package com.google.android.gms.internal.mlkit_vision_face_bundled;

import sun.misc.Unsafe;

/* JADX INFO: loaded from: classes2.dex */
final class zzrc extends zzre {
    zzrc(Unsafe unsafe) {
        super(unsafe);
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final double zza(Object obj, long j) {
        return Double.longBitsToDouble(zzk(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final float zzb(Object obj, long j) {
        return Float.intBitsToFloat(zzj(obj, j));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final void zzc(Object obj, long j, boolean z) {
        if (zzrf.zzb) {
            zzrf.zzD(obj, j, z ? (byte) 1 : (byte) 0);
        } else {
            zzrf.zzE(obj, j, z ? (byte) 1 : (byte) 0);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final void zzd(Object obj, long j, byte b) {
        if (zzrf.zzb) {
            zzrf.zzD(obj, j, b);
        } else {
            zzrf.zzE(obj, j, b);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final void zze(Object obj, long j, double d2) {
        zzo(obj, j, Double.doubleToLongBits(d2));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final void zzf(Object obj, long j, float f2) {
        zzn(obj, j, Float.floatToIntBits(f2));
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzre
    public final boolean zzg(Object obj, long j) {
        return zzrf.zzb ? zzrf.zzt(obj, j) : zzrf.zzu(obj, j);
    }
}
