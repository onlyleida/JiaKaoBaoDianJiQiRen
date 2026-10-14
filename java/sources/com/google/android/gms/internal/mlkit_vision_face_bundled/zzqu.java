package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
public final class zzqu extends RuntimeException {
    public zzqu(zzps zzpsVar) {
        super("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    public final zzov zza() {
        return new zzov(getMessage());
    }
}
