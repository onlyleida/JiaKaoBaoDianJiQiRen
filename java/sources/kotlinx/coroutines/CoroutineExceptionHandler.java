package kotlinx.coroutines;

import kotlin.coroutines.CoroutineContext;

/* JADX INFO: loaded from: classes6.dex */
public interface CoroutineExceptionHandler extends CoroutineContext.a {
    public static final a P = a.f15827a;

    public static final class a implements CoroutineContext.b<CoroutineExceptionHandler> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15827a = new a();

        private a() {
        }
    }

    void handleException(CoroutineContext coroutineContext, Throwable th);
}
