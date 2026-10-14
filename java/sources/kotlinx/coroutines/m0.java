package kotlinx.coroutines;

import kotlin.Result;
import kotlin.coroutines.Continuation;

/* JADX INFO: loaded from: classes6.dex */
public final class m0 {
    public static final String a(Object obj) {
        return obj.getClass().getSimpleName();
    }

    public static final String b(Object obj) {
        return Integer.toHexString(System.identityHashCode(obj));
    }

    public static final String c(Continuation<?> continuation) {
        Object objM139constructorimpl;
        if (continuation instanceof kotlinx.coroutines.internal.g) {
            return continuation.toString();
        }
        try {
            Result.Companion aVar = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(continuation + '@' + b(continuation));
        } catch (Throwable th) {
            Result.Companion aVar2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        if (Result.m142exceptionOrNullimpl(objM139constructorimpl) != null) {
            objM139constructorimpl = continuation.getClass().getName() + '@' + b(continuation);
        }
        return (String) objM139constructorimpl;
    }
}
