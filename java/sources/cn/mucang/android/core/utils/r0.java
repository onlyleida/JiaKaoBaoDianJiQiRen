package cn.mucang.android.core.utils;

import java.util.UUID;
import java.util.zip.CRC32;

/* JADX INFO: loaded from: classes.dex */
public class r0 {
    private static byte[] a(byte[] bArr, int[] iArr) {
        byte[] bArr2 = new byte[iArr.length];
        for (int i = 0; i < iArr.length; i++) {
            bArr2[i] = bArr[iArr[i]];
        }
        return bArr2;
    }

    public static String b(int i) {
        byte[] bArrF = cn.mucang.android.core.encode.a.f(UUID.randomUUID().getMostSignificantBits());
        byte[] bArrE = e(bArrF);
        byte[] bArrG = g(i ^ cn.mucang.android.core.encode.a.a(bArrE), d(bArrF));
        int length = bArrF.length + bArrG.length;
        byte[] bArr = new byte[length];
        System.arraycopy(bArrF, 0, bArr, 0, bArrF.length);
        System.arraycopy(bArrG, 0, bArr, bArrF.length, bArrG.length);
        CRC32 crc32 = new CRC32();
        crc32.update(bArr);
        byte[] bArrG2 = g(((int) crc32.getValue()) ^ cn.mucang.android.core.encode.a.a(f(bArrF)), c(bArrF));
        byte[] bArr2 = new byte[bArrG2.length + length];
        System.arraycopy(bArr, 0, bArr2, 0, length);
        System.arraycopy(bArrG2, 0, bArr2, length, bArrG2.length);
        return cn.mucang.android.core.encode.a.e(bArr2);
    }

    private static int[] c(byte[] bArr) {
        int iAbs = Math.abs(bArr[1] % 5);
        if (iAbs == 0) {
            return new int[]{0, 1, 2, 3};
        }
        if (iAbs == 1) {
            return new int[]{1, 2, 3, 0};
        }
        if (iAbs != 2) {
            return iAbs != 3 ? new int[]{1, 3, 0, 2} : new int[]{3, 0, 1, 2};
        }
        return new int[]{2, 3, 0, 1};
    }

    private static int[] d(byte[] bArr) {
        int iAbs = Math.abs(bArr[1] % 5);
        if (iAbs == 0) {
            return new int[]{0, 1, 2, 3};
        }
        if (iAbs == 1) {
            return new int[]{1, 2, 3, 0};
        }
        if (iAbs != 2) {
            return iAbs != 3 ? new int[]{1, 3, 0, 2} : new int[]{3, 0, 1, 2};
        }
        return new int[]{2, 3, 0, 1};
    }

    private static byte[] e(byte[] bArr) {
        int[] iArr;
        int iAbs = Math.abs(bArr[0] % 5);
        if (iAbs == 0) {
            iArr = new int[]{0, 2, 4, 6};
        } else if (iAbs == 1) {
            iArr = new int[]{1, 3, 5, 7};
        } else if (iAbs != 2) {
            iArr = iAbs != 3 ? new int[]{2, 3, 5, 6} : new int[]{3, 5, 7, 1};
        } else {
            iArr = new int[]{2, 4, 6, 0};
        }
        return a(bArr, iArr);
    }

    private static byte[] f(byte[] bArr) {
        int[] iArr;
        int iAbs = Math.abs(bArr[1] % 5);
        if (iAbs == 0) {
            iArr = new int[]{0, 1, 2, 3};
        } else if (iAbs == 1) {
            iArr = new int[]{1, 2, 3, 4};
        } else if (iAbs != 2) {
            iArr = iAbs != 3 ? new int[]{4, 5, 6, 7} : new int[]{3, 4, 5, 6};
        } else {
            iArr = new int[]{2, 3, 4, 5};
        }
        return a(bArr, iArr);
    }

    private static byte[] g(int i, int[] iArr) {
        byte[] bArr = new byte[4];
        for (int i2 = 0; i2 < iArr.length; i2++) {
            bArr[iArr[i2]] = (byte) ((i >> (i2 * 8)) & 255);
        }
        return bArr;
    }
}
