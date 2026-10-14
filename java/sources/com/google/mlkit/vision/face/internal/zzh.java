package com.google.mlkit.vision.face.internal;

import android.graphics.Rect;
import android.os.SystemClock;
import android.util.Pair;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.mlkit_vision_face.zzdi;
import com.google.android.gms.internal.mlkit_vision_face.zzdj;
import com.google.android.gms.internal.mlkit_vision_face.zzdl;
import com.google.android.gms.internal.mlkit_vision_face.zzjd;
import com.google.android.gms.internal.mlkit_vision_face.zzjm;
import com.google.android.gms.internal.mlkit_vision_face.zzjn;
import com.google.android.gms.internal.mlkit_vision_face.zzjr;
import com.google.android.gms.internal.mlkit_vision_face.zzjz;
import com.google.android.gms.internal.mlkit_vision_face.zzka;
import com.google.android.gms.internal.mlkit_vision_face.zzkb;
import com.google.android.gms.internal.mlkit_vision_face.zzkc;
import com.google.android.gms.internal.mlkit_vision_face.zzko;
import com.google.android.gms.internal.mlkit_vision_face.zzkq;
import com.google.android.gms.internal.mlkit_vision_face.zzmx;
import com.google.android.gms.internal.mlkit_vision_face.zzmz;
import com.google.android.gms.internal.mlkit_vision_face.zznb;
import com.google.android.gms.internal.mlkit_vision_face.zznc;
import com.google.mlkit.common.MlKitException;
import com.google.mlkit.common.sdkinternal.MLTask;
import com.google.mlkit.common.sdkinternal.MLTaskExecutor;
import com.google.mlkit.common.sdkinternal.MlKitContext;
import com.google.mlkit.vision.common.InputImage;
import com.google.mlkit.vision.common.internal.BitmapInStreamingChecker;
import com.google.mlkit.vision.common.internal.ImageUtils;
import com.google.mlkit.vision.face.Face;
import com.google.mlkit.vision.face.FaceDetectorOptions;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.Iterator;
import java.util.List;
import java.util.concurrent.atomic.AtomicBoolean;

/* JADX INFO: loaded from: classes4.dex */
public final class zzh extends MLTask {
    static final AtomicBoolean zza = new AtomicBoolean(true);
    private static final ImageUtils zzb = ImageUtils.getInstance();
    private final FaceDetectorOptions zzc;
    private final zzmz zzd;
    private final zznb zze;
    private final zzb zzf;
    private boolean zzg;
    private final BitmapInStreamingChecker zzh = new BitmapInStreamingChecker();

    public zzh(zzmz zzmzVar, FaceDetectorOptions faceDetectorOptions, zzb zzbVar) {
        Preconditions.checkNotNull(faceDetectorOptions, "FaceDetectorOptions can not be null");
        this.zzc = faceDetectorOptions;
        this.zzd = zzmzVar;
        this.zzf = zzbVar;
        this.zze = zznb.zza(MlKitContext.getInstance().getApplicationContext());
    }

    static void zzd(List list) {
        Iterator it = list.iterator();
        while (it.hasNext()) {
            ((Face) it.next()).zzc(-1);
        }
    }

    private final synchronized void zzg(final zzka zzkaVar, long j, final InputImage inputImage, final int i, final int i2) {
        final long jElapsedRealtime = SystemClock.elapsedRealtime() - j;
        this.zzd.zzc(new zzmx() { // from class: com.google.mlkit.vision.face.internal.zzg
            @Override // com.google.android.gms.internal.mlkit_vision_face.zzmx
            public final zznc zza() {
                return this.zza.zze(jElapsedRealtime, zzkaVar, i, i2, inputImage);
            }
        }, zzkb.ON_DEVICE_FACE_DETECT);
        zzdj zzdjVar = new zzdj();
        zzdjVar.zzc(zzkaVar);
        zzdjVar.zzd(Boolean.valueOf(zza.get()));
        zzdjVar.zza(Integer.valueOf(i));
        zzdjVar.zze(Integer.valueOf(i2));
        zzdjVar.zzb(zzj.zza(this.zzc));
        final zzdl zzdlVarZzf = zzdjVar.zzf();
        final zzf zzfVar = new zzf(this);
        final zzmz zzmzVar = this.zzd;
        final zzkb zzkbVar = zzkb.AGGREGATED_ON_DEVICE_FACE_DETECTION;
        final byte[] bArr = null;
        MLTaskExecutor.workerThreadExecutor().execute(new Runnable(zzkbVar, zzdlVarZzf, jElapsedRealtime, zzfVar, bArr) { // from class: com.google.android.gms.internal.mlkit_vision_face.zzmt
            public final /* synthetic */ zzkb zzb;
            public final /* synthetic */ Object zzc;
            public final /* synthetic */ long zzd;
            public final /* synthetic */ com.google.mlkit.vision.face.internal.zzf zze;

            @Override // java.lang.Runnable
            public final void run() {
                this.zza.zzf(this.zzb, this.zzc, this.zzd, this.zze);
            }
        });
        long jCurrentTimeMillis = System.currentTimeMillis();
        this.zze.zzc(true != this.zzg ? 24303 : 24304, zzkaVar.zza(), jCurrentTimeMillis - jElapsedRealtime, jCurrentTimeMillis);
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final synchronized void load() throws MlKitException {
        this.zzg = this.zzf.zzd();
    }

    @Override // com.google.mlkit.common.sdkinternal.ModelResource
    public final synchronized void release() {
        this.zzf.zzb();
        zza.set(true);
    }

    /* JADX WARN: Code duplicated, block: B:33:0x00db  */
    /* JADX WARN: Code duplicated, block: B:42:0x010b  */
    /* JADX WARN: Code duplicated, block: B:43:0x010d A[Catch: MlKitException -> 0x012c, all -> 0x014b, TryCatch #1 {MlKitException -> 0x012c, blocks: (B:40:0x0107, B:47:0x011b, B:46:0x0116, B:43:0x010d, B:30:0x00ac, B:32:0x00d2, B:34:0x00e1, B:37:0x00f4, B:39:0x00ff), top: B:64:0x00ac }] */
    /* JADX WARN: Code duplicated, block: B:45:0x0114  */
    /* JADX WARN: Code duplicated, block: B:46:0x0116 A[Catch: MlKitException -> 0x012c, all -> 0x014b, TryCatch #1 {MlKitException -> 0x012c, blocks: (B:40:0x0107, B:47:0x011b, B:46:0x0116, B:43:0x010d, B:30:0x00ac, B:32:0x00d2, B:34:0x00e1, B:37:0x00f4, B:39:0x00ff), top: B:64:0x00ac }] */
    @Override // com.google.mlkit.common.sdkinternal.MLTask
    /* JADX INFO: renamed from: zzc, reason: merged with bridge method [inline-methods] */
    public final synchronized List run(InputImage inputImage) throws MlKitException {
        long j;
        List arrayList;
        Iterator it;
        Iterator it2;
        List list;
        int size;
        int size2;
        long jElapsedRealtime = SystemClock.elapsedRealtime();
        this.zzh.check(inputImage);
        try {
            Pair pairZza = this.zzf.zza(inputImage);
            List list2 = (List) pairZza.first;
            List list3 = (List) pairZza.second;
            if (list2 == null && list3 == null) {
                throw new MlKitException("No detector is enabled", 13);
            }
            if (list2 == null) {
                list = (List) Preconditions.checkNotNull(list3);
            } else if (list3 == null) {
                list = (List) Preconditions.checkNotNull(list2);
            } else {
                HashSet hashSet = new HashSet();
                Iterator it3 = list3.iterator();
                while (it3.hasNext()) {
                    Face face = (Face) it3.next();
                    Iterator it4 = list2.iterator();
                    boolean z = false;
                    while (it4.hasNext()) {
                        Face face2 = (Face) it4.next();
                        if (face.getBoundingBox() == null || face2.getBoundingBox() == null) {
                            it = it3;
                            it2 = it4;
                            j = jElapsedRealtime;
                        } else {
                            Rect boundingBox = face.getBoundingBox();
                            Rect boundingBox2 = face2.getBoundingBox();
                            if (boundingBox.intersect(boundingBox2)) {
                                it = it3;
                                it2 = it4;
                                j = jElapsedRealtime;
                                double dMin = (Math.min(boundingBox.right, boundingBox2.right) - Math.max(boundingBox.left, boundingBox2.left)) * (Math.min(boundingBox.bottom, boundingBox2.bottom) - Math.max(boundingBox.top, boundingBox2.top));
                                try {
                                    if (dMin / ((((double) ((boundingBox.right - boundingBox.left) * (boundingBox.bottom - boundingBox.top))) + ((double) ((boundingBox2.right - boundingBox2.left) * (boundingBox2.bottom - boundingBox2.top)))) - dMin) > 0.6d) {
                                        face2.zzb(face.zza());
                                        z = true;
                                    }
                                } catch (MlKitException e2) {
                                    e = e2;
                                    zzg(e.getErrorCode() == 14 ? zzka.MODEL_NOT_DOWNLOADED : zzka.UNKNOWN_ERROR, j, inputImage, 0, 0);
                                    throw e;
                                }
                            } else {
                                it = it3;
                                it2 = it4;
                                j = jElapsedRealtime;
                            }
                        }
                        hashSet.add(face2);
                        it3 = it;
                        it4 = it2;
                        jElapsedRealtime = j;
                    }
                    Iterator it5 = it3;
                    long j2 = jElapsedRealtime;
                    if (!z) {
                        hashSet.add(face);
                    }
                    it3 = it5;
                    jElapsedRealtime = j2;
                }
                j = jElapsedRealtime;
                arrayList = new ArrayList(hashSet);
                zzka zzkaVar = zzka.NO_ERROR;
                if (list3 == null) {
                    size = 0;
                } else {
                    size = list3.size();
                }
                if (list2 == null) {
                    size2 = 0;
                } else {
                    size2 = list2.size();
                }
                zzg(zzkaVar, j, inputImage, size, size2);
                zza.set(false);
            }
            arrayList = list;
            j = jElapsedRealtime;
            zzka zzkaVar2 = zzka.NO_ERROR;
            if (list3 == null) {
                size = 0;
            } else {
                size = list3.size();
            }
            if (list2 == null) {
                size2 = 0;
            } else {
                size2 = list2.size();
            }
            zzg(zzkaVar2, j, inputImage, size, size2);
            zza.set(false);
        } catch (MlKitException e3) {
            e = e3;
            j = jElapsedRealtime;
        }
        return arrayList;
    }

    final /* synthetic */ zznc zze(long j, zzka zzkaVar, int i, int i2, InputImage inputImage) {
        zzjn zzjnVar;
        zzko zzkoVar = new zzko();
        zzjr zzjrVar = new zzjr();
        zzjrVar.zzc(Long.valueOf(j));
        zzjrVar.zzd(zzkaVar);
        zzjrVar.zze(Boolean.valueOf(zza.get()));
        Boolean bool = Boolean.TRUE;
        zzjrVar.zza(bool);
        zzjrVar.zzb(bool);
        zzkoVar.zzg(zzjrVar.zzf());
        zzkoVar.zze(zzj.zza(this.zzc));
        zzkoVar.zzd(Integer.valueOf(i));
        zzkoVar.zzh(Integer.valueOf(i2));
        ImageUtils imageUtils = zzb;
        int mobileVisionImageFormat = imageUtils.getMobileVisionImageFormat(inputImage);
        int mobileVisionImageSize = imageUtils.getMobileVisionImageSize(inputImage);
        zzjm zzjmVar = new zzjm();
        if (mobileVisionImageFormat == -1) {
            zzjnVar = zzjn.BITMAP;
        } else if (mobileVisionImageFormat == 35) {
            zzjnVar = zzjn.YUV_420_888;
        } else if (mobileVisionImageFormat == 842094169) {
            zzjnVar = zzjn.YV12;
        } else if (mobileVisionImageFormat != 16) {
            zzjnVar = mobileVisionImageFormat != 17 ? zzjn.UNKNOWN_FORMAT : zzjn.NV21;
        } else {
            zzjnVar = zzjn.NV16;
        }
        zzjmVar.zza(zzjnVar);
        zzjmVar.zzb(Integer.valueOf(mobileVisionImageSize));
        zzkoVar.zzf(zzjmVar.zzd());
        zzkq zzkqVarZzi = zzkoVar.zzi();
        zzkc zzkcVar = new zzkc();
        zzkcVar.zze(this.zzg ? zzjz.TYPE_THICK : zzjz.TYPE_THIN);
        zzkcVar.zzg(zzkqVarZzi);
        return zznc.zzd(zzkcVar);
    }

    final /* synthetic */ zznc zzf(zzdl zzdlVar, int i, zzjd zzjdVar) {
        zzkc zzkcVar = new zzkc();
        zzkcVar.zze(this.zzg ? zzjz.TYPE_THICK : zzjz.TYPE_THIN);
        zzdi zzdiVar = new zzdi();
        zzdiVar.zza(Integer.valueOf(i));
        zzdiVar.zzc(zzdlVar);
        zzdiVar.zzb(zzjdVar);
        zzkcVar.zzd(zzdiVar.zze());
        return zznc.zzd(zzkcVar);
    }
}
