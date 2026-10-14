package com.mobile.auth.l;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PushbackInputStream;
import okio.Utf8;

/* JADX INFO: loaded from: classes5.dex */
public class a extends d {
    private static final char[] b = {'A', 'B', 'C', 'D', 'E', 'F', 'G', 'H', 'I', 'J', 'K', 'L', 'M', 'N', 'O', 'P', 'Q', 'R', 'S', 'T', 'U', 'V', 'W', 'X', 'Y', 'Z', 'a', 'b', 'c', 'd', 'e', 'f', 'g', 'h', 'i', 'j', 'k', 'l', 'm', 'n', 'o', 'p', 'q', 'r', 's', 't', 'u', 'v', 'w', 'x', 'y', 'z', '0', '1', '2', '3', '4', '5', '6', '7', '8', '9', '+', '/'};
    private static final byte[] c = new byte[256];

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    byte[] f13518a = new byte[4];

    static {
        int i = 0;
        for (int i2 = 0; i2 < 255; i2++) {
            c[i2] = -1;
        }
        while (true) {
            char[] cArr = b;
            if (i >= cArr.length) {
                return;
            }
            c[cArr[i]] = (byte) i;
            i++;
        }
    }

    @Override // com.mobile.auth.l.d
    protected int a() {
        return 4;
    }

    /* JADX WARN: Code duplicated, block: B:31:0x008a A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:32:0x008c A[DONT_INVERT] */
    /* JADX WARN: Code duplicated, block: B:34:0x008f  */
    /* JADX WARN: Code duplicated, block: B:35:0x00af  */
    /* JADX WARN: Code duplicated, block: B:37:0x00c5  */
    /* JADX WARN: Code duplicated, block: B:52:? A[RETURN, SYNTHETIC] */
    @Override // com.mobile.auth.l.d
    protected void a(PushbackInputStream pushbackInputStream, OutputStream outputStream, int i) throws IOException {
        byte b2;
        byte b3;
        byte b4;
        int i2;
        int i3;
        int i4;
        if (i < 2) {
            throw new b("BASE64Decoder: Not enough bytes for an atom.");
        }
        while (true) {
            int i5 = pushbackInputStream.read();
            byte b5 = -1;
            if (i5 == -1) {
                throw new c();
            }
            if (i5 != 10 && i5 != 13) {
                byte[] bArr = this.f13518a;
                bArr[0] = (byte) i5;
                if (a(pushbackInputStream, bArr, 1, i - 1) == -1) {
                    throw new c();
                }
                if (i > 3 && this.f13518a[3] == 61) {
                    i = 3;
                }
                if (i > 2 && this.f13518a[2] == 61) {
                    i = 2;
                }
                if (i != 2) {
                    if (i == 3) {
                        byte[] bArr2 = c;
                        byte[] bArr3 = this.f13518a;
                        b3 = bArr2[bArr3[2] & UnsignedBytes.MAX_VALUE];
                        b2 = bArr2[bArr3[1] & UnsignedBytes.MAX_VALUE];
                        b5 = bArr2[bArr3[0] & UnsignedBytes.MAX_VALUE];
                        b4 = -1;
                    } else if (i != 4) {
                        b2 = -1;
                    } else {
                        byte[] bArr4 = c;
                        byte[] bArr5 = this.f13518a;
                        b4 = bArr4[bArr5[3] & UnsignedBytes.MAX_VALUE];
                        b3 = bArr4[bArr5[2] & UnsignedBytes.MAX_VALUE];
                        b2 = bArr4[bArr5[1] & UnsignedBytes.MAX_VALUE];
                        b5 = bArr4[bArr5[0] & UnsignedBytes.MAX_VALUE];
                    }
                    if (i != 2) {
                        if (i != 3) {
                            outputStream.write((byte) (((b5 << 2) & 252) | (3 & (b2 >>> 4))));
                            i3 = (b2 << 4) & 240;
                            i4 = (b3 >>> 2) & 15;
                        } else {
                            if (i != 4) {
                                return;
                            }
                            outputStream.write((byte) (((b5 << 2) & 252) | ((b2 >>> 4) & 3)));
                            outputStream.write((byte) (((b2 << 4) & 240) | ((b3 >>> 2) & 15)));
                            i3 = (b3 << 6) & 192;
                            i4 = b4 & Utf8.REPLACEMENT_BYTE;
                        }
                        i2 = i3 | i4;
                    } else {
                        i2 = ((b2 >>> 4) & 3) | ((b5 << 2) & 252);
                    }
                    outputStream.write((byte) i2);
                    return;
                }
                byte[] bArr6 = c;
                byte[] bArr7 = this.f13518a;
                b2 = bArr6[bArr7[1] & UnsignedBytes.MAX_VALUE];
                b5 = bArr6[bArr7[0] & UnsignedBytes.MAX_VALUE];
                b4 = -1;
                b3 = -1;
                if (i != 2) {
                    if (i != 3) {
                        outputStream.write((byte) (((b5 << 2) & 252) | (3 & (b2 >>> 4))));
                        i3 = (b2 << 4) & 240;
                        i4 = (b3 >>> 2) & 15;
                    } else {
                        if (i != 4) {
                            return;
                        }
                        outputStream.write((byte) (((b5 << 2) & 252) | ((b2 >>> 4) & 3)));
                        outputStream.write((byte) (((b2 << 4) & 240) | ((b3 >>> 2) & 15)));
                        i3 = (b3 << 6) & 192;
                        i4 = b4 & Utf8.REPLACEMENT_BYTE;
                    }
                    i2 = i3 | i4;
                } else {
                    i2 = ((b2 >>> 4) & 3) | ((b5 << 2) & 252);
                }
                outputStream.write((byte) i2);
                return;
            }
        }
    }

    @Override // com.mobile.auth.l.d
    protected int b() {
        return 72;
    }
}
