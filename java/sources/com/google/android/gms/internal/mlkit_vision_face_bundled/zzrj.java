package com.google.android.gms.internal.mlkit_vision_face_bundled;

/* JADX INFO: loaded from: classes2.dex */
final class zzrj extends IllegalArgumentException {
    zzrj(int i, int i2) {
        StringBuilder sb = new StringBuilder(54);
        sb.append("Unpaired surrogate at index ");
        sb.append(i);
        sb.append(" of ");
        sb.append(i2);
        super(sb.toString());
    }
}
