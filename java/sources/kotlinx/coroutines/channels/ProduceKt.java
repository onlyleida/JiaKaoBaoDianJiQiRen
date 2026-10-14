package kotlinx.coroutines.channels;

import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.intrinsics.IntrinsicsKt__IntrinsicsJvmKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.CoroutineStart;
import kotlinx.coroutines.d0;
import kotlinx.coroutines.i0;
import kotlinx.coroutines.t1;

/* JADX INFO: loaded from: classes6.dex */
public final class ProduceKt {
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    public static final Object a(n<?> nVar, Function0<kotlin.v> function0, Continuation<? super kotlin.v> continuation) throws Throwable {
        ProduceKt$awaitClose$1 produceKt$awaitClose$1;
        if (continuation instanceof ProduceKt$awaitClose$1) {
            produceKt$awaitClose$1 = (ProduceKt$awaitClose$1) continuation;
            int i = produceKt$awaitClose$1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                produceKt$awaitClose$1.label = i - Integer.MIN_VALUE;
            } else {
                produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuation);
            }
        } else {
            produceKt$awaitClose$1 = new ProduceKt$awaitClose$1(continuation);
        }
        Object obj = produceKt$awaitClose$1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = produceKt$awaitClose$1.label;
        try {
            if (i2 == 0) {
                kotlin.k.b(obj);
                if (!(((t1) produceKt$awaitClose$1.getContext().get(t1.R)) == nVar)) {
                    throw new IllegalStateException("awaitClose() can only be invoked from the producer context".toString());
                }
                produceKt$awaitClose$1.L$0 = nVar;
                produceKt$awaitClose$1.L$1 = function0;
                produceKt$awaitClose$1.label = 1;
                final kotlinx.coroutines.l lVar = new kotlinx.coroutines.l(IntrinsicsKt__IntrinsicsJvmKt.c(produceKt$awaitClose$1), 1);
                lVar.z();
                nVar.t(new Function1<Throwable, kotlin.v>() { // from class: kotlinx.coroutines.channels.ProduceKt$awaitClose$4$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(Throwable th) {
                        invoke2(th);
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(Throwable th) {
                        kotlinx.coroutines.k kVar = lVar;
                        kotlin.v vVar = kotlin.v.f15822a;
                        Result.Companion companion = Result.INSTANCE;
                        kVar.resumeWith(Result.m139constructorimpl(vVar));
                    }
                });
                Object objX = lVar.x();
                if (objX == kotlin.coroutines.intrinsics.b.d()) {
                    kotlin.coroutines.jvm.internal.f.c(produceKt$awaitClose$1);
                }
                if (objX == objD) {
                    return objD;
                }
            } else {
                if (i2 != 1) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                function0 = (Function0) produceKt$awaitClose$1.L$1;
                kotlin.k.b(obj);
            }
            function0.invoke();
            return kotlin.v.f15822a;
        } catch (Throwable th) {
            function0.invoke();
            throw th;
        }
    }

    public static /* synthetic */ Object b(n nVar, Function0 function0, Continuation continuation, int i, Object obj) {
        if ((i & 1) != 0) {
            function0 = new Function0<kotlin.v>() { // from class: kotlinx.coroutines.channels.ProduceKt$awaitClose$2
                @Override // kotlin.jvm.functions.Function0
                public /* bridge */ /* synthetic */ kotlin.v invoke() {
                    invoke2();
                    return kotlin.v.f15822a;
                }

                /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                public final void invoke2() {
                }
            };
        }
        return a(nVar, function0, continuation);
    }

    public static final <E> p<E> c(i0 i0Var, CoroutineContext coroutineContext, int i, Function2<? super n<? super E>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        return d(i0Var, coroutineContext, i, BufferOverflow.SUSPEND, CoroutineStart.DEFAULT, null, function2);
    }

    public static final <E> p<E> d(i0 i0Var, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1<? super Throwable, kotlin.v> function1, Function2<? super n<? super E>, ? super Continuation<? super kotlin.v>, ? extends Object> function2) {
        m mVar = new m(d0.c(i0Var, coroutineContext), h.b(i, bufferOverflow, null, 4, null));
        if (function1 != null) {
            mVar.n(function1);
        }
        mVar.W0(coroutineStart, mVar, function2);
        return mVar;
    }

    public static /* synthetic */ p e(i0 i0Var, CoroutineContext coroutineContext, int i, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        if ((i2 & 2) != 0) {
            i = 0;
        }
        return c(i0Var, coroutineContext, i, function2);
    }

    public static /* synthetic */ p f(i0 i0Var, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, CoroutineStart coroutineStart, Function1 function1, Function2 function2, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            coroutineContext = EmptyCoroutineContext.INSTANCE;
        }
        CoroutineContext coroutineContext2 = coroutineContext;
        int i3 = (i2 & 2) != 0 ? 0 : i;
        if ((i2 & 4) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        BufferOverflow bufferOverflow2 = bufferOverflow;
        if ((i2 & 8) != 0) {
            coroutineStart = CoroutineStart.DEFAULT;
        }
        CoroutineStart coroutineStart2 = coroutineStart;
        if ((i2 & 16) != 0) {
            function1 = null;
        }
        return d(i0Var, coroutineContext2, i3, bufferOverflow2, coroutineStart2, function1, function2);
    }
}
