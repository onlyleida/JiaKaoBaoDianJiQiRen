package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.LongIterator;

/* JADX INFO: renamed from: kotlin.jvm.internal.j, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0016\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\t\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlin/jvm/internal/ArrayLongIterator;", "Lkotlin/collections/LongIterator;", "array", "", "([J)V", "index", "", "hasNext", "", "nextLong", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
final class ArrayLongIterator extends LongIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14661a;
    private final long[] b;

    public ArrayLongIterator(long[] array) {
        r.e(array, "array");
        this.b = array;
    }

    @Override // kotlin.collections.LongIterator
    public long e() {
        try {
            long[] jArr = this.b;
            int i = this.f14661a;
            this.f14661a = i + 1;
            return jArr[i];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f14661a--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f14661a < this.b.length;
    }
}
