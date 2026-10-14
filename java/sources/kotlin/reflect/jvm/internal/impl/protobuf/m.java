package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.NoSuchElementException;

/* JADX INFO: loaded from: classes6.dex */
class m extends d {
    protected final byte[] b;
    private int c = 0;

    private class b implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15435a;
        private final int b;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.d.a
        public byte a() {
            try {
                byte[] bArr = m.this.b;
                int i = this.f15435a;
                this.f15435a = i + 1;
                return bArr[i];
            } catch (ArrayIndexOutOfBoundsException e2) {
                throw new NoSuchElementException(e2.getMessage());
            }
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15435a < this.b;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private b() {
            this.f15435a = 0;
            this.b = m.this.size();
        }
    }

    m(byte[] bArr) {
        this.b = bArr;
    }

    static int F(int i, byte[] bArr, int i2, int i3) {
        for (int i4 = i2; i4 < i2 + i3; i4++) {
            i = (i * 31) + bArr[i4];
        }
        return i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    void B(OutputStream outputStream, int i, int i2) throws IOException {
        outputStream.write(this.b, E() + i, i2);
    }

    public byte C(int i) {
        return this.b[i];
    }

    boolean D(m mVar, int i, int i2) {
        if (i2 > mVar.size()) {
            int size = size();
            StringBuilder sb = new StringBuilder(40);
            sb.append("Length too large: ");
            sb.append(i2);
            sb.append(size);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i + i2 > mVar.size()) {
            int size2 = mVar.size();
            StringBuilder sb2 = new StringBuilder(59);
            sb2.append("Ran off end of other: ");
            sb2.append(i);
            sb2.append(", ");
            sb2.append(i2);
            sb2.append(", ");
            sb2.append(size2);
            throw new IllegalArgumentException(sb2.toString());
        }
        byte[] bArr = this.b;
        byte[] bArr2 = mVar.b;
        int iE = E() + i2;
        int iE2 = E();
        int iE3 = mVar.E() + i;
        while (iE2 < iE) {
            if (bArr[iE2] != bArr2[iE3]) {
                return false;
            }
            iE2++;
            iE3++;
        }
        return true;
    }

    protected int E() {
        return 0;
    }

    public boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof d) || size() != ((d) obj).size()) {
            return false;
        }
        if (size() == 0) {
            return true;
        }
        if (obj instanceof m) {
            return D((m) obj, 0, size());
        }
        if (obj instanceof r) {
            return obj.equals(this);
        }
        String strValueOf = String.valueOf(String.valueOf(obj.getClass()));
        StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
        sb.append("Has a new type of ByteString been created? Found ");
        sb.append(strValueOf);
        throw new IllegalArgumentException(sb.toString());
    }

    public int hashCode() {
        int iU = this.c;
        if (iU == 0) {
            int size = size();
            iU = u(size, 0, size);
            if (iU == 0) {
                iU = 1;
            }
            this.c = iU;
        }
        return iU;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected void n(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.b, i, bArr, i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int o() {
        return 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected boolean p() {
        return true;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public boolean q() {
        int iE = E();
        return u.f(this.b, iE, size() + iE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d, java.lang.Iterable
    /* JADX INFO: renamed from: r, reason: merged with bridge method [inline-methods] */
    public d.a iterator() {
        return new b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public e s() {
        return e.h(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public int size() {
        return this.b.length;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int u(int i, int i2, int i3) {
        return F(i, this.b, E() + i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int v(int i, int i2, int i3) {
        int iE = E() + i2;
        return u.g(i, this.b, iE, i3 + iE);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int w() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public String y(String str) throws UnsupportedEncodingException {
        return new String(this.b, E(), size(), str);
    }
}
