package com.google.android.gms.internal.mlkit_vision_face_bundled;

import androidx.exifinterface.media.ExifInterface;

/* JADX INFO: loaded from: classes2.dex */
final class zznx {
    private final Object zza;
    private final int zzb;

    zznx(Object obj, int i) {
        this.zza = obj;
        this.zzb = i;
    }

    public final boolean equals(Object obj) {
        if (!(obj instanceof zznx)) {
            return false;
        }
        zznx zznxVar = (zznx) obj;
        return this.zza == zznxVar.zza && this.zzb == zznxVar.zzb;
    }

    public final int hashCode() {
        return (System.identityHashCode(this.zza) * ExifInterface.COLOR_SPACE_UNCALIBRATED) + this.zzb;
    }
}
