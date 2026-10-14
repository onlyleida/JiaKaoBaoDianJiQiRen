package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import com.iflytek.cloud.SpeechUtility;
import com.nirvana.tools.crash.CustomLogInfoBuilder;
import java.util.Objects;
import kotlin.Metadata;
import kotlin.Result;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.CoroutineStackFrame;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.text.StringsKt__IndentKt;
import kotlin.v;
import kotlinx.coroutines.w1;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0010\b\n\u0002\b\u0012\b\u0000\u0018\u0000*\u0004\b\u0000\u0010\u00012\b\u0012\u0004\u0012\u00028\u00000\u00022\u00020\u00032\u00020\u0004B\u001d\u0012\f\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u0002\u0012\u0006\u0010\"\u001a\u00020\f¢\u0006\u0004\b/\u00100J'\u0010\n\u001a\u0004\u0018\u00010\t2\f\u0010\u0007\u001a\b\u0012\u0004\u0012\u00020\u00060\u00052\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\n\u0010\u000bJ)\u0010\u000f\u001a\u00020\u00062\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000e\u001a\u0004\u0018\u00010\f2\u0006\u0010\b\u001a\u00028\u0000H\u0002¢\u0006\u0004\b\u000f\u0010\u0010J!\u0010\u0013\u001a\u00020\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\b\u001a\u0004\u0018\u00010\tH\u0002¢\u0006\u0004\b\u0013\u0010\u0014J\u0011\u0010\u0016\u001a\u0004\u0018\u00010\u0015H\u0016¢\u0006\u0004\b\u0016\u0010\u0017J$\u0010\u001a\u001a\u0004\u0018\u00010\t2\u000e\u0010\u0019\u001a\n\u0012\u0006\u0012\u0004\u0018\u00010\t0\u0018H\u0016ø\u0001\u0000¢\u0006\u0004\b\u001a\u0010\u001bJ\u000f\u0010\u001c\u001a\u00020\u0006H\u0016¢\u0006\u0004\b\u001c\u0010\u001dJ\u001b\u0010\n\u001a\u00020\u00062\u0006\u0010\b\u001a\u00028\u0000H\u0096@ø\u0001\u0000¢\u0006\u0004\b\n\u0010\u001eR\u0016\u0010 \u001a\u00020\u001f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b \u0010!R\u0016\u0010\"\u001a\u00020\f8\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b\"\u0010#R\u0018\u0010$\u001a\u0004\u0018\u00010\f8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010#R\u001c\u0010%\u001a\b\u0012\u0004\u0012\u00028\u00000\u00028\u0000@\u0001X\u0081\u0004¢\u0006\u0006\n\u0004\b%\u0010&R\u001e\u0010'\u001a\n\u0012\u0004\u0012\u00020\u0006\u0018\u00010\u00058\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b'\u0010(R\u0018\u0010+\u001a\u0004\u0018\u00010\u00048V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b)\u0010*R\u0016\u0010.\u001a\u00020\f8V@\u0016X\u0096\u0004¢\u0006\u0006\u001a\u0004\b,\u0010-\u0082\u0002\u0004\n\u0002\b\u0019¨\u00061"}, d2 = {"Lkotlinx/coroutines/flow/internal/SafeCollector;", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "Lkotlin/coroutines/jvm/internal/ContinuationImpl;", "Lkotlin/coroutines/jvm/internal/c;", "Lkotlin/coroutines/c;", "Lkotlin/v;", "uCont", "value", "", "emit", "(Lkotlin/coroutines/c;Ljava/lang/Object;)Ljava/lang/Object;", "Lkotlin/coroutines/CoroutineContext;", "currentContext", "previousContext", "checkContext", "(Lkotlin/coroutines/CoroutineContext;Lkotlin/coroutines/CoroutineContext;Ljava/lang/Object;)V", "Lkotlinx/coroutines/flow/internal/h;", CustomLogInfoBuilder.LOG_TYPE, "exceptionTransparencyViolated", "(Lkotlinx/coroutines/flow/internal/h;Ljava/lang/Object;)V", "Ljava/lang/StackTraceElement;", "getStackTraceElement", "()Ljava/lang/StackTraceElement;", "Lkotlin/Result;", SpeechUtility.TAG_RESOURCE_RESULT, "invokeSuspend", "(Ljava/lang/Object;)Ljava/lang/Object;", "releaseIntercepted", "()V", "(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;", "", "collectContextSize", "I", "collectContext", "Lkotlin/coroutines/CoroutineContext;", "lastEmissionContext", "collector", "Lkotlinx/coroutines/flow/d;", "completion", "Lkotlin/coroutines/c;", "getCallerFrame", "()Lkotlin/coroutines/jvm/internal/c;", "callerFrame", "getContext", "()Lkotlin/coroutines/CoroutineContext;", "context", "<init>", "(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/CoroutineContext;)V", "kotlinx-coroutines-core"}, k = 1, mv = {1, 1, 15})
public final class SafeCollector<T> extends ContinuationImpl implements kotlinx.coroutines.flow.d<T>, CoroutineStackFrame {
    public final CoroutineContext collectContext;
    public final int collectContextSize;
    public final kotlinx.coroutines.flow.d<T> collector;
    private Continuation<? super v> completion;
    private CoroutineContext lastEmissionContext;

    /* JADX WARN: Multi-variable type inference failed */
    public SafeCollector(kotlinx.coroutines.flow.d<? super T> dVar, CoroutineContext coroutineContext) {
        super(n.b, EmptyCoroutineContext.INSTANCE);
        this.collector = dVar;
        this.collectContext = coroutineContext;
        this.collectContextSize = ((Number) coroutineContext.fold(0, new Function2<Integer, CoroutineContext.a, Integer>() { // from class: kotlinx.coroutines.flow.internal.SafeCollector$collectContextSize$1
            public final int invoke(int i, CoroutineContext.a aVar) {
                return i + 1;
            }

            @Override // kotlin.jvm.functions.Function2
            public /* bridge */ /* synthetic */ Integer invoke(Integer num, CoroutineContext.a aVar) {
                return Integer.valueOf(invoke(num.intValue(), aVar));
            }
        })).intValue();
    }

    private final void checkContext(CoroutineContext currentContext, CoroutineContext previousContext, T value) {
        if (previousContext instanceof h) {
            exceptionTransparencyViolated((h) previousContext, value);
        }
        SafeCollector_commonKt.a(this, currentContext);
        this.lastEmissionContext = currentContext;
    }

    private final void exceptionTransparencyViolated(h exception, Object value) {
        throw new IllegalStateException(StringsKt__IndentKt.e("\n            Flow exception transparency is violated:\n                Previous 'emit' call has thrown exception " + exception.b + ", but then emission attempt of value '" + value + "' has been detected.\n                Emissions from 'catch' blocks are prohibited in order to avoid unspecified behaviour, 'Flow.catch' operator can be used instead.\n                For a more detailed explanation, please refer to Flow documentation.\n            ").toString());
    }

    @Override // kotlinx.coroutines.flow.d
    public Object emit(T t, Continuation<? super v> continuation) {
        try {
            Object objEmit = emit(continuation, t);
            if (objEmit == kotlin.coroutines.intrinsics.b.d()) {
                kotlin.coroutines.jvm.internal.f.c(continuation);
            }
            return objEmit == kotlin.coroutines.intrinsics.b.d() ? objEmit : v.f15822a;
        } catch (Throwable th) {
            this.lastEmissionContext = new h(th);
            throw th;
        }
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public CoroutineStackFrame getCallerFrame() {
        Continuation<? super v> continuation = this.completion;
        if (!(continuation instanceof CoroutineStackFrame)) {
            continuation = null;
        }
        return (CoroutineStackFrame) continuation;
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.Continuation
    public CoroutineContext getContext() {
        CoroutineContext context;
        Continuation<? super v> continuation = this.completion;
        return (continuation == null || (context = continuation.getContext()) == null) ? EmptyCoroutineContext.INSTANCE : context;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl, kotlin.coroutines.jvm.internal.CoroutineStackFrame
    public StackTraceElement getStackTraceElement() {
        return null;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public Object invokeSuspend(Object result) {
        Throwable thM142exceptionOrNullimpl = Result.m142exceptionOrNullimpl(result);
        if (thM142exceptionOrNullimpl != null) {
            this.lastEmissionContext = new h(thM142exceptionOrNullimpl);
        }
        Continuation<? super v> continuation = this.completion;
        if (continuation != null) {
            continuation.resumeWith(result);
        }
        return kotlin.coroutines.intrinsics.b.d();
    }

    @Override // kotlin.coroutines.jvm.internal.ContinuationImpl, kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public void releaseIntercepted() {
        super.releaseIntercepted();
    }

    private final Object emit(Continuation<? super v> uCont, T value) {
        CoroutineContext context = uCont.getContext();
        w1.g(context);
        CoroutineContext coroutineContext = this.lastEmissionContext;
        if (coroutineContext != context) {
            checkContext(context, coroutineContext, value);
        }
        this.completion = uCont;
        Function3 function3 = SafeCollectorKt.f15969a;
        kotlinx.coroutines.flow.d<T> dVar = this.collector;
        Objects.requireNonNull(dVar, "null cannot be cast to non-null type kotlinx.coroutines.flow.FlowCollector<kotlin.Any?>");
        return function3.invoke(dVar, value, this);
    }
}
