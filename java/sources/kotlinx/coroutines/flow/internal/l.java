package kotlinx.coroutines.flow.internal;

/* JADX INFO: loaded from: classes6.dex */
public final class l {
    public static final void a(AbortFlowException abortFlowException, kotlinx.coroutines.flow.d<?> dVar) {
        if (abortFlowException.getOwner() != dVar) {
            throw abortFlowException;
        }
    }
}
