package kotlinx.coroutines;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.coroutines.Continuation;
import kotlin.coroutines.jvm.internal.ContinuationImpl;
import kotlin.coroutines.jvm.internal.DebugMetadata;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u001c\n\u0000\n\u0002\u0010\t\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0004\u0010\t\u001a\u0004\u0018\u00010\u0006\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\"\u0010\u0007\u001a\u001e\b\u0001\u0012\u0004\u0012\u00020\u0004\u0012\n\u0012\b\u0012\u0004\u0012\u00028\u00000\u0005\u0012\u0006\u0012\u0004\u0018\u00010\u00060\u00032\u000e\u0010\b\u001a\n\u0012\u0006\u0012\u0004\u0018\u00018\u00000\u0005H\u0086@¢\u0006\u0004\b\t\u0010\n"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "", "timeMillis", "Lkotlin/Function2;", "Lkotlinx/coroutines/i0;", "Lkotlin/coroutines/c;", "", "block", "continuation", "withTimeoutOrNull", "(JLkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;"}, k = 3, mv = {1, 1, 15})
@DebugMetadata(c = "kotlinx.coroutines.TimeoutKt", f = "Timeout.kt", l = {101}, m = "withTimeoutOrNull")
final class TimeoutKt$withTimeoutOrNull$1 extends ContinuationImpl {
    long J$0;
    Object L$0;
    Object L$1;
    int label;
    /* synthetic */ Object result;

    TimeoutKt$withTimeoutOrNull$1(Continuation continuation) {
        super(continuation);
    }

    @Override // kotlin.coroutines.jvm.internal.BaseContinuationImpl
    public final Object invokeSuspend(Object obj) {
        this.result = obj;
        this.label |= Integer.MIN_VALUE;
        return TimeoutKt.c(0L, null, this);
    }
}
