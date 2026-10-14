package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.s0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.v0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public abstract class a extends r {
    private final kotlin.reflect.jvm.internal.impl.name.f b;
    protected final kotlin.reflect.jvm.internal.impl.storage.h<kotlin.reflect.jvm.internal.impl.types.f0> c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h<MemberScope> f14904d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.h<m0> f14905e;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.a$a, reason: collision with other inner class name */
    class C0324a implements Function0<kotlin.reflect.jvm.internal.impl.types.f0> {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.a$a$a, reason: collision with other inner class name */
        class C0325a implements Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, kotlin.reflect.jvm.internal.impl.types.f0> {
            C0325a() {
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public kotlin.reflect.jvm.internal.impl.types.f0 invoke(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarE = gVar.e(a.this);
                if (fVarE == null) {
                    return a.this.c.invoke();
                }
                if (fVarE instanceof s0) {
                    return KotlinTypeFactory.b((s0) fVarE, y0.h(fVarE.i().getParameters()));
                }
                return fVarE instanceof r ? y0.v(fVarE.i().b(gVar), ((r) fVarE).e0(gVar), this) : fVarE.n();
            }
        }

        C0324a() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public kotlin.reflect.jvm.internal.impl.types.f0 invoke() {
            a aVar = a.this;
            return y0.u(aVar, aVar.U(), new C0325a());
        }
    }

    class b implements Function0<MemberScope> {
        b() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public MemberScope invoke() {
            return new kotlin.reflect.jvm.internal.impl.resolve.scopes.e(a.this.U());
        }
    }

    class c implements Function0<m0> {
        c() {
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public m0 invoke() {
            return new p(a.this);
        }
    }

    public a(kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.name.f fVar) {
        if (mVar == null) {
            h0(0);
            throw null;
        }
        if (fVar == null) {
            h0(1);
            throw null;
        }
        this.b = fVar;
        this.c = mVar.c(new C0324a());
        this.f14904d = mVar.c(new b());
        this.f14905e = mVar.c(new c());
    }

    private static /* synthetic */ void h0(int i) {
        String str = (i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 4 || i == 5 || i == 8 || i == 11 || i == 13 || i == 15 || i == 16 || i == 18 || i == 19) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
                break;
            case 6:
            case 12:
                objArr[0] = "typeArguments";
                break;
            case 7:
            case 10:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 9:
            case 14:
                objArr[0] = "typeSubstitution";
                break;
            case 17:
                objArr[0] = "substitutor";
                break;
            default:
                objArr[0] = "storageManager";
                break;
        }
        if (i == 2) {
            objArr[1] = "getName";
        } else if (i == 3) {
            objArr[1] = "getOriginal";
        } else if (i == 4) {
            objArr[1] = "getUnsubstitutedInnerClassesScope";
        } else if (i == 5) {
            objArr[1] = "getThisAsReceiverParameter";
        } else if (i == 8 || i == 11 || i == 13 || i == 15) {
            objArr[1] = "getMemberScope";
        } else if (i == 16) {
            objArr[1] = "getUnsubstitutedMemberScope";
        } else if (i == 18) {
            objArr[1] = "substitute";
        } else if (i != 19) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/AbstractClassDescriptor";
        } else {
            objArr[1] = "getDefaultType";
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
            case 8:
            case 11:
            case 13:
            case 15:
            case 16:
            case 18:
            case 19:
                break;
            case 6:
            case 7:
            case 9:
            case 10:
            case 12:
            case 14:
                objArr[2] = "getMemberScope";
                break;
            case 17:
                objArr[2] = "substitute";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 4 && i != 5 && i != 8 && i != 11 && i != 13 && i != 15 && i != 16 && i != 18 && i != 19) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return typeSubstitutor.k() ? this : new q(this, typeSubstitutor);
        }
        h0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public m0 F0() {
        m0 m0VarInvoke = this.f14905e.invoke();
        if (m0VarInvoke != null) {
            return m0VarInvoke;
        }
        h0(5);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope S() {
        MemberScope memberScopeInvoke = this.f14904d.invoke();
        if (memberScopeInvoke != null) {
            return memberScopeInvoke;
        }
        h0(4);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope U() {
        MemberScope memberScopeE0 = e0(DescriptorUtilsKt.k(kotlin.reflect.jvm.internal.impl.resolve.c.g(this)));
        if (memberScopeE0 != null) {
            return memberScopeE0;
        }
        h0(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r, kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.d a() {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r, kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.k
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.f a() {
        a();
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a0
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        kotlin.reflect.jvm.internal.impl.name.f fVar = this.b;
        if (fVar != null) {
            return fVar;
        }
        h0(2);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.f0 n() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarInvoke = this.c.invoke();
        if (f0VarInvoke != null) {
            return f0VarInvoke;
        }
        h0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope o0(v0 v0Var) {
        if (v0Var == null) {
            h0(14);
            throw null;
        }
        MemberScope memberScopeW = w(v0Var, DescriptorUtilsKt.k(kotlin.reflect.jvm.internal.impl.resolve.c.g(this)));
        if (memberScopeW != null) {
            return memberScopeW;
        }
        h0(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public MemberScope w(v0 v0Var, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (v0Var == null) {
            h0(9);
            throw null;
        }
        if (gVar == null) {
            h0(10);
            throw null;
        }
        if (!v0Var.f()) {
            return new SubstitutingScope(e0(gVar), TypeSubstitutor.g(v0Var));
        }
        MemberScope memberScopeE0 = e0(gVar);
        if (memberScopeE0 != null) {
            return memberScopeE0;
        }
        h0(11);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.a(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r, kotlin.reflect.jvm.internal.impl.descriptors.k
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.k a() {
        a();
        return this;
    }
}
