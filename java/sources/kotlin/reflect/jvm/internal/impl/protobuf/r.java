package kotlin.reflect.jvm.internal.impl.protobuf;

import com.google.common.primitives.UnsignedBytes;
import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.NoSuchElementException;
import java.util.Objects;
import java.util.Stack;

/* JADX INFO: loaded from: classes6.dex */
class r extends kotlin.reflect.jvm.internal.impl.protobuf.d {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private static final int[] f15436h;
    private final int b;
    private final kotlin.reflect.jvm.internal.impl.protobuf.d c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.protobuf.d f15437d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f15438e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final int f15439f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private int f15440g;

    private static class b {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Stack<kotlin.reflect.jvm.internal.impl.protobuf.d> f15441a;

        private b() {
            this.f15441a = new Stack<>();
        }

        /* JADX INFO: Access modifiers changed from: private */
        public kotlin.reflect.jvm.internal.impl.protobuf.d b(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
            c(dVar);
            c(dVar2);
            kotlin.reflect.jvm.internal.impl.protobuf.d dVarPop = this.f15441a.pop();
            while (!this.f15441a.isEmpty()) {
                dVarPop = new r(this.f15441a.pop(), dVarPop);
            }
            return dVarPop;
        }

        private void c(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            if (dVar.p()) {
                e(dVar);
                return;
            }
            if (dVar instanceof r) {
                r rVar = (r) dVar;
                c(rVar.c);
                c(rVar.f15437d);
            } else {
                String strValueOf = String.valueOf(String.valueOf(dVar.getClass()));
                StringBuilder sb = new StringBuilder(strValueOf.length() + 49);
                sb.append("Has a new type of ByteString been created? Found ");
                sb.append(strValueOf);
                throw new IllegalArgumentException(sb.toString());
            }
        }

        private int d(int i) {
            int iBinarySearch = Arrays.binarySearch(r.f15436h, i);
            return iBinarySearch < 0 ? (-(iBinarySearch + 1)) - 1 : iBinarySearch;
        }

        private void e(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            int iD = d(dVar.size());
            int i = r.f15436h[iD + 1];
            if (this.f15441a.isEmpty() || this.f15441a.peek().size() >= i) {
                this.f15441a.push(dVar);
                return;
            }
            int i2 = r.f15436h[iD];
            kotlin.reflect.jvm.internal.impl.protobuf.d dVarPop = this.f15441a.pop();
            while (true) {
                if (this.f15441a.isEmpty() || this.f15441a.peek().size() >= i2) {
                    break;
                } else {
                    dVarPop = new r(this.f15441a.pop(), dVarPop);
                }
            }
            r rVar = new r(dVarPop, dVar);
            while (!this.f15441a.isEmpty()) {
                if (this.f15441a.peek().size() >= r.f15436h[d(rVar.size()) + 1]) {
                    break;
                } else {
                    rVar = new r(this.f15441a.pop(), rVar);
                }
            }
            this.f15441a.push(rVar);
        }
    }

    private static class c implements Iterator<m> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Stack<r> f15442a;
        private m b;

        private m b(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            while (dVar instanceof r) {
                r rVar = (r) dVar;
                this.f15442a.push(rVar);
                dVar = rVar.c;
            }
            return (m) dVar;
        }

        private m c() {
            while (!this.f15442a.isEmpty()) {
                m mVarB = b(this.f15442a.pop().f15437d);
                if (!mVarB.isEmpty()) {
                    return mVarB;
                }
            }
            return null;
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public m next() {
            m mVar = this.b;
            if (mVar == null) {
                throw new NoSuchElementException();
            }
            this.b = c();
            return mVar;
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.b != null;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private c(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
            this.f15442a = new Stack<>();
            this.b = b(dVar);
        }
    }

    private class d implements kotlin.reflect.jvm.internal.impl.protobuf.d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final c f15443a;
        private kotlin.reflect.jvm.internal.impl.protobuf.d.a b;
        int c;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.d.a
        public byte a() {
            if (!this.b.hasNext()) {
                this.b = this.f15443a.next().iterator();
            }
            this.c--;
            return this.b.a();
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.c > 0;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private d(r rVar) {
            c cVar = new c(rVar);
            this.f15443a = cVar;
            this.b = cVar.next().iterator();
            this.c = rVar.size();
        }
    }

    static {
        ArrayList arrayList = new ArrayList();
        int i = 1;
        int i2 = 1;
        while (i > 0) {
            arrayList.add(Integer.valueOf(i));
            int i3 = i2 + i;
            i2 = i;
            i = i3;
        }
        arrayList.add(Integer.MAX_VALUE);
        f15436h = new int[arrayList.size()];
        int i4 = 0;
        while (true) {
            int[] iArr = f15436h;
            if (i4 >= iArr.length) {
                return;
            }
            iArr[i4] = ((Integer) arrayList.get(i4)).intValue();
            i4++;
        }
    }

    static kotlin.reflect.jvm.internal.impl.protobuf.d F(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
        r rVar = dVar instanceof r ? (r) dVar : null;
        if (dVar2.size() == 0) {
            return dVar;
        }
        if (dVar.size() != 0) {
            int size = dVar.size() + dVar2.size();
            if (size < 128) {
                return G(dVar, dVar2);
            }
            if (rVar != null && rVar.f15437d.size() + dVar2.size() < 128) {
                dVar2 = new r(rVar.c, G(rVar.f15437d, dVar2));
            } else {
                if (rVar == null || rVar.c.o() <= rVar.f15437d.o() || rVar.o() <= dVar2.o()) {
                    return size >= f15436h[Math.max(dVar.o(), dVar2.o()) + 1] ? new r(dVar, dVar2) : new b().b(dVar, dVar2);
                }
                dVar2 = new r(rVar.c, new r(rVar.f15437d, dVar2));
            }
        }
        return dVar2;
    }

    private static m G(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
        int size = dVar.size();
        int size2 = dVar2.size();
        byte[] bArr = new byte[size + size2];
        dVar.m(bArr, 0, 0, size);
        dVar2.m(bArr, 0, size, size2);
        return new m(bArr);
    }

    private boolean H(kotlin.reflect.jvm.internal.impl.protobuf.d dVar) {
        c cVar = new c(this);
        m next = cVar.next();
        c cVar2 = new c(dVar);
        m next2 = cVar2.next();
        int i = 0;
        int i2 = 0;
        int i3 = 0;
        while (true) {
            int size = next.size() - i;
            int size2 = next2.size() - i2;
            int iMin = Math.min(size, size2);
            if (!(i == 0 ? next.D(next2, i2, iMin) : next2.D(next, i, iMin))) {
                return false;
            }
            i3 += iMin;
            int i4 = this.b;
            if (i3 >= i4) {
                if (i3 == i4) {
                    return true;
                }
                throw new IllegalStateException();
            }
            if (iMin == size) {
                next = cVar.next();
                i = 0;
            } else {
                i += iMin;
            }
            if (iMin == size2) {
                next2 = cVar2.next();
                i2 = 0;
            } else {
                i2 += iMin;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    void B(OutputStream outputStream, int i, int i2) throws IOException {
        int i3 = i + i2;
        int i4 = this.f15438e;
        if (i3 <= i4) {
            this.c.B(outputStream, i, i2);
        } else {
            if (i >= i4) {
                this.f15437d.B(outputStream, i - i4, i2);
                return;
            }
            int i5 = i4 - i;
            this.c.B(outputStream, i, i5);
            this.f15437d.B(outputStream, 0, i2 - i5);
        }
    }

    public boolean equals(Object obj) {
        int iW;
        if (obj == this) {
            return true;
        }
        if (!(obj instanceof kotlin.reflect.jvm.internal.impl.protobuf.d)) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.protobuf.d dVar = (kotlin.reflect.jvm.internal.impl.protobuf.d) obj;
        if (this.b != dVar.size()) {
            return false;
        }
        if (this.b == 0) {
            return true;
        }
        if (this.f15440g == 0 || (iW = dVar.w()) == 0 || this.f15440g == iW) {
            return H(dVar);
        }
        return false;
    }

    public int hashCode() {
        int iU = this.f15440g;
        if (iU == 0) {
            int i = this.b;
            iU = u(i, 0, i);
            if (iU == 0) {
                iU = 1;
            }
            this.f15440g = iU;
        }
        return iU;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected void n(byte[] bArr, int i, int i2, int i3) {
        int i4 = i + i3;
        int i5 = this.f15438e;
        if (i4 <= i5) {
            this.c.n(bArr, i, i2, i3);
        } else {
            if (i >= i5) {
                this.f15437d.n(bArr, i - i5, i2, i3);
                return;
            }
            int i6 = i5 - i;
            this.c.n(bArr, i, i2, i6);
            this.f15437d.n(bArr, 0, i2 + i6, i3 - i6);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int o() {
        return this.f15439f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected boolean p() {
        return this.b >= f15436h[this.f15439f];
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public boolean q() {
        int iV = this.c.v(0, 0, this.f15438e);
        kotlin.reflect.jvm.internal.impl.protobuf.d dVar = this.f15437d;
        return dVar.v(iV, 0, dVar.size()) == 0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d, java.lang.Iterable
    /* JADX INFO: renamed from: r */
    public kotlin.reflect.jvm.internal.impl.protobuf.d.a iterator() {
        return new d();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public kotlin.reflect.jvm.internal.impl.protobuf.e s() {
        return kotlin.reflect.jvm.internal.impl.protobuf.e.g(new e());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public int size() {
        return this.b;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int u(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.f15438e;
        if (i4 <= i5) {
            return this.c.u(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.f15437d.u(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.f15437d.u(this.c.u(i, i2, i6), 0, i3 - i6);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int v(int i, int i2, int i3) {
        int i4 = i2 + i3;
        int i5 = this.f15438e;
        if (i4 <= i5) {
            return this.c.v(i, i2, i3);
        }
        if (i2 >= i5) {
            return this.f15437d.v(i, i2 - i5, i3);
        }
        int i6 = i5 - i2;
        return this.f15437d.v(this.c.v(i, i2, i6), 0, i3 - i6);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    protected int w() {
        return this.f15440g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.d
    public String y(String str) throws UnsupportedEncodingException {
        return new String(x(), str);
    }

    private r(kotlin.reflect.jvm.internal.impl.protobuf.d dVar, kotlin.reflect.jvm.internal.impl.protobuf.d dVar2) {
        this.f15440g = 0;
        this.c = dVar;
        this.f15437d = dVar2;
        int size = dVar.size();
        this.f15438e = size;
        this.b = size + dVar2.size();
        this.f15439f = Math.max(dVar.o(), dVar2.o()) + 1;
    }

    private class e extends InputStream {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private c f15444a;
        private m b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f15445d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15446e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private int f15447f;

        public e() {
            b();
        }

        private void a() {
            if (this.b != null) {
                int i = this.f15445d;
                int i2 = this.c;
                if (i == i2) {
                    this.f15446e += i2;
                    this.f15445d = 0;
                    if (!this.f15444a.hasNext()) {
                        this.b = null;
                        this.c = 0;
                    } else {
                        m next = this.f15444a.next();
                        this.b = next;
                        this.c = next.size();
                    }
                }
            }
        }

        private void b() {
            c cVar = new c(r.this);
            this.f15444a = cVar;
            m next = cVar.next();
            this.b = next;
            this.c = next.size();
            this.f15445d = 0;
            this.f15446e = 0;
        }

        private int c(byte[] bArr, int i, int i2) {
            int i3 = i2;
            while (i3 > 0) {
                a();
                if (this.b == null) {
                    if (i3 != i2) {
                        break;
                    }
                    return -1;
                }
                int iMin = Math.min(this.c - this.f15445d, i3);
                if (bArr != null) {
                    this.b.m(bArr, this.f15445d, i, iMin);
                    i += iMin;
                }
                this.f15445d += iMin;
                i3 -= iMin;
            }
            return i2 - i3;
        }

        @Override // java.io.InputStream
        public int available() throws IOException {
            return r.this.size() - (this.f15446e + this.f15445d);
        }

        @Override // java.io.InputStream
        public void mark(int i) {
            this.f15447f = this.f15446e + this.f15445d;
        }

        @Override // java.io.InputStream
        public boolean markSupported() {
            return true;
        }

        @Override // java.io.InputStream
        public int read(byte[] bArr, int i, int i2) {
            Objects.requireNonNull(bArr);
            if (i < 0 || i2 < 0 || i2 > bArr.length - i) {
                throw new IndexOutOfBoundsException();
            }
            return c(bArr, i, i2);
        }

        @Override // java.io.InputStream
        public synchronized void reset() {
            b();
            c(null, 0, this.f15447f);
        }

        @Override // java.io.InputStream
        public long skip(long j) {
            if (j < 0) {
                throw new IndexOutOfBoundsException();
            }
            if (j > 2147483647L) {
                j = 2147483647L;
            }
            return c(null, 0, (int) j);
        }

        @Override // java.io.InputStream
        public int read() throws IOException {
            a();
            m mVar = this.b;
            if (mVar == null) {
                return -1;
            }
            int i = this.f15445d;
            this.f15445d = i + 1;
            return mVar.C(i) & UnsignedBytes.MAX_VALUE;
        }
    }
}
