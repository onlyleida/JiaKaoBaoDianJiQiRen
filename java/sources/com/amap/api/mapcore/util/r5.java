package com.amap.api.mapcore.util;

import com.google.android.exoplayer2.C;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.ByteArrayOutputStream;
import java.io.FilterOutputStream;
import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.Objects;
import java.util.zip.GZIPOutputStream;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class r5 {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final byte[] f11130a = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 43, 47};
    private static final byte[] b = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, -9, Utf8.REPLACEMENT_BYTE, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -9, -9, -9, -9, -9, -9, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};
    private static final byte[] c = {65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 45, 95};

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final byte[] f11131d = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 62, -9, -9, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, -9, -9, -9, -1, -9, -9, -9, 0, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, -9, -9, -9, -9, Utf8.REPLACEMENT_BYTE, -9, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, 37, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final byte[] f11132e = {45, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 65, 66, 67, 68, 69, 70, 71, 72, 73, 74, 75, 76, 77, 78, 79, 80, 81, 82, 83, 84, 85, 86, 87, 88, 89, 90, 95, 97, 98, 99, 100, 101, 102, 103, 104, 105, 106, 107, 108, 109, 110, 111, 112, 113, 114, 115, 116, 117, 118, 119, 120, 121, 122};

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final byte[] f11133f = {-9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -5, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -5, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, 0, -9, -9, 1, 2, 3, 4, 5, 6, 7, 8, 9, 10, -9, -9, -9, -1, -9, -9, -9, Ascii.VT, Ascii.FF, Ascii.CR, Ascii.SO, Ascii.SI, Ascii.DLE, 17, Ascii.DC2, 19, Ascii.DC4, Ascii.NAK, Ascii.SYN, Ascii.ETB, Ascii.CAN, Ascii.EM, Ascii.SUB, Ascii.ESC, Ascii.FS, Ascii.GS, Ascii.RS, Ascii.US, 32, 33, 34, 35, 36, -9, -9, -9, -9, 37, -9, 38, 39, 40, 41, 42, 43, 44, 45, 46, 47, 48, 49, 50, 51, 52, 53, 54, 55, 56, 57, 58, 59, 60, 61, 62, Utf8.REPLACEMENT_BYTE, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9, -9};

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    static final /* synthetic */ boolean f11134g = true;

    public static String b(byte[] bArr) throws Throwable {
        String strC;
        try {
            strC = c(bArr, 0, bArr.length, 0);
        } catch (IOException e2) {
            if (!f11134g) {
                throw new AssertionError(e2.getMessage());
            }
            strC = null;
        }
        if (f11134g || strC != null) {
            return strC;
        }
        throw new AssertionError();
    }

    public static String c(byte[] bArr, int i, int i2, int i3) throws Throwable {
        byte[] bArrK = k(bArr, i, i2, i3);
        try {
            return new String(bArrK, C.ASCII_NAME);
        } catch (UnsupportedEncodingException unused) {
            return new String(bArrK);
        }
    }

    public static byte[] e(String str) throws IOException {
        return f(str, 0);
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
    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:55:0x005c
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1478)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.collectHandlerRegions(ExcHandlersRegionMaker.java:53)
        	at jadx.core.dex.visitors.regions.maker.ExcHandlersRegionMaker.process(ExcHandlersRegionMaker.java:38)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:27)
        */
    public static byte[] f(java.lang.String r5, int r6) throws java.io.IOException {
        /*
            java.lang.String r0 = "Input string was null."
            java.util.Objects.requireNonNull(r5, r0)
            java.lang.String r0 = "US-ASCII"
            byte[] r5 = r5.getBytes(r0)     // Catch: java.io.UnsupportedEncodingException -> Lc
            goto L10
        Lc:
            byte[] r5 = r5.getBytes()
        L10:
            int r0 = r5.length
            r1 = 0
            byte[] r5 = n(r5, r1, r0, r6)
            r0 = 4
            r6 = r6 & r0
            r2 = 1
            if (r6 == 0) goto L1d
            r6 = 1
            goto L1e
        L1d:
            r6 = 0
        L1e:
            if (r5 == 0) goto L90
            int r3 = r5.length
            if (r3 < r0) goto L90
            if (r6 != 0) goto L90
            r6 = r5[r1]
            r6 = r6 & 255(0xff, float:3.57E-43)
            r0 = r5[r2]
            int r0 = r0 << 8
            r2 = 65280(0xff00, float:9.1477E-41)
            r0 = r0 & r2
            r6 = r6 | r0
            r0 = 35615(0x8b1f, float:4.9907E-41)
            if (r0 != r6) goto L90
            r6 = 2048(0x800, float:2.87E-42)
            byte[] r6 = new byte[r6]
            r0 = 0
            java.io.ByteArrayOutputStream r2 = new java.io.ByteArrayOutputStream     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L7b
            r2.<init>()     // Catch: java.lang.Throwable -> L77 java.io.IOException -> L7b
            java.io.ByteArrayInputStream r3 = new java.io.ByteArrayInputStream     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L72
            r3.<init>(r5)     // Catch: java.lang.Throwable -> L6d java.io.IOException -> L72
            java.util.zip.GZIPInputStream r4 = new java.util.zip.GZIPInputStream     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6a
            r4.<init>(r3)     // Catch: java.lang.Throwable -> L67 java.io.IOException -> L6a
        L4b:
            int r0 = r4.read(r6)     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L65
            if (r0 < 0) goto L55
            r2.write(r6, r1, r0)     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L65
            goto L4b
        L55:
            byte[] r5 = r2.toByteArray()     // Catch: java.lang.Throwable -> L63 java.io.IOException -> L65
            r2.close()     // Catch: java.lang.Exception -> L5c
        L5c:
            r4.close()     // Catch: java.lang.Exception -> L5f
        L5f:
            r3.close()     // Catch: java.lang.Exception -> L90
            goto L90
        L63:
            r5 = move-exception
            goto L70
        L65:
            r6 = move-exception
            goto L75
        L67:
            r5 = move-exception
            r4 = r0
            goto L70
        L6a:
            r6 = move-exception
            r4 = r0
            goto L75
        L6d:
            r5 = move-exception
            r3 = r0
            r4 = r3
        L70:
            r0 = r2
            goto L86
        L72:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L75:
            r0 = r2
            goto L7e
        L77:
            r5 = move-exception
            r3 = r0
            r4 = r3
            goto L86
        L7b:
            r6 = move-exception
            r3 = r0
            r4 = r3
        L7e:
            r6.printStackTrace()     // Catch: java.lang.Throwable -> L85
            r0.close()     // Catch: java.lang.Exception -> L5c
            goto L5c
        L85:
            r5 = move-exception
        L86:
            r0.close()     // Catch: java.lang.Exception -> L89
        L89:
            r4.close()     // Catch: java.lang.Exception -> L8c
        L8c:
            r3.close()     // Catch: java.lang.Exception -> L8f
        L8f:
            throw r5
        L90:
            return r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.amap.api.mapcore.util.r5.f(java.lang.String, int):byte[]");
    }

    private static byte[] g(byte[] bArr, int i, int i2, byte[] bArr2, int i3, int i4) {
        byte[] bArrJ = j(i4);
        int i5 = (i2 > 0 ? (bArr[i] << Ascii.CAN) >>> 8 : 0) | (i2 > 1 ? (bArr[i + 1] << Ascii.CAN) >>> 16 : 0) | (i2 > 2 ? (bArr[i + 2] << Ascii.CAN) >>> 24 : 0);
        if (i2 == 1) {
            bArr2[i3] = bArrJ[i5 >>> 18];
            bArr2[i3 + 1] = bArrJ[(i5 >>> 12) & 63];
            bArr2[i3 + 2] = 61;
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 == 2) {
            bArr2[i3] = bArrJ[i5 >>> 18];
            bArr2[i3 + 1] = bArrJ[(i5 >>> 12) & 63];
            bArr2[i3 + 2] = bArrJ[(i5 >>> 6) & 63];
            bArr2[i3 + 3] = 61;
            return bArr2;
        }
        if (i2 != 3) {
            return bArr2;
        }
        bArr2[i3] = bArrJ[i5 >>> 18];
        bArr2[i3 + 1] = bArrJ[(i5 >>> 12) & 63];
        bArr2[i3 + 2] = bArrJ[(i5 >>> 6) & 63];
        bArr2[i3 + 3] = bArrJ[i5 & 63];
        return bArr2;
    }

    static /* synthetic */ byte[] h(byte[] bArr, byte[] bArr2, int i, int i2) {
        l(bArr, bArr2, i, i2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static int i(byte[] bArr, int i, byte[] bArr2, int i2, int i3) {
        int i4;
        int i5;
        Objects.requireNonNull(bArr, "Source array was null.");
        Objects.requireNonNull(bArr2, "Destination array was null.");
        if (i < 0 || (i4 = i + 3) >= bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and still process four bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i)));
        }
        if (i2 < 0 || (i5 = i2 + 2) >= bArr2.length) {
            throw new IllegalArgumentException(String.format("Destination array with length %d cannot have offset of %d and still store three bytes.", Integer.valueOf(bArr2.length), Integer.valueOf(i2)));
        }
        byte[] bArrM = m(i3);
        int i6 = i + 2;
        if (bArr[i6] == 61) {
            bArr2[i2] = (byte) ((((bArrM[bArr[i + 1]] & UnsignedBytes.MAX_VALUE) << 12) | ((bArrM[bArr[i]] & UnsignedBytes.MAX_VALUE) << 18)) >>> 16);
            return 1;
        }
        if (bArr[i4] == 61) {
            int i7 = ((bArrM[bArr[i6]] & UnsignedBytes.MAX_VALUE) << 6) | ((bArrM[bArr[i + 1]] & UnsignedBytes.MAX_VALUE) << 12) | ((bArrM[bArr[i]] & UnsignedBytes.MAX_VALUE) << 18);
            bArr2[i2] = (byte) (i7 >>> 16);
            bArr2[i2 + 1] = (byte) (i7 >>> 8);
            return 2;
        }
        int i8 = (bArrM[bArr[i4]] & UnsignedBytes.MAX_VALUE) | ((bArrM[bArr[i + 1]] & UnsignedBytes.MAX_VALUE) << 12) | ((bArrM[bArr[i]] & UnsignedBytes.MAX_VALUE) << 18) | ((bArrM[bArr[i6]] & UnsignedBytes.MAX_VALUE) << 6);
        bArr2[i2] = (byte) (i8 >> 16);
        bArr2[i2 + 1] = (byte) (i8 >> 8);
        bArr2[i5] = (byte) i8;
        return 3;
    }

    private static final byte[] j(int i) {
        if ((i & 16) == 16) {
            return c;
        }
        return (i & 32) == 32 ? f11132e : f11130a;
    }

    public static byte[] k(byte[] bArr, int i, int i2, int i3) throws Throwable {
        ByteArrayOutputStream byteArrayOutputStream;
        a aVar;
        GZIPOutputStream gZIPOutputStream;
        Objects.requireNonNull(bArr, "Cannot serialize a null array.");
        if (i < 0) {
            throw new IllegalArgumentException("Cannot have negative offset: " + i);
        }
        if (i2 < 0) {
            throw new IllegalArgumentException("Cannot have length offset: " + i2);
        }
        if (i + i2 > bArr.length) {
            throw new IllegalArgumentException(String.format("Cannot have offset of %d and length of %d with array of length %d", Integer.valueOf(i), Integer.valueOf(i2), Integer.valueOf(bArr.length)));
        }
        if ((i3 & 2) == 0) {
            boolean z = (i3 & 8) != 0;
            int i4 = ((i2 / 3) * 4) + (i2 % 3 > 0 ? 4 : 0);
            if (z) {
                i4 += i4 / 76;
            }
            int i5 = i4;
            byte[] bArr2 = new byte[i5];
            int i6 = i2 - 2;
            int i7 = 0;
            int i8 = 0;
            int i9 = 0;
            while (i7 < i6) {
                int i10 = i7;
                g(bArr, i7 + i, 3, bArr2, i8, i3);
                int i11 = i9 + 4;
                if (!z || i11 < 76) {
                    i9 = i11;
                } else {
                    bArr2[i8 + 4] = 10;
                    i8++;
                    i9 = 0;
                }
                i7 = i10 + 3;
                i8 += 4;
            }
            int i12 = i7;
            if (i12 < i2) {
                g(bArr, i12 + i, i2 - i12, bArr2, i8, i3);
                i8 += 4;
            }
            int i13 = i8;
            if (i13 > i5 - 1) {
                return bArr2;
            }
            byte[] bArr3 = new byte[i13];
            System.arraycopy(bArr2, 0, bArr3, 0, i13);
            return bArr3;
        }
        GZIPOutputStream gZIPOutputStream2 = null;
        gZIPOutputStream2 = null;
        gZIPOutputStream2 = null;
        ByteArrayOutputStream byteArrayOutputStream2 = null;
        try {
            byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                aVar = new a(byteArrayOutputStream, i3 | 1);
                try {
                    gZIPOutputStream = new GZIPOutputStream(aVar);
                    try {
                        gZIPOutputStream.write(bArr, i, i2);
                        gZIPOutputStream.close();
                        try {
                            gZIPOutputStream.close();
                        } catch (Exception unused) {
                        }
                        try {
                            aVar.close();
                        } catch (Exception unused2) {
                        }
                        try {
                            byteArrayOutputStream.close();
                        } catch (Exception unused3) {
                        }
                        return byteArrayOutputStream.toByteArray();
                    } catch (IOException e2) {
                        e = e2;
                        byteArrayOutputStream2 = byteArrayOutputStream;
                        try {
                            throw e;
                        } catch (Throwable th) {
                            th = th;
                            byteArrayOutputStream = byteArrayOutputStream2;
                            gZIPOutputStream2 = gZIPOutputStream;
                            try {
                                gZIPOutputStream2.close();
                            } catch (Exception unused4) {
                            }
                            try {
                                aVar.close();
                            } catch (Exception unused5) {
                            }
                            try {
                                byteArrayOutputStream.close();
                                throw th;
                            } catch (Exception unused6) {
                                throw th;
                            }
                        }
                    } catch (Throwable th2) {
                        th = th2;
                        gZIPOutputStream2 = gZIPOutputStream;
                        gZIPOutputStream2.close();
                        aVar.close();
                        byteArrayOutputStream.close();
                        throw th;
                    }
                } catch (IOException e3) {
                    e = e3;
                    gZIPOutputStream = null;
                }
            } catch (IOException e4) {
                e = e4;
                aVar = null;
                gZIPOutputStream = null;
            } catch (Throwable th3) {
                th = th3;
                aVar = null;
            }
        } catch (IOException e5) {
            e = e5;
            aVar = null;
            gZIPOutputStream = null;
        } catch (Throwable th4) {
            th = th4;
            byteArrayOutputStream = null;
            aVar = null;
        }
    }

    private static byte[] l(byte[] bArr, byte[] bArr2, int i, int i2) {
        g(bArr2, 0, i, bArr, 0, i2);
        return bArr;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final byte[] m(int i) {
        if ((i & 16) == 16) {
            return f11131d;
        }
        return (i & 32) == 32 ? f11133f : b;
    }

    public static byte[] n(byte[] bArr, int i, int i2, int i3) throws IOException {
        int i4;
        Objects.requireNonNull(bArr, "Cannot decode null source array.");
        if (i < 0 || (i4 = i + i2) > bArr.length) {
            throw new IllegalArgumentException(String.format("Source array with length %d cannot have offset of %d and process %d bytes.", Integer.valueOf(bArr.length), Integer.valueOf(i), Integer.valueOf(i2)));
        }
        if (i2 == 0) {
            return new byte[0];
        }
        if (i2 < 4) {
            throw new IllegalArgumentException("Base64Util-encoded string must have at least four characters, but length specified was " + i2);
        }
        byte[] bArrM = m(i3);
        byte[] bArr2 = new byte[(i2 * 3) / 4];
        byte[] bArr3 = new byte[4];
        int i5 = 0;
        int i6 = 0;
        while (i < i4) {
            byte b2 = bArrM[bArr[i] & UnsignedBytes.MAX_VALUE];
            if (b2 < -5) {
                throw new IOException(String.format("Bad Base64Util input character decimal %d in array position %d", Integer.valueOf(bArr[i] & UnsignedBytes.MAX_VALUE), Integer.valueOf(i)));
            }
            if (b2 >= -1) {
                int i7 = i5 + 1;
                bArr3[i5] = bArr[i];
                if (i7 > 3) {
                    i6 += i(bArr3, 0, bArr2, i6, i3);
                    if (bArr[i] == 61) {
                        break;
                    }
                    i5 = 0;
                } else {
                    i5 = i7;
                }
            }
            i++;
        }
        byte[] bArr4 = new byte[i6];
        System.arraycopy(bArr2, 0, bArr4, 0, i6);
        return bArr4;
    }

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

        public a(OutputStream outputStream, int i) {
            super(outputStream);
            this.f11138f = (i & 8) != 0;
            boolean z = (i & 1) != 0;
            this.f11135a = z;
            int i2 = z ? 3 : 4;
            this.f11136d = i2;
            this.c = new byte[i2];
            this.b = 0;
            this.f11137e = 0;
            this.f11140h = false;
            this.f11139g = new byte[4];
            this.i = i;
            this.j = r5.m(i);
        }

        public void a() throws IOException {
            int i = this.b;
            if (i > 0) {
                if (!this.f11135a) {
                    throw new IOException("Base64Util input not properly padded.");
                }
                OutputStream outputStream = ((FilterOutputStream) this).out;
                byte[] bArr = this.f11139g;
                r5.h(bArr, this.c, i, this.i);
                outputStream.write(bArr);
                this.b = 0;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream, java.io.Closeable, java.lang.AutoCloseable
        public void close() throws IOException {
            a();
            super.close();
            this.c = null;
            ((FilterOutputStream) this).out = null;
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(int i) throws IOException {
            if (this.f11140h) {
                ((FilterOutputStream) this).out.write(i);
                return;
            }
            if (!this.f11135a) {
                byte[] bArr = this.j;
                int i2 = i & 127;
                if (bArr[i2] <= -5) {
                    if (bArr[i2] != -5) {
                        throw new IOException("Invalid character in Base64Util data.");
                    }
                    return;
                }
                byte[] bArr2 = this.c;
                int i3 = this.b;
                int i4 = i3 + 1;
                this.b = i4;
                bArr2[i3] = (byte) i;
                if (i4 >= this.f11136d) {
                    ((FilterOutputStream) this).out.write(this.f11139g, 0, r5.i(bArr2, 0, this.f11139g, 0, this.i));
                    this.b = 0;
                    return;
                }
                return;
            }
            byte[] bArr3 = this.c;
            int i5 = this.b;
            int i6 = i5 + 1;
            this.b = i6;
            bArr3[i5] = (byte) i;
            int i7 = this.f11136d;
            if (i6 >= i7) {
                OutputStream outputStream = ((FilterOutputStream) this).out;
                byte[] bArr4 = this.f11139g;
                r5.h(bArr4, bArr3, i7, this.i);
                outputStream.write(bArr4);
                int i8 = this.f11137e + 4;
                this.f11137e = i8;
                if (this.f11138f && i8 >= 76) {
                    ((FilterOutputStream) this).out.write(10);
                    this.f11137e = 0;
                }
                this.b = 0;
            }
        }

        @Override // java.io.FilterOutputStream, java.io.OutputStream
        public void write(byte[] bArr, int i, int i2) throws IOException {
            if (this.f11140h) {
                ((FilterOutputStream) this).out.write(bArr, i, i2);
                return;
            }
            for (int i3 = 0; i3 < i2; i3++) {
                write(bArr[i + i3]);
            }
        }
    }
}
