package org.opencv.dnn;

import org.opencv.core.Mat;
import org.opencv.core.MatOfFloat;
import org.opencv.core.MatOfInt;
import org.opencv.core.MatOfRect;

/* JADX INFO: loaded from: classes6.dex */
public class DetectionModel extends Model {
    protected DetectionModel(long j) {
        super(j);
    }

    private static native long DetectionModel_0(long j);

    private static native long DetectionModel_1(String str, String str2);

    private static native long DetectionModel_2(String str);

    public static DetectionModel __fromPtr__(long j) {
        return new DetectionModel(j);
    }

    private static native void delete(long j);

    private static native void detect_0(long j, long j2, long j3, long j4, long j5, float f2, float f3);

    private static native void detect_1(long j, long j2, long j3, long j4, long j5, float f2);

    private static native void detect_2(long j, long j2, long j3, long j4, long j5);

    public void detect(Mat mat, MatOfInt matOfInt, MatOfFloat matOfFloat, MatOfRect matOfRect, float f2, float f3) {
        detect_0(this.nativeObj, mat.nativeObj, matOfInt.nativeObj, matOfFloat.nativeObj, matOfRect.nativeObj, f2, f3);
    }

    @Override // org.opencv.dnn.Model, org.opencv.dnn.Net
    protected void finalize() throws Throwable {
        delete(this.nativeObj);
    }

    public DetectionModel(Net net2) {
        super(DetectionModel_0(net2.nativeObj));
    }

    public void detect(Mat mat, MatOfInt matOfInt, MatOfFloat matOfFloat, MatOfRect matOfRect, float f2) {
        detect_1(this.nativeObj, mat.nativeObj, matOfInt.nativeObj, matOfFloat.nativeObj, matOfRect.nativeObj, f2);
    }

    public DetectionModel(String str, String str2) {
        super(DetectionModel_1(str, str2));
    }

    public void detect(Mat mat, MatOfInt matOfInt, MatOfFloat matOfFloat, MatOfRect matOfRect) {
        detect_2(this.nativeObj, mat.nativeObj, matOfInt.nativeObj, matOfFloat.nativeObj, matOfRect.nativeObj);
    }

    public DetectionModel(String str) {
        super(DetectionModel_2(str));
    }
}
