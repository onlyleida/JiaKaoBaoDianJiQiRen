package kotlinx.coroutines.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class OnUndeliveredElementKt {
    public static final <E> Function1<Throwable, kotlin.v> a(final Function1<? super E, kotlin.v> function1, final E e2, final CoroutineContext coroutineContext) {
        return new Function1<Throwable, kotlin.v>() { // from class: kotlinx.coroutines.internal.OnUndeliveredElementKt$bindCancellationFun$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
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
                OnUndeliveredElementKt.b(function1, e2, coroutineContext);
            }
        };
    }

    public static final <E> void b(Function1<? super E, kotlin.v> function1, E e2, CoroutineContext coroutineContext) {
        UndeliveredElementException undeliveredElementExceptionC = c(function1, e2, null);
        if (undeliveredElementExceptionC != null) {
            f0.a(coroutineContext, undeliveredElementExceptionC);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final <E> UndeliveredElementException c(Function1<? super E, kotlin.v> function1, E e2, UndeliveredElementException undeliveredElementException) {
        try {
            function1.invoke(e2);
        } catch (Throwable th) {
            if (undeliveredElementException == null || undeliveredElementException.getCause() == th) {
                return new UndeliveredElementException("Exception in undelivered element handler for " + e2, th);
            }
            kotlin.b.a(undeliveredElementException, th);
        }
        return undeliveredElementException;
    }

    public static /* synthetic */ UndeliveredElementException d(Function1 function1, Object obj, UndeliveredElementException undeliveredElementException, int i, Object obj2) {
        if ((i & 2) != 0) {
            undeliveredElementException = null;
        }
        return c(function1, obj, undeliveredElementException);
    }
}
