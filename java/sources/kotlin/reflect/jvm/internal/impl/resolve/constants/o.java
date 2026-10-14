package kotlin.reflect.jvm.internal.impl.resolve.constants;

import kotlin.NoWhenBranchMatchedException;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.s0;
import kotlin.reflect.jvm.internal.impl.types.typeUtil.TypeUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class o extends g<b> {
    public static final a b = new a(null);

    public static final class a {
        private a() {
        }

        public /* synthetic */ a(kotlin.jvm.internal.o oVar) {
            this();
        }

        public final g<?> a(a0 argumentType) {
            kotlin.jvm.internal.r.e(argumentType, "argumentType");
            if (b0.a(argumentType)) {
                return null;
            }
            a0 type = argumentType;
            int i = 0;
            while (kotlin.reflect.jvm.internal.impl.builtins.g.c0(type)) {
                type = ((s0) kotlin.collections.s.C0(type.H0())).getType();
                kotlin.jvm.internal.r.d(type, "type.arguments.single().type");
                i++;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = type.I0().u();
            if (fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                kotlin.reflect.jvm.internal.impl.name.b bVarH = DescriptorUtilsKt.h(fVarU);
                return bVarH == null ? new o(new b.a(argumentType)) : new o(bVarH, i);
            }
            if (!(fVarU instanceof t0)) {
                return null;
            }
            kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(kotlin.reflect.jvm.internal.impl.builtins.h.a.b.l());
            kotlin.jvm.internal.r.d(bVarM, "topLevel(StandardNames.FqNames.any.toSafe())");
            return new o(bVarM, 0);
        }
    }

    public static abstract class b {

        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final a0 f15502a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(a0 type) {
                super(null);
                kotlin.jvm.internal.r.e(type, "type");
                this.f15502a = type;
            }

            public final a0 a() {
                return this.f15502a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof a) && kotlin.jvm.internal.r.a(this.f15502a, ((a) obj).f15502a);
            }

            public int hashCode() {
                return this.f15502a.hashCode();
            }

            public String toString() {
                return "LocalClass(type=" + this.f15502a + ')';
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.resolve.constants.o$b$b, reason: collision with other inner class name */
        public static final class C0351b extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final f f15503a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public C0351b(f value) {
                super(null);
                kotlin.jvm.internal.r.e(value, "value");
                this.f15503a = value;
            }

            public final int a() {
                return this.f15503a.c();
            }

            public final kotlin.reflect.jvm.internal.impl.name.b b() {
                return this.f15503a.d();
            }

            public final f c() {
                return this.f15503a;
            }

            public boolean equals(Object obj) {
                if (this == obj) {
                    return true;
                }
                return (obj instanceof C0351b) && kotlin.jvm.internal.r.a(this.f15503a, ((C0351b) obj).f15503a);
            }

            public int hashCode() {
                return this.f15503a.hashCode();
            }

            public String toString() {
                return "NormalClass(value=" + this.f15503a + ')';
            }
        }

        private b() {
        }

        public /* synthetic */ b(kotlin.jvm.internal.o oVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public o(b value) {
        super(value);
        kotlin.jvm.internal.r.e(value, "value");
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.constants.g
    public a0 a(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = module.k().E();
        kotlin.jvm.internal.r.d(dVarE, "module.builtIns.kClass");
        return KotlinTypeFactory.g(eVarB, dVarE, kotlin.collections.t.d(new u0(c(module))));
    }

    public final a0 c(z module) {
        kotlin.jvm.internal.r.e(module, "module");
        b bVarB = b();
        if (bVarB instanceof b.a) {
            return ((b.a) b()).a();
        }
        if (!(bVarB instanceof b.C0351b)) {
            throw new NoWhenBranchMatchedException();
        }
        f fVarC = ((b.C0351b) b()).c();
        kotlin.reflect.jvm.internal.impl.name.b bVarA = fVarC.a();
        int iB = fVarC.b();
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = FindClassInModuleKt.a(module, bVarA);
        if (dVarA == null) {
            f0 f0VarJ = kotlin.reflect.jvm.internal.impl.types.t.j("Unresolved type: " + bVarA + " (arrayDimensions=" + iB + ')');
            kotlin.jvm.internal.r.d(f0VarJ, "createErrorType(\"Unresol…sions=$arrayDimensions)\")");
            return f0VarJ;
        }
        f0 f0VarN = dVarA.n();
        kotlin.jvm.internal.r.d(f0VarN, "descriptor.defaultType");
        a0 a0VarT = TypeUtilsKt.t(f0VarN);
        for (int i = 0; i < iB; i++) {
            a0VarT = module.k().l(Variance.INVARIANT, a0VarT);
            kotlin.jvm.internal.r.d(a0VarT, "module.builtIns.getArray…Variance.INVARIANT, type)");
        }
        return a0VarT;
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(f value) {
        this(new b.C0351b(value));
        kotlin.jvm.internal.r.e(value, "value");
    }

    /* JADX WARN: 'this' call moved to the top of the method (can break code semantics) */
    public o(kotlin.reflect.jvm.internal.impl.name.b classId, int i) {
        this(new f(classId, i));
        kotlin.jvm.internal.r.e(classId, "classId");
    }
}
