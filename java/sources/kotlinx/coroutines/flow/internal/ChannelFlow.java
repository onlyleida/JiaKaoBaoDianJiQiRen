package kotlinx.coroutines.flow.internal;

import java.util.ArrayList;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.jvm.functions.Function2;
import kotlin.v;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.channels.BufferOverflow;
import kotlinx.coroutines.channels.ProduceKt;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.j0;
import kotlinx.coroutines.l0;
import kotlinx.coroutines.m0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class ChannelFlow<T> implements m<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public final CoroutineContext f15962a;
    public final int b;
    public final BufferOverflow c;

    public ChannelFlow(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        this.f15962a = coroutineContext;
        this.b = i;
        this.c = bufferOverflow;
        if (l0.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
    }

    static /* synthetic */ Object h(ChannelFlow channelFlow, kotlinx.coroutines.flow.d dVar, Continuation continuation) {
        Object objE = j0.e(new ChannelFlow$collect$2(channelFlow, dVar, null), continuation);
        return objE == kotlin.coroutines.intrinsics.b.d() ? objE : v.f15822a;
    }

    private final int l() {
        int i = this.b;
        if (i == -3) {
            return -2;
        }
        return i;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x002a A[PHI: r6
      0x002a: PHI (r6v12 int) = (r6v2 int), (r6v2 int), (r6v7 int) binds: [B:18:0x0028, B:23:0x0030, B:45:0x005f] A[DONT_GENERATE, DONT_INLINE]] */
    @Override // kotlinx.coroutines.flow.internal.m
    public kotlinx.coroutines.flow.c<T> c(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow) {
        if (l0.a()) {
            if (!(i != -1)) {
                throw new AssertionError();
            }
        }
        CoroutineContext coroutineContextPlus = coroutineContext.plus(this.f15962a);
        if (bufferOverflow == BufferOverflow.SUSPEND) {
            int i2 = this.b;
            if (i2 != -3) {
                if (i == -3) {
                    i = i2;
                } else if (i2 != -2) {
                    if (i != -2) {
                        if (l0.a()) {
                            if (!(this.b >= 0)) {
                                throw new AssertionError();
                            }
                        }
                        if (l0.a()) {
                            if (!(i >= 0)) {
                                throw new AssertionError();
                            }
                        }
                        i2 = this.b + i;
                        if (i2 >= 0) {
                            i = i2;
                        } else {
                            i = Integer.MAX_VALUE;
                        }
                    } else {
                        i = i2;
                    }
                }
            }
            bufferOverflow = this.c;
        }
        return (kotlin.jvm.internal.r.a(coroutineContextPlus, this.f15962a) && i == this.b && bufferOverflow == this.c) ? this : j(coroutineContextPlus, i, bufferOverflow);
    }

    @Override // kotlinx.coroutines.flow.c
    public Object d(kotlinx.coroutines.flow.d<? super T> dVar, Continuation<? super v> continuation) {
        return h(this, dVar, continuation);
    }

    protected String g() {
        return null;
    }

    protected abstract Object i(kotlinx.coroutines.channels.n<? super T> nVar, Continuation<? super v> continuation);

    protected abstract ChannelFlow<T> j(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow);

    public final Function2<kotlinx.coroutines.channels.n<? super T>, Continuation<? super v>, Object> k() {
        return new ChannelFlow$collectToFun$1(this, null);
    }

    public kotlinx.coroutines.channels.p<T> m(i0 i0Var) {
        return ProduceKt.f(i0Var, this.f15962a, l(), this.c, CoroutineStart.ATOMIC, null, k(), 16, null);
    }

    public String toString() {
        ArrayList arrayList = new ArrayList(4);
        String strG = g();
        if (strG != null) {
            arrayList.add(strG);
        }
        if (this.f15962a != EmptyCoroutineContext.INSTANCE) {
            arrayList.add("context=" + this.f15962a);
        }
        if (this.b != -3) {
            arrayList.add("capacity=" + this.b);
        }
        if (this.c != BufferOverflow.SUSPEND) {
            arrayList.add("onBufferOverflow=" + this.c);
        }
        return m0.a(this) + '[' + CollectionsKt___CollectionsKt.m0(arrayList, ", ", null, null, 0, null, null, 62, null) + ']';
    }
}
