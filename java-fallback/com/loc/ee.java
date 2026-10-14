package com.loc;

import com.google.common.primitives.UnsignedBytes;

/* JADX INFO: loaded from: classes4.dex */
public class ee {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    static final /* synthetic */ boolean f12767a = true;

    static abstract class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public byte[] f12768a;
        public int b;

        a() {
        }
    }

    static class b extends a {
        private static final int[] c = null;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private static final int[] f12769d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f12770e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f12771f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private final int[] f12772g;

        static {
            c = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, -1, 63, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, -1, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
            f12769d = new int[]{-1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, 62, -1, -1, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -1, -1, -1, -2, -1, -1, -1, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13, 14, 15, 16, 17, 18, 19, 20, 21, 22, 23, 24, 25, -1, -1, -1, -1, 63, -1, 26, 27, 28, 29, 30, 31, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1, -1};
        }

        public b(byte[] r1) {
            this.f12768a = r1;
            this.f12772g = c;
            this.f12770e = 0;
            this.f12771f = 0;
        }

        public final boolean a(byte[] r18, int r19) {
            int r1 = this.f12770e;
            if (r1 != 6) goto L5;
            return false;
        L5:
            int r4 = r19 + 0;
            int r5 = this.f12771f;
            byte[] r6 = this.f12768a;
            int[] r7 = this.f12772g;
            int r10 = 0;
            int r11 = 0;
        L7:
            if (r10 >= r4) goto L61;
            if (r1 != 0) goto L15;
        L9:
            int r15 = r10 + 4;
            if (r15 > r4) goto L14;
            int r8 = r7[r18[r10] & UnsignedBytes.MAX_VALUE] << 18;
            int r2 = ((r7[r18[r10 + 1] & UnsignedBytes.MAX_VALUE] << 12) | r8) | (r7[r18[r10 + 2] & UnsignedBytes.MAX_VALUE] << 6);
            r5 = r7[r18[r10 + 3] & UnsignedBytes.MAX_VALUE] | r2;
            if (r5 < 0) goto L14;
            r6[r11 + 2] = (byte) r5;
            r6[r11 + 1] = (byte) (r5 >> 8);
            r6[r11] = (byte) (r5 >> 16);
            r11 = r11 + 3;
            r10 = r15;
        L14:
            if (r10 >= r4) goto L61;
        L15:
            r10 = r10 + 1;
            int r12 = r7[r18[r10] & UnsignedBytes.MAX_VALUE];
            if (r1 == 0) goto L54;
            if (r1 == 1) goto L47;
            if (r1 == 2) goto L40;
            if (r1 == 3) goto L33;
            if (r1 == 4) goto L28;
            if (r1 != 5) goto L7;
            if (r12 == (-1)) goto L7;
        L25:
            this.f12770e = 6;
            return false;
        L28:
            if (r12 == (-2)) goto L49;
            if (r12 == (-1)) goto L7;
            this.f12770e = 6;
            return false;
        L49:
            r1 = r1 + 1;
            goto L7
        L33:
            if (r12 < 0) goto L35;
            r5 = (r5 << 6) | r12;
            r6[r11 + 2] = (byte) r5;
            r6[r11 + 1] = (byte) (r5 >> 8);
            r6[r11] = (byte) (r5 >> 16);
            r11 = r11 + 3;
            r1 = 0;
            goto L7
        L35:
            if (r12 != (-2)) goto L37;
            r6[r11 + 1] = (byte) (r5 >> 2);
            r6[r11] = (byte) (r5 >> 10);
            r11 = r11 + 2;
            r1 = 5;
            goto L7
        L37:
            if (r12 == (-1)) goto L7;
        L38:
            this.f12770e = 6;
            return false;
        L40:
            if (r12 >= 0) goto L48;
            if (r12 != (-2)) goto L44;
            r6[r11] = (byte) (r5 >> 4);
            r11 = r11 + 1;
            r1 = 4;
            goto L7
        L44:
            if (r12 == (-1)) goto L7;
        L48:
            r5 = (r5 << 6) | r12;
            goto L49
        L47:
            if (r12 >= 0) goto L48;
            if (r12 == (-1)) goto L7;
            this.f12770e = 6;
            return false;
        L54:
            if (r12 < 0) goto L56;
            r1 = r1 + 1;
            r5 = r12;
            goto L7
        L56:
            if (r12 == (-1)) goto L7;
            this.f12770e = 6;
            return false;
        L61:
            if (r1 == 1) goto L38;
            if (r1 == 2) goto L67;
            if (r1 == 3) goto L66;
            if (r1 == 4) goto L38;
        L68:
            this.f12770e = r1;
            this.b = r11;
            return true;
        L66:
            int r3 = r11 + 1;
            r6[r11] = (byte) (r5 >> 10);
            r11 = r3 + 1;
            r6[r3] = (byte) (r5 >> 2);
            goto L68
        L67:
            r6[r11] = (byte) (r5 >> 4);
            r11 = r11 + 1;
            goto L68
        }
    }

    static {
    }

    private ee() {
    }

    public static byte[] a(byte[] r1) {
        return a(r1, r1.length);
    }

    private static byte[] a(byte[] r2, int r3) {
        b r0 = new b(new byte[(r3 * 3) / 4]);
        if (r0.a(r2, r3) == false) goto L10;
        int r4 = r0.b;
        byte[] r5 = r0.f12768a;
        if (r4 != r5.length) goto L7;
        return r5;
    L7:
        byte[] r1 = new byte[r4];
        System.arraycopy(r5, 0, r1, 0, r4);
        return r1;
    L10:
        throw new IllegalArgumentException("bad base-64");
    }
}
