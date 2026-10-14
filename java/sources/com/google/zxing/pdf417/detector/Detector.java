package com.google.zxing.pdf417.detector;

import com.amap.api.maps.model.BitmapDescriptorFactory;
import com.google.zxing.BinaryBitmap;
import com.google.zxing.DecodeHintType;
import com.google.zxing.NotFoundException;
import com.google.zxing.ResultPoint;
import com.google.zxing.common.BitMatrix;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

/* JADX INFO: loaded from: classes4.dex */
public final class Detector {
    private static final int BARCODE_MIN_HEIGHT = 10;
    private static final float MAX_AVG_VARIANCE = 0.42f;
    private static final float MAX_INDIVIDUAL_VARIANCE = 0.8f;
    private static final int MAX_PATTERN_DRIFT = 5;
    private static final int MAX_PIXEL_DRIFT = 3;
    private static final int ROW_STEP = 5;
    private static final int SKIPPED_ROW_COUNT_MAX = 25;
    private static final int[] INDEXES_START_PATTERN = {0, 4, 1, 5};
    private static final int[] INDEXES_STOP_PATTERN = {6, 2, 7, 3};
    private static final int[] START_PATTERN = {8, 1, 1, 1, 1, 1, 1, 3};
    private static final int[] STOP_PATTERN = {7, 1, 1, 3, 1, 1, 1, 2, 1};

    private Detector() {
    }

    private static void copyToResult(ResultPoint[] resultPointArr, ResultPoint[] resultPointArr2, int[] iArr) {
        for (int i = 0; i < iArr.length; i++) {
            resultPointArr[iArr[i]] = resultPointArr2[i];
        }
    }

    public static PDF417DetectorResult detect(BinaryBitmap binaryBitmap, Map<DecodeHintType, ?> map, boolean z) throws NotFoundException {
        BitMatrix blackMatrix = binaryBitmap.getBlackMatrix();
        List<ResultPoint[]> listDetect = detect(z, blackMatrix);
        if (listDetect.isEmpty()) {
            blackMatrix = blackMatrix.m135clone();
            blackMatrix.rotate180();
            listDetect = detect(z, blackMatrix);
        }
        return new PDF417DetectorResult(blackMatrix, listDetect);
    }

    private static int[] findGuardPattern(BitMatrix bitMatrix, int i, int i2, int i3, boolean z, int[] iArr, int[] iArr2) {
        Arrays.fill(iArr2, 0, iArr2.length, 0);
        int i4 = 0;
        while (bitMatrix.get(i, i2) && i > 0) {
            int i5 = i4 + 1;
            if (i4 >= 3) {
                break;
            }
            i--;
            i4 = i5;
        }
        int length = iArr.length;
        boolean z2 = z;
        int i6 = 0;
        int i7 = i;
        while (i < i3) {
            if (bitMatrix.get(i, i2) ^ z2) {
                iArr2[i6] = iArr2[i6] + 1;
            } else {
                int i8 = length - 1;
                if (i6 != i8) {
                    i6++;
                } else {
                    if (patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) < MAX_AVG_VARIANCE) {
                        return new int[]{i7, i};
                    }
                    i7 += iArr2[0] + iArr2[1];
                    int i9 = length - 2;
                    System.arraycopy(iArr2, 2, iArr2, 0, i9);
                    iArr2[i9] = 0;
                    iArr2[i8] = 0;
                    i6--;
                }
                iArr2[i6] = 1;
                z2 = !z2;
            }
            i++;
        }
        if (i6 != length - 1 || patternMatchVariance(iArr2, iArr, MAX_INDIVIDUAL_VARIANCE) >= MAX_AVG_VARIANCE) {
            return null;
        }
        return new int[]{i7, i - 1};
    }

    private static ResultPoint[] findRowsWithPattern(BitMatrix bitMatrix, int i, int i2, int i3, int i4, int[] iArr) {
        int i5;
        boolean z;
        int i6;
        int i7;
        int i8;
        ResultPoint[] resultPointArr = new ResultPoint[4];
        int[] iArr2 = new int[iArr.length];
        int i9 = i3;
        while (true) {
            if (i9 >= i) {
                z = false;
                break;
            }
            int[] iArrFindGuardPattern = findGuardPattern(bitMatrix, i4, i9, i2, false, iArr, iArr2);
            if (iArrFindGuardPattern != null) {
                int i10 = i9;
                int[] iArr3 = iArrFindGuardPattern;
                int i11 = i10;
                while (true) {
                    if (i11 <= 0) {
                        i8 = i11;
                        break;
                    }
                    int i12 = i11 - 1;
                    int[] iArrFindGuardPattern2 = findGuardPattern(bitMatrix, i4, i12, i2, false, iArr, iArr2);
                    if (iArrFindGuardPattern2 == null) {
                        i8 = i12 + 1;
                        break;
                    }
                    iArr3 = iArrFindGuardPattern2;
                    i11 = i12;
                }
                float f2 = i8;
                resultPointArr[0] = new ResultPoint(iArr3[0], f2);
                resultPointArr[1] = new ResultPoint(iArr3[1], f2);
                i9 = i8;
                z = true;
                break;
            }
            i9 += 5;
        }
        int i13 = i9 + 1;
        if (z) {
            int[] iArr4 = {(int) resultPointArr[0].getX(), (int) resultPointArr[1].getX()};
            int i14 = i13;
            int i15 = 0;
            while (true) {
                if (i14 >= i) {
                    i6 = i15;
                    i7 = i14;
                    break;
                }
                i6 = i15;
                i7 = i14;
                int[] iArrFindGuardPattern3 = findGuardPattern(bitMatrix, iArr4[0], i14, i2, false, iArr, iArr2);
                if (iArrFindGuardPattern3 != null && Math.abs(iArr4[0] - iArrFindGuardPattern3[0]) < 5 && Math.abs(iArr4[1] - iArrFindGuardPattern3[1]) < 5) {
                    iArr4 = iArrFindGuardPattern3;
                    i15 = 0;
                } else {
                    if (i6 > 25) {
                        break;
                    }
                    i15 = i6 + 1;
                }
                i14 = i7 + 1;
            }
            i13 = i7 - (i6 + 1);
            float f3 = i13;
            resultPointArr[2] = new ResultPoint(iArr4[0], f3);
            resultPointArr[3] = new ResultPoint(iArr4[1], f3);
        }
        if (i13 - i9 < 10) {
            for (i5 = 0; i5 < 4; i5++) {
                resultPointArr[i5] = null;
            }
        }
        return resultPointArr;
    }

    private static ResultPoint[] findVertices(BitMatrix bitMatrix, int i, int i2) {
        int height = bitMatrix.getHeight();
        int width = bitMatrix.getWidth();
        ResultPoint[] resultPointArr = new ResultPoint[8];
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, START_PATTERN), INDEXES_START_PATTERN);
        if (resultPointArr[4] != null) {
            i2 = (int) resultPointArr[4].getX();
            i = (int) resultPointArr[4].getY();
        }
        copyToResult(resultPointArr, findRowsWithPattern(bitMatrix, height, width, i, i2, STOP_PATTERN), INDEXES_STOP_PATTERN);
        return resultPointArr;
    }

    private static float patternMatchVariance(int[] iArr, int[] iArr2, float f2) {
        int length = iArr.length;
        int i = 0;
        int i2 = 0;
        for (int i3 = 0; i3 < length; i3++) {
            i += iArr[i3];
            i2 += iArr2[i3];
        }
        if (i < i2) {
            return Float.POSITIVE_INFINITY;
        }
        float f3 = i;
        float f4 = f3 / i2;
        float f5 = f2 * f4;
        float f6 = BitmapDescriptorFactory.HUE_RED;
        for (int i4 = 0; i4 < length; i4++) {
            int i5 = iArr[i4];
            float f7 = iArr2[i4] * f4;
            float f8 = i5;
            float f9 = f8 > f7 ? f8 - f7 : f7 - f8;
            if (f9 > f5) {
                return Float.POSITIVE_INFINITY;
            }
            f6 += f9;
        }
        return f6 / f3;
    }

    private static List<ResultPoint[]> detect(boolean z, BitMatrix bitMatrix) {
        int x;
        float y;
        ArrayList<ResultPoint[]> arrayList = new ArrayList();
        int iMax = 0;
        loop0: while (true) {
            int i = 0;
            boolean z2 = false;
            while (iMax < bitMatrix.getHeight()) {
                ResultPoint[] resultPointArrFindVertices = findVertices(bitMatrix, iMax, i);
                if (resultPointArrFindVertices[0] == null && resultPointArrFindVertices[3] == null) {
                    if (!z2) {
                        break;
                    }
                    for (ResultPoint[] resultPointArr : arrayList) {
                        if (resultPointArr[1] != null) {
                            iMax = (int) Math.max(iMax, resultPointArr[1].getY());
                        }
                        if (resultPointArr[3] != null) {
                            iMax = Math.max(iMax, (int) resultPointArr[3].getY());
                        }
                    }
                    iMax += 5;
                } else {
                    arrayList.add(resultPointArrFindVertices);
                    if (!z) {
                        break loop0;
                    }
                    if (resultPointArrFindVertices[2] != null) {
                        x = (int) resultPointArrFindVertices[2].getX();
                        y = resultPointArrFindVertices[2].getY();
                    } else {
                        x = (int) resultPointArrFindVertices[4].getX();
                        y = resultPointArrFindVertices[4].getY();
                    }
                    iMax = (int) y;
                    i = x;
                    z2 = true;
                }
            }
            break loop0;
        }
        return arrayList;
    }
}
