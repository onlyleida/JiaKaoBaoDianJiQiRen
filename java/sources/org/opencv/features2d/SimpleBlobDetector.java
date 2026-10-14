package org.opencv.features2d;

/* JADX INFO: loaded from: classes6.dex */
public class SimpleBlobDetector extends Feature2D {
    protected SimpleBlobDetector(long j) {
        super(j);
    }

    public static SimpleBlobDetector __fromPtr__(long j) {
        return new SimpleBlobDetector(j);
    }

    public static SimpleBlobDetector create() {
        return __fromPtr__(create_0());
    }

    private static native long create_0();

    private static native void delete(long j);

    private static native String getDefaultName_0(long j);

    @Override // org.opencv.features2d.Feature2D, org.opencv.core.Algorithm
    protected void finalize() throws Throwable {
        delete(this.nativeObj);
    }

    @Override // org.opencv.features2d.Feature2D, org.opencv.core.Algorithm
    public String getDefaultName() {
        return getDefaultName_0(this.nativeObj);
    }
}
