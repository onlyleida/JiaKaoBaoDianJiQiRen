package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function2;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f15931a;
    final /* synthetic */ Function2 b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0096@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "collector", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "collect", "(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {116, 120}, m = "collect")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        Object L$4;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.this.d(null, this);
        }
    }

    public FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1(c cVar, Function2 function2) {
        this.f15931a = cVar;
        this.b = function2;
    }

    /* JADX WARN: Code duplicated, block: B:27:0x00a7 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlinx.coroutines.flow.c
    public Object d(d dVar, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        SafeCollector safeCollector;
        FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1<T> flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
        d dVar2;
        Continuation continuation2;
        d dVar3;
        c cVar;
        if (continuation instanceof AnonymousClass1) {
            anonymousClass1 = (AnonymousClass1) continuation;
            int i = anonymousClass1.label;
            if ((i & Integer.MIN_VALUE) != 0) {
                anonymousClass1.label = i - Integer.MIN_VALUE;
            } else {
                anonymousClass1 = new AnonymousClass1(continuation);
            }
        } else {
            anonymousClass1 = new AnonymousClass1(continuation);
        }
        Object obj = anonymousClass1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            kotlin.k.b(obj);
            SafeCollector safeCollector2 = new SafeCollector(dVar, anonymousClass1.getContext());
            try {
                Function2 function2 = this.b;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = dVar;
                anonymousClass1.L$2 = anonymousClass1;
                anonymousClass1.L$3 = dVar;
                anonymousClass1.L$4 = safeCollector2;
                anonymousClass1.label = 1;
                kotlin.jvm.internal.q.c(6);
                Object objInvoke = function2.invoke(safeCollector2, anonymousClass1);
                kotlin.jvm.internal.q.c(7);
                if (objInvoke == objD) {
                    return objD;
                }
                flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = this;
                dVar2 = dVar;
                continuation2 = anonymousClass1;
                safeCollector = safeCollector2;
                dVar3 = dVar2;
                safeCollector.releaseIntercepted();
                cVar = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.f15931a;
                anonymousClass1.L$0 = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = dVar2;
                anonymousClass1.L$2 = continuation2;
                anonymousClass1.L$3 = dVar3;
                anonymousClass1.L$4 = safeCollector;
                anonymousClass1.label = 2;
                if (cVar.d(dVar3, anonymousClass1) == objD) {
                    return objD;
                }
            } catch (Throwable th) {
                th = th;
                safeCollector = safeCollector2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        } else if (i2 == 1) {
            safeCollector = (SafeCollector) anonymousClass1.L$4;
            dVar3 = (d) anonymousClass1.L$3;
            continuation2 = (Continuation) anonymousClass1.L$2;
            dVar2 = (d) anonymousClass1.L$1;
            flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onStart$$inlined$unsafeFlow$1) anonymousClass1.L$0;
            try {
                kotlin.k.b(obj);
                safeCollector.releaseIntercepted();
                cVar = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1.f15931a;
                anonymousClass1.L$0 = flowKt__EmittersKt$onStart$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = dVar2;
                anonymousClass1.L$2 = continuation2;
                anonymousClass1.L$3 = dVar3;
                anonymousClass1.L$4 = safeCollector;
                anonymousClass1.label = 2;
                if (cVar.d(dVar3, anonymousClass1) == objD) {
                    return objD;
                }
            } catch (Throwable th2) {
                th = th2;
                safeCollector.releaseIntercepted();
                throw th;
            }
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            kotlin.k.b(obj);
        }
        return kotlin.v.f15822a;
    }
}
