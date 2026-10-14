package com.google.android.gms.internal.mlkit_vision_face_bundled;

import android.content.Context;
import java.util.Objects;
import javax.annotation.Nullable;
import org.apache.commons.math3.geometry.VectorFormat;

/* JADX INFO: loaded from: classes2.dex */
final class zze extends zzi {
    private final Context zza;
    private final zzba zzb;

    zze(Context context, @Nullable zzba zzbaVar) {
        Objects.requireNonNull(context, "Null context");
        this.zza = context;
        this.zzb = zzbaVar;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof zzi) {
            zzi zziVar = (zzi) obj;
            if (this.zza.equals(zziVar.zza()) && this.zzb.equals(zziVar.zzb())) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        return ((this.zza.hashCode() ^ 1000003) * 1000003) ^ this.zzb.hashCode();
    }

    public final String toString() {
        String string = this.zza.toString();
        String string2 = this.zzb.toString();
        StringBuilder sb = new StringBuilder(string.length() + 46 + string2.length());
        sb.append("FlagsContext{context=");
        sb.append(string);
        sb.append(", hermeticFileOverrides=");
        sb.append(string2);
        sb.append(VectorFormat.DEFAULT_SUFFIX);
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzi
    final Context zza() {
        return this.zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzi
    @Nullable
    final zzba zzb() {
        return this.zzb;
    }
}
