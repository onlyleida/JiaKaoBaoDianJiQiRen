package kotlin.sequences;

import androidx.exifinterface.media.ExifInterface;
import java.util.List;
import kotlin.Metadata;
import kotlin.collections.s;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.DebugMetadata;
import kotlin.coroutines.jvm.internal.RestrictedSuspendLambda;
import kotlin.jvm.functions.Function2;
import kotlin.jvm.internal.r;
import kotlin.random.Random;
import kotlin.v;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u0001\"\u0004\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u0002H\u00020\u0003H\u008a@¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"<anonymous>", "", ExifInterface.GPS_DIRECTION_TRUE, "Lkotlin/sequences/SequenceScope;", "invoke", "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;"}, k = 3, mv = {1, 5, 1})
@DebugMetadata(c = "kotlin.sequences.SequencesKt__SequencesKt$shuffled$1", f = "Sequences.kt", l = {cn.mucang.android.jiakaoyi.signal.communicate.receive.l.Receive_GEAR_DATA2}, m = "invokeSuspend")
final class SequencesKt__SequencesKt$shuffled$1<T> extends RestrictedSuspendLambda implements Function2<SequenceScope<? super T>, Continuation<? super v>, Object> {
    final /* synthetic */ Random $random;
    final /* synthetic */ Sequence $this_shuffled;
    private /* synthetic */ Object L$0;
    Object L$1;
    int label;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    SequencesKt__SequencesKt$shuffled$1(Sequence sequence, Random random, Continuation continuation) {
        super(2, continuation);
        this.$this_shuffled = sequence;
        this.$random = random;
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Continuation<v> create(Object obj, Continuation<?> completion) {
        r.e(completion, "completion");
        SequencesKt__SequencesKt$shuffled$1 sequencesKt__SequencesKt$shuffled$1 = new SequencesKt__SequencesKt$shuffled$1(this.$this_shuffled, this.$random, completion);
        sequencesKt__SequencesKt$shuffled$1.L$0 = obj;
        return sequencesKt__SequencesKt$shuffled$1;
    }

    @Override // kotlin.jvm.functions.Function2
    public final Object invoke(Object obj, Continuation<? super v> continuation) {
        return ((SequencesKt__SequencesKt$shuffled$1) create(obj, continuation)).invokeSuspend(v.f15822a);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) throws Throwable {
        List listB;
        SequenceScope sequenceScope;
        Object objD = kotlin.coroutines.intrinsics.b.d();
        int i = this.label;
        if (i == 0) {
            kotlin.k.b(obj);
            SequenceScope sequenceScope2 = (SequenceScope) this.L$0;
            listB = SequencesKt___SequencesKt.B(this.$this_shuffled);
            sequenceScope = sequenceScope2;
        } else {
            if (i != 1) {
                throw new IllegalStateException("call to 'resume' before 'invoke' with coroutine");
            }
            listB = (List) this.L$1;
            SequenceScope sequenceScope3 = (SequenceScope) this.L$0;
            kotlin.k.b(obj);
            sequenceScope = sequenceScope3;
        }
        while (!listB.isEmpty()) {
            int iNextInt = this.$random.nextInt(listB.size());
            Object objH = s.H(listB);
            if (iNextInt < listB.size()) {
                objH = listB.set(iNextInt, objH);
            }
            this.L$0 = sequenceScope;
            this.L$1 = listB;
            this.label = 1;
            if (sequenceScope.e(objH, this) == objD) {
                return objD;
            }
        }
        return v.f15822a;
    }
}
