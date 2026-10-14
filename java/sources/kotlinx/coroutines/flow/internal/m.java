package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.coroutines.EmptyCoroutineContext;
import kotlinx.coroutines.channels.BufferOverflow;

/* JADX INFO: loaded from: classes6.dex */
public interface m<T> extends kotlinx.coroutines.flow.c<T> {

    public static final class a {
        public static /* synthetic */ kotlinx.coroutines.flow.c a(m mVar, CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow, int i2, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: fuse");
            }
            if ((i2 & 1) != 0) {
                coroutineContext = EmptyCoroutineContext.INSTANCE;
            }
            if ((i2 & 2) != 0) {
                i = -3;
            }
            if ((i2 & 4) != 0) {
                bufferOverflow = BufferOverflow.SUSPEND;
            }
            return mVar.c(coroutineContext, i, bufferOverflow);
        }
    }

    kotlinx.coroutines.flow.c<T> c(CoroutineContext coroutineContext, int i, BufferOverflow bufferOverflow);
}
