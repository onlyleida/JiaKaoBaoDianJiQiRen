package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import com.iflytek.cloud.SpeechUtility;
import java.util.Iterator;
import java.util.NoSuchElementException;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.internal.markers.KMappedMarker;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: renamed from: kotlin.sequences.i, reason: from Kotlin metadata */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010(\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u000b\n\u0002\u0010\b\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\b\b\u0002\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u0002H\u00010\u00022\b\u0012\u0004\u0012\u0002H\u00010\u00032\b\u0012\u0004\u0012\u00020\u00050\u0004B\u0005¢\u0006\u0002\u0010\u0006J\b\u0010\u0016\u001a\u00020\u0017H\u0002J\t\u0010\u0018\u001a\u00020\u0019H\u0096\u0002J\u000e\u0010\u001a\u001a\u00028\u0000H\u0096\u0002¢\u0006\u0002\u0010\u001bJ\r\u0010\u001c\u001a\u00028\u0000H\u0002¢\u0006\u0002\u0010\u001bJ\u001e\u0010\u001d\u001a\u00020\u00052\f\u0010\u001e\u001a\b\u0012\u0004\u0012\u00020\u00050\u001fH\u0016ø\u0001\u0000¢\u0006\u0002\u0010 J\u0019\u0010!\u001a\u00020\u00052\u0006\u0010\"\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010#J\u001f\u0010$\u001a\u00020\u00052\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u0003H\u0096@ø\u0001\u0000¢\u0006\u0002\u0010&R\u0014\u0010\u0007\u001a\u00020\b8VX\u0096\u0004¢\u0006\u0006\u001a\u0004\b\t\u0010\nR\u0016\u0010\u000b\u001a\n\u0012\u0004\u0012\u00028\u0000\u0018\u00010\u0003X\u0082\u000e¢\u0006\u0002\n\u0000R\"\u0010\f\u001a\n\u0012\u0004\u0012\u00020\u0005\u0018\u00010\u0004X\u0086\u000e¢\u0006\u000e\n\u0000\u001a\u0004\b\r\u0010\u000e\"\u0004\b\u000f\u0010\u0010R\u0012\u0010\u0011\u001a\u0004\u0018\u00018\u0000X\u0082\u000e¢\u0006\u0004\n\u0002\u0010\u0012R\u0012\u0010\u0013\u001a\u00060\u0014j\u0002`\u0015X\u0082\u000e¢\u0006\u0002\n\u0000\u0082\u0002\u0004\n\u0002\b\u0019¨\u0006'"}, d2 = {"Lkotlin/sequences/SequenceBuilderIterator;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", "", "Lkotlin/coroutines/Continuation;", "", "()V", "context", "Lkotlin/coroutines/CoroutineContext;", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "nextIterator", "nextStep", "getNextStep", "()Lkotlin/coroutines/Continuation;", "setNextStep", "(Lkotlin/coroutines/Continuation;)V", "nextValue", "Ljava/lang/Object;", "state", "", "Lkotlin/sequences/State;", "exceptionalState", "", "hasNext", "", "next", "()Ljava/lang/Object;", "nextNotReady", "resumeWith", SpeechUtility.TAG_RESOURCE_RESULT, "Lkotlin/Result;", "(Ljava/lang/Object;)V", "yield", "value", "(Ljava/lang/Object;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "yieldAll", "iterator", "(Ljava/util/Iterator;Lkotlin/coroutines/Continuation;)Ljava/lang/Object;", "kotlin-stdlib"}, k = 1, mv = {1, 5, 1})
final class SequenceBuilderIterator<T> extends SequenceScope<T> implements Iterator<T>, Continuation<v>, KMappedMarker {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15800a;
    private T b;
    private Iterator<? extends T> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Continuation<? super v> f15801d;

    private final Throwable i() {
        int i = this.f15800a;
        if (i == 4) {
            return new NoSuchElementException();
        }
        if (i == 5) {
            return new IllegalStateException("Iterator has failed.");
        }
        return new IllegalStateException("Unexpected state of the iterator: " + this.f15800a);
    }

    private final T j() {
        if (hasNext()) {
            return next();
        }
        throw new NoSuchElementException();
    }

    @Override // kotlin.sequences.SequenceScope
    public Object e(T t, Continuation<? super v> continuation) {
        this.b = t;
        this.f15800a = 3;
        this.f15801d = continuation;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        if (objD == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : v.f15822a;
    }

    @Override // kotlin.sequences.SequenceScope
    public Object f(Iterator<? extends T> it, Continuation<? super v> continuation) {
        if (!it.hasNext()) {
            return v.f15822a;
        }
        this.c = it;
        this.f15800a = 2;
        this.f15801d = continuation;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        if (objD == kotlin.coroutines.intrinsics.b.d()) {
            kotlin.coroutines.jvm.internal.f.c(continuation);
        }
        return objD == kotlin.coroutines.intrinsics.b.d() ? objD : v.f15822a;
    }

    @Override // kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        return EmptyCoroutineContext.INSTANCE;
    }

    @Override // java.util.Iterator
    public boolean hasNext() throws Throwable {
        while (true) {
            int i = this.f15800a;
            if (i != 0) {
                if (i != 1) {
                    if (i == 2 || i == 3) {
                        return true;
                    }
                    if (i == 4) {
                        return false;
                    }
                    throw i();
                }
                Iterator<? extends T> it = this.c;
                r.c(it);
                if (it.hasNext()) {
                    this.f15800a = 2;
                    return true;
                }
                this.c = null;
            }
            this.f15800a = 5;
            Continuation<? super v> continuation = this.f15801d;
            r.c(continuation);
            this.f15801d = null;
            v vVar = v.f15822a;
            Result.Companion companion = Result.INSTANCE;
            continuation.resumeWith(Result.m139constructorimpl(vVar));
        }
    }

    public final void k(Continuation<? super v> continuation) {
        this.f15801d = continuation;
    }

    @Override // java.util.Iterator
    public T next() throws Throwable {
        int i = this.f15800a;
        if (i == 0 || i == 1) {
            return j();
        }
        if (i == 2) {
            this.f15800a = 1;
            Iterator<? extends T> it = this.c;
            r.c(it);
            return it.next();
        }
        if (i != 3) {
            throw i();
        }
        this.f15800a = 0;
        T t = this.b;
        this.b = null;
        return t;
    }

    @Override // java.util.Iterator
    public void remove() {
        throw new UnsupportedOperationException("Operation is not supported for read-only collection");
    }

    @Override // kotlin.coroutines.Continuation
    public void resumeWith(Object result) throws Throwable {
        kotlin.k.b(result);
        this.f15800a = 4;
    }
}
