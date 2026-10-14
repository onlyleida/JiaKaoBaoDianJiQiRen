package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public class r<E> extends AbstractChannel<E> {
    public r(Function1<? super E, kotlin.v> function1) {
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
        return true;
    }

    @Override // kotlinx.coroutines.channels.b
    protected final boolean r() {
        return true;
    }
}
