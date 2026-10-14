package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import java.util.Map;

/* JADX INFO: loaded from: classes2.dex */
public final class k {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f3508a = 0;
    private int b = 0;

    private b d(j jVar, int i, int i2, int i3) {
        d dVarA = jVar.a();
        if (dVarA == null) {
            throw new IllegalStateException();
        }
        int iE = dVarA.e();
        int iD = dVarA.d();
        int i4 = i3 * 2;
        int i5 = iE + i4;
        int i6 = i4 + iD;
        int iMax = Math.max(i, i5);
        int iMax2 = Math.max(i2, i6);
        int iMin = Math.min(iMax / i5, iMax2 / i6);
        this.f3508a = (iMax - (iE * iMin)) / 2;
        this.b = (iMax2 - (iD * iMin)) / 2;
        b bVar = new b(iMax, iMax2);
        int i7 = this.b;
        int i8 = 0;
        while (i8 < iD) {
            int i9 = this.f3508a;
            int i10 = 0;
            while (i10 < iE) {
                if (dVarA.b(i10, i8) == 1) {
                    bVar.e(i9, i7, iMin, iMin);
                }
                i10++;
                i9 += iMin;
            }
            i8++;
            i7 += iMin;
        }
        return bVar;
    }

    public b a(String str, BarcodeFormat barcodeFormat, int i, int i2, Map<EncodeHintType, ?> map) throws WriterException {
        if (str.isEmpty()) {
            throw new IllegalArgumentException("Found empty contents");
        }
        if (barcodeFormat != BarcodeFormat.QR_CODE) {
            throw new IllegalArgumentException("Can only encode QR_CODE, but got " + barcodeFormat);
        }
        if (i < 0 || i2 < 0) {
            throw new IllegalArgumentException("Requested dimensions are too small: " + i + 'x' + i2);
        }
        ErrorCorrectionLevel errorCorrectionLevelValueOf = ErrorCorrectionLevel.L;
        int i3 = 4;
        if (map != null) {
            EncodeHintType encodeHintType = EncodeHintType.ERROR_CORRECTION;
            if (map.containsKey(encodeHintType)) {
                errorCorrectionLevelValueOf = ErrorCorrectionLevel.valueOf(map.get(encodeHintType).toString());
            }
            EncodeHintType encodeHintType2 = EncodeHintType.MARGIN;
            if (map.containsKey(encodeHintType2)) {
                i3 = Integer.parseInt(map.get(encodeHintType2).toString());
            }
        }
        return d(e.n(str, errorCorrectionLevelValueOf, map), i, i2, i3);
    }

    public int b() {
        return this.f3508a;
    }

    public int c() {
        return this.b;
    }
}
