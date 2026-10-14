package kotlin.reflect.jvm.internal.impl.types.checker;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import kotlin.Lazy;
import kotlin.LazyThreadSafetyMode;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class NewCapturedTypeConstructor implements kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final s0 f15655a;
    private Function0<? extends List<? extends c1>> b;
    private final NewCapturedTypeConstructor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final t0 f15656d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Lazy f15657e;

    public NewCapturedTypeConstructor(s0 projection, Function0<? extends List<? extends c1>> function0, NewCapturedTypeConstructor newCapturedTypeConstructor, t0 t0Var) {
        kotlin.jvm.internal.r.e(projection, "projection");
        this.f15655a = projection;
        this.b = function0;
        this.c = newCapturedTypeConstructor;
        this.f15656d = t0Var;
        this.f15657e = kotlin.i.a(LazyThreadSafetyMode.PUBLICATION, new Function0<List<? extends c1>>() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$_supertypes$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends c1> invoke() {
                Function0 function1 = this.this$0.b;
                if (function1 == null) {
                    return null;
                }
                return (List) function1.invoke();
            }
        });
    }

    private final List<c1> g() {
        return (List) this.f15657e.getValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: c */
    public kotlin.reflect.jvm.internal.impl.descriptors.f u() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public boolean d() {
        return false;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!kotlin.jvm.internal.r.a(NewCapturedTypeConstructor.class, obj == null ? null : obj.getClass())) {
            return false;
        }
        Objects.requireNonNull(obj, "null cannot be cast to non-null type org.jetbrains.kotlin.types.checker.NewCapturedTypeConstructor");
        NewCapturedTypeConstructor newCapturedTypeConstructor = (NewCapturedTypeConstructor) obj;
        NewCapturedTypeConstructor newCapturedTypeConstructor2 = this.c;
        if (newCapturedTypeConstructor2 == null) {
            newCapturedTypeConstructor2 = this;
        }
        NewCapturedTypeConstructor newCapturedTypeConstructor3 = newCapturedTypeConstructor.c;
        if (newCapturedTypeConstructor3 != null) {
            newCapturedTypeConstructor = newCapturedTypeConstructor3;
        }
        return newCapturedTypeConstructor2 == newCapturedTypeConstructor;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: f, reason: merged with bridge method [inline-methods] */
    public List<c1> a() {
        List<c1> listG = g();
        return listG == null ? kotlin.collections.u.j() : listG;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public List<t0> getParameters() {
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.calls.inference.b
    public s0 getProjection() {
        return this.f15655a;
    }

    public final void h(final List<? extends c1> supertypes) {
        kotlin.jvm.internal.r.e(supertypes, "supertypes");
        Function0<? extends List<? extends c1>> function0 = this.b;
        this.b = new Function0<List<? extends c1>>() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$initializeSupertypes$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends c1> invoke() {
                return supertypes;
            }
        };
    }

    public int hashCode() {
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.c;
        return newCapturedTypeConstructor == null ? super.hashCode() : newCapturedTypeConstructor.hashCode();
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public NewCapturedTypeConstructor b(final g kotlinTypeRefiner) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        s0 s0VarB = getProjection().b(kotlinTypeRefiner);
        kotlin.jvm.internal.r.d(s0VarB, "projection.refine(kotlinTypeRefiner)");
        Function0<List<? extends c1>> function0 = this.b == null ? null : new Function0<List<? extends c1>>() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor$refine$1$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends c1> invoke() {
                List<c1> listA = this.this$0.a();
                g gVar = kotlinTypeRefiner;
                ArrayList arrayList = new ArrayList(kotlin.collections.v.u(listA, 10));
                Iterator<T> it = listA.iterator();
                while (it.hasNext()) {
                    arrayList.add(((c1) it.next()).S0(gVar));
                }
                return arrayList;
            }
        };
        NewCapturedTypeConstructor newCapturedTypeConstructor = this.c;
        if (newCapturedTypeConstructor == null) {
            newCapturedTypeConstructor = this;
        }
        return new NewCapturedTypeConstructor(s0VarB, function0, newCapturedTypeConstructor, this.f15656d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.q0
    public kotlin.reflect.jvm.internal.impl.builtins.g k() {
        a0 type = getProjection().getType();
        kotlin.jvm.internal.r.d(type, "projection.type");
        return TypeUtilsKt.h(type);
    }

    public String toString() {
        return "CapturedType(" + getProjection() + ')';
    }

    public /* synthetic */ NewCapturedTypeConstructor(s0 s0Var, Function0 function0, NewCapturedTypeConstructor newCapturedTypeConstructor, t0 t0Var, int i, kotlin.jvm.internal.o oVar) {
        this(s0Var, (i & 2) != 0 ? null : function0, (i & 4) != 0 ? null : newCapturedTypeConstructor, (i & 8) != 0 ? null : t0Var);
    }

    public /* synthetic */ NewCapturedTypeConstructor(s0 s0Var, List list, NewCapturedTypeConstructor newCapturedTypeConstructor, int i, kotlin.jvm.internal.o oVar) {
        this(s0Var, list, (i & 4) != 0 ? null : newCapturedTypeConstructor);
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public NewCapturedTypeConstructor(s0 projection, final List<? extends c1> supertypes, NewCapturedTypeConstructor newCapturedTypeConstructor) {
        this(projection, new Function0<List<? extends c1>>() { // from class: kotlin.reflect.jvm.internal.impl.types.checker.NewCapturedTypeConstructor.1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            /* JADX WARN: Multi-variable type inference failed */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends c1> invoke() {
                return supertypes;
            }
        }, newCapturedTypeConstructor, null, 8, null);
        kotlin.jvm.internal.r.e(projection, "projection");
        kotlin.jvm.internal.r.e(supertypes, "supertypes");
    }
}
