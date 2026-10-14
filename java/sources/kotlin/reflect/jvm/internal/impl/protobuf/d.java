package kotlin.reflect.jvm.internal.impl.protobuf;

import java.io.IOException;
import java.io.OutputStream;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import org.slf4j.Marker;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d implements Iterable<Byte> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final d f15412a = new m(new byte[0]);

    public interface a extends Iterator<Byte> {
        byte a();
    }

    d() {
    }

    private static d a(Iterator<d> it, int i) {
        if (i == 1) {
            return it.next();
        }
        int i2 = i >>> 1;
        return a(it, i2).b(a(it, i - i2));
    }

    public static d f(Iterable<d> iterable) {
        Collection arrayList;
        if (iterable instanceof Collection) {
            arrayList = (Collection) iterable;
        } else {
            arrayList = new ArrayList();
            Iterator<d> it = iterable.iterator();
            while (it.hasNext()) {
                arrayList.add(it.next());
            }
        }
        return arrayList.isEmpty() ? f15412a : a(arrayList.iterator(), arrayList.size());
    }

    public static d i(byte[] bArr) {
        return j(bArr, 0, bArr.length);
    }

    public static d j(byte[] bArr, int i, int i2) {
        byte[] bArr2 = new byte[i2];
        System.arraycopy(bArr, i, bArr2, 0, i2);
        return new m(bArr2);
    }

    public static d l(String str) {
        try {
            return new m(str.getBytes("UTF-8"));
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported?", e2);
        }
    }

    public static b t() {
        return new b(128);
    }

    void A(OutputStream outputStream, int i, int i2) throws IOException {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(23);
            sb2.append("Length < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        int i3 = i + i2;
        if (i3 <= size()) {
            if (i2 > 0) {
                B(outputStream, i, i2);
            }
        } else {
            StringBuilder sb3 = new StringBuilder(39);
            sb3.append("Source end offset exceeded: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
    }

    abstract void B(OutputStream outputStream, int i, int i2) throws IOException;

    public d b(d dVar) {
        int size = size();
        int size2 = dVar.size();
        if (((long) size) + ((long) size2) < 2147483647L) {
            return r.F(this, dVar);
        }
        StringBuilder sb = new StringBuilder(53);
        sb.append("ByteString would be too long: ");
        sb.append(size);
        sb.append(Marker.ANY_NON_NULL_MARKER);
        sb.append(size2);
        throw new IllegalArgumentException(sb.toString());
    }

    public boolean isEmpty() {
        return size() == 0;
    }

    public void m(byte[] bArr, int i, int i2, int i3) {
        if (i < 0) {
            StringBuilder sb = new StringBuilder(30);
            sb.append("Source offset < 0: ");
            sb.append(i);
            throw new IndexOutOfBoundsException(sb.toString());
        }
        if (i2 < 0) {
            StringBuilder sb2 = new StringBuilder(30);
            sb2.append("Target offset < 0: ");
            sb2.append(i2);
            throw new IndexOutOfBoundsException(sb2.toString());
        }
        if (i3 < 0) {
            StringBuilder sb3 = new StringBuilder(23);
            sb3.append("Length < 0: ");
            sb3.append(i3);
            throw new IndexOutOfBoundsException(sb3.toString());
        }
        int i4 = i + i3;
        if (i4 > size()) {
            StringBuilder sb4 = new StringBuilder(34);
            sb4.append("Source end offset < 0: ");
            sb4.append(i4);
            throw new IndexOutOfBoundsException(sb4.toString());
        }
        int i5 = i2 + i3;
        if (i5 <= bArr.length) {
            if (i3 > 0) {
                n(bArr, i, i2, i3);
            }
        } else {
            StringBuilder sb5 = new StringBuilder(34);
            sb5.append("Target end offset < 0: ");
            sb5.append(i5);
            throw new IndexOutOfBoundsException(sb5.toString());
        }
    }

    protected abstract void n(byte[] bArr, int i, int i2, int i3);

    protected abstract int o();

    protected abstract boolean p();

    public abstract boolean q();

    @Override // java.lang.Iterable
    /* JADX INFO: renamed from: r */
    public abstract a iterator();

    public abstract e s();

    public abstract int size();

    public String toString() {
        return String.format("<ByteString@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(size()));
    }

    protected abstract int u(int i, int i2, int i3);

    protected abstract int v(int i, int i2, int i3);

    protected abstract int w();

    public byte[] x() {
        int size = size();
        if (size == 0) {
            return h.f15428a;
        }
        byte[] bArr = new byte[size];
        n(bArr, 0, 0, size);
        return bArr;
    }

    public abstract String y(String str) throws UnsupportedEncodingException;

    public String z() {
        try {
            return y("UTF-8");
        } catch (UnsupportedEncodingException e2) {
            throw new RuntimeException("UTF-8 not supported?", e2);
        }
    }

    public static final class b extends OutputStream {

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private static final byte[] f15413f = new byte[0];

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final int f15414a;
        private final ArrayList<d> b;
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private byte[] f15415d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private int f15416e;

        b(int i) {
            if (i < 0) {
                throw new IllegalArgumentException("Buffer size < 0");
            }
            this.f15414a = i;
            this.b = new ArrayList<>();
            this.f15415d = new byte[i];
        }

        private byte[] a(byte[] bArr, int i) {
            byte[] bArr2 = new byte[i];
            System.arraycopy(bArr, 0, bArr2, 0, Math.min(bArr.length, i));
            return bArr2;
        }

        private void b(int i) {
            this.b.add(new m(this.f15415d));
            int length = this.c + this.f15415d.length;
            this.c = length;
            this.f15415d = new byte[Math.max(this.f15414a, Math.max(i, length >>> 1))];
            this.f15416e = 0;
        }

        private void c() {
            int i = this.f15416e;
            byte[] bArr = this.f15415d;
            if (i >= bArr.length) {
                this.b.add(new m(this.f15415d));
                this.f15415d = f15413f;
            } else if (i > 0) {
                this.b.add(new m(a(bArr, i)));
            }
            this.c += this.f15416e;
            this.f15416e = 0;
        }

        public synchronized int d() {
            return this.c + this.f15416e;
        }

        public synchronized d e() {
            c();
            return d.f(this.b);
        }

        public String toString() {
            return String.format("<ByteString.Output@%s size=%d>", Integer.toHexString(System.identityHashCode(this)), Integer.valueOf(d()));
        }

        @Override // java.io.OutputStream
        public synchronized void write(int i) {
            if (this.f15416e == this.f15415d.length) {
                b(1);
            }
            byte[] bArr = this.f15415d;
            int i2 = this.f15416e;
            this.f15416e = i2 + 1;
            bArr[i2] = (byte) i;
        }

        @Override // java.io.OutputStream
        public synchronized void write(byte[] bArr, int i, int i2) {
            byte[] bArr2 = this.f15415d;
            int length = bArr2.length;
            int i3 = this.f15416e;
            if (i2 <= length - i3) {
                System.arraycopy(bArr, i, bArr2, i3, i2);
                this.f15416e += i2;
            } else {
                int length2 = bArr2.length - i3;
                System.arraycopy(bArr, i, bArr2, i3, length2);
                int i4 = i2 - length2;
                b(i4);
                System.arraycopy(bArr, i + length2, this.f15415d, 0, i4);
                this.f15416e = i4;
            }
        }
    }
}
