package com.amap.api.mapcore.util;

import androidx.core.view.MotionEventCompat;
import com.google.android.exoplayer2.C;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayInputStream;
import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Objects;
import java.util.zip.GZIPInputStream;
import java.util.zip.GZIPOutputStream;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class r5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f11130a = null;
    private static final byte[] b = null;
    private static final byte[] c = null;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f11131d = null;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f11132e = null;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f11133f = null;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f11134g = true;

    public static class a extends FilterOutputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private boolean f11135a;
        private int b;
        private byte[] c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f11136d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f11137e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private boolean f11138f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private byte[] f11139g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f11140h;
        private int i;
        private byte[] j;

        public a(OutputStream r3, int r4) {
            super(r3);
            boolean r0 = true;
            if ((r4 & 8) == 0) goto L5;
            boolean r5 = true;
        L6:
            this.f11138f = r5;
            if ((r4 & 1) != 0) goto L10;
            r0 = false;
        L10:
            this.f11135a = r0;
            if (r0 == false) goto L13;
            int r1 = 3;
        L14:
            this.f11136d = r1;
            this.c = new byte[r1];
            this.b = 0;
            this.f11137e = 0;
            this.f11140h = false;
            this.f11139g = new byte[4];
            this.i = r4;
            this.j = r5.d(r4);
            return;
        L13:
            r1 = 4;
            goto L14
        L5:
            r5 = false;
            goto L6
        }

        public void a() throws IOException {
            int r0 = this.b;
            if (r0 > 0) goto L5;
            return;
        L5:
            if (this.f11135a == false) goto L8;
            OutputStream r1 = ((FilterOutputStream) this).out;
            byte[] r2 = this.f11139g;
            r5.h(r2, this.c, r0, this.i);
            r1.write(r2);
            this.b = 0;
            return;
        L8:
            throw new IOException("Base64Util input not properly padded.");
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a();
            super.close();
            this.c = null;
            ((FilterOutputStream) this).out = null;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int r6) throws IOException {
            if (this.f11140h == false) goto L7;
            ((FilterOutputStream) this).out.write(r6);
            return;
        L7:
            if (this.f11135a == false) goto L16;
            byte[] r0 = this.c;
            int r2 = this.b;
            int r3 = r2 + 1;
            this.b = r3;
            r0[r2] = (byte) r6;
            int r7 = this.f11136d;
            if (r3 < r7) goto L23;
            OutputStream r4 = ((FilterOutputStream) this).out;
            byte[] r5 = this.f11139g;
            r5.h(r5, r0, r7, this.i);
            r4.write(r5);
            int r8 = this.f11137e + 4;
            this.f11137e = r8;
            if (this.f11138f == true) goto L13;
        L15:
            this.b = 0;
            return;
        L13:
            if (r8 < 76) goto L15;
            ((FilterOutputStream) this).out.write(10);
            this.f11137e = 0;
            goto L15
        L23:
            return;
        L16:
            byte[] r1 = this.j;
            int r9 = r6 & 127;
            if (r1[r9] <= (-5)) goto L22;
            byte[] r10 = this.c;
            int r11 = this.b;
            int r12 = r11 + 1;
            this.b = r12;
            r10[r11] = (byte) r6;
            if (r12 < this.f11136d) goto L27;
            int r13 = r5.a(r10, 0, this.f11139g, 0, this.i);
            ((FilterOutputStream) this).out.write(this.f11139g, 0, r13);
            this.b = 0;
            return;
        L27:
            return;
        L22:
            if (r1[r9] != (-5)) goto L25;
            return;
        L25:
            throw new IOException("Invalid character in Base64Util data.");
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] r3, int r4, int r5) throws IOException {
            if (this.f11140h == false) goto L6;
            ((FilterOutputStream) this).out.write(r3, r4, r5);
            return;
        L6:
            int r0 = 0;
        L7:
            if (r0 >= r5) goto L9;
            write(r3[r4 + r0]);
            r0 = r0 + 1;
            goto L7
        }
    }

    static {
        f11130a = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
        b = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -9, -9, -9, -9, -9, -9, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
        c = new byte[]{65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};
        f11131d = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -9, -9, -9, -9, Utf8.REPLACEMENT_BYTE, -9, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
        f11132e = new byte[]{45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};
        f11133f = new byte[]{-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, Utf8.REPLACEMENT_BYTE, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    }

    static /* synthetic */ int a(byte[] r0, int r1, byte[] r2, int r3, int r4) {
        return i(r0, r1, r2, r3, r4);
    }

    public static String b(byte[] r2) {
        String r3 = c(r2, 0, r2.length, 0);     // Catch: IOException -> L4
    L9:
        if (f11134g == true) goto L14;
        if (r3 != null) goto L14;
        throw new AssertionError();
    L14:
        return r3;
    L4:
        e = move-exception;
        if (f11134g == false) goto L16;
        r3 = null;
        goto L9
    L16:
        throw new AssertionError(e.getMessage());
    }

    public static String c(byte[] r0, int r1, int r2, int r3) throws IOException {
        byte[] r4 = k(r0, r1, r2, r3);
        return new String(r4, C.ASCII_NAME);
    L6:
        return new String(r4);
    }

    static /* synthetic */ byte[] d(int r0) {
        return m(r0);
    }

    public static byte[] e(String r1) throws IOException {
        return f(r1, 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v0, types: [int] */
    /* JADX WARN: Type inference failed for: r3v1 */
    /* JADX WARN: Type inference failed for: r3v10, types: [java.io.ByteArrayInputStream, java.io.InputStream] */
    /* JADX WARN: Type inference failed for: r3v11 */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v3, types: [java.io.ByteArrayInputStream] */
    /* JADX WARN: Type inference failed for: r3v4 */
    /* JADX WARN: Type inference failed for: r3v5, types: [java.io.ByteArrayInputStream] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    /* JADX WARN: Type inference failed for: r3v8 */
    /* JADX WARN: Type inference failed for: r3v9 */
    public static byte[] f(String r5, int r6) throws IOException {
        Objects.requireNonNull(r5, "Input string was null.");
        byte[] r7 = r5.getBytes(C.ASCII_NAME);     // Catch: UnsupportedEncodingException -> L5
    L6:
        byte[] r8 = n(r7, 0, r7.length, r6);
        if ((r6 & 4) == 0) goto L9;
        boolean r9 = true;
    L10:
        if (r8 == null) goto L54;
        ?? r3 = r8.length;
        if (r3 < 4) goto L54;
        if (r9 == true) goto L54;
        if (35615 != ((r8[0] & UnsignedBytes.MAX_VALUE) | ((r8[1] << 8) & MotionEventCompat.ACTION_POINTER_INDEX_MASK))) goto L54;
        byte[] r10 = new byte[2048];
        ByteArrayOutputStream r0 = null;
        ByteArrayOutputStream r2 = new ByteArrayOutputStream();     // Catch: Throwable -> L42 IOException -> L44
        r3 = new ByteArrayInputStream(r8);     // Catch: Throwable -> L36 IOException -> L39
        GZIPInputStream r4 = new GZIPInputStream(r3);     // Catch: Throwable -> L32 IOException -> L34
    L76:
        int r1 = r4.read(r10);     // Catch: Throwable -> L28 IOException -> L30
        if (r1 < 0) goto L23;
        r2.write(r10, 0, r1);     // Catch: Throwable -> L28 IOException -> L30
        goto L76
    L23:
        r8 = r2.toByteArray();     // Catch: Throwable -> L28 IOException -> L30
        r2.close();     // Catch: Exception -> L55
        goto L73
    L30:
        e = e;
    L41:
        r0 = r2;
        r3 = r3;
    L67:
        e.printStackTrace();     // Catch: Throwable -> L49
        r0.close();     // Catch: Exception -> L55
    L49:
        th = th;
    L69:
        r0.close();     // Catch: Exception -> L57
    L65:
        r4.close();     // Catch: Exception -> L58
    L63:
        r3.close();     // Catch: Exception -> L59
        throw th;
    L86:
        throw th;
    L28:
        th = th;
    L38:
        r0 = r2;
        goto L69
    L34:
        e = e;
        r4 = null;
    L32:
        th = th;
        r4 = null;
        goto L38
    L39:
        e = e;
        r3 = 0;
        r4 = null;
    L36:
        th = th;
        r3 = 0;
        r4 = null;
        goto L38
    L44:
        e = e;
        r3 = 0;
        r4 = null;
    L42:
        th = th;
        r3 = 0;
        r4 = null;
    L73:
        r4.close();     // Catch: Exception -> L56
    L61:
        r3.close();     // Catch: Exception -> L60
    L54:
        return r8;
    L9:
        r9 = false;
    L5:
        r7 = r5.getBytes();
        goto L6
    }

    private static byte[] g(byte[] r4, int r5, int r6, byte[] r7, int r8, int r9) {
        byte[] r10 = j(r9);
        int r0 = 0;
        if (r6 <= 0) goto L5;
        int r1 = (r4[r5] << Ascii.CAN) >>> 8;
    L7:
        if (r6 <= 1) goto L9;
        int r3 = (r4[r5 + 1] << Ascii.CAN) >>> 16;
    L10:
        int r2 = r1 | r3;
        if (r6 <= 2) goto L13;
        r0 = (r4[r5 + 2] << Ascii.CAN) >>> 24;
    L13:
        int r11 = r2 | r0;
        if (r6 == 1) goto L22;
        if (r6 == 2) goto L20;
        if (r6 == 3) goto L18;
        return r7;
    L18:
        r7[r8] = r10[r11 >>> 18];
        r7[r8 + 1] = r10[(r11 >>> 12) & 63];
        r7[r8 + 2] = r10[(r11 >>> 6) & 63];
        r7[r8 + 3] = r10[r11 & 63];
        return r7;
    L20:
        r7[r8] = r10[r11 >>> 18];
        r7[r8 + 1] = r10[(r11 >>> 12) & 63];
        r7[r8 + 2] = r10[(r11 >>> 6) & 63];
        r7[r8 + 3] = 61;
        return r7;
    L22:
        r7[r8] = r10[r11 >>> 18];
        r7[r8 + 1] = r10[(r11 >>> 12) & 63];
        r7[r8 + 2] = 61;
        r7[r8 + 3] = 61;
        return r7;
    L9:
        r3 = 0;
        goto L10
    L5:
        r1 = 0;
        goto L7
    }

    static /* synthetic */ byte[] h(byte[] r0, byte[] r1, int r2, int r3) {
        l(r0, r1, r2, r3);
        return r0;
    }

    private static int i(byte[] r7, int r8, byte[] r9, int r10, int r11) {
        Objects.requireNonNull(r7, "Source array was null.");
        Objects.requireNonNull(r9, "Destination array was null.");
        if (r8 < 0) goto L22;
        int r3 = r8 + 3;
        if (r3 >= r7.length) goto L22;
        if (r10 < 0) goto L20;
        int r4 = r10 + 2;
        if (r4 >= r9.length) goto L20;
        byte[] r12 = m(r11);
        int r0 = r8 + 2;
        if (r7[r0] != 61) goto L14;
        r9[r10] = (byte) ((((r12[r7[r8 + 1]] & UnsignedBytes.MAX_VALUE) << 12) | ((r12[r7[r8]] & UnsignedBytes.MAX_VALUE) << 18)) >>> 16);
        return 1;
    L14:
        if (r7[r3] != 61) goto L17;
        int r13 = ((r12[r7[r0]] & UnsignedBytes.MAX_VALUE) << 6) | (((r12[r7[r8 + 1]] & UnsignedBytes.MAX_VALUE) << 12) | ((r12[r7[r8]] & UnsignedBytes.MAX_VALUE) << 18));
        r9[r10] = (byte) (r13 >>> 16);
        r9[r10 + 1] = (byte) (r13 >>> 8);
        return 2;
    L17:
        int r14 = (r12[r7[r3]] & UnsignedBytes.MAX_VALUE) | ((((r12[r7[r8 + 1]] & UnsignedBytes.MAX_VALUE) << 12) | ((r12[r7[r8]] & UnsignedBytes.MAX_VALUE) << 18)) | ((r12[r7[r0]] & UnsignedBytes.MAX_VALUE) << 6));
        r9[r10] = (byte) (r14 >> 16);
        r9[r10 + 1] = (byte) (r14 >> 8);
        r9[r4] = (byte) r14;
        return 3;
    L20:
        throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", new Object[]{Integer.valueOf(r9.length), Integer.valueOf(r10)}));
    L22:
        throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", new Object[]{Integer.valueOf(r7.length), Integer.valueOf(r8)}));
    }

    private static final byte[] j(int r2) {
        if ((r2 & 16) != 16) goto L7;
        return c;
    L7:
        if ((r2 & 32) != 32) goto L11;
        return f11132e;
    L11:
        return f11130a;
    }

    public static byte[] k(byte[] r18, int r19, int r20, int r21) throws IOException {
        Objects.requireNonNull(r18, "Cannot serialize a null array.");
        if (r19 < 0) goto L77;
        if (r20 < 0) goto L75;
        if ((r19 + r20) > r18.length) goto L73;
        if ((r21 & 2) == 0) goto L45;
        GZIPOutputStream r1 = null;
        r1 = null;
        r1 = null;
        ByteArrayOutputStream r2 = null;
        ByteArrayOutputStream r3 = new ByteArrayOutputStream();     // Catch: Throwable -> L32 IOException -> L34
    L102:
        a r4 = new a(r3, r21 | 1);     // Catch: Throwable -> L27 IOException -> L29
        GZIPOutputStream r5 = new GZIPOutputStream(r4);     // Catch: Throwable -> L23 IOException -> L25
    L104:
        r5.write(r18, r19, r20);     // Catch: Throwable -> L19 IOException -> L21
        r5.close();     // Catch: Throwable -> L19 IOException -> L21
        r5.close();     // Catch: Exception -> L78
    L84:
        r4.close();     // Catch: Exception -> L79
    L90:
        r3.close();     // Catch: Exception -> L80
    L18:
        return r3.toByteArray();
    L21:
        e = e;
    L31:
        r2 = r3;
    L92:
        throw e;     // Catch: Throwable -> L37
    L37:
        th = th;
        r3 = r2;
    L39:
        r1 = r5;
    L88:
        r1.close();     // Catch: Exception -> L81
    L96:
        r4.close();     // Catch: Exception -> L82
    L94:
        r3.close();     // Catch: Exception -> L83
        throw th;
    L109:
        throw th;
    L19:
        th = th;
    L25:
        e = e;
        r5 = null;
    L23:
        th = th;
        goto L88
    L29:
        e = e;
        r4 = null;
        r5 = null;
    L27:
        th = th;
        r4 = null;
    L34:
        e = e;
        r4 = null;
        r5 = null;
    L32:
        th = th;
        r3 = null;
        r4 = null;
        goto L88
    L45:
        if ((r21 & 8) == 0) goto L47;
        boolean r11 = true;
    L48:
        int r6 = (r20 / 3) * 4;
        if ((r20 % 3) <= 0) goto L51;
        int r7 = 4;
    L52:
        int r8 = r6 + r7;
        if (r11 == false) goto L55;
        r8 = r8 + (r8 / 76);
    L55:
        int r13 = r8;
        byte[] r14 = new byte[r13];
        int r15 = r20 - 2;
        int r9 = 0;
        int r16 = 0;
        int r17 = 0;
    L56:
        if (r9 >= r15) goto L64;
        int r10 = r9;
        g(r18, r9 + r19, 3, r14, r16, r21);
        int r12 = r17 + 4;
        if (r11 == true) goto L60;
    L62:
        r17 = r12;
    L63:
        r9 = r10 + 3;
        r16 = r16 + 4;
        goto L56
    L60:
        if (r12 < 76) goto L62;
        r14[r16 + 4] = 10;
        r16 = r16 + 1;
        r17 = 0;
        goto L63
    L64:
        int r110 = r9;
        if (r110 >= r20) goto L67;
        g(r18, r110 + r19, r20 - r110, r14, r16, r21);
        r16 = r16 + 4;
    L67:
        int r0 = r16;
        if (r0 > (r13 - 1)) goto L71;
        byte[] r22 = new byte[r0];
        System.arraycopy(r14, 0, r22, 0, r0);
        return r22;
    L71:
        return r14;
    L51:
        r7 = 0;
        goto L52
    L47:
        r11 = false;
        goto L48
    L73:
        throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", new Object[]{Integer.valueOf(r19), Integer.valueOf(r20), Integer.valueOf(r18.length)}));
    L75:
        throw new IllegalArgumentException("Cannot have length offset: " + r20);
    L77:
        throw new IllegalArgumentException("Cannot have negative offset: " + r19);
    }

    private static byte[] l(byte[] r6, byte[] r7, int r8, int r9) {
        g(r7, 0, r8, r6, 0, r9);
        return r6;
    }

    private static final byte[] m(int r2) {
        if ((r2 & 16) != 16) goto L7;
        return f11131d;
    L7:
        if ((r2 & 32) != 32) goto L11;
        return f11133f;
    L11:
        return b;
    }

    public static byte[] n(byte[] r11, int r12, int r13, int r14) throws IOException {
        Objects.requireNonNull(r11, "Cannot decode null source array.");
        if (r12 < 0) goto L32;
        int r4 = r12 + r13;
        if (r4 > r11.length) goto L32;
        if (r13 != 0) goto L10;
        return new byte[0];
    L10:
        if (r13 < 4) goto L30;
        byte[] r6 = m(r14);
        byte[] r15 = new byte[(r13 * 3) / 4];
        byte[] r5 = new byte[4];
        int r7 = 0;
        int r8 = 0;
    L12:
        if (r12 >= r4) goto L27;
        byte r9 = r6[r11[r12] & UnsignedBytes.MAX_VALUE];
        if (r9 < (-5)) goto L26;
        if (r9 < (-1)) goto L24;
        int r10 = r7 + 1;
        r5[r7] = r11[r12];
        if (r10 <= 3) goto L23;
        r8 = r8 + i(r5, 0, r15, r8, r14);
        if (r11[r12] == 61) goto L27;
        r7 = 0;
        goto L24
    L23:
        r7 = r10;
    L24:
        r12 = r12 + 1;
        goto L12
    L26:
        throw new IOException(String.format("Bad Base64Util input character decimal %d in array position %d", new Object[]{Integer.valueOf(r11[r12] & UnsignedBytes.MAX_VALUE), Integer.valueOf(r12)}));
    L27:
        byte[] r16 = new byte[r8];
        System.arraycopy(r15, 0, r16, 0, r8);
        return r16;
    L30:
        throw new IllegalArgumentException("Base64Util-encoded string must have at least four characters, but length specified was " + r13);
    L32:
        throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", new Object[]{Integer.valueOf(r11.length), Integer.valueOf(r12), Integer.valueOf(r13)}));
    }
}
