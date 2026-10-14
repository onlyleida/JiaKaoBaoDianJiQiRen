package kotlin.reflect.jvm.internal.impl.load.java.lazy.types;

import java.util.LinkedHashMap;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.Lazy;
import kotlin.Pair;
import kotlin.collections.n0;
import kotlin.collections.s;
import kotlin.collections.v;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.l;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.storage.f;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.r0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class TypeParameterUpperBoundEraser {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final LockBasedStorageManager f15122a;
    private final Lazy b;
    private final RawSubstitution c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final f<a, a0> f15123d;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final t0 f15124a;
        private final boolean b;
        private final kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a c;

        public a(t0 typeParameter, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a typeAttr) {
            r.e(typeParameter, "typeParameter");
            r.e(typeAttr, "typeAttr");
            this.f15124a = typeParameter;
            this.b = z;
            this.c = typeAttr;
        }

        public final kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a a() {
            return this.c;
        }

        public final t0 b() {
            return this.f15124a;
        }

        public final boolean c() {
            return this.b;
        }

        public boolean equals(Object obj) {
            if (!(obj instanceof a)) {
                return false;
            }
            a aVar = (a) obj;
            return r.a(aVar.f15124a, this.f15124a) && aVar.b == this.b && aVar.c.d() == this.c.d() && aVar.c.e() == this.c.e() && aVar.c.g() == this.c.g() && r.a(aVar.c.c(), this.c.c());
        }

        public int hashCode() {
            int iHashCode = this.f15124a.hashCode();
            int i = iHashCode + (iHashCode * 31) + (this.b ? 1 : 0);
            int iHashCode2 = i + (i * 31) + this.c.d().hashCode();
            int iHashCode3 = iHashCode2 + (iHashCode2 * 31) + this.c.e().hashCode();
            int i2 = iHashCode3 + (iHashCode3 * 31) + (this.c.g() ? 1 : 0);
            int i3 = i2 * 31;
            f0 f0VarC = this.c.c();
            return i2 + i3 + (f0VarC != null ? f0VarC.hashCode() : 0);
        }

        public String toString() {
            return "DataToEraseUpperBound(typeParameter=" + this.f15124a + ", isRaw=" + this.b + ", typeAttr=" + this.c + ')';
        }
    }

    public TypeParameterUpperBoundEraser(RawSubstitution rawSubstitution) {
        LockBasedStorageManager lockBasedStorageManager = new LockBasedStorageManager("Type parameter upper bound erasion results");
        this.f15122a = lockBasedStorageManager;
        this.b = i.b(new Function0<f0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.TypeParameterUpperBoundEraser$erroneousErasedBound$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final f0 invoke() {
                return t.j("Can't compute erased upper bound of type parameter `" + this.this$0 + '`');
            }
        });
        this.c = rawSubstitution == null ? new RawSubstitution(this) : rawSubstitution;
        f<a, a0> fVarI = lockBasedStorageManager.i(new Function1<a, a0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.types.TypeParameterUpperBoundEraser$getErasedUpperBound$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final a0 invoke(TypeParameterUpperBoundEraser.a aVar) {
                return this.this$0.d(aVar.b(), aVar.c(), aVar.a());
            }
        });
        r.d(fVarI, "storage.createMemoizedFu… isRaw, typeAttr) }\n    }");
        this.f15123d = fVarI;
    }

    private final a0 b(kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVar) {
        f0 f0VarC = aVar.c();
        a0 a0VarT = f0VarC == null ? null : TypeUtilsKt.t(f0VarC);
        if (a0VarT != null) {
            return a0VarT;
        }
        f0 erroneousErasedBound = e();
        r.d(erroneousErasedBound, "erroneousErasedBound");
        return erroneousErasedBound;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final a0 d(t0 t0Var, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVar) {
        s0 s0VarJ;
        Set<t0> setF = aVar.f();
        if (setF != null && setF.contains(t0Var.a())) {
            return b(aVar);
        }
        f0 f0VarN = t0Var.n();
        r.d(f0VarN, "typeParameter.defaultType");
        Set<t0> setF2 = TypeUtilsKt.f(f0VarN, setF);
        LinkedHashMap linkedHashMap = new LinkedHashMap(kotlin.ranges.f.b(n0.d(v.u(setF2, 10)), 16));
        for (t0 t0Var2 : setF2) {
            if (setF == null || !setF.contains(t0Var2)) {
                RawSubstitution rawSubstitution = this.c;
                kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVarI = z ? aVar : aVar.i(JavaTypeFlexibility.INFLEXIBLE);
                a0 a0VarC = c(t0Var2, z, aVar.j(t0Var));
                r.d(a0VarC, "getErasedUpperBound(it, …Parameter(typeParameter))");
                s0VarJ = rawSubstitution.j(t0Var2, aVarI, a0VarC);
            } else {
                s0VarJ = b.b(t0Var2, aVar);
            }
            Pair pairA = l.a(t0Var2.i(), s0VarJ);
            linkedHashMap.put(pairA.getFirst(), pairA.getSecond());
        }
        TypeSubstitutor typeSubstitutorG = TypeSubstitutor.g(r0.a.e(r0.b, linkedHashMap, false, 2, null));
        r.d(typeSubstitutorG, "create(TypeConstructorSu…rsMap(erasedUpperBounds))");
        List<a0> upperBounds = t0Var.getUpperBounds();
        r.d(upperBounds, "typeParameter.upperBounds");
        a0 firstUpperBound = (a0) s.c0(upperBounds);
        if (firstUpperBound.I0().u() instanceof d) {
            r.d(firstUpperBound, "firstUpperBound");
            return TypeUtilsKt.s(firstUpperBound, typeSubstitutorG, linkedHashMap, Variance.OUT_VARIANCE, aVar.f());
        }
        Set<t0> setF3 = aVar.f();
        if (setF3 == null) {
            setF3 = kotlin.collections.t0.a(this);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = firstUpperBound.I0().u();
        Objects.requireNonNull(fVarU, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        while (true) {
            t0 t0Var3 = (t0) fVarU;
            if (setF3.contains(t0Var3)) {
                return b(aVar);
            }
            List<a0> upperBounds2 = t0Var3.getUpperBounds();
            r.d(upperBounds2, "current.upperBounds");
            a0 nextUpperBound = (a0) s.c0(upperBounds2);
            if (nextUpperBound.I0().u() instanceof d) {
                r.d(nextUpperBound, "nextUpperBound");
                return TypeUtilsKt.s(nextUpperBound, typeSubstitutorG, linkedHashMap, Variance.OUT_VARIANCE, aVar.f());
            }
            fVarU = nextUpperBound.I0().u();
            Objects.requireNonNull(fVarU, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.TypeParameterDescriptor");
        }
    }

    private final f0 e() {
        return (f0) this.b.getValue();
    }

    public final a0 c(t0 typeParameter, boolean z, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a typeAttr) {
        r.e(typeParameter, "typeParameter");
        r.e(typeAttr, "typeAttr");
        return this.f15123d.invoke(new a(typeParameter, z, typeAttr));
    }

    public /* synthetic */ TypeParameterUpperBoundEraser(RawSubstitution rawSubstitution, int i, o oVar) {
        this((i & 1) != 0 ? null : rawSubstitution);
    }
}
