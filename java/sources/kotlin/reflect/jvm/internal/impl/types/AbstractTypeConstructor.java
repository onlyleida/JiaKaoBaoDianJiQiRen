package kotlin.reflect.jvm.internal.impl.types;

import java.util.Collection;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

/* JADX INFO: loaded from: classes6.dex */
public abstract class AbstractTypeConstructor extends i {
    private final kotlin.reflect.jvm.internal.impl.storage.h<a> b;
    private final boolean c;

    /* JADX INFO: Access modifiers changed from: private */
    final class ModuleViewTypeConstructor implements q0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.types.checker.g f15641a;
        private final Lazy b;
        final /* synthetic */ AbstractTypeConstructor c;

        public ModuleViewTypeConstructor(final AbstractTypeConstructor this$0, kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            kotlin.jvm.internal.r.e(this$0, "this$0");
            kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            this.c = this$0;
            this.f15641a = kotlinTypeRefiner;
            this.b = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<List<? extends a0>>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$ModuleViewTypeConstructor$refinedSupertypes$2
                /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends a0> invoke() {
                    return kotlin.reflect.jvm.internal.impl.types.checker.h.b(this.this$0.f15641a, this$0.a());
                }
            });
        }

        private final List<a0> f() {
            return (List) this.b.getValue();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
            kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
            return this.c.b(kotlinTypeRefiner);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f u() {
            return this.c.u();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return this.c.d();
        }

        public boolean equals(Object obj) {
            return this.c.equals(obj);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        /* JADX INFO: renamed from: g, reason: merged with bridge method [inline-methods] */
        public List<a0> a() {
            return f();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<kotlin.reflect.jvm.internal.impl.descriptors.t0> getParameters() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters = this.c.getParameters();
            kotlin.jvm.internal.r.d(parameters, "this@AbstractTypeConstructor.parameters");
            return parameters;
        }

        public int hashCode() {
            return this.c.hashCode();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public kotlin.reflect.jvm.internal.impl.builtins.g k() {
            kotlin.reflect.jvm.internal.impl.builtins.g gVarK = this.c.k();
            kotlin.jvm.internal.r.d(gVarK, "this@AbstractTypeConstructor.builtIns");
            return gVarK;
        }

        public String toString() {
            return this.c.toString();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final Collection<a0> f15642a;
        private List<? extends a0> b;

        /* JADX WARN: Multi-variable type inference failed */
        public a(Collection<? extends a0> allSupertypes) {
            kotlin.jvm.internal.r.e(allSupertypes, "allSupertypes");
            this.f15642a = allSupertypes;
            this.b = kotlin.collections.t.d(t.c);
        }

        public final Collection<a0> a() {
            return this.f15642a;
        }

        public final List<a0> b() {
            return this.b;
        }

        public final void c(List<? extends a0> list) {
            kotlin.jvm.internal.r.e(list, "<set-?>");
            this.b = list;
        }
    }

    public AbstractTypeConstructor(kotlin.reflect.jvm.internal.impl.storage.m storageManager) {
        kotlin.jvm.internal.r.e(storageManager, "storageManager");
        this.b = storageManager.f(new Function0<a>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final AbstractTypeConstructor.a invoke() {
                return new AbstractTypeConstructor.a(this.this$0.j());
            }
        }, new Function1<Boolean, a>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$2
            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ AbstractTypeConstructor.a invoke(Boolean bool) {
                return invoke(bool.booleanValue());
            }

            public final AbstractTypeConstructor.a invoke(boolean z) {
                return new AbstractTypeConstructor.a(kotlin.collections.t.d(t.c));
            }
        }, new Function1<a, kotlin.v>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public /* bridge */ /* synthetic */ kotlin.v invoke(AbstractTypeConstructor.a aVar) {
                invoke2(aVar);
                return kotlin.v.f15822a;
            }

            /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
            public final void invoke2(AbstractTypeConstructor.a supertypes) {
                kotlin.jvm.internal.r.e(supertypes, "supertypes");
                kotlin.reflect.jvm.internal.impl.descriptors.r0 r0VarO = this.this$0.o();
                AbstractTypeConstructor abstractTypeConstructor = this.this$0;
                Collection<a0> collectionA = supertypes.a();
                final AbstractTypeConstructor abstractTypeConstructor2 = this.this$0;
                Function1<q0, Iterable<? extends a0>> function1 = new Function1<q0, Iterable<? extends a0>>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$resultWithoutCycles$1
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public final Iterable<a0> invoke(q0 it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        return abstractTypeConstructor2.i(it, false);
                    }
                };
                final AbstractTypeConstructor abstractTypeConstructor3 = this.this$0;
                Collection<a0> collectionA2 = r0VarO.a(abstractTypeConstructor, collectionA, function1, new Function1<a0, kotlin.v>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3$resultWithoutCycles$2
                    {
                        super(1);
                    }

                    @Override // kotlin.jvm.functions.Function1
                    public /* bridge */ /* synthetic */ kotlin.v invoke(a0 a0Var) {
                        invoke2(a0Var);
                        return kotlin.v.f15822a;
                    }

                    /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                    public final void invoke2(a0 it) {
                        kotlin.jvm.internal.r.e(it, "it");
                        abstractTypeConstructor3.s(it);
                    }
                });
                if (collectionA2.isEmpty()) {
                    a0 a0VarL = this.this$0.l();
                    collectionA2 = a0VarL == null ? null : kotlin.collections.t.d(a0VarL);
                    if (collectionA2 == null) {
                        collectionA2 = kotlin.collections.u.j();
                    }
                }
                if (this.this$0.n()) {
                    kotlin.reflect.jvm.internal.impl.descriptors.r0 r0VarO2 = this.this$0.o();
                    final AbstractTypeConstructor abstractTypeConstructor4 = this.this$0;
                    Function1<q0, Iterable<? extends a0>> function2 = new Function1<q0, Iterable<? extends a0>>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3.2
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public final Iterable<a0> invoke(q0 it) {
                            kotlin.jvm.internal.r.e(it, "it");
                            return abstractTypeConstructor4.i(it, true);
                        }
                    };
                    final AbstractTypeConstructor abstractTypeConstructor5 = this.this$0;
                    r0VarO2.a(abstractTypeConstructor4, collectionA2, function2, new Function1<a0, kotlin.v>() { // from class: kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor$supertypes$3.3
                        {
                            super(1);
                        }

                        @Override // kotlin.jvm.functions.Function1
                        public /* bridge */ /* synthetic */ kotlin.v invoke(a0 a0Var) {
                            invoke2(a0Var);
                            return kotlin.v.f15822a;
                        }

                        /* JADX INFO: renamed from: invoke, reason: avoid collision after fix types in other method */
                        public final void invoke2(a0 it) {
                            kotlin.jvm.internal.r.e(it, "it");
                            abstractTypeConstructor5.r(it);
                        }
                    });
                }
                AbstractTypeConstructor abstractTypeConstructor6 = this.this$0;
                List<a0> listM0 = collectionA2 instanceof List ? (List) collectionA2 : null;
                if (listM0 == null) {
                    listM0 = CollectionsKt___CollectionsKt.M0(collectionA2);
                }
                supertypes.c(abstractTypeConstructor6.q(listM0));
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final Collection<a0> i(q0 q0Var, boolean z) {
        AbstractTypeConstructor abstractTypeConstructor = q0Var instanceof AbstractTypeConstructor ? (AbstractTypeConstructor) q0Var : null;
        List listX0 = abstractTypeConstructor != null ? CollectionsKt___CollectionsKt.x0(abstractTypeConstructor.b.invoke().a(), abstractTypeConstructor.m(z)) : null;
        if (listX0 != null) {
            return listX0;
        }
        Collection<a0> supertypes = q0Var.a();
        kotlin.jvm.internal.r.d(supertypes, "supertypes");
        return supertypes;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return new ModuleViewTypeConstructor(this, kotlinTypeRefiner);
    }

    protected abstract Collection<a0> j();

    protected a0 l() {
        return null;
    }

    protected Collection<a0> m(boolean z) {
        return kotlin.collections.u.j();
    }

    protected boolean n() {
        return this.c;
    }

    protected abstract kotlin.reflect.jvm.internal.impl.descriptors.r0 o();

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: p, reason: merged with bridge method [inline-methods] */
    public List<a0> a() {
        return this.b.invoke().b();
    }

    protected List<a0> q(List<a0> supertypes) {
        kotlin.jvm.internal.r.e(supertypes, "supertypes");
        return supertypes;
    }

    protected void r(a0 type) {
        kotlin.jvm.internal.r.e(type, "type");
    }

    protected void s(a0 type) {
        kotlin.jvm.internal.r.e(type, "type");
    }
}
