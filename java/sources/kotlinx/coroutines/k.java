package kotlinx.coroutines;

import kotlin.coroutines.Continuation;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public interface k<T> extends Continuation<T> {

    public static final class a {
        public static /* synthetic */ Object a(k kVar, Object obj, Object obj2, int i, Object obj3) {
            if (obj3 != null) {
                throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: tryResume");
            }
            if ((i & 2) != 0) {
                obj2 = null;
            }
            return kVar.c(obj, obj2);
        }
    }

    Object B(T t, Object obj, Function1<? super Throwable, kotlin.v> function1);

    void C(CoroutineDispatcher coroutineDispatcher, T t);

    void J(Object obj);

    Object c(T t, Object obj);

    void l(Function1<? super Throwable, kotlin.v> function1);

    Object m(Throwable th);

    void r(T t, Function1<? super Throwable, kotlin.v> function1);

    boolean w();
}
