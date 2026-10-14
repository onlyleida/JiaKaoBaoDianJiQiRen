package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.ArrayList;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IndexedValue;
import kotlin.collections.s;
import kotlin.collections.v;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.builtins.PrimitiveType;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.f;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.LazyJavaAnnotations;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.h;
import kotlin.reflect.jvm.internal.impl.load.java.structure.a0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.c0;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.i;
import kotlin.reflect.jvm.internal.impl.load.java.structure.j;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;
import kotlin.reflect.jvm.internal.impl.name.c;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class JavaTypeResolver {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f15118a;
    private final h b;
    private final TypeParameterUpperBoundEraser c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final RawSubstitution f15119d;

    /* JADX WARN: Multi-variable type inference failed */
    public JavaTypeResolver(e c, h typeParameterResolver) {
        r.e(c, "c");
        r.e(typeParameterResolver, "typeParameterResolver");
        this.f15118a = c;
        this.b = typeParameterResolver;
        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = new TypeParameterUpperBoundEraser(null, 1, 0 == true ? 1 : 0);
        this.c = typeParameterUpperBoundEraser;
        this.f15119d = new RawSubstitution(typeParameterUpperBoundEraser);
    }

    private final boolean b(j jVar, d dVar) {
        if (!a0.a((x) s.q0(jVar.y()))) {
            return false;
        }
        List<t0> parameters = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.f14846a.b(dVar).i().getParameters();
        r.d(parameters, "JavaToKotlinClassMapper.…ypeConstructor.parameters");
        t0 t0Var = (t0) s.q0(parameters);
        Variance variance = t0Var == null ? null : t0Var.getVariance();
        return (variance == null || variance == Variance.OUT_VARIANCE) ? false : true;
    }

    /* JADX WARN: Code duplicated, block: B:9:0x0023  */
    private final List<s0> c(j jVar, a aVar, q0 q0Var) {
        boolean z = true;
        if (!jVar.s()) {
            if (jVar.y().isEmpty()) {
                List<t0> parameters = q0Var.getParameters();
                r.d(parameters, "constructor.parameters");
                if (!(!parameters.isEmpty())) {
                    z = false;
                }
            } else {
                z = false;
            }
        }
        List<t0> parameters2 = q0Var.getParameters();
        r.d(parameters2, "constructor.parameters");
        if (z) {
            return d(jVar, parameters2, q0Var, aVar);
        }
        if (parameters2.size() != jVar.y().size()) {
            ArrayList arrayList = new ArrayList(v.u(parameters2, 10));
            Iterator<T> it = parameters2.iterator();
            while (it.hasNext()) {
                arrayList.add(new u0(t.j(((t0) it.next()).getName().b())));
            }
            return CollectionsKt___CollectionsKt.M0(arrayList);
        }
        Iterable<IndexedValue> iterableS0 = CollectionsKt___CollectionsKt.S0(jVar.y());
        ArrayList arrayList2 = new ArrayList(v.u(iterableS0, 10));
        for (IndexedValue indexedValue : iterableS0) {
            int index = indexedValue.getIndex();
            x xVar = (x) indexedValue.b();
            parameters2.size();
            t0 parameter = parameters2.get(index);
            a aVarD = b.d(TypeUsage.COMMON, false, null, 3, null);
            r.d(parameter, "parameter");
            arrayList2.add(p(xVar, aVarD, parameter));
        }
        return CollectionsKt___CollectionsKt.M0(arrayList2);
    }

    private final List<s0> d(final j jVar, List<? extends t0> list, final q0 q0Var, final a aVar) {
        s0 s0VarJ;
        ArrayList arrayList = new ArrayList(v.u(list, 10));
        for (final t0 t0Var : list) {
            if (TypeUtilsKt.k(t0Var, null, aVar.f())) {
                s0VarJ = b.b(t0Var, aVar);
            } else {
                s0VarJ = this.f15119d.j(t0Var, jVar.s() ? aVar : aVar.i(JavaTypeFlexibility.INFLEXIBLE), new LazyWrappedType(this.f15118a.e(), new Function0<kotlin.reflect.jvm.internal.impl.types.a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1
                    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
                    {
                        super(0);
                    }

                    @Override // kotlin.jvm.functions.Function0
                    public final kotlin.reflect.jvm.internal.impl.types.a0 invoke() {
                        TypeParameterUpperBoundEraser typeParameterUpperBoundEraser = this.this$0.c;
                        t0 t0Var2 = t0Var;
                        boolean zS = jVar.s();
                        a aVar2 = aVar;
                        f fVarU = q0Var.u();
                        kotlin.reflect.jvm.internal.impl.types.a0 a0VarC = typeParameterUpperBoundEraser.c(t0Var2, zS, aVar2.h(fVarU == null ? null : fVarU.n()));
                        r.d(a0VarC, "typeParameterUpperBoundE…efaultType)\n            )");
                        return a0VarC;
                    }
                }));
            }
            arrayList.add(s0VarJ);
        }
        return arrayList;
    }

    private final f0 e(j jVar, a aVar, f0 f0Var) {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = f0Var == null ? null : f0Var.getAnnotations();
        if (annotations == null) {
            annotations = new LazyJavaAnnotations(this.f15118a, jVar, false, 4, null);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar = annotations;
        q0 q0VarF = f(jVar, aVar);
        if (q0VarF == null) {
            return null;
        }
        boolean zI = i(aVar);
        return (r.a(f0Var != null ? f0Var.I0() : null, q0VarF) && !jVar.s() && zI) ? f0Var.M0(true) : KotlinTypeFactory.i(eVar, q0VarF, c(jVar, aVar, q0VarF), zI, null, 16, null);
    }

    private final q0 f(j jVar, a aVar) {
        i iVarC = jVar.c();
        if (iVarC == null) {
            return g(jVar);
        }
        if (!(iVarC instanceof g)) {
            if (!(iVarC instanceof y)) {
                throw new IllegalStateException(r.m("Unknown classifier kind: ", iVarC));
            }
            t0 t0VarA = this.b.a((y) iVarC);
            if (t0VarA == null) {
                return null;
            }
            return t0VarA.i();
        }
        g gVar = (g) iVarC;
        c cVarE = gVar.e();
        if (cVarE == null) {
            throw new AssertionError(r.m("Class type should have a FQ name: ", iVarC));
        }
        d dVarJ = j(jVar, aVar, cVarE);
        if (dVarJ == null) {
            dVarJ = this.f15118a.a().n().a(gVar);
        }
        q0 q0VarI = dVarJ != null ? dVarJ.i() : null;
        return q0VarI == null ? g(jVar) : q0VarI;
    }

    private final q0 g(j jVar) {
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(new c(jVar.G()));
        r.d(bVarM, "topLevel(FqName(javaType.classifierQualifiedName))");
        q0 q0VarI = this.f15118a.a().b().e().q().d(bVarM, kotlin.collections.t.d(0)).i();
        r.d(q0VarI, "c.components.deserialize…istOf(0)).typeConstructor");
        return q0VarI;
    }

    private final boolean h(Variance variance, t0 t0Var) {
        return (t0Var.getVariance() == Variance.INVARIANT || variance == t0Var.getVariance()) ? false : true;
    }

    private final boolean i(a aVar) {
        return (aVar.d() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || aVar.g() || aVar.e() == TypeUsage.SUPERTYPE) ? false : true;
    }

    private final d j(j jVar, a aVar, c cVar) {
        if (aVar.g() && r.a(cVar, b.f15128a)) {
            return this.f15118a.a().p().c();
        }
        kotlin.reflect.jvm.internal.impl.builtins.jvm.d dVar = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.f14846a;
        d dVarH = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.h(dVar, cVar, this.f15118a.d().k(), null, 4, null);
        if (dVarH == null) {
            return null;
        }
        return (dVar.e(dVarH) && (aVar.d() == JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND || aVar.e() == TypeUsage.SUPERTYPE || b(jVar, dVarH))) ? dVar.b(dVarH) : dVarH;
    }

    public static /* synthetic */ kotlin.reflect.jvm.internal.impl.types.a0 l(JavaTypeResolver javaTypeResolver, kotlin.reflect.jvm.internal.impl.load.java.structure.f fVar, a aVar, boolean z, int i, Object obj) {
        if ((i & 4) != 0) {
            z = false;
        }
        return javaTypeResolver.k(fVar, aVar, z);
    }

    private final kotlin.reflect.jvm.internal.impl.types.a0 m(j jVar, a aVar) {
        boolean z = (aVar.g() || aVar.e() == TypeUsage.SUPERTYPE) ? false : true;
        boolean zS = jVar.s();
        if (!zS && !z) {
            f0 f0VarE = e(jVar, aVar, null);
            return f0VarE == null ? n(jVar) : f0VarE;
        }
        f0 f0VarE2 = e(jVar, aVar.i(JavaTypeFlexibility.FLEXIBLE_LOWER_BOUND), null);
        if (f0VarE2 == null) {
            return n(jVar);
        }
        f0 f0VarE3 = e(jVar, aVar.i(JavaTypeFlexibility.FLEXIBLE_UPPER_BOUND), f0VarE2);
        if (f0VarE3 == null) {
            return n(jVar);
        }
        return zS ? new RawTypeImpl(f0VarE2, f0VarE3) : KotlinTypeFactory.d(f0VarE2, f0VarE3);
    }

    private static final f0 n(j jVar) {
        f0 f0VarJ = t.j(r.m("Unresolved java class ", jVar.D()));
        r.d(f0VarJ, "createErrorType(\"Unresol…vaType.presentableText}\")");
        return f0VarJ;
    }

    private final s0 p(x xVar, a aVar, t0 t0Var) {
        if (!(xVar instanceof c0)) {
            return new u0(Variance.INVARIANT, o(xVar, aVar));
        }
        c0 c0Var = (c0) xVar;
        x xVarB = c0Var.b();
        Variance variance = c0Var.K() ? Variance.OUT_VARIANCE : Variance.IN_VARIANCE;
        return (xVarB == null || h(variance, t0Var)) ? b.b(t0Var, aVar) : TypeUtilsKt.e(o(xVarB, b.d(TypeUsage.COMMON, false, null, 3, null)), variance, t0Var);
    }

    public final kotlin.reflect.jvm.internal.impl.types.a0 k(kotlin.reflect.jvm.internal.impl.load.java.structure.f arrayType, a attr, boolean z) {
        r.e(arrayType, "arrayType");
        r.e(attr, "attr");
        x xVarN = arrayType.n();
        kotlin.reflect.jvm.internal.impl.load.java.structure.v vVar = xVarN instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.v ? (kotlin.reflect.jvm.internal.impl.load.java.structure.v) xVarN : null;
        PrimitiveType type = vVar == null ? null : vVar.getType();
        LazyJavaAnnotations lazyJavaAnnotations = new LazyJavaAnnotations(this.f15118a, arrayType, true);
        if (type != null) {
            f0 f0VarO = this.f15118a.d().k().O(type);
            r.d(f0VarO, "c.module.builtIns.getPri…KotlinType(primitiveType)");
            f0VarO.Q0(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(CollectionsKt___CollectionsKt.v0(lazyJavaAnnotations, f0VarO.getAnnotations())));
            return attr.g() ? f0VarO : KotlinTypeFactory.d(f0VarO, f0VarO.M0(true));
        }
        kotlin.reflect.jvm.internal.impl.types.a0 a0VarO = o(xVarN, b.d(TypeUsage.COMMON, attr.g(), null, 2, null));
        if (attr.g()) {
            f0 f0VarM = this.f15118a.d().k().m(z ? Variance.OUT_VARIANCE : Variance.INVARIANT, a0VarO, lazyJavaAnnotations);
            r.d(f0VarM, "c.module.builtIns.getArr…mponentType, annotations)");
            return f0VarM;
        }
        f0 f0VarM2 = this.f15118a.d().k().m(Variance.INVARIANT, a0VarO, lazyJavaAnnotations);
        r.d(f0VarM2, "c.module.builtIns.getArr…mponentType, annotations)");
        return KotlinTypeFactory.d(f0VarM2, this.f15118a.d().k().m(Variance.OUT_VARIANCE, a0VarO, lazyJavaAnnotations).M0(true));
    }

    public final kotlin.reflect.jvm.internal.impl.types.a0 o(x xVar, a attr) {
        r.e(attr, "attr");
        if (xVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.v) {
            PrimitiveType type = ((kotlin.reflect.jvm.internal.impl.load.java.structure.v) xVar).getType();
            f0 f0VarR = type != null ? this.f15118a.d().k().R(type) : this.f15118a.d().k().Z();
            r.d(f0VarR, "{\n                val pr…ns.unitType\n            }");
            return f0VarR;
        }
        if (xVar instanceof j) {
            return m((j) xVar, attr);
        }
        if (xVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.f) {
            return l(this, (kotlin.reflect.jvm.internal.impl.load.java.structure.f) xVar, attr, false, 4, null);
        }
        if (!(xVar instanceof c0)) {
            if (xVar != null) {
                throw new UnsupportedOperationException(r.m("Unsupported type: ", xVar));
            }
            f0 f0VarY = this.f15118a.d().k().y();
            r.d(f0VarY, "c.module.builtIns.defaultBound");
            return f0VarY;
        }
        x xVarB = ((c0) xVar).b();
        kotlin.reflect.jvm.internal.impl.types.a0 a0VarO = xVarB == null ? null : o(xVarB, attr);
        if (a0VarO != null) {
            return a0VarO;
        }
        f0 f0VarY2 = this.f15118a.d().k().y();
        r.d(f0VarY2, "c.module.builtIns.defaultBound");
        return f0VarY2;
    }
}
