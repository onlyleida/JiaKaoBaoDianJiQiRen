package org.opencv.objdetect;

import org.opencv.core.Mat;

/* JADX INFO: loaded from: classes6.dex */
public class QRCodeDetector {
    protected final long nativeObj;

    protected QRCodeDetector(long j) {
        this.nativeObj = j;
    }

    private static native long QRCodeDetector_0();

    public static QRCodeDetector __fromPtr__(long j) {
        return new QRCodeDetector(j);
    }

    private static native String decode_0(long j, long j2, long j3, long j4);

    private static native String decode_1(long j, long j2, long j3);

    private static native void delete(long j);

    private static native String detectAndDecode_0(long j, long j2, long j3, long j4);

    private static native String detectAndDecode_1(long j, long j2, long j3);

    private static native String detectAndDecode_2(long j, long j2);

    private static native boolean detect_0(long j, long j2, long j3);

    private static native void setEpsX_0(long j, double d2);

    private static native void setEpsY_0(long j, double d2);

    public String decode(Mat mat, Mat mat2, Mat mat3) {
        return decode_0(this.nativeObj, mat.nativeObj, mat2.nativeObj, mat3.nativeObj);
    }

    public boolean detect(Mat mat, Mat mat2) {
        return detect_0(this.nativeObj, mat.nativeObj, mat2.nativeObj);
    }

    public String detectAndDecode(Mat mat, Mat mat2, Mat mat3) {
        return detectAndDecode_0(this.nativeObj, mat.nativeObj, mat2.nativeObj, mat3.nativeObj);
    }

    protected void finalize() throws Throwable {
        delete(this.nativeObj);
    }

    public long getNativeObjAddr() {
        return this.nativeObj;
    }

    public void setEpsX(double d2) {
        setEpsX_0(this.nativeObj, d2);
    }

    public void setEpsY(double d2) {
        setEpsY_0(this.nativeObj, d2);
    }

    public QRCodeDetector() {
        this.nativeObj = QRCodeDetector_0();
    }

    public String decode(Mat mat, Mat mat2) {
        return decode_1(this.nativeObj, mat.nativeObj, mat2.nativeObj);
    }

    public String detectAndDecode(Mat mat, Mat mat2) {
        return detectAndDecode_1(this.nativeObj, mat.nativeObj, mat2.nativeObj);
    }

    public String detectAndDecode(Mat mat) {
        return detectAndDecode_2(this.nativeObj, mat.nativeObj);
    }
}
