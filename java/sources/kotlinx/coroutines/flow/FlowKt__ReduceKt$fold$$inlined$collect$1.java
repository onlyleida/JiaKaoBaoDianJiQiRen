package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.Ref$ObjectRef;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class FlowKt__ReduceKt$fold$$inlined$collect$1<T> implements d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ Ref$ObjectRef f15944a;
    final /* synthetic */ Function3 b;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$$inlined$collect$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "value", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "emit"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.FlowKt__ReduceKt$fold$$inlined$collect$1", f = "Reduce.kt", l = {133}, m = "emit")
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
            return FlowKt__ReduceKt$fold$$inlined$collect$1.this.emit(null, this);
        }
    }

    public FlowKt__ReduceKt$fold$$inlined$collect$1(Ref$ObjectRef ref$ObjectRef, Function3 function3) {
        this.f15944a = ref$ObjectRef;
        this.b = function3;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.d
    public Object emit(Object obj, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        Ref$ObjectRef ref$ObjectRef;
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
        T t = (T) anonymousClass1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = anonymousClass1.label;
        if (i2 == 0) {
            kotlin.k.b(t);
            Ref$ObjectRef ref$ObjectRef2 = this.f15944a;
            Function3 function3 = this.b;
            T t2 = ref$ObjectRef2.element;
            anonymousClass1.L$0 = this;
            anonymousClass1.L$1 = obj;
            anonymousClass1.L$2 = anonymousClass1;
            anonymousClass1.L$3 = obj;
            anonymousClass1.L$4 = ref$ObjectRef2;
            anonymousClass1.label = 1;
            Object objInvoke = function3.invoke(t2, obj, anonymousClass1);
            if (objInvoke == objD) {
                return objD;
            }
            t = (T) objInvoke;
            ref$ObjectRef = ref$ObjectRef2;
        } else {
            if (i2 != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            ref$ObjectRef = (Ref$ObjectRef) anonymousClass1.L$4;
            Object obj2 = anonymousClass1.L$3;
            Object obj3 = anonymousClass1.L$1;
            kotlin.k.b(t);
        }
        ref$ObjectRef.element = t;
        return kotlin.v.f15822a;
    }
}
