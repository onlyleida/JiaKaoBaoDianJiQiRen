package com.google.mlkit.vision.face.internal;

import com.google.android.gms.internal.mlkit_vision_face.zzjf;
import com.google.android.gms.internal.mlkit_vision_face.zzjg;
import com.google.android.gms.internal.mlkit_vision_face.zzjh;
import com.google.android.gms.internal.mlkit_vision_face.zzji;
import com.google.android.gms.internal.mlkit_vision_face.zzjj;
import com.google.android.gms.internal.mlkit_vision_face.zzjl;
import com.google.android.gms.internal.mlkit_vision_face.zzjz;
import com.google.android.gms.internal.mlkit_vision_face.zzka;
import com.google.android.gms.internal.mlkit_vision_face.zzkb;
import com.google.android.gms.internal.mlkit_vision_face.zzkc;
import com.google.android.gms.internal.mlkit_vision_face.zzkr;
import com.google.android.gms.internal.mlkit_vision_face.zzmx;
import com.google.android.gms.internal.mlkit_vision_face.zzmz;
import com.google.android.gms.internal.mlkit_vision_face.zznc;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.face.FaceDetectorOptions;
import java.util.concurrent.atomic.AtomicReference;

/* JADX INFO: loaded from: classes4.dex */
public final class zzj {
    static final AtomicReference zza = new AtomicReference();

    public static zzjl zza(FaceDetectorOptions faceDetectorOptions) {
        zzji zzjiVar;
        zzjg zzjgVar;
        zzjj zzjjVar;
        zzjh zzjhVar;
        zzjf zzjfVar = new zzjf();
        int iZzd = faceDetectorOptions.zzd();
        if (iZzd != 1) {
            zzjiVar = iZzd != 2 ? zzji.UNKNOWN_LANDMARKS : zzji.ALL_LANDMARKS;
        } else {
            zzjiVar = zzji.NO_LANDMARKS;
        }
        zzjfVar.zzd(zzjiVar);
        int iZzb = faceDetectorOptions.zzb();
        if (iZzb != 1) {
            zzjgVar = iZzb != 2 ? zzjg.UNKNOWN_CLASSIFICATIONS : zzjg.ALL_CLASSIFICATIONS;
        } else {
            zzjgVar = zzjg.NO_CLASSIFICATIONS;
        }
        zzjfVar.zza(zzjgVar);
        int iZze = faceDetectorOptions.zze();
        if (iZze != 1) {
            zzjjVar = iZze != 2 ? zzjj.UNKNOWN_PERFORMANCE : zzjj.ACCURATE;
        } else {
            zzjjVar = zzjj.FAST;
        }
        zzjfVar.zzf(zzjjVar);
        int iZzc = faceDetectorOptions.zzc();
        if (iZzc != 1) {
            zzjhVar = iZzc != 2 ? zzjh.UNKNOWN_CONTOURS : zzjh.ALL_CONTOURS;
        } else {
            zzjhVar = zzjh.NO_CONTOURS;
        }
        zzjfVar.zzb(zzjhVar);
        zzjfVar.zzc(Boolean.valueOf(faceDetectorOptions.zzg()));
        zzjfVar.zze(Float.valueOf(faceDetectorOptions.zza()));
        return zzjfVar.zzk();
    }

    public static String zzb() {
        return true != zzd() ? "play-services-mlkit-face-detection" : "face-detection";
    }

    public static void zzc(zzmz zzmzVar, final boolean z, final zzka zzkaVar) {
        zzmzVar.zzc(new zzmx() { // from class: com.google.mlkit.vision.face.internal.zzi
            @Override // com.google.android.gms.internal.mlkit_vision_face.zzmx
            public final zznc zza() {
                boolean z2 = z;
                zzka zzkaVar2 = zzkaVar;
                zzkc zzkcVar = new zzkc();
                zzkcVar.zze(z2 ? zzjz.TYPE_THICK : zzjz.TYPE_THIN);
                zzkr zzkrVar = new zzkr();
                zzkrVar.zzb(zzkaVar2);
                zzkcVar.zzh(zzkrVar.zzc());
                return zznc.zzd(zzkcVar);
            }
        }, zzkb.ON_DEVICE_FACE_LOAD);
    }

    static boolean zzd() {
        AtomicReference atomicReference = zza;
        if (atomicReference.get() != null) {
            return ((Boolean) atomicReference.get()).booleanValue();
        }
        boolean zZzc = zza.zzc(MlKitContext.getInstance().getApplicationContext());
        atomicReference.set(Boolean.valueOf(zZzc));
        return zZzc;
    }
}
