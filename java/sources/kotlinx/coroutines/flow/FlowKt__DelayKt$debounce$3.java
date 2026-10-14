package kotlinx.coroutines.flow;

import androidx.exifinterface.media.ExifInterface;
import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.time.Duration;

/* JADX INFO: Add missing generic type declarations: [T] */
/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\f\n\u0002\b\u0002\n\u0002\u0010\t\n\u0002\b\u0003\u0010\u0005\u001a\u00020\u0002\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0001\u001a\u00028\u0000H\n¢\u0006\u0004\b\u0003\u0010\u0004"}, d2 = {ExifInterface.GPS_DIRECTION_TRUE, "emittedItem", "", "invoke", "(Ljava/lang/Object;)J", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class FlowKt__DelayKt$debounce$3<T> extends Lambda implements Function1<T, Long> {
    final /* synthetic */ Function1 $timeout;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    FlowKt__DelayKt$debounce$3(Function1 function1) {
        super(1);
        this.$timeout = function1;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final long invoke2(T t) {
        return kotlinx.coroutines.s0.c(((Duration) this.$timeout.invoke(t)).unbox-impl());
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ Long invoke(Object obj) {
        return Long.valueOf(invoke2(obj));
    }
}
