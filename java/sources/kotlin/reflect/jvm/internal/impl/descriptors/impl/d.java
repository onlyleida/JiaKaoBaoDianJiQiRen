package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.DescriptorEquivalenceForOverrides;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.LazyScopeAdapter;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.TypeIntersectionScope;
import kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class d extends j implements t0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final Variance f14912e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14913f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final int f14914g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h<q0> f14915h;
    private final kotlin.reflect.jvm.internal.impl.storage.h<kotlin.reflect.jvm.internal.impl.types.f0> i;
    private final kotlin.reflect.jvm.internal.impl.storage.m j;

    class a implements Function0<q0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.storage.m f14916a;
        final /* synthetic */ r0 b;

        a(kotlin.reflect.jvm.internal.impl.storage.m mVar, r0 r0Var) {
            this.f14916a = mVar;
            this.b = r0Var;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public q0 invoke() {
            return new c(d.this, this.f14916a, this.b);
        }
    }

    class b implements Function0<kotlin.reflect.jvm.internal.impl.types.f0> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ kotlin.reflect.jvm.internal.impl.name.f f14917a;

        class a implements Function0<MemberScope> {
            a() {
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public MemberScope invoke() {
                return TypeIntersectionScope.j("Scope for type parameter " + b.this.f14917a.b(), d.this.getUpperBounds());
            }
        }

        b(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            this.f14917a = fVar;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.f0 invoke() {
            return KotlinTypeFactory.j(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), d.this.i(), Collections.emptyList(), false, new LazyScopeAdapter(new a()));
        }
    }

    private class c extends AbstractTypeConstructor {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final r0 f14919d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ d f14920e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public c(d dVar, kotlin.reflect.jvm.internal.impl.storage.m mVar, r0 r0Var) {
            super(mVar);
            if (mVar == null) {
                t(0);
                throw null;
            }
            this.f14920e = dVar;
            this.f14919d = r0Var;
        }

        private static /* synthetic */ void t(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 5 || i == 8) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
                    break;
                case 6:
                    objArr[0] = "type";
                    break;
                case 7:
                    objArr[0] = "supertypes";
                    break;
                case 9:
                    objArr[0] = "classifier";
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i == 1) {
                objArr[1] = "computeSupertypes";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getDeclarationDescriptor";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i == 5) {
                objArr[1] = "getSupertypeLoopChecker";
            } else if (i != 8) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor$TypeParameterTypeConstructor";
            } else {
                objArr[1] = "processSupertypesWithoutCycles";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 5:
                case 8:
                    break;
                case 6:
                    objArr[2] = "reportSupertypeLoopError";
                    break;
                case 7:
                    objArr[2] = "processSupertypesWithoutCycles";
                    break;
                case 9:
                    objArr[2] = "isSameClassifier";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 5 && i != 8) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.i, kotlin.reflect.jvm.internal.impl.types.q0
        public kotlin.reflect.jvm.internal.impl.descriptors.f c() {
            d dVar = this.f14920e;
            if (dVar != null) {
                return dVar;
            }
            t(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.i
        protected boolean g(kotlin.reflect.jvm.internal.impl.descriptors.f fVar) {
            if (fVar != null) {
                return (fVar instanceof t0) && DescriptorEquivalenceForOverrides.f15479a.f(this.f14920e, (t0) fVar, true);
            }
            t(9);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<t0> getParameters() {
            List<t0> listEmptyList = Collections.emptyList();
            if (listEmptyList != null) {
                return listEmptyList;
            }
            t(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<kotlin.reflect.jvm.internal.impl.types.a0> j() {
            List<kotlin.reflect.jvm.internal.impl.types.a0> listH0 = this.f14920e.H0();
            if (listH0 != null) {
                return listH0;
            }
            t(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public kotlin.reflect.jvm.internal.impl.builtins.g k() {
            kotlin.reflect.jvm.internal.impl.builtins.g gVarG = DescriptorUtilsKt.g(this.f14920e);
            if (gVarG != null) {
                return gVarG;
            }
            t(4);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected kotlin.reflect.jvm.internal.impl.types.a0 l() {
            return kotlin.reflect.jvm.internal.impl.types.t.j("Cyclic upper bounds");
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected r0 o() {
            r0 r0Var = this.f14919d;
            if (r0Var != null) {
                return r0Var;
            }
            t(5);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected List<kotlin.reflect.jvm.internal.impl.types.a0> q(List<kotlin.reflect.jvm.internal.impl.types.a0> list) {
            if (list == null) {
                t(7);
                throw null;
            }
            List<kotlin.reflect.jvm.internal.impl.types.a0> listB0 = this.f14920e.B0(list);
            if (listB0 != null) {
                return listB0;
            }
            t(8);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected void s(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
            if (a0Var != null) {
                this.f14920e.G0(a0Var);
            } else {
                t(6);
                throw null;
            }
        }

        public String toString() {
            return this.f14920e.getName().toString();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected d(kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, Variance variance, boolean z, int i, o0 o0Var, r0 r0Var) {
        super(kVar, eVar, fVar, o0Var);
        if (mVar == null) {
            w(0);
            throw null;
        }
        if (kVar == null) {
            w(1);
            throw null;
        }
        if (eVar == null) {
            w(2);
            throw null;
        }
        if (fVar == null) {
            w(3);
            throw null;
        }
        if (variance == null) {
            w(4);
            throw null;
        }
        if (o0Var == null) {
            w(5);
            throw null;
        }
        if (r0Var == null) {
            w(6);
            throw null;
        }
        this.f14912e = variance;
        this.f14913f = z;
        this.f14914g = i;
        this.f14915h = mVar.c(new a(mVar, r0Var));
        this.i = mVar.c(new b(fVar));
        this.j = mVar;
    }

    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 12:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                i2 = 2;
                break;
            case 12:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "containingDeclaration";
                break;
            case 2:
                objArr[0] = "annotations";
                break;
            case 3:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 4:
                objArr[0] = "variance";
                break;
            case 5:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
                objArr[0] = "supertypeLoopChecker";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 12:
                objArr[0] = "bounds";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        switch (i) {
            case 7:
                objArr[1] = "getVariance";
                break;
            case 8:
                objArr[1] = "getUpperBounds";
                break;
            case 9:
                objArr[1] = "getTypeConstructor";
                break;
            case 10:
                objArr[1] = "getDefaultType";
                break;
            case 11:
                objArr[1] = "getOriginal";
                break;
            case 12:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractTypeParameterDescriptor";
                break;
            case 13:
                objArr[1] = "processBoundsWithoutCycles";
                break;
            case 14:
                objArr[1] = "getStorageManager";
                break;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                break;
            case 12:
                objArr[2] = "processBoundsWithoutCycles";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 13:
            case 14:
                throw new IllegalStateException(str2);
            case 12:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    protected List<kotlin.reflect.jvm.internal.impl.types.a0> B0(List<kotlin.reflect.jvm.internal.impl.types.a0> list) {
        if (list == null) {
            w(12);
            throw null;
        }
        if (list != null) {
            return list;
        }
        w(13);
        throw null;
    }

    protected abstract void G0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var);

    protected abstract List<kotlin.reflect.jvm.internal.impl.types.a0> H0();

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public kotlin.reflect.jvm.internal.impl.storage.m L() {
        kotlin.reflect.jvm.internal.impl.storage.m mVar = this.j;
        if (mVar != null) {
            return mVar;
        }
        w(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public boolean Q() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public List<kotlin.reflect.jvm.internal.impl.types.a0> getUpperBounds() {
        List<kotlin.reflect.jvm.internal.impl.types.a0> listA = ((c) i()).a();
        if (listA != null) {
            return listA;
        }
        w(8);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public Variance getVariance() {
        Variance variance = this.f14912e;
        if (variance != null) {
            return variance;
        }
        w(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public int h() {
        return this.f14914g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0, kotlin.reflect.jvm.internal.impl.descriptors.f
    public final q0 i() {
        q0 q0VarInvoke = this.f14915h.invoke();
        if (q0VarInvoke != null) {
            return q0VarInvoke;
        }
        w(9);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.f0 n() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarInvoke = this.i.invoke();
        if (f0VarInvoke != null) {
            return f0VarInvoke;
        }
        w(10);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.t0
    public boolean v() {
        return this.f14913f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.m(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    public t0 a() {
        t0 t0Var = (t0) super.a();
        if (t0Var != null) {
            return t0Var;
        }
        w(11);
        throw null;
    }
}
