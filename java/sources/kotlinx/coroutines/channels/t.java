package kotlinx.coroutines.channels;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public interface t<E> {

    public static final class a {
        public static /* synthetic */ boolean a(t tVar, Throwable th, int i, Object obj) {
            if (obj != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: close");
            }
            if ((i & 1) != 0) {
                th = null;
            }
            return tVar.D(th);
        }
    }

    boolean D(Throwable th);

    Object F(E e2, Continuation<? super kotlin.v> continuation);

    boolean G();

    boolean offer(E e2);

    void t(Function1<? super Throwable, kotlin.v> function1);
}
