package com.google.android.gms.vision.face.mlkit;

import android.content.Context;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzja;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzjb;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmd;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzmh;
import java.util.List;

/* JADX INFO: loaded from: classes2.dex */
final class zzb {
    private final zzd zza;

    zzb(Context context) {
        this.zza = new zzd(context);
    }

    final void zza(zzmh zzmhVar, zzmd zzmdVar, List list, long j) {
        this.zza.zza(zzmhVar, zzjb.OPTIONAL_MODULE_FACE_DETECTION_INFERENCE, zzja.NO_ERROR);
    }

    final void zzb(zzmh zzmhVar, String str, long j) {
        this.zza.zza(zzmhVar, zzjb.OPTIONAL_MODULE_FACE_DETECTION_CREATE, str != null ? zzja.OPTIONAL_MODULE_CREATE_ERROR : zzja.NO_ERROR);
    }

    final void zzc(zzmh zzmhVar) {
        this.zza.zza(zzmhVar, zzjb.OPTIONAL_MODULE_FACE_DETECTION_INIT, zzja.NO_ERROR);
    }
}
