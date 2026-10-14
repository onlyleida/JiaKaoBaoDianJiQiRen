package kotlin.reflect.jvm.internal.impl.util;

import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;

/* JADX INFO: loaded from: classes6.dex */
public abstract class c {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final boolean f15733a;

    public static final class a extends c {
        public static final a b = new a();

        private a() {
            super(false, null);
        }
    }

    public static final class b extends c {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(String error) {
            super(false, null);
            r.e(error, "error");
        }
    }

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.util.c$c, reason: collision with other inner class name */
    public static final class C0360c extends c {
        public static final C0360c b = new C0360c();

        private C0360c() {
            super(true, null);
        }
    }

    private c(boolean z) {
        this.f15733a = z;
    }

    public /* synthetic */ c(boolean z, o oVar) {
        this(z);
    }

    public final boolean a() {
        return this.f15733a;
    }
}
