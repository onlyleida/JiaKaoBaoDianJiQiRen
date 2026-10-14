package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
final class zzpo {
    private static final zzpn zza;
    private static final zzpn zzb;

    static {
        zzpn zzpnVar;
        try {
            zzpnVar = (zzpn) Class.forName("com.google.protobuf.MapFieldSchemaFull").getDeclaredConstructor(new Class[0]).newInstance(new Object[0]);
        } catch (Exception unused) {
            zzpnVar = null;
        }
        zza = zzpnVar;
        zzb = new zzpn();
    }

    static zzpn zza() {
        return zza;
    }

    static zzpn zzb() {
        return zzb;
    }
}
