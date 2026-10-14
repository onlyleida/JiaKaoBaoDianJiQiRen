package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
final class zzog implements zzpq {
    private static final zzog zza = new zzog();

    private zzog() {
    }

    public static zzog zza() {
        return zza;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpq
    public final zzpp zzb(Class cls) {
        if (!zzon.class.isAssignableFrom(cls)) {
            String strValueOf = String.valueOf(cls.getName());
            throw new IllegalArgumentException(strValueOf.length() != 0 ? "Unsupported message type: ".concat(strValueOf) : new String("Unsupported message type: "));
        }
        try {
            return (zzpp) zzon.zzy(cls.asSubclass(zzon.class)).zzf(3, null, null);
        } catch (Exception e2) {
            String strValueOf2 = String.valueOf(cls.getName());
            throw new RuntimeException(strValueOf2.length() != 0 ? "Unable to get message info for ".concat(strValueOf2) : new String("Unable to get message info for "), e2);
        }
    }

    @Override // com.google.android.gms.internal.mlkit_vision_face_bundled.zzpq
    public final boolean zzc(Class cls) {
        return zzon.class.isAssignableFrom(cls);
    }
}
