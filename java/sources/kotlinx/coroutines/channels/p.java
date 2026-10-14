package kotlinx.coroutines.channels;

import java.util.concurrent.CancellationException;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public interface p<E> {

    public static final class a {
        public static /* synthetic */ void a(p pVar, CancellationException cancellationException, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: cancel");
            }
            if ((i & 1) != 0) {
                cancellationException = null;
            }
            pVar.a(cancellationException);
        }
    }

    Object A(Continuation<? super E> continuation);

    void a(CancellationException cancellationException);

    boolean g();

    ChannelIterator<E> iterator();

    E poll();

    Object v(Continuation<? super x<? extends E>> continuation);

    kotlinx.coroutines.selects.d<E> y();

    kotlinx.coroutines.selects.d<E> z();
}
