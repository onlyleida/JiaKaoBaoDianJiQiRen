package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;
import kotlinx.coroutines.internal.y;

/* JADX INFO: loaded from: classes6.dex */
public class l<E> extends AbstractChannel<E> {
    public l(Function1<? super E, kotlin.v> function1) {
        super(function1);
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean P() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.AbstractChannel
    protected final boolean Q() {
        return true;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean q() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean r() {
        return false;
    }

    @Override // kotlinx.coroutines.channels.b
    protected Object u(E e2) {
        q<?> qVarX;
        do {
            Object objU = super.u(e2);
            y yVar = a.b;
            if (objU == yVar) {
                return yVar;
            }
            if (objU != a.c) {
                if (objU instanceof j) {
                    return objU;
                }
                throw new IllegalStateException(("Invalid offerInternal result " + objU).toString());
            }
            qVarX = x(e2);
            if (qVarX == null) {
                return yVar;
            }
        } while (!(qVarX instanceof j));
        return qVarX;
    }
}
