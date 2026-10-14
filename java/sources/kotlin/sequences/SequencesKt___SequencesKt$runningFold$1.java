package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFold$1", f = "_Sequences.kt", l = {2115, 2119}, m = "invokeSuspend")
final class SequencesKt___SequencesKt$runningFold$1<R> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super v>, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function2 $operation;
    final /* synthetic */ Sequence $this_runningFold;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningFold$1(Sequence sequence, Object obj, Function2 function2, Continuation continuation) {
        super(2, continuation);
        this.$this_runningFold = sequence;
        this.$initial = obj;
        this.$operation = function2;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> completion) {
        r.e(completion, "completion");
        SequencesKt___SequencesKt$runningFold$1 sequencesKt___SequencesKt$runningFold$1 = new SequencesKt___SequencesKt$runningFold$1(this.$this_runningFold, this.$initial, this.$operation, completion);
        sequencesKt___SequencesKt$runningFold$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFold$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super v> continuation) {
        return ((SequencesKt___SequencesKt$runningFold$1) create(obj, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0053  */
    /* JADX WARN: Code duplicated, block: B:23:0x006b A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:24:? A[LOOP:0: B:15:0x004d->B:24:?, LOOP_END, SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        SequenceScope sequenceScope;
        Object objInvoke;
        SequenceScope sequenceScope2;
        Iterator it;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i != 0) {
            if (i == 1) {
                sequenceScope = (SequenceScope) this.L$0;
                kotlin.k.b(obj);
            } else {
                if (i != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                it = (Iterator) this.L$2;
                Object obj2 = this.L$1;
                sequenceScope2 = (SequenceScope) this.L$0;
                kotlin.k.b(obj);
                objInvoke = obj2;
            }
            while (it.hasNext()) {
                objInvoke = this.$operation.invoke(objInvoke, it.next());
                this.L$0 = sequenceScope2;
                this.L$1 = objInvoke;
                this.L$2 = it;
                this.label = 2;
                if (sequenceScope2.e(objInvoke, this) == objD) {
                    return objD;
                }
            }
            return v.f15822a;
        }
        kotlin.k.b(obj);
        sequenceScope = (SequenceScope) this.L$0;
        Object obj3 = this.$initial;
        this.L$0 = sequenceScope;
        this.label = 1;
        if (sequenceScope.e(obj3, this) == objD) {
            return objD;
        }
        objInvoke = this.$initial;
        sequenceScope2 = sequenceScope;
        it = this.$this_runningFold.iterator();
        while (it.hasNext()) {
            objInvoke = this.$operation.invoke(objInvoke, it.next());
            this.L$0 = sequenceScope2;
            this.L$1 = objInvoke;
            this.L$2 = it;
            this.label = 2;
            if (sequenceScope2.e(objInvoke, this) == objD) {
                return objD;
            }
        }
        return v.f15822a;
    }
}
