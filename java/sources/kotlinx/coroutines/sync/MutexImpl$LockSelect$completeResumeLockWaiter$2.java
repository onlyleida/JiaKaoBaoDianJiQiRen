package kotlinx.coroutines.sync;

import kotlin.Metadata;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Lambda;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
@Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0003\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\b\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u0001H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"R", "", "it", "Lkotlin/v;", "invoke", "(Ljava/lang/Throwable;)V", "<anonymous>"}, k = 3, mv = {1, 1, 15})
final class MutexImpl$LockSelect$completeResumeLockWaiter$2 extends Lambda implements Function1<Throwable, v> {
    final /* synthetic */ b.C0368b this$0;

    MutexImpl$LockSelect$completeResumeLockWaiter$2(b.C0368b c0368b) {
        super(1);
    }

    @Override // kotlin.jvm.functions.Function1
    public /* bridge */ /* synthetic */ v invoke(Throwable th) {
        invoke2(th);
        return v.f15822a;
    }

    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
    public final void invoke2(Throwable th) {
        b.C0368b c0368b = this.this$0;
        c0368b.f16115e.c(c0368b.f16116d);
    }
}
