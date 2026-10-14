package kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement;

import java.util.ArrayList;
import java.util.List;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.types.RawTypeImpl;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.a1;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.e0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.i0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.y;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public final class d {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.lazy.c f15164a;

    private static class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final a0 f15165a;
        private final int b;
        private final boolean c;

        public a(a0 type, int i, boolean z) {
            r.e(type, "type");
            this.f15165a = type;
            this.b = i;
            this.c = z;
        }

        public final int a() {
            return this.b;
        }

        public a0 b() {
            return this.f15165a;
        }

        public final a0 c() {
            a0 a0VarB = b();
            if (d()) {
                return a0VarB;
            }
            return null;
        }

        public final boolean d() {
            return this.c;
        }
    }

    private static final class b extends a {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final f0 f15166d;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public b(f0 type, int i, boolean z) {
            super(type, i, z);
            r.e(type, "type");
            this.f15166d = type;
        }

        @Override // kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.d.a
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public f0 b() {
            return this.f15166d;
        }
    }

    public d(kotlin.reflect.jvm.internal.impl.load.java.lazy.c javaResolverSettings) {
        r.e(javaResolverSettings, "javaResolverSettings");
        this.f15164a = javaResolverSettings;
    }

    private final a0 a(a0 a0Var, a0 a0Var2) {
        a0 a0VarA = a1.a(a0Var2);
        a0 a0VarA2 = a1.a(a0Var);
        if (a0VarA2 == null) {
            if (a0VarA == null) {
                return null;
            }
            a0VarA2 = a0VarA;
        }
        return a0VarA == null ? a0VarA2 : KotlinTypeFactory.d(y.c(a0VarA2), y.d(a0VarA));
    }

    private final b c(f0 f0Var, Function1<? super Integer, e> function1, int i, TypeComponentPosition typeComponentPosition, boolean z, boolean z2) {
        boolean z3;
        List<s0> listH0;
        s0 s0VarE;
        c1 c1VarE;
        Function1<? super Integer, e> function2 = function1;
        if (!l.a(typeComponentPosition) && f0Var.H0().isEmpty()) {
            return new b(f0Var, 1, false);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = f0Var.I0().u();
        if (fVarU == null) {
            return new b(f0Var, 1, false);
        }
        e eVarInvoke = function2.invoke(Integer.valueOf(i));
        c cVarE = o.e(fVarU, eVarInvoke, typeComponentPosition);
        kotlin.reflect.jvm.internal.impl.descriptors.f fVar = (kotlin.reflect.jvm.internal.impl.descriptors.f) cVarE.a();
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = cVarE.b();
        q0 q0VarI = fVar.i();
        r.d(q0VarI, "enhancedClassifier.typeConstructor");
        int iA = i + 1;
        boolean z4 = eVarB != null;
        if (z2 && z) {
            iA += f0Var.H0().size();
            boolean z5 = z4;
            listH0 = f0Var.H0();
            z3 = z5;
        } else {
            List<s0> listH1 = f0Var.H0();
            ArrayList arrayList = new ArrayList(v.u(listH1, 10));
            int i2 = 0;
            for (Object obj : listH1) {
                int i3 = i2 + 1;
                if (i2 < 0) {
                    s.t();
                    throw null;
                }
                s0 s0Var = (s0) obj;
                if (s0Var.a()) {
                    e eVarInvoke2 = function2.invoke(Integer.valueOf(iA));
                    int i4 = iA + 1;
                    if (eVarInvoke2.c() != NullabilityQualifier.NOT_NULL || z) {
                        s0VarE = y0.t(fVar.i().getParameters().get(i2));
                        r.d(s0VarE, "{\n                      …x])\n                    }");
                    } else {
                        a0 a0VarP = TypeUtilsKt.p(s0Var.getType().L0());
                        Variance varianceC = s0Var.c();
                        r.d(varianceC, "arg.projectionKind");
                        s0VarE = TypeUtilsKt.e(a0VarP, varianceC, q0VarI.getParameters().get(i2));
                    }
                    iA = i4;
                } else {
                    a aVarE = e(s0Var.getType().L0(), function2, iA, z2);
                    z4 = z4 || aVarE.d();
                    iA += aVarE.a();
                    a0 a0VarB = aVarE.b();
                    Variance varianceC2 = s0Var.c();
                    r.d(varianceC2, "arg.projectionKind");
                    s0VarE = TypeUtilsKt.e(a0VarB, varianceC2, q0VarI.getParameters().get(i2));
                }
                arrayList.add(s0VarE);
                function2 = function1;
                i2 = i3;
            }
            z3 = z4;
            listH0 = arrayList;
        }
        c cVarH = o.h(f0Var, eVarInvoke, typeComponentPosition);
        boolean zBooleanValue = ((Boolean) cVarH.a()).booleanValue();
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB2 = cVarH.b();
        int i5 = iA - i;
        if (!(z3 || eVarB2 != null)) {
            return new b(f0Var, i5, false);
        }
        boolean z6 = false;
        f0 f0VarI = KotlinTypeFactory.i(o.d(u.o(f0Var.getAnnotations(), eVarB, eVarB2)), q0VarI, listH0, zBooleanValue, null, 16, null);
        if (eVarInvoke.d()) {
            c1VarE = f0VarI;
            c1VarE = f(f0VarI);
        }
        if (eVarB2 != null && eVarInvoke.e()) {
            z6 = true;
        }
        if (z6) {
            c1VarE = a1.e(f0Var, c1VarE);
        }
        return new b((f0) c1VarE, i5, true);
    }

    static /* synthetic */ b d(d dVar, f0 f0Var, Function1 function1, int i, TypeComponentPosition typeComponentPosition, boolean z, boolean z2, int i2, Object obj) {
        return dVar.c(f0Var, function1, i, typeComponentPosition, (i2 & 8) != 0 ? false : z, (i2 & 16) != 0 ? false : z2);
    }

    private final a e(c1 c1Var, Function1<? super Integer, e> function1, int i, boolean z) {
        c1 c1VarE = c1Var;
        if (b0.a(c1Var)) {
            return new a(c1VarE, 1, false);
        }
        if (!(c1VarE instanceof kotlin.reflect.jvm.internal.impl.types.v)) {
            if (c1VarE instanceof f0) {
                return d(this, (f0) c1VarE, function1, i, TypeComponentPosition.INFLEXIBLE, false, z, 8, null);
            }
            throw new NoWhenBranchMatchedException();
        }
        boolean z2 = c1VarE instanceof e0;
        kotlin.reflect.jvm.internal.impl.types.v vVar = (kotlin.reflect.jvm.internal.impl.types.v) c1VarE;
        b bVarC = c(vVar.Q0(), function1, i, TypeComponentPosition.FLEXIBLE_LOWER, z2, z);
        b bVarC2 = c(vVar.R0(), function1, i, TypeComponentPosition.FLEXIBLE_UPPER, z2, z);
        bVarC.a();
        bVarC2.a();
        boolean z3 = bVarC.d() || bVarC2.d();
        a0 a0VarA = a(bVarC.b(), bVarC2.b());
        if (z3) {
            c1VarE = a1.e(c1VarE instanceof RawTypeImpl ? new RawTypeImpl(bVarC.b(), bVarC2.b()) : KotlinTypeFactory.d(bVarC.b(), bVarC2.b()), a0VarA);
        }
        return new a(c1VarE, bVarC.a(), z3);
    }

    private final f0 f(f0 f0Var) {
        return this.f15164a.a() ? i0.h(f0Var, true) : new f(f0Var);
    }

    public final a0 b(a0 a0Var, Function1<? super Integer, e> qualifiers, boolean z) {
        r.e(a0Var, "<this>");
        r.e(qualifiers, "qualifiers");
        return e(a0Var.L0(), qualifiers, 0, z).c();
    }
}
