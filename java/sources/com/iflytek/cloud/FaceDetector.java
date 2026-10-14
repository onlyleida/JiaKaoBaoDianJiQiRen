package com.iflytek.cloud;

import android.content.Context;
import android.graphics.Bitmap;
import com.iflytek.cloud.a.f.d;
import com.iflytek.cloud.c.a.a;

/* JADX INFO: loaded from: classes4.dex */
public class FaceDetector extends d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static FaceDetector f12112a;
    private a b;

    private FaceDetector(Context context) throws SpeechError {
        try {
            this.b = new a(context, null);
        } catch (UnsatisfiedLinkError unused) {
            throw new SpeechError(ErrorCode.ERROR_UNSATISFIED_LINK);
        }
    }

    public static synchronized FaceDetector createDetector(Context context, String str) throws SpeechError {
        FaceDetector faceDetector;
        synchronized (d.sSync) {
            if (f12112a == null && SpeechUtility.getUtility() != null) {
                f12112a = new FaceDetector(context);
            }
            faceDetector = f12112a;
        }
        return faceDetector;
    }

    public static synchronized FaceDetector getDetector() {
        return f12112a;
    }

    @Override // com.iflytek.cloud.a.f.d
    public synchronized boolean destroy() {
        a aVar;
        aVar = this.b;
        synchronized (this) {
            this.b = null;
        }
        return zDestroy;
        if (aVar != null) {
            aVar.a();
        }
        boolean zDestroy = super.destroy();
        if (zDestroy) {
            synchronized (d.sSync) {
                f12112a = null;
            }
        }
        return zDestroy;
    }

    public synchronized String detectARGB(Bitmap bitmap) {
        String strA;
        synchronized (this) {
            a aVar = this.b;
            strA = aVar != null ? aVar.a(bitmap) : null;
        }
        return strA;
        return strA;
    }

    public synchronized String detectGray(Bitmap bitmap) {
        String strB;
        synchronized (this) {
            a aVar = this.b;
            strB = aVar != null ? aVar.b(bitmap) : null;
        }
        return strB;
        return strB;
    }

    public synchronized String trackNV21(byte[] bArr, int i, int i2, int i3, int i4) {
        String strA;
        synchronized (this) {
            a aVar = this.b;
            strA = aVar != null ? aVar.a(bArr, i, i2, i3, i4) : null;
        }
        return strA;
        return strA;
    }
}
