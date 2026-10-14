package kotlinx.coroutines.flow.internal;

import kotlin.coroutines.CoroutineContext;
import kotlin.jvm.functions.Function2;

/* JADX INFO: loaded from: classes6.dex */
public final class h implements CoroutineContext.a {
    public static final a c = new a(null);

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final CoroutineContext.b<?> f15976a = c;
    public final Throwable b;

    public static final class a implements CoroutineContext.b<h> {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    public h(Throwable th) {
        this.b = th;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public <R> R fold(R r, Function2<? super R, ? super CoroutineContext.a, ? extends R> function2) {
        return (R) CoroutineContext.a.C0316a.a(this, r, function2);
    }

    @Override // kotlin.coroutines.CoroutineContext.a, kotlin.coroutines.CoroutineContext
    public <E extends CoroutineContext.a> E get(CoroutineContext.b<E> bVar) {
        return (E) CoroutineContext.a.C0316a.b(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext.a
    public CoroutineContext.b<?> getKey() {
        return this.f15976a;
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext minusKey(CoroutineContext.b<?> bVar) {
        return CoroutineContext.a.C0316a.c(this, bVar);
    }

    @Override // kotlin.coroutines.CoroutineContext
    public CoroutineContext plus(CoroutineContext coroutineContext) {
        return CoroutineContext.a.C0316a.d(this, coroutineContext);
    }
}
