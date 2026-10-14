package cn.mucang.android.jiakaoyi.framework.qrcode.zxing;

import cn.mucang.android.jiakaoyi.signal.ai.AIOtaMsgResult;
import com.alibaba.fastjson.asm.Opcodes;

/* JADX INFO: loaded from: classes2.dex */
final class i {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final int[][] f3503a = {new int[]{1, 1, 1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 1, 1, 1, 0, 1}, new int[]{1, 0, 0, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1, 1, 1}};
    private static final int[][] b = {new int[]{1, 1, 1, 1, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 0, 1, 0, 1}, new int[]{1, 0, 0, 0, 1}, new int[]{1, 1, 1, 1, 1}};
    private static final int[][] c = {new int[]{-1, -1, -1, -1, -1, -1, -1}, new int[]{6, 18, -1, -1, -1, -1, -1}, new int[]{6, 22, -1, -1, -1, -1, -1}, new int[]{6, 26, -1, -1, -1, -1, -1}, new int[]{6, 30, -1, -1, -1, -1, -1}, new int[]{6, 34, -1, -1, -1, -1, -1}, new int[]{6, 22, 38, -1, -1, -1, -1}, new int[]{6, 24, 42, -1, -1, -1, -1}, new int[]{6, 26, 46, -1, -1, -1, -1}, new int[]{6, 28, 50, -1, -1, -1, -1}, new int[]{6, 30, 54, -1, -1, -1, -1}, new int[]{6, 32, 58, -1, -1, -1, -1}, new int[]{6, 34, 62, -1, -1, -1, -1}, new int[]{6, 26, 46, 66, -1, -1, -1}, new int[]{6, 26, 48, 70, -1, -1, -1}, new int[]{6, 26, 50, 74, -1, -1, -1}, new int[]{6, 30, 54, 78, -1, -1, -1}, new int[]{6, 30, 56, 82, -1, -1, -1}, new int[]{6, 30, 58, 86, -1, -1, -1}, new int[]{6, 34, 62, 90, -1, -1, -1}, new int[]{6, 28, 50, 72, 94, -1, -1}, new int[]{6, 26, 50, 74, 98, -1, -1}, new int[]{6, 30, 54, 78, 102, -1, -1}, new int[]{6, 28, 54, 80, 106, -1, -1}, new int[]{6, 32, 58, 84, 110, -1, -1}, new int[]{6, 30, 58, 86, 114, -1, -1}, new int[]{6, 34, 62, 90, 118, -1, -1}, new int[]{6, 26, 50, 74, 98, 122, -1}, new int[]{6, 30, 54, 78, 102, 126, -1}, new int[]{6, 26, 52, 78, 104, 130, -1}, new int[]{6, 30, 56, 82, 108, 134, -1}, new int[]{6, 34, 60, 86, 112, 138, -1}, new int[]{6, 30, 58, 86, 114, 142, -1}, new int[]{6, 34, 62, 90, 118, cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA, -1}, new int[]{6, 30, 54, 78, 102, 126, 150}, new int[]{6, 24, 50, 76, 102, 128, 154}, new int[]{6, 28, 54, 80, 106, 132, Opcodes.IFLE}, new int[]{6, 32, 58, 84, 110, 136, 162}, new int[]{6, 26, 54, 82, 110, 138, Opcodes.IF_ACMPNE}, new int[]{6, 30, 58, 86, 114, 142, AIOtaMsgResult.Success}};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final int[][] f3504d = {new int[]{8, 0}, new int[]{8, 1}, new int[]{8, 2}, new int[]{8, 3}, new int[]{8, 4}, new int[]{8, 5}, new int[]{8, 7}, new int[]{8, 8}, new int[]{7, 8}, new int[]{5, 8}, new int[]{4, 8}, new int[]{3, 8}, new int[]{2, 8}, new int[]{1, 8}, new int[]{0, 8}};

    static void a(a aVar, ErrorCorrectionLevel errorCorrectionLevel, m mVar, int i, d dVar) throws WriterException {
        c(dVar);
        d(mVar, dVar);
        l(errorCorrectionLevel, i, dVar);
        s(mVar, dVar);
        f(aVar, i, dVar);
    }

    static int b(int i, int i2) {
        if (i2 == 0) {
            throw new IllegalArgumentException("0 polynomial");
        }
        int iN = n(i2);
        int iN2 = i << (iN - 1);
        while (n(iN2) >= iN) {
            iN2 ^= i2 << (n(iN2) - iN);
        }
        return iN2;
    }

    static void c(d dVar) {
        dVar.a((byte) -1);
    }

    static void d(m mVar, d dVar) throws WriterException {
        j(dVar);
        e(dVar);
        r(mVar, dVar);
        k(dVar);
    }

    private static void e(d dVar) throws WriterException {
        if (dVar.b(8, dVar.d() - 8) == 0) {
            throw new WriterException();
        }
        dVar.f(8, dVar.d() - 8, 1);
    }

    static void f(a aVar, int i, d dVar) throws WriterException {
        boolean zG;
        int iE = dVar.e() - 1;
        int iD = dVar.d() - 1;
        int i2 = 0;
        int i3 = -1;
        while (iE > 0) {
            if (iE == 6) {
                iE--;
            }
            while (iD >= 0 && iD < dVar.d()) {
                for (int i4 = 0; i4 < 2; i4++) {
                    int i5 = iE - i4;
                    if (o(dVar.b(i5, iD))) {
                        if (i2 < aVar.h()) {
                            zG = aVar.g(i2);
                            i2++;
                        } else {
                            zG = false;
                        }
                        if (i != -1 && h.f(i, i5, iD)) {
                            zG = !zG;
                        }
                        dVar.g(i5, iD, zG);
                    }
                }
                iD += i3;
            }
            i3 = -i3;
            iD += i3;
            iE -= 2;
        }
        if (i2 == aVar.h()) {
            return;
        }
        throw new WriterException("Not all bits consumed: " + i2 + '/' + aVar.h());
    }

    private static void g(int i, int i2, d dVar) throws WriterException {
        for (int i3 = 0; i3 < 8; i3++) {
            int i4 = i + i3;
            if (!o(dVar.b(i4, i2))) {
                throw new WriterException();
            }
            dVar.f(i4, i2, 0);
        }
    }

    private static void h(int i, int i2, d dVar) {
        for (int i3 = 0; i3 < 5; i3++) {
            for (int i4 = 0; i4 < 5; i4++) {
                dVar.f(i + i4, i2 + i3, b[i3][i4]);
            }
        }
    }

    private static void i(int i, int i2, d dVar) {
        for (int i3 = 0; i3 < 7; i3++) {
            for (int i4 = 0; i4 < 7; i4++) {
                dVar.f(i + i4, i2 + i3, f3503a[i3][i4]);
            }
        }
    }

    private static void j(d dVar) throws WriterException {
        int length = f3503a[0].length;
        i(0, 0, dVar);
        i(dVar.e() - length, 0, dVar);
        i(0, dVar.e() - length, dVar);
        g(0, 7, dVar);
        g(dVar.e() - 8, 7, dVar);
        g(0, dVar.e() - 8, dVar);
        m(7, 0, dVar);
        m((dVar.d() - 7) - 1, 0, dVar);
        m(7, dVar.d() - 7, dVar);
    }

    private static void k(d dVar) {
        int i = 8;
        while (i < dVar.e() - 8) {
            int i2 = i + 1;
            int i3 = i2 % 2;
            if (o(dVar.b(i, 6))) {
                dVar.f(i, 6, i3);
            }
            if (o(dVar.b(6, i))) {
                dVar.f(6, i, i3);
            }
            i = i2;
        }
    }

    static void l(ErrorCorrectionLevel errorCorrectionLevel, int i, d dVar) throws WriterException {
        a aVar = new a();
        p(errorCorrectionLevel, i, aVar);
        for (int i2 = 0; i2 < aVar.h(); i2++) {
            boolean zG = aVar.g((aVar.h() - 1) - i2);
            int[][] iArr = f3504d;
            dVar.g(iArr[i2][0], iArr[i2][1], zG);
            if (i2 < 8) {
                dVar.g((dVar.e() - i2) - 1, 8, zG);
            } else {
                dVar.g(8, (dVar.d() - 7) + (i2 - 8), zG);
            }
        }
    }

    private static void m(int i, int i2, d dVar) throws WriterException {
        for (int i3 = 0; i3 < 7; i3++) {
            int i4 = i2 + i3;
            if (!o(dVar.b(i, i4))) {
                throw new WriterException();
            }
            dVar.f(i, i4, 0);
        }
    }

    static int n(int i) {
        return 32 - Integer.numberOfLeadingZeros(i);
    }

    private static boolean o(int i) {
        return i == -1;
    }

    static void p(ErrorCorrectionLevel errorCorrectionLevel, int i, a aVar) throws WriterException {
        if (!j.b(i)) {
            throw new WriterException("Invalid mask pattern");
        }
        int bits = (errorCorrectionLevel.getBits() << 3) | i;
        aVar.d(bits, 5);
        aVar.d(b(bits, 1335), 10);
        a aVar2 = new a();
        aVar2.d(21522, 15);
        aVar.l(aVar2);
        if (aVar.h() == 15) {
            return;
        }
        throw new WriterException("should not happen but we got: " + aVar.h());
    }

    static void q(m mVar, a aVar) throws WriterException {
        aVar.d(mVar.f(), 6);
        aVar.d(b(mVar.f(), 7973), 12);
        if (aVar.h() == 18) {
            return;
        }
        throw new WriterException("should not happen but we got: " + aVar.h());
    }

    private static void r(m mVar, d dVar) {
        if (mVar.f() < 2) {
            return;
        }
        int iF = mVar.f() - 1;
        int[][] iArr = c;
        int[] iArr2 = iArr[iF];
        int length = iArr[iF].length;
        for (int i = 0; i < length; i++) {
            for (int i2 = 0; i2 < length; i2++) {
                int i3 = iArr2[i];
                int i4 = iArr2[i2];
                if (i4 != -1 && i3 != -1 && o(dVar.b(i4, i3))) {
                    h(i4 - 2, i3 - 2, dVar);
                }
            }
        }
    }

    static void s(m mVar, d dVar) throws WriterException {
        if (mVar.f() < 7) {
            return;
        }
        a aVar = new a();
        q(mVar, aVar);
        int i = 17;
        for (int i2 = 0; i2 < 6; i2++) {
            for (int i3 = 0; i3 < 3; i3++) {
                boolean zG = aVar.g(i);
                i--;
                dVar.g(i2, (dVar.d() - 11) + i3, zG);
                dVar.g((dVar.d() - 11) + i3, i2, zG);
            }
        }
    }
}
