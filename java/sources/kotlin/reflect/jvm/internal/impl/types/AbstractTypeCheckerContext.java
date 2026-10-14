package kotlin.reflect.jvm.internal.impl.types;

import java.util.ArrayDeque;
import java.util.Set;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractTypeCheckerContext {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private int f15636a;
    private boolean b;
    private ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private Set<kotlin.reflect.jvm.internal.impl.types.model.h> f15637d;

    public enum LowerCapturedTypePolicy {
        CHECK_ONLY_LOWER,
        CHECK_SUBTYPE_AND_LOWER,
        SKIP_LOWER
    }

    public static abstract class a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext$a$a, reason: collision with other inner class name */
        public static abstract class AbstractC0355a extends a {
            public AbstractC0355a() {
                super(null);
            }
        }

        public static final class b extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final b f15638a = new b();

            private b() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public kotlin.reflect.jvm.internal.impl.types.model.h a(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g type) {
                kotlin.jvm.internal.r.e(context, "context");
                kotlin.jvm.internal.r.e(type, "type");
                return context.j().m0(type);
            }
        }

        public static final class c extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final c f15639a = new c();

            private c() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.types.model.h a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
                b(abstractTypeCheckerContext, gVar);
                throw null;
            }

            public Void b(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g type) {
                kotlin.jvm.internal.r.e(context, "context");
                kotlin.jvm.internal.r.e(type, "type");
                throw new UnsupportedOperationException("Should not be called");
            }
        }

        public static final class d extends a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final d f15640a = new d();

            private d() {
                super(null);
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public kotlin.reflect.jvm.internal.impl.types.model.h a(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g type) {
                kotlin.jvm.internal.r.e(context, "context");
                kotlin.jvm.internal.r.e(type, "type");
                return context.j().w(type);
            }
        }

        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public abstract kotlin.reflect.jvm.internal.impl.types.model.h a(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar);
    }

    public static /* synthetic */ Boolean d(AbstractTypeCheckerContext abstractTypeCheckerContext, kotlin.reflect.jvm.internal.impl.types.model.g gVar, kotlin.reflect.jvm.internal.impl.types.model.g gVar2, boolean z, int i, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: addSubtypeConstraint");
        }
        if ((i & 4) != 0) {
            z = false;
        }
        return abstractTypeCheckerContext.c(gVar, gVar2, z);
    }

    public Boolean c(kotlin.reflect.jvm.internal.impl.types.model.g subType, kotlin.reflect.jvm.internal.impl.types.model.g superType, boolean z) {
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superType, "superType");
        return null;
    }

    public final void e() {
        ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> arrayDeque = this.c;
        kotlin.jvm.internal.r.c(arrayDeque);
        arrayDeque.clear();
        Set<kotlin.reflect.jvm.internal.impl.types.model.h> set = this.f15637d;
        kotlin.jvm.internal.r.c(set);
        set.clear();
        this.b = false;
    }

    public boolean f(kotlin.reflect.jvm.internal.impl.types.model.g subType, kotlin.reflect.jvm.internal.impl.types.model.g superType) {
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superType, "superType");
        return true;
    }

    public LowerCapturedTypePolicy g(kotlin.reflect.jvm.internal.impl.types.model.h subType, kotlin.reflect.jvm.internal.impl.types.model.b superType) {
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superType, "superType");
        return LowerCapturedTypePolicy.CHECK_SUBTYPE_AND_LOWER;
    }

    public final ArrayDeque<kotlin.reflect.jvm.internal.impl.types.model.h> h() {
        return this.c;
    }

    public final Set<kotlin.reflect.jvm.internal.impl.types.model.h> i() {
        return this.f15637d;
    }

    public abstract kotlin.reflect.jvm.internal.impl.types.model.m j();

    public final void k() {
        this.b = true;
        if (this.c == null) {
            this.c = new ArrayDeque<>(4);
        }
        if (this.f15637d == null) {
            this.f15637d = kotlin.reflect.jvm.internal.impl.utils.e.c.a();
        }
    }

    public abstract boolean l(kotlin.reflect.jvm.internal.impl.types.model.g gVar);

    public final boolean m(kotlin.reflect.jvm.internal.impl.types.model.g type) {
        kotlin.jvm.internal.r.e(type, "type");
        return l(type);
    }

    public abstract boolean n();

    public abstract boolean o();

    public abstract kotlin.reflect.jvm.internal.impl.types.model.g p(kotlin.reflect.jvm.internal.impl.types.model.g gVar);

    public abstract kotlin.reflect.jvm.internal.impl.types.model.g q(kotlin.reflect.jvm.internal.impl.types.model.g gVar);

    public abstract a r(kotlin.reflect.jvm.internal.impl.types.model.h hVar);
}
