package kotlinx.coroutines.channels;

import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public final class h {
    public static final <E> f<E> a(int i, BufferOverflow bufferOverflow, Function1<? super E, kotlin.v> function1) {
        if (i == -2) {
            return new d(bufferOverflow == BufferOverflow.SUSPEND ? f.S.a() : 1, bufferOverflow, function1);
        }
        if (i == -1) {
            if ((bufferOverflow != BufferOverflow.SUSPEND ? 0 : 1) != 0) {
                return new k(function1);
            }
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i == 0) {
            return bufferOverflow == BufferOverflow.SUSPEND ? new r(function1) : new d(1, bufferOverflow, function1);
        }
        if (i != Integer.MAX_VALUE) {
            return (i == 1 && bufferOverflow == BufferOverflow.DROP_OLDEST) ? new k(function1) : new d(i, bufferOverflow, function1);
        }
        return new l(function1);
    }

    public static /* synthetic */ f b(int i, BufferOverflow bufferOverflow, Function1 function1, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = 0;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        if ((i2 & 4) != 0) {
            function1 = null;
        }
        return a(i, bufferOverflow, function1);
    }
}
