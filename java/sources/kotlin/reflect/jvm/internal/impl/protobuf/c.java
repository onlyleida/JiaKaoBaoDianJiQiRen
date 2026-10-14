package kotlin.reflect.jvm.internal.impl.protobuf;

import java.util.NoSuchElementException;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
class c extends m {

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final int f15409d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final int f15410e;

    private class b implements d.a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private int f15411a;
        private final int b;

        @Override // kotlin.reflect.jvm.internal.impl.protobuf.d.a
        public byte a() {
            int i = this.f15411a;
            if (i >= this.b) {
                throw new NoSuchElementException();
            }
            byte[] bArr = c.this.b;
            this.f15411a = i + 1;
            return bArr[i];
        }

        @Override // java.util.Iterator
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public Byte next() {
            return Byte.valueOf(a());
        }

        @Override // java.util.Iterator
        public boolean hasNext() {
            return this.f15411a < this.b;
        }

        @Override // java.util.Iterator
        public void remove() {
            throw new UnsupportedOperationException();
        }

        private b() {
            int iE = c.this.E();
            this.f15411a = iE;
            this.b = iE + c.this.size();
        }
    }

    c(byte[] bArr, int i, int i2) {
        super(bArr);
        if (i < 0) {
            StringBuilder sb = new StringBuilder(29);
            sb.append("Offset too small: ");
            sb.append(i);
            throw new IllegalArgumentException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(29);
            sb2.append("Length too small: ");
            sb2.append(i);
            throw new IllegalArgumentException(sb2.toString());
        }
        if (((long) i) + ((long) i2) <= bArr.length) {
            this.f15409d = i;
            this.f15410e = i2;
            return;
        }
        StringBuilder sb3 = new StringBuilder(48);
        sb3.append("Offset+Length too large: ");
        sb3.append(i);
        sb3.append(Marker.ANY_NON_NULL_MARKER);
        sb3.append(i2);
        throw new IllegalArgumentException(sb3.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.m
    public byte C(int i) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(28);
            sb.append("Index too small: ");
            sb.append(i);
            throw new ArrayIndexOutOfBoundsException(sb.toString());
        }
        if (i < size()) {
            return this.b[this.f15409d + i];
        }
        int size = size();
        StringBuilder sb2 = new StringBuilder(41);
        sb2.append("Index too large: ");
        sb2.append(i);
        sb2.append(", ");
        sb2.append(size);
        throw new ArrayIndexOutOfBoundsException(sb2.toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.m
    protected int E() {
        return this.f15409d;
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.m, kotlin.reflect.jvm.internal.impl.protobuf.d
    protected void n(byte[] bArr, int i, int i2, int i3) {
        System.arraycopy(this.b, E() + i, bArr, i2, i3);
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.m, kotlin.reflect.jvm.internal.impl.protobuf.d, java.lang.Iterable
    /* JADX INFO: renamed from: r */
    public d.a iterator() {
        return new b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.protobuf.m, kotlin.reflect.jvm.internal.impl.protobuf.d
    public int size() {
        return this.f15410e;
    }
}
