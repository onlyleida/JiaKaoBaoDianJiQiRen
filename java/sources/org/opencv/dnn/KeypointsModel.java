package org.opencv.dnn;

import org.opencv.core.Mat;
import org.opencv.core.MatOfPoint2f;

/* JADX INFO: loaded from: classes6.dex */
public class KeypointsModel extends Model {
    protected KeypointsModel(long j) {
        super(j);
    }

    private static native long KeypointsModel_0(long j);

    private static native long KeypointsModel_1(String str, String str2);

    private static native long KeypointsModel_2(String str);

    public static KeypointsModel __fromPtr__(long j) {
        return new KeypointsModel(j);
    }

    private static native void delete(long j);

    private static native long estimate_0(long j, long j2, float f2);

    private static native long estimate_1(long j, long j2);

    public MatOfPoint2f estimate(Mat mat, float f2) {
        return MatOfPoint2f.fromNativeAddr(estimate_0(this.nativeObj, mat.nativeObj, f2));
    }

    @Override // org.opencv.dnn.Model, org.opencv.dnn.Net
    protected void finalize() throws Throwable {
        delete(this.nativeObj);
    }

    public KeypointsModel(Net net2) {
        super(KeypointsModel_0(net2.nativeObj));
    }

    public MatOfPoint2f estimate(Mat mat) {
        return MatOfPoint2f.fromNativeAddr(estimate_1(this.nativeObj, mat.nativeObj));
    }

    public KeypointsModel(String str, String str2) {
        super(KeypointsModel_1(str, str2));
    }

    public KeypointsModel(String str) {
        super(KeypointsModel_2(str));
    }
}
