package kotlinx.coroutines.flow;

import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
final /* synthetic */ class u {
    public static final <T> c<T> a(c<? extends T> cVar, int i, BufferOverflow bufferOverflow) {
        int i2;
        BufferOverflow bufferOverflow2;
        boolean z = true;
        if (!(i >= 0 || i == -2 || i == -1)) {
            throw new IllegalArgumentException(("Buffer size should be non-negative, BUFFERED, or CONFLATED, but was " + i).toString());
        }
        if (i == -1 && bufferOverflow != BufferOverflow.SUSPEND) {
            z = false;
        }
        if (!z) {
            throw new IllegalArgumentException("CONFLATED capacity cannot be used with non-default onBufferOverflow".toString());
        }
        if (i == -1) {
            bufferOverflow2 = BufferOverflow.DROP_OLDEST;
            i2 = 0;
        } else {
            i2 = i;
            bufferOverflow2 = bufferOverflow;
        }
        return cVar instanceof kotlinx.coroutines.flow.internal.m ? kotlinx.coroutines.flow.internal.m.a.a((kotlinx.coroutines.flow.internal.m) cVar, null, i2, bufferOverflow2, 1, null) : new kotlinx.coroutines.flow.internal.f(cVar, null, i2, bufferOverflow2, 2, null);
    }

    public static /* synthetic */ c b(c cVar, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
        if ((i2 & 1) != 0) {
            i = -2;
        }
        if ((i2 & 2) != 0) {
            bufferOverflow = BufferOverflow.SUSPEND;
        }
        return f.b(cVar, i, bufferOverflow);
    }
}
