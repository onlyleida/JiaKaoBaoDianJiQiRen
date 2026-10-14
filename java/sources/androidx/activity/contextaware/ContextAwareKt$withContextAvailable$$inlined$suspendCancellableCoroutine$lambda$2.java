package androidx.activity.contextaware;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: loaded from: classes.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\u0010\u0007\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\b\u0010\u0002\u001a\u0004\u0018\u00010\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"R", "", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Throwable;)V", "androidx/activity/contextaware/ContextAwareKt$withContextAvailable$2$1", "<anonymous>"}, k = 3, mv = {1, 1, 15})
public final class ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$2 extends Lambda implements Function1<Throwable, v> {
    final /* synthetic */ c $listener;
    final /* synthetic */ Function1 $onContextAvailable$inlined;
    final /* synthetic */ a $this_withContextAvailable$inlined;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public ContextAwareKt$withContextAvailable$$inlined$suspendCancellableCoroutine$lambda$2(c cVar, a aVar, Function1 function1) {
        super(1);
        this.$this_withContextAvailable$inlined = aVar;
        this.$onContextAvailable$inlined = function1;
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(Throwable th) {
        invoke2(th);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        this.$this_withContextAvailable$inlined.removeOnContextAvailableListener(this.$listener);
    }
}
