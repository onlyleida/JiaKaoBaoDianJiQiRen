package kotlin.reflect.jvm.internal.impl.storage;

import kotlin.jvm.functions.Function1;
import kotlin.v;

/* JADX INFO: loaded from: classes6.dex */
public interface j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final a f15633a = a.f15634a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15634a = new a();

        private a() {
        }

        public final d a(Runnable runnable, Function1<? super InterruptedException, v> function1) {
            return (runnable == null || function1 == null) ? new d(null, 1, null) : new c(runnable, function1);
        }
    }

    void lock();

    void unlock();
}
