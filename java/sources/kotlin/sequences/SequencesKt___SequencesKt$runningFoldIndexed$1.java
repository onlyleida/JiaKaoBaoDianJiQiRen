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

/* JADX INFO: Add missing generic type declarations: [R] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0012\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002\"\u0004\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u0002H\u00030\u0004H\u008a@¢\u0006\u0004\b\u0005\u0010\u0006"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "R", "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt___SequencesKt$runningFoldIndexed$1", f = "_Sequences.kt", l = {2143, 2148}, m = "invokeSuspend")
final class SequencesKt___SequencesKt$runningFoldIndexed$1<R> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super R>, Continuation<? super v>, Object> {
    final /* synthetic */ Object $initial;
    final /* synthetic */ Function3 $operation;
    final /* synthetic */ Sequence $this_runningFoldIndexed;
    int I$0;
    private /* synthetic */ Object L$0;
    Object L$1;
    Object L$2;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt___SequencesKt$runningFoldIndexed$1(Sequence sequence, Object obj, Function3 function3, Continuation continuation) {
        super(2, continuation);
        this.$this_runningFoldIndexed = sequence;
        this.$initial = obj;
        this.$operation = function3;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> completion) {
        r.e(completion, "completion");
        SequencesKt___SequencesKt$runningFoldIndexed$1 sequencesKt___SequencesKt$runningFoldIndexed$1 = new SequencesKt___SequencesKt$runningFoldIndexed$1(this.$this_runningFoldIndexed, this.$initial, this.$operation, completion);
        sequencesKt___SequencesKt$runningFoldIndexed$1.L$0 = obj;
        return sequencesKt___SequencesKt$runningFoldIndexed$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super v> continuation) {
        return ((SequencesKt___SequencesKt$runningFoldIndexed$1) create(obj, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Code duplicated, block: B:17:0x0058  */
    /* JADX WARN: Code duplicated, block: B:19:0x0062  */
    /* JADX WARN: Code duplicated, block: B:22:0x007b A[LOOP:0: B:15:0x0052->B:22:0x007b, LOOP_END] */
    /* JADX WARN: Code duplicated, block: B:28:0x007e A[SYNTHETIC] */
    /* JADX WARN: Code duplicated, block: B:29:0x007a A[SYNTHETIC] */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        SequenceScope sequenceScope;
        int i;
        SequenceScope sequenceScope2;
        Object obj2;
        Iterator it;
        Object next;
        Function3 function3;
        int i2;
        Object objInvoke;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i3 = this.label;
        if (i3 != 0) {
            if (i3 == 1) {
                sequenceScope = (SequenceScope) this.L$0;
                kotlin.k.b(obj);
            } else {
                if (i3 != 2) {
                    throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
                }
                int i4 = this.I$0;
                it = (Iterator) this.L$2;
                Object obj3 = this.L$1;
                sequenceScope2 = (SequenceScope) this.L$0;
                kotlin.k.b(obj);
                i = i4;
                obj2 = obj3;
            }
            while (it.hasNext()) {
                next = it.next();
                function3 = this.$operation;
                i2 = i + 1;
                if (i >= 0) {
                    s.t();
                    throw null;
                }
                objInvoke = function3.invoke(kotlin.coroutines.jvm.internal.a.d(i), obj2, next);
                this.L$0 = sequenceScope2;
                this.L$1 = objInvoke;
                this.L$2 = it;
                this.I$0 = i2;
                this.label = 2;
                if (sequenceScope2.e(objInvoke, this) == objD) {
                    return objD;
                }
                obj2 = objInvoke;
                i = i2;
            }
            return v.f15822a;
        }
        kotlin.k.b(obj);
        sequenceScope = (SequenceScope) this.L$0;
        Object obj4 = this.$initial;
        this.L$0 = sequenceScope;
        this.label = 1;
        if (sequenceScope.e(obj4, this) == objD) {
            return objD;
        }
        i = 0;
        sequenceScope2 = sequenceScope;
        obj2 = this.$initial;
        it = this.$this_runningFoldIndexed.iterator();
        while (it.hasNext()) {
            next = it.next();
            function3 = this.$operation;
            i2 = i + 1;
            if (i >= 0) {
                s.t();
                throw null;
            }
            objInvoke = function3.invoke(kotlin.coroutines.jvm.internal.a.d(i), obj2, next);
            this.L$0 = sequenceScope2;
            this.L$1 = objInvoke;
            this.L$2 = it;
            this.I$0 = i2;
            this.label = 2;
            if (sequenceScope2.e(objInvoke, this) == objD) {
                return objD;
            }
            obj2 = objInvoke;
            i = i2;
        }
        return v.f15822a;
    }
}
