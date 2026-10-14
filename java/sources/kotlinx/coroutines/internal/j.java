package kotlinx.coroutines.internal;

import kotlin.Result;

/* JADX INFO: loaded from: classes6.dex */
public final class j {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final boolean f16022a;

    static {
        Object objM139constructorimpl;
        try {
            Result.Companion companion = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(Class.forName("android.os.Build"));
        } catch (Throwable th) {
            Result.Companion companion2 = Result.INSTANCE;
            objM139constructorimpl = Result.m139constructorimpl(kotlin.k.a(th));
        }
        f16022a = Result.m146isSuccessimpl(objM139constructorimpl);
    }

    public static final boolean a() {
        return f16022a;
    }
}
