package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;

/* JADX INFO: loaded from: classes6.dex */
public interface k extends f {
    public static final a b = a.f15671a;

    public static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ a f15671a = new a();
        private static final l b = new l(g.a.f15665a, null, 2, 0 == true ? 1 : 0);

        private a() {
        }

        public final l a() {
            return b;
        }
    }

    OverridingUtil a();

    g c();
}
