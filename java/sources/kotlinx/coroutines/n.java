package kotlinx.coroutines;

import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public final class n {
    public static final void a(k<?> kVar, y0 y0Var) {
        kVar.l(new z0(y0Var));
    }

    public static final <T> l<T> b(Continuation<? super T> continuation) {
        if (!(continuation instanceof kotlinx.coroutines.internal.g)) {
            return new l<>(continuation, 2);
        }
        l<T> lVarI = ((kotlinx.coroutines.internal.g) continuation).i();
        if (lVarI != null) {
            if (!lVarI.H()) {
                lVarI = null;
            }
            if (lVarI != null) {
                return lVarI;
            }
        }
        return new l<>(continuation, 2);
    }

    public static final void c(k<?> kVar, kotlinx.coroutines.internal.n nVar) {
        kVar.l(new i2(nVar));
    }
}
