package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlinx.coroutines.flow.internal.SafeCollector;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> implements c<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ c f15930a;
    final /* synthetic */ Function3 b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001a\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0003\u0010\u0007\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u00002\f\u0010\u0002\u001a\b\u0012\u0004\u0012\u00028\u00000\u00012\f\u0010\u0005\u001a\b\u0012\u0004\u0012\u00020\u00040\u0003H\u0096@¢\u0006\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "Lkotlinx/coroutines/flow/d;", "collector", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "collect", "(Lkotlinx/coroutines/flow/d;Lkotlin/coroutines/c;)Ljava/lang/Object;", "kotlinx/coroutines/flow/internal/SafeCollector_commonKt$unsafeFlow$1$collect$1"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1", f = "Emitters.kt", l = {114, 121, 128}, m = "collect")
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
            return FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.this.d(null, this);
        }
    }

    public FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1(c cVar, Function3 function3) {
        this.f15930a = cVar;
        this.b = function3;
    }

    /* JADX WARN: Code duplicated, block: B:34:0x00c0 A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:35:0x00c1  */
    /* JADX WARN: Code duplicated, block: B:46:0x00ed A[RETURN] */
    /* JADX WARN: Code duplicated, block: B:56:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.c
    public Object d(d dVar, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1<T> flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
        d dVar2;
        Continuation continuation2;
        Throwable th;
        d dVar3;
        n2 n2Var;
        Function3 function3;
        SafeCollector safeCollector;
        SafeCollector safeCollector2;
        Object objInvoke;
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
            try {
                c cVar = this.f15930a;
                anonymousClass1.L$0 = this;
                anonymousClass1.L$1 = dVar;
                anonymousClass1.L$2 = anonymousClass1;
                anonymousClass1.L$3 = dVar;
                anonymousClass1.label = 1;
                if (cVar.d(dVar, anonymousClass1) == objD) {
                    return objD;
                }
                flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                dVar2 = dVar;
                continuation2 = anonymousClass1;
                safeCollector = new SafeCollector(dVar, anonymousClass1.getContext());
                Function3 function4 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.b;
                anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = dVar2;
                anonymousClass1.L$2 = continuation2;
                anonymousClass1.L$3 = dVar;
                anonymousClass1.L$4 = safeCollector;
                anonymousClass1.label = 3;
                kotlin.jvm.internal.q.c(6);
                objInvoke = function4.invoke(safeCollector, null, anonymousClass1);
                kotlin.jvm.internal.q.c(7);
                if (objInvoke == objD) {
                    return objD;
                }
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return kotlin.v.f15822a;
            } catch (Throwable th2) {
                flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = this;
                dVar2 = dVar;
                continuation2 = anonymousClass1;
                th = th2;
                dVar3 = dVar2;
                n2Var = new n2(th);
                function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.b;
                anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = dVar2;
                anonymousClass1.L$2 = continuation2;
                anonymousClass1.L$3 = dVar3;
                anonymousClass1.L$4 = th;
                anonymousClass1.label = 2;
                if (FlowKt__EmittersKt.a(n2Var, function3, th, anonymousClass1) == objD) {
                    return objD;
                }
                throw th;
            }
        }
        if (i2 != 1) {
            if (i2 == 2) {
                Throwable th3 = (Throwable) anonymousClass1.L$4;
                kotlin.k.b(obj);
                throw th3;
            }
            if (i2 != 3) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            safeCollector2 = (SafeCollector) anonymousClass1.L$4;
            try {
                kotlin.k.b(obj);
                safeCollector2.releaseIntercepted();
                return kotlin.v.f15822a;
            } catch (Throwable th4) {
                th = th4;
                safeCollector2.releaseIntercepted();
                throw th;
            }
        }
        dVar = (d) anonymousClass1.L$3;
        continuation2 = (Continuation) anonymousClass1.L$2;
        dVar2 = (d) anonymousClass1.L$1;
        flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1 = (FlowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1) anonymousClass1.L$0;
        try {
            kotlin.k.b(obj);
            safeCollector = new SafeCollector(dVar, anonymousClass1.getContext());
            try {
                Function3 function5 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.b;
                anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
                anonymousClass1.L$1 = dVar2;
                anonymousClass1.L$2 = continuation2;
                anonymousClass1.L$3 = dVar;
                anonymousClass1.L$4 = safeCollector;
                anonymousClass1.label = 3;
                kotlin.jvm.internal.q.c(6);
                objInvoke = function5.invoke(safeCollector, null, anonymousClass1);
                kotlin.jvm.internal.q.c(7);
                if (objInvoke == objD) {
                    return objD;
                }
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                return kotlin.v.f15822a;
            } catch (Throwable th5) {
                th = th5;
                safeCollector2 = safeCollector;
                safeCollector2.releaseIntercepted();
                throw th;
            }
        } catch (Throwable th6) {
            dVar3 = dVar;
            th = th6;
            n2Var = new n2(th);
            function3 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1.b;
            anonymousClass1.L$0 = flowKt__EmittersKt$onCompletion$$inlined$unsafeFlow$1;
            anonymousClass1.L$1 = dVar2;
            anonymousClass1.L$2 = continuation2;
            anonymousClass1.L$3 = dVar3;
            anonymousClass1.L$4 = th;
            anonymousClass1.label = 2;
            if (FlowKt__EmittersKt.a(n2Var, function3, th, anonymousClass1) == objD) {
                return objD;
            }
            throw th;
        }
    }
}
