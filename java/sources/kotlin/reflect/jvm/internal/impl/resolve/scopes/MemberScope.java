package kotlin.reflect.jvm.internal.impl.resolve.scopes;

import java.util.Collection;
import java.util.Set;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;

/* JADX INFO: loaded from: classes6.dex */
public interface MemberScope extends h {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    public static final Companion f15518a = Companion.f15519a;

    public static final class Companion {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        static final /* synthetic */ Companion f15519a = new Companion();
        private static final Function1<kotlin.reflect.jvm.internal.impl.name.f, Boolean> b = new Function1<kotlin.reflect.jvm.internal.impl.name.f, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope$Companion$ALL_NAME_FILTER$1
            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(kotlin.reflect.jvm.internal.impl.name.f it) {
                r.e(it, "it");
                return Boolean.TRUE;
            }
        };

        private Companion() {
        }

        public final Function1<kotlin.reflect.jvm.internal.impl.name.f, Boolean> a() {
            return b;
        }
    }

    public static final class a extends f {
        public static final a b = new a();

        private a() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
            return u0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            return u0.b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            return u0.b();
        }
    }

    Set<kotlin.reflect.jvm.internal.impl.name.f> a();

    Collection<? extends n0> b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    Collection<? extends j0> c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar);

    Set<kotlin.reflect.jvm.internal.impl.name.f> d();

    Set<kotlin.reflect.jvm.internal.impl.name.f> e();
}
