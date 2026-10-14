package kotlinx.coroutines.flow.internal;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.collections.IndexedValue;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.v;
import kotlinx.coroutines.z2;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
public final class CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1<T> implements kotlinx.coroutines.flow.d<T> {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    final /* synthetic */ CombineKt$combineInternal$2.AnonymousClass1 f15966a;

    /* JADX INFO: renamed from: kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1$1, reason: invalid class name */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0016\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\b\u0002\u0010\u0007\u001a\u0004\u0018\u00010\u0005\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u00002\f\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u0002H\u0096@¨\u0006\u0006"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "value", "Lkotlin/coroutines/c;", "Lkotlin/v;", "continuation", "", "kotlinx/coroutines/flow/FlowKt__CollectKt$collect$3$emit$1", "emit"}, k = 3, mv = {1, 1, 15})
    @DebugMetadata(c = "kotlinx.coroutines.flow.internal.CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1", f = "Combine.kt", l = {133, 134}, m = "emit")
    public static final class AnonymousClass1 extends ContinuationImpl {
        Object L$0;
        Object L$1;
        Object L$2;
        Object L$3;
        int label;
        /* synthetic */ Object result;

        public AnonymousClass1(Continuation continuation) {
            super(continuation);
        }

        @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
        public final Object invokeSuspend(Object obj) {
            this.result = obj;
            this.label |= Integer.MIN_VALUE;
            return CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1.this.emit(null, this);
        }
    }

    public CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1(CombineKt$combineInternal$2.AnonymousClass1 anonymousClass1) {
        this.f15966a = anonymousClass1;
    }

    /* JADX WARN: Code duplicated, block: B:7:0x0013  */
    @Override // kotlinx.coroutines.flow.d
    public Object emit(Object obj, Continuation continuation) throws Throwable {
        AnonymousClass1 anonymousClass1;
        CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1<T> combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;
        Object obj2;
        Continuation continuation2;
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
        Object obj3 = anonymousClass1.result;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = anonymousClass1.label;
        if (i2 != 0) {
            if (i2 == 1) {
                Object obj4 = anonymousClass1.L$3;
                continuation2 = (Continuation) anonymousClass1.L$2;
                Object obj5 = anonymousClass1.L$1;
                combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 = (CombineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1) anonymousClass1.L$0;
                kotlin.k.b(obj3);
                obj2 = obj4;
                obj = obj5;
            } else {
                if (i2 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                Object obj6 = anonymousClass1.L$3;
                Object obj7 = anonymousClass1.L$1;
                kotlin.k.b(obj3);
            }
            return v.f15822a;
        }
        kotlin.k.b(obj3);
        CombineKt$combineInternal$2.AnonymousClass1 anonymousClass2 = this.f15966a;
        kotlinx.coroutines.channels.f fVar = anonymousClass2.$resultChannel;
        IndexedValue indexedValue = new IndexedValue(anonymousClass2.$i, obj);
        anonymousClass1.L$0 = this;
        anonymousClass1.L$1 = obj;
        anonymousClass1.L$2 = anonymousClass1;
        anonymousClass1.L$3 = obj;
        anonymousClass1.label = 1;
        if (fVar.F(indexedValue, anonymousClass1) == objD) {
            return objD;
        }
        combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1 = this;
        obj2 = obj;
        continuation2 = anonymousClass1;
        anonymousClass1.L$0 = combineKt$combineInternal$2$1$invokeSuspend$$inlined$collect$1;
        anonymousClass1.L$1 = obj;
        anonymousClass1.L$2 = continuation2;
        anonymousClass1.L$3 = obj2;
        anonymousClass1.label = 2;
        if (z2.b(anonymousClass1) == objD) {
            return objD;
        }
        return v.f15822a;
    }
}
