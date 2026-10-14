package kotlin.collections;

import androidx.exifinterface.media.ExifInterface;
import com.iflytek.cloud.SpeechEvent;
import java.util.Arrays;
import java.util.Iterator;
import java.util.Objects;
import java.util.RandomAccess;
import kotlin.Metadata;

/* JADX INFO: renamed from: kotlin.collections.r0, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000>\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u0000\n\u0002\b\t\n\u0002\u0010\u0002\n\u0002\b\b\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010(\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\u00060\u0003j\u0002`\u0004B\u000f\b\u0016\u0012\u0006\u0010\u0005\u001a\u00020\u0006¢\u0006\u0002\u0010\u0007B\u001d\u0012\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\t\u0012\u0006\u0010\u000b\u001a\u00020\u0006¢\u0006\u0002\u0010\fJ\u0013\u0010\u0013\u001a\u00020\u00142\u0006\u0010\u0015\u001a\u00028\u0000¢\u0006\u0002\u0010\u0016J\u0014\u0010\u0017\u001a\b\u0012\u0004\u0012\u00028\u00000\u00002\u0006\u0010\u0018\u001a\u00020\u0006J\u0016\u0010\u0019\u001a\u00028\u00002\u0006\u0010\u001a\u001a\u00020\u0006H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\u0006\u0010\u001c\u001a\u00020\u001dJ\u000f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00028\u00000\u001fH\u0096\u0002J\u000e\u0010 \u001a\u00020\u00142\u0006\u0010!\u001a\u00020\u0006J\u0015\u0010\"\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tH\u0014¢\u0006\u0002\u0010#J'\u0010\"\u001a\b\u0012\u0004\u0012\u0002H\u00010\t\"\u0004\b\u0001\u0010\u00012\f\u0010$\u001a\b\u0012\u0004\u0012\u0002H\u00010\tH\u0014¢\u0006\u0002\u0010%J\u0015\u0010&\u001a\u00020\u0006*\u00020\u00062\u0006\u0010!\u001a\u00020\u0006H\u0082\bR\u0018\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\n0\tX\u0082\u0004¢\u0006\u0004\n\u0002\u0010\rR\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u0004¢\u0006\u0002\n\u0000R\u001e\u0010\u000f\u001a\u00020\u00062\u0006\u0010\u000e\u001a\u00020\u0006@RX\u0096\u000e¢\u0006\b\n\u0000\u001a\u0004\b\u0010\u0010\u0011R\u000e\u0010\u0012\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006'"}, d2 = {"Lkotlin/collections/RingBuffer;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/collections/AbstractList;", "Ljava/util/RandomAccess;", "Lkotlin/collections/RandomAccess;", "capacity", "", "(I)V", SpeechEvent.KEY_EVENT_TTS_BUFFER, "", "", "filledSize", "([Ljava/lang/Object;I)V", "[Ljava/lang/Object;", "<set-?>", "size", "getSize", "()I", "startIndex", "add", "", "element", "(Ljava/lang/Object;)V", "expanded", "maxCapacity", "get", "index", "(I)Ljava/lang/Object;", "isFull", "", "iterator", "", "removeFirst", "n", "toArray", "()[Ljava/lang/Object;", "array", "([Ljava/lang/Object;)[Ljava/lang/Object;", "forward", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
final class RingBuffer<T> extends AbstractList<T> implements RandomAccess {
    private final int b;
    private int c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private int f14620d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Object[] f14621e;

    /* JADX INFO: renamed from: kotlin.collections.r0$a */
    @Metadata(d1 = {"\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\b\n\u0018\u00002\b\u0012\u0004\u0012\u00028\u00000\u0001J\b\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"kotlin/collections/RingBuffer$iterator$1", "Lkotlin/collections/AbstractIterator;", "count", "", "index", "computeNext", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
    public static final class a extends AbstractIterator<T> {
        private int c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private int f14622d;

        a() {
            this.c = RingBuffer.this.size();
            this.f14622d = RingBuffer.this.c;
        }

        /* JADX WARN: Multi-variable type inference failed */
        @Override // kotlin.collections.AbstractIterator
        protected void c() {
            if (this.c == 0) {
                e();
                return;
            }
            f(RingBuffer.this.f14621e[this.f14622d]);
            this.f14622d = (this.f14622d + 1) % RingBuffer.this.b;
            this.c--;
        }
    }

    public RingBuffer(Object[] buffer, int i) {
        kotlin.jvm.internal.r.e(buffer, "buffer");
        this.f14621e = buffer;
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("ring buffer filled size should not be negative but it is " + i).toString());
        }
        if (i <= buffer.length) {
            this.b = buffer.length;
            this.f14620d = i;
            return;
        }
        throw new IllegalArgumentException(("ring buffer filled size: " + i + " cannot be larger than the buffer size: " + buffer.length).toString());
    }

    @Override // kotlin.collections.AbstractCollection
    /* JADX INFO: renamed from: a, reason: from getter */
    public int getF14620d() {
        return this.f14620d;
    }

    @Override // kotlin.collections.AbstractList, java.util.List
    public T get(int index) {
        AbstractList.f14610a.a(index, size());
        return (T) this.f14621e[(this.c + index) % this.b];
    }

    @Override // kotlin.collections.AbstractList, java.util.Collection, java.lang.Iterable, java.util.List
    public Iterator<T> iterator() {
        return new a();
    }

    public final void l(T t) {
        if (n()) {
            throw new IllegalStateException("ring buffer is full");
        }
        this.f14621e[(this.c + size()) % this.b] = t;
        this.f14620d = size() + 1;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final RingBuffer<T> m(int i) {
        Object[] array;
        int i2 = this.b;
        int iE = kotlin.ranges.f.e(i2 + (i2 >> 1) + 1, i);
        if (this.c == 0) {
            array = Arrays.copyOf(this.f14621e, iE);
            kotlin.jvm.internal.r.d(array, "java.util.Arrays.copyOf(this, newSize)");
        } else {
            array = toArray(new Object[iE]);
        }
        return new RingBuffer<>(array, size());
    }

    public final boolean n() {
        return size() == this.b;
    }

    public final void o(int i) {
        if (!(i >= 0)) {
            throw new IllegalArgumentException(("n shouldn't be negative but it is " + i).toString());
        }
        if (!(i <= size())) {
            throw new IllegalArgumentException(("n shouldn't be greater than the buffer size: n = " + i + ", size = " + size()).toString());
        }
        if (i > 0) {
            int i2 = this.c;
            int i3 = (i2 + i) % this.b;
            if (i2 > i3) {
                n.i(this.f14621e, null, i2, this.b);
                n.i(this.f14621e, null, 0, i3);
            } else {
                n.i(this.f14621e, null, i2, i3);
            }
            this.c = i3;
            this.f14620d = size() - i;
        }
    }

    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public <T> T[] toArray(T[] array) {
        kotlin.jvm.internal.r.e(array, "array");
        if (array.length < size()) {
            array = (T[]) Arrays.copyOf(array, size());
            kotlin.jvm.internal.r.d(array, "java.util.Arrays.copyOf(this, newSize)");
        }
        int size = size();
        int i = 0;
        int i2 = 0;
        for (int i3 = this.c; i2 < size && i3 < this.b; i3++) {
            array[i2] = this.f14621e[i3];
            i2++;
        }
        while (i2 < size) {
            array[i2] = this.f14621e[i];
            i2++;
            i++;
        }
        if (array.length > size()) {
            array[size()] = null;
        }
        Objects.requireNonNull(array, "null cannot be cast to non-null type kotlin.Array<T>");
        return array;
    }

    public RingBuffer(int i) {
        this(new Object[i], 0);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.collections.AbstractCollection, java.util.Collection
    public Object[] toArray() {
        return toArray(new Object[size()]);
    }
}
