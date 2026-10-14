package kotlin.jvm.internal;

import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.collections.FloatIterator;

/* JADX INFO: renamed from: kotlin.jvm.internal.e, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000$\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0014\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0007\n\u0000\b\u0002\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003¢\u0006\u0002\u0010\u0004J\t\u0010\u0007\u001a\u00020\bH\u0096\u0002J\b\u0010\t\u001a\u00020\nH\u0016R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u0004¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\u000b"}, d2 = {"Lkotlin/jvm/internal/ArrayFloatIterator;", "Lkotlin/collections/FloatIterator;", "array", "", "([F)V", "index", "", "hasNext", "", "nextFloat", "", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
final class ArrayFloatIterator extends FloatIterator {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f14658a;
    private final float[] b;

    public ArrayFloatIterator(float[] array) {
        r.e(array, "array");
        this.b = array;
    }

    @Override // kotlin.collections.FloatIterator
    public float e() {
        try {
            float[] fArr = this.b;
            int i = this.f14658a;
            this.f14658a = i + 1;
            return fArr[i];
        } catch (ArrayIndexOutOfBoundsException e2) {
            this.f14658a--;
            throw new NoSuchElementException(e2.getMessage());
        }
    }

    @Override // java.util.Iterator
    public boolean hasNext() {
        return this.f14658a < this.b.length;
    }
}
