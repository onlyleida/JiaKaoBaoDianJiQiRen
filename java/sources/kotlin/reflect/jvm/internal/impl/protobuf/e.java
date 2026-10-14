package kotlin.reflect.jvm.internal.impl.protobuf;

import cn.mucang.sundial.android.tcp.data.gnss.AlarmInfo;
import com.google.common.base.Ascii;
import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayList;

/* JADX INFO: loaded from: classes6.dex */
public final class e {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final byte[] f15417a;
    private final boolean b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f15418d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private int f15419e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final InputStream f15420f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f15421g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private boolean f15422h;
    private int i;
    private int j;
    private int k;
    private int l;
    private int m;
    private a n;

    private interface a {
        void a();
    }

    private e(InputStream inputStream) {
        this.f15422h = false;
        this.j = Integer.MAX_VALUE;
        this.l = 64;
        this.m = AlarmInfo.VEHICLE_STOLEN;
        this.n = null;
        this.f15417a = new byte[4096];
        this.c = 0;
        this.f15419e = 0;
        this.i = 0;
        this.f15420f = inputStream;
        this.b = false;
    }

    public static int B(int i, InputStream inputStream) throws IOException {
        if ((i & 128) == 0) {
            return i;
        }
        int i2 = i & 127;
        int i3 = 7;
        while (i3 < 32) {
            int i4 = inputStream.read();
            if (i4 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            i2 |= (i4 & 127) << i3;
            if ((i4 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        while (i3 < 64) {
            int i5 = inputStream.read();
            if (i5 == -1) {
                throw InvalidProtocolBufferException.truncatedMessage();
            }
            if ((i5 & 128) == 0) {
                return i2;
            }
            i3 += 7;
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    private void N() {
        int i = this.c + this.f15418d;
        this.c = i;
        int i2 = this.i + i;
        int i3 = this.j;
        if (i2 <= i3) {
            this.f15418d = 0;
            return;
        }
        int i4 = i2 - i3;
        this.f15418d = i4;
        this.c = i - i4;
    }

    private void O(int i) throws IOException {
        if (!T(i)) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
    }

    private void S(int i) throws IOException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = this.i;
        int i3 = this.f15419e;
        int i4 = i2 + i3 + i;
        int i5 = this.j;
        if (i4 > i5) {
            R((i5 - i2) - i3);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        int i6 = this.c;
        int i7 = i6 - i3;
        this.f15419e = i6;
        O(1);
        while (true) {
            int i8 = i - i7;
            int i9 = this.c;
            if (i8 <= i9) {
                this.f15419e = i8;
                return;
            } else {
                i7 += i9;
                this.f15419e = i9;
                O(1);
            }
        }
    }

    private boolean T(int i) throws IOException {
        int i2 = this.f15419e;
        if (i2 + i <= this.c) {
            StringBuilder sb = new StringBuilder(77);
            sb.append("refillBuffer() called when ");
            sb.append(i);
            sb.append(" bytes were already available in buffer");
            throw new IllegalStateException(sb.toString());
        }
        if (this.i + i2 + i > this.j) {
            return false;
        }
        a aVar = this.n;
        if (aVar != null) {
            aVar.a();
        }
        if (this.f15420f != null) {
            int i3 = this.f15419e;
            if (i3 > 0) {
                int i4 = this.c;
                if (i4 > i3) {
                    byte[] bArr = this.f15417a;
                    System.arraycopy(bArr, i3, bArr, 0, i4 - i3);
                }
                this.i += i3;
                this.c -= i3;
                this.f15419e = 0;
            }
            InputStream inputStream = this.f15420f;
            byte[] bArr2 = this.f15417a;
            int i5 = this.c;
            int i6 = inputStream.read(bArr2, i5, bArr2.length - i5);
            if (i6 == 0 || i6 < -1 || i6 > this.f15417a.length) {
                StringBuilder sb2 = new StringBuilder(102);
                sb2.append("InputStream#read(byte[]) returned invalid result: ");
                sb2.append(i6);
                sb2.append("\nThe InputStream implementation is buggy.");
                throw new IllegalStateException(sb2.toString());
            }
            if (i6 > 0) {
                this.c += i6;
                if ((this.i + i) - this.m > 0) {
                    throw InvalidProtocolBufferException.sizeLimitExceeded();
                }
                N();
                if (this.c >= i) {
                    return true;
                }
                return T(i);
            }
        }
        return false;
    }

    public static int b(int i) {
        return (-(i & 1)) ^ (i >>> 1);
    }

    public static long c(long j) {
        return (-(j & 1)) ^ (j >>> 1);
    }

    private void d(int i) throws IOException {
        if (this.c - this.f15419e < i) {
            O(i);
        }
    }

    public static e g(InputStream inputStream) {
        return new e(inputStream);
    }

    static e h(m mVar) {
        e eVar = new e(mVar);
        try {
            eVar.j(mVar.size());
            return eVar;
        } catch (InvalidProtocolBufferException e2) {
            throw new IllegalArgumentException(e2);
        }
    }

    private byte[] x(int i) throws IOException {
        if (i <= 0) {
            if (i == 0) {
                return h.f15428a;
            }
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = this.i;
        int i3 = this.f15419e;
        int i4 = i2 + i3 + i;
        int i5 = this.j;
        if (i4 > i5) {
            R((i5 - i2) - i3);
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        if (i < 4096) {
            byte[] bArr = new byte[i];
            int i6 = this.c - i3;
            System.arraycopy(this.f15417a, i3, bArr, 0, i6);
            this.f15419e = this.c;
            int i7 = i - i6;
            d(i7);
            System.arraycopy(this.f15417a, 0, bArr, i6, i7);
            this.f15419e = i7;
            return bArr;
        }
        int i8 = this.c;
        this.i = i2 + i8;
        this.f15419e = 0;
        this.c = 0;
        int length = i8 - i3;
        int i9 = i - length;
        ArrayList<byte[]> arrayList = new ArrayList();
        while (i9 > 0) {
            int iMin = Math.min(i9, 4096);
            byte[] bArr2 = new byte[iMin];
            int i10 = 0;
            while (i10 < iMin) {
                InputStream inputStream = this.f15420f;
                int i11 = inputStream == null ? -1 : inputStream.read(bArr2, i10, iMin - i10);
                if (i11 == -1) {
                    throw InvalidProtocolBufferException.truncatedMessage();
                }
                this.i += i11;
                i10 += i11;
            }
            i9 -= iMin;
            arrayList.add(bArr2);
        }
        byte[] bArr3 = new byte[i];
        System.arraycopy(this.f15417a, i3, bArr3, 0, length);
        for (byte[] bArr4 : arrayList) {
            System.arraycopy(bArr4, 0, bArr3, length, bArr4.length);
            length += bArr4.length;
        }
        return bArr3;
    }

    /* JADX WARN: Code restructure failed: missing block: B:34:0x007a, code lost:
    
        if (r2[r3] < 0) goto L35;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public int A() throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.f15419e
            int r1 = r9.c
            if (r1 != r0) goto L8
            goto L7c
        L8:
            byte[] r2 = r9.f15417a
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L13
            r9.f15419e = r3
            return r0
        L13:
            int r1 = r1 - r3
            r4 = 9
            if (r1 >= r4) goto L19
            goto L7c
        L19:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            long r3 = (long) r0
            r5 = 0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L2d
            r5 = -128(0xffffffffffffff80, double:NaN)
        L29:
            long r2 = r3 ^ r5
            int r0 = (int) r2
            goto L82
        L2d:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            r0 = r0 ^ r1
            long r7 = (long) r0
            int r1 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r1 < 0) goto L3f
            r0 = 16256(0x3f80, double:8.0315E-320)
            long r0 = r0 ^ r7
            int r0 = (int) r0
        L3d:
            r1 = r3
            goto L82
        L3f:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 21
            r0 = r0 ^ r3
            long r3 = (long) r0
            int r7 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r7 >= 0) goto L4f
            r5 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L29
        L4f:
            int r3 = r1 + 1
            r1 = r2[r1]
            int r4 = r1 << 28
            r0 = r0 ^ r4
            long r4 = (long) r0
            r6 = 266354560(0xfe03f80, double:1.315966377E-315)
            long r4 = r4 ^ r6
            int r0 = (int) r4
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L82
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r3 = r2[r3]
            if (r3 >= 0) goto L82
            int r3 = r1 + 1
            r1 = r2[r1]
            if (r1 >= 0) goto L3d
            int r1 = r3 + 1
            r2 = r2[r3]
            if (r2 >= 0) goto L82
        L7c:
            long r0 = r9.D()
            int r1 = (int) r0
            return r1
        L82:
            r9.f15419e = r1
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.e.A():int");
    }

    /* JADX WARN: Code restructure failed: missing block: B:38:0x00b6, code lost:
    
        if (r2[r0] < 0) goto L39;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public long C() throws java.io.IOException {
        /*
            r9 = this;
            int r0 = r9.f15419e
            int r1 = r9.c
            if (r1 != r0) goto L8
            goto Lb8
        L8:
            byte[] r2 = r9.f15417a
            int r3 = r0 + 1
            r0 = r2[r0]
            if (r0 < 0) goto L14
            r9.f15419e = r3
            long r0 = (long) r0
            return r0
        L14:
            int r1 = r1 - r3
            r4 = 9
            if (r1 >= r4) goto L1b
            goto Lb8
        L1b:
            int r1 = r3 + 1
            r3 = r2[r3]
            int r3 = r3 << 7
            r0 = r0 ^ r3
            long r3 = (long) r0
            r5 = 0
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L2f
            r5 = -128(0xffffffffffffff80, double:NaN)
        L2b:
            long r2 = r3 ^ r5
            goto Lbf
        L2f:
            int r0 = r1 + 1
            r1 = r2[r1]
            int r1 = r1 << 14
            long r7 = (long) r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L42
            r1 = 16256(0x3f80, double:8.0315E-320)
        L3d:
            long r2 = r3 ^ r1
            r1 = r0
            goto Lbf
        L42:
            int r1 = r0 + 1
            r0 = r2[r0]
            int r0 = r0 << 21
            long r7 = (long) r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L52
            r5 = -2080896(0xffffffffffe03f80, double:NaN)
            goto L2b
        L52:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 28
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L63
            r1 = 266354560(0xfe03f80, double:1.315966377E-315)
            goto L3d
        L63:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 35
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L76
            r5 = -34093383808(0xfffffff80fe03f80, double:NaN)
            goto L2b
        L76:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 42
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 < 0) goto L89
            r1 = 4363953127296(0x3f80fe03f80, double:2.1560793202584E-311)
            goto L3d
        L89:
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            r0 = 49
            long r7 = r7 << r0
            long r3 = r3 ^ r7
            int r0 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r0 >= 0) goto L9c
            r5 = -558586000294016(0xfffe03f80fe03f80, double:NaN)
            goto L2b
        L9c:
            int r0 = r1 + 1
            r1 = r2[r1]
            long r7 = (long) r1
            r1 = 56
            long r7 = r7 << r1
            long r3 = r3 ^ r7
            r7 = 71499008037633920(0xfe03f80fe03f80, double:6.838959413692434E-304)
            long r3 = r3 ^ r7
            int r1 = (r3 > r5 ? 1 : (r3 == r5 ? 0 : -1))
            if (r1 >= 0) goto Lbd
            int r1 = r0 + 1
            r0 = r2[r0]
            long r7 = (long) r0
            int r0 = (r7 > r5 ? 1 : (r7 == r5 ? 0 : -1))
            if (r0 >= 0) goto Lbe
        Lb8:
            long r0 = r9.D()
            return r0
        Lbd:
            r1 = r0
        Lbe:
            r2 = r3
        Lbf:
            r9.f15419e = r1
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: kotlin.reflect.jvm.internal.impl.protobuf.e.C():long");
    }

    long D() throws IOException {
        long j = 0;
        for (int i = 0; i < 64; i += 7) {
            byte bW = w();
            j |= ((long) (bW & Ascii.DEL)) << i;
            if ((bW & UnsignedBytes.MAX_POWER_OF_TWO) == 0) {
                return j;
            }
        }
        throw InvalidProtocolBufferException.malformedVarint();
    }

    public int E() throws IOException {
        return y();
    }

    public long F() throws IOException {
        return z();
    }

    public int G() throws IOException {
        return b(A());
    }

    public long H() throws IOException {
        return c(C());
    }

    public String I() throws IOException {
        int iA = A();
        if (iA > this.c - this.f15419e || iA <= 0) {
            return iA == 0 ? "" : new String(x(iA), "UTF-8");
        }
        String str = new String(this.f15417a, this.f15419e, iA, "UTF-8");
        this.f15419e += iA;
        return str;
    }

    public String J() throws IOException {
        byte[] bArrX;
        int iA = A();
        int i = this.f15419e;
        if (iA <= this.c - i && iA > 0) {
            bArrX = this.f15417a;
            this.f15419e = i + iA;
        } else {
            if (iA == 0) {
                return "";
            }
            bArrX = x(iA);
            i = 0;
        }
        if (u.f(bArrX, i, i + iA)) {
            return new String(bArrX, i, iA, "UTF-8");
        }
        throw InvalidProtocolBufferException.invalidUtf8();
    }

    public int K() throws IOException {
        if (f()) {
            this.f15421g = 0;
            return 0;
        }
        int iA = A();
        this.f15421g = iA;
        if (WireFormat.a(iA) != 0) {
            return this.f15421g;
        }
        throw InvalidProtocolBufferException.invalidTag();
    }

    public int L() throws IOException {
        return A();
    }

    public long M() throws IOException {
        return C();
    }

    public boolean P(int i, CodedOutputStream codedOutputStream) throws IOException {
        int iB = WireFormat.b(i);
        if (iB == 0) {
            long jT = t();
            codedOutputStream.o0(i);
            codedOutputStream.z0(jT);
            return true;
        }
        if (iB == 1) {
            long jZ = z();
            codedOutputStream.o0(i);
            codedOutputStream.V(jZ);
            return true;
        }
        if (iB == 2) {
            d dVarL = l();
            codedOutputStream.o0(i);
            codedOutputStream.P(dVarL);
            return true;
        }
        if (iB == 3) {
            codedOutputStream.o0(i);
            Q(codedOutputStream);
            int iC = WireFormat.c(WireFormat.a(i), 4);
            a(iC);
            codedOutputStream.o0(iC);
            return true;
        }
        if (iB == 4) {
            return false;
        }
        if (iB != 5) {
            throw InvalidProtocolBufferException.invalidWireType();
        }
        int iY = y();
        codedOutputStream.o0(i);
        codedOutputStream.U(iY);
        return true;
    }

    public void Q(CodedOutputStream codedOutputStream) throws IOException {
        int iK;
        do {
            iK = K();
            if (iK == 0) {
                return;
            }
        } while (P(iK, codedOutputStream));
    }

    public void R(int i) throws IOException {
        int i2 = this.c;
        int i3 = this.f15419e;
        if (i > i2 - i3 || i < 0) {
            S(i);
        } else {
            this.f15419e = i3 + i;
        }
    }

    public void a(int i) throws InvalidProtocolBufferException {
        if (this.f15421g != i) {
            throw InvalidProtocolBufferException.invalidEndTag();
        }
    }

    public int e() {
        int i = this.j;
        if (i == Integer.MAX_VALUE) {
            return -1;
        }
        return i - (this.i + this.f15419e);
    }

    public boolean f() throws IOException {
        return this.f15419e == this.c && !T(1);
    }

    public void i(int i) {
        this.j = i;
        N();
    }

    public int j(int i) throws InvalidProtocolBufferException {
        if (i < 0) {
            throw InvalidProtocolBufferException.negativeSize();
        }
        int i2 = i + this.i + this.f15419e;
        int i3 = this.j;
        if (i2 > i3) {
            throw InvalidProtocolBufferException.truncatedMessage();
        }
        this.j = i2;
        N();
        return i3;
    }

    public boolean k() throws IOException {
        return C() != 0;
    }

    public d l() throws IOException {
        int iA = A();
        int i = this.c;
        int i2 = this.f15419e;
        if (iA > i - i2 || iA <= 0) {
            return iA == 0 ? d.f15412a : new m(x(iA));
        }
        d cVar = (this.b && this.f15422h) ? new c(this.f15417a, this.f15419e, iA) : d.j(this.f15417a, i2, iA);
        this.f15419e += iA;
        return cVar;
    }

    public double m() throws IOException {
        return Double.longBitsToDouble(z());
    }

    public int n() throws IOException {
        return A();
    }

    public int o() throws IOException {
        return y();
    }

    public long p() throws IOException {
        return z();
    }

    public float q() throws IOException {
        return Float.intBitsToFloat(y());
    }

    public void r(int i, n.a aVar, f fVar) throws IOException {
        int i2 = this.k;
        if (i2 >= this.l) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        this.k = i2 + 1;
        aVar.a(this, fVar);
        a(WireFormat.c(i, 4));
        this.k--;
    }

    public int s() throws IOException {
        return A();
    }

    public long t() throws IOException {
        return C();
    }

    public <T extends n> T u(p<T> pVar, f fVar) throws IOException {
        int iA = A();
        if (this.k >= this.l) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int iJ = j(iA);
        this.k++;
        T tC = pVar.c(this, fVar);
        a(0);
        this.k--;
        i(iJ);
        return tC;
    }

    public void v(n.a aVar, f fVar) throws IOException {
        int iA = A();
        if (this.k >= this.l) {
            throw InvalidProtocolBufferException.recursionLimitExceeded();
        }
        int iJ = j(iA);
        this.k++;
        aVar.a(this, fVar);
        a(0);
        this.k--;
        i(iJ);
    }

    public byte w() throws IOException {
        if (this.f15419e == this.c) {
            O(1);
        }
        byte[] bArr = this.f15417a;
        int i = this.f15419e;
        this.f15419e = i + 1;
        return bArr[i];
    }

    public int y() throws IOException {
        int i = this.f15419e;
        if (this.c - i < 4) {
            O(4);
            i = this.f15419e;
        }
        byte[] bArr = this.f15417a;
        this.f15419e = i + 4;
        return ((bArr[i + 3] & UnsignedBytes.MAX_VALUE) << 24) | (bArr[i] & UnsignedBytes.MAX_VALUE) | ((bArr[i + 1] & UnsignedBytes.MAX_VALUE) << 8) | ((bArr[i + 2] & UnsignedBytes.MAX_VALUE) << 16);
    }

    public long z() throws IOException {
        int i = this.f15419e;
        if (this.c - i < 8) {
            O(8);
            i = this.f15419e;
        }
        byte[] bArr = this.f15417a;
        this.f15419e = i + 8;
        return ((((long) bArr[i + 7]) & 255) << 56) | (((long) bArr[i]) & 255) | ((((long) bArr[i + 1]) & 255) << 8) | ((((long) bArr[i + 2]) & 255) << 16) | ((((long) bArr[i + 3]) & 255) << 24) | ((((long) bArr[i + 4]) & 255) << 32) | ((((long) bArr[i + 5]) & 255) << 40) | ((((long) bArr[i + 6]) & 255) << 48);
    }

    private e(m mVar) {
        this.f15422h = false;
        this.j = Integer.MAX_VALUE;
        this.l = 64;
        this.m = AlarmInfo.VEHICLE_STOLEN;
        this.n = null;
        this.f15417a = mVar.b;
        int iE = mVar.E();
        this.f15419e = iE;
        this.c = iE + mVar.size();
        this.i = -this.f15419e;
        this.f15420f = null;
        this.b = true;
    }
}
