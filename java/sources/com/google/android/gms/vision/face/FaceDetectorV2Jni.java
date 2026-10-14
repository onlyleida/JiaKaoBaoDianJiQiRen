package com.google.android.gms.vision.face;

import android.content.res.AssetManager;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Keep;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzaf;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzah;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzas;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzny;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzov;
import com.google.android.gms.internal.mlkit_vision_face_bundled.zzp;
import java.nio.ByteBuffer;

/* JADX INFO: loaded from: classes2.dex */
public class FaceDetectorV2Jni {
    private final zzny zza;

    public FaceDetectorV2Jni() {
        zzny zznyVarZzb = zzny.zzb();
        this.zza = zznyVarZzb;
        zznyVarZzb.zzd(zzas.zza);
    }

    @Keep
    private native void closeDetectorJni(long j);

    @Keep
    private native byte[] detectFacesImageByteArrayJni(long j, byte[] bArr, byte[] bArr2);

    @Keep
    private native byte[] detectFacesImageByteArrayMultiPlanesJni(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr4);

    @Keep
    private native byte[] detectFacesImageByteBufferJni(long j, ByteBuffer byteBuffer, byte[] bArr);

    @Keep
    private native byte[] detectFacesImageByteBufferMultiPlanesJni(long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6, byte[] bArr);

    @Keep
    private native long initDetectorJni(byte[] bArr, AssetManager assetManager);

    public final long zza(zzah zzahVar, AssetManager assetManager) {
        Log.v("FaceDetectorV2Jni", "initialize.start()");
        long jInitDetectorJni = initDetectorJni(zzahVar.zzs(), assetManager);
        Log.v("FaceDetectorV2Jni", "initialize.end()");
        return jInitDetectorJni;
    }

    public final zzaf zzb(long j, byte[] bArr, zzp zzpVar) throws RemoteException {
        Log.v("FaceDetectorV2Jni", "detectFacesImageByteArray.start()");
        zzaf zzafVarZzb = null;
        try {
            byte[] bArrDetectFacesImageByteArrayJni = detectFacesImageByteArrayJni(j, bArr, zzpVar.zzs());
            if (bArrDetectFacesImageByteArrayJni != null && bArrDetectFacesImageByteArrayJni.length > 0) {
                zzafVarZzb = zzaf.zzb(bArrDetectFacesImageByteArrayJni, this.zza);
            }
        } catch (zzov e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.e("FaceDetectorV2Jni", strValueOf.length() != 0 ? "detectFacesImageByteArray failed to parse result: ".concat(strValueOf) : new String("detectFacesImageByteArray failed to parse result: "));
        }
        Log.v("FaceDetectorV2Jni", "detectFacesImageByteArray.end()");
        return zzafVarZzb;
    }

    public final zzaf zzc(long j, byte[] bArr, byte[] bArr2, byte[] bArr3, int i, int i2, int i3, int i4, int i5, int i6, zzp zzpVar) {
        Log.v("FaceDetectorV2Jni", "detectFacesImageByteArrayMultiPlanes.start()");
        zzaf zzafVarZzb = null;
        try {
            byte[] bArrDetectFacesImageByteArrayMultiPlanesJni = detectFacesImageByteArrayMultiPlanesJni(j, bArr, bArr2, bArr3, i, i2, i3, i4, i5, i6, zzpVar.zzs());
            if (bArrDetectFacesImageByteArrayMultiPlanesJni != null && bArrDetectFacesImageByteArrayMultiPlanesJni.length > 0) {
                try {
                    zzafVarZzb = zzaf.zzb(bArrDetectFacesImageByteArrayMultiPlanesJni, this.zza);
                } catch (zzov e2) {
                    e = e2;
                    String strValueOf = String.valueOf(e.getMessage());
                    Log.e("FaceDetectorV2Jni", strValueOf.length() != 0 ? "detectFacesImageByteArrayMultiPlanes failed to parse result: ".concat(strValueOf) : new String("detectFacesImageByteArrayMultiPlanes failed to parse result: "));
                }
            }
        } catch (zzov e3) {
            e = e3;
        }
        Log.v("FaceDetectorV2Jni", "%s detectFacesImageByteArrayMultiPlanes.end()");
        return zzafVarZzb;
    }

    public final zzaf zzd(long j, ByteBuffer byteBuffer, zzp zzpVar) throws RemoteException {
        Log.v("FaceDetectorV2Jni", "detectFacesImageByteBuffer.start()");
        zzaf zzafVarZzb = null;
        try {
            byte[] bArrDetectFacesImageByteBufferJni = detectFacesImageByteBufferJni(j, byteBuffer, zzpVar.zzs());
            if (bArrDetectFacesImageByteBufferJni != null && bArrDetectFacesImageByteBufferJni.length > 0) {
                zzafVarZzb = zzaf.zzb(bArrDetectFacesImageByteBufferJni, this.zza);
            }
        } catch (zzov e2) {
            String strValueOf = String.valueOf(e2.getMessage());
            Log.e("FaceDetectorV2Jni", strValueOf.length() != 0 ? "detectFacesImageByteBuffer failed to parse result: ".concat(strValueOf) : new String("detectFacesImageByteBuffer failed to parse result: "));
        }
        Log.v("FaceDetectorV2Jni", "%s detectFacesImageByteBuffer.end()");
        return zzafVarZzb;
    }

    public final zzaf zze(long j, ByteBuffer byteBuffer, ByteBuffer byteBuffer2, ByteBuffer byteBuffer3, int i, int i2, int i3, int i4, int i5, int i6, zzp zzpVar) {
        Log.v("FaceDetectorV2Jni", "detectFacesImageByteBufferMultiPlanes.start()");
        zzaf zzafVarZzb = null;
        try {
            byte[] bArrDetectFacesImageByteBufferMultiPlanesJni = detectFacesImageByteBufferMultiPlanesJni(j, byteBuffer, byteBuffer2, byteBuffer3, i, i2, i3, i4, i5, i6, zzpVar.zzs());
            if (bArrDetectFacesImageByteBufferMultiPlanesJni != null && bArrDetectFacesImageByteBufferMultiPlanesJni.length > 0) {
                try {
                    zzafVarZzb = zzaf.zzb(bArrDetectFacesImageByteBufferMultiPlanesJni, this.zza);
                } catch (zzov e2) {
                    e = e2;
                    String strValueOf = String.valueOf(e.getMessage());
                    Log.e("FaceDetectorV2Jni", strValueOf.length() != 0 ? "detectFacesImageByteBufferMultiPlanes failed to parse result: ".concat(strValueOf) : new String("detectFacesImageByteBufferMultiPlanes failed to parse result: "));
                }
            }
        } catch (zzov e3) {
            e = e3;
        }
        Log.v("FaceDetectorV2Jni", "detectFacesImageByteBuffer.end()");
        return zzafVarZzb;
    }

    public final void zzf(long j) {
        Log.v("FaceDetectorV2Jni", "closeDetector.start()");
        closeDetectorJni(j);
        Log.v("FaceDetectorV2Jni", "closeDetector.end()");
    }
}
