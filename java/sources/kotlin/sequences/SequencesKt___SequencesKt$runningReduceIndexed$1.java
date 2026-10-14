package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import java.util.Iterator;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.functions.Function3;
import kotlin.jvm.internal.r;
import kotlin.v;

/* JADX INFO: Add missing generic type declarations: [S] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\b\b\u0001\u0010\u0003*\u0002H\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.LATITUDE_SOUTH, ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningReduceIndexed$1", f = "_Sequences.kt", l = {2202, 2206}, m = "invokeSuspend")
final class SequencesKt___SequencesKt$runningReduceIndexed$1<S> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super S>, Continuation<? super v>, Object> {
    final /* synthetic */ Function3 $operation;
    final /* synthetic */ Sequence $this_runningReduceIndexed;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningReduceIndexed$1(Sequence sequence, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$this_runningReduceIndexed = sequence;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> completion) {
        r.e(completion, "completion");
        SequencesKt___SequencesKt$runningReduceIndexed$1 sequencesKt___SequencesKt$runningReduceIndexed$1 = new SequencesKt___SequencesKt$runningReduceIndexed$1(this.$this_runningReduceIndexed, this.$operation, completion);
        sequencesKt___SequencesKt$runningReduceIndexed$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningReduceIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super v> continuation) {
        return ((SequencesKt___SequencesKt$runningReduceIndexed$1) create(obj, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:18:0x0066  */
    /* JADX WARN: Code duplicated, block: B:20:0x006c  */
    /* JADX WARN: Code duplicated, block: B:23:0x0089 A[LOOP:0: B:16:0x0060->B:23:0x0089, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:29:0x008c A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:30:0x0088 A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        SequenceScope sequenceScope;
        Iterator it;
        Object next;
        Function3 function3;
        int i;
        Object objInvoke;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i2 = this.label;
        int i3 = 1;
        if (i2 == 0) {
            kotlin.k.b(obj);
            sequenceScope = (SequenceScope) this.L$0;
            it = this.$this_runningReduceIndexed.iterator();
            if (it.hasNext()) {
                next = it.next();
                this.L$0 = sequenceScope;
                this.L$1 = it;
                this.L$2 = next;
                this.label = 1;
                if (sequenceScope.e(next, this) == objD) {
                    return objD;
                }
            }
            return v.f15822a;
        }
        if (i2 == 1) {
            next = this.L$2;
            it = (Iterator) this.L$1;
            sequenceScope = (SequenceScope) this.L$0;
            kotlin.k.b(obj);
        } else {
            if (i2 != 2) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            int i4 = this.I$0;
            Object obj2 = this.L$2;
            it = (Iterator) this.L$1;
            sequenceScope = (SequenceScope) this.L$0;
            kotlin.k.b(obj);
            i3 = i4;
            next = obj2;
        }
        while (it.hasNext()) {
            function3 = this.$operation;
            i = i3 + 1;
            if (i3 >= 0) {
                s.t();
                throw null;
            }
            objInvoke = function3.invoke(kotlin.coroutines.jvm.internal.a.d(i3), next, it.next());
            this.L$0 = sequenceScope;
            this.L$1 = it;
            this.L$2 = objInvoke;
            this.I$0 = i;
            this.label = 2;
            if (sequenceScope.e(objInvoke, this) == objD) {
                return objD;
            }
            next = objInvoke;
            i3 = i;
        }
        return v.f15822a;
        while (it.hasNext()) {
            function3 = this.$operation;
            i = i3 + 1;
            if (i3 >= 0) {
                s.t();
                throw null;
            }
            objInvoke = function3.invoke(kotlin.coroutines.jvm.internal.a.d(i3), next, it.next());
            this.L$0 = sequenceScope;
            this.L$1 = it;
            this.L$2 = objInvoke;
            this.I$0 = i;
            this.label = 2;
            if (sequenceScope.e(objInvoke, this) == objD) {
                return objD;
            }
            next = objInvoke;
            i3 = i;
        }
        return v.f15822a;
    }
}
