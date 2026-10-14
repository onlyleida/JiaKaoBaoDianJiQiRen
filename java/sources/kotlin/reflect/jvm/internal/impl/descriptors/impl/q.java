package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.SubstitutingScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.v0;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public class q extends r {
    private final r b;
    private final TypeSubstitutor c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private TypeSubstitutor f14949d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<t0> f14950e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<t0> f14951f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private q0 f14952g;

    class a implements Function1<t0, Boolean> {
        a(q qVar) {
        }

        @Override // kotlin.jvm.functions.Function1
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Boolean invoke(t0 t0Var) {
            return Boolean.valueOf(!t0Var.Q());
        }
    }

    public q(r rVar, TypeSubstitutor typeSubstitutor) {
        this.b = rVar;
        this.c = typeSubstitutor;
    }

    private TypeSubstitutor B0() {
        if (this.f14949d == null) {
            if (this.c.k()) {
                this.f14949d = this.c;
            } else {
                List<t0> parameters = this.b.i().getParameters();
                this.f14950e = new ArrayList(parameters.size());
                this.f14949d = kotlin.reflect.jvm.internal.impl.types.o.b(parameters, this.c.j(), this, this.f14950e);
                this.f14951f = CollectionsKt___CollectionsKt.Y(this.f14950e, new a(this));
            }
        }
        return this.f14949d;
    }

    private kotlin.reflect.jvm.internal.impl.types.f0 H0(kotlin.reflect.jvm.internal.impl.types.f0 f0Var) {
        return (f0Var == null || this.c.k()) ? f0Var : (kotlin.reflect.jvm.internal.impl.types.f0) B0().p(f0Var, Variance.INVARIANT);
    }

    /* JADX WARN: Code duplicated, block: B:34:0x0051  */
    /* JADX WARN: Code duplicated, block: B:35:0x0056  */
    /* JADX WARN: Code duplicated, block: B:36:0x005b  */
    private static /* synthetic */ void h0(int i) {
        String str = (i == 2 || i == 3 || i == 5 || i == 6 || i == 8 || i == 10 || i == 13 || i == 22) ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[(i == 2 || i == 3 || i == 5 || i == 6 || i == 8 || i == 10 || i == 13 || i == 22) ? 3 : 2];
        if (i == 2) {
            objArr[0] = "typeArguments";
        } else if (i == 3) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i == 5) {
            objArr[0] = "typeSubstitution";
        } else if (i == 6) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i == 8) {
            objArr[0] = "typeArguments";
        } else if (i == 10) {
            objArr[0] = "typeSubstitution";
        } else if (i == 13) {
            objArr[0] = "kotlinTypeRefiner";
        } else if (i != 22) {
            objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
        } else {
            objArr[0] = "substitutor";
        }
        switch (i) {
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 10:
            case 13:
            case 22:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/LazySubstitutingClassDescriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 11:
                objArr[1] = "getMemberScope";
                break;
            case 12:
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getDefaultType";
                break;
            case 17:
                objArr[1] = "getConstructors";
                break;
            case 18:
                objArr[1] = "getAnnotations";
                break;
            case 19:
                objArr[1] = "getName";
                break;
            case 20:
                objArr[1] = "getOriginal";
                break;
            case 21:
                objArr[1] = "getContainingDeclaration";
                break;
            case 23:
                objArr[1] = "substitute";
                break;
            case 24:
                objArr[1] = "getKind";
                break;
            case 25:
                objArr[1] = "getModality";
                break;
            case 26:
                objArr[1] = "getVisibility";
                break;
            case 27:
                objArr[1] = "getUnsubstitutedInnerClassesScope";
                break;
            case 28:
                objArr[1] = "getSource";
                break;
            case 29:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 30:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "getTypeConstructor";
                break;
        }
        if (i == 2 || i == 3 || i == 5 || i == 6 || i == 8 || i == 10) {
            objArr[2] = "getMemberScope";
        } else if (i == 13) {
            objArr[2] = "getUnsubstitutedMemberScope";
        } else if (i == 22) {
            objArr[2] = "substitute";
        }
        String str2 = String.format(str, objArr);
        if (i != 2 && i != 3 && i != 5 && i != 6 && i != 8 && i != 10 && i != 13 && i != 22) {
            throw new IllegalStateException(str2);
        }
        throw new IllegalArgumentException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c C() {
        return this.b.C();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean D0() {
        return this.b.D0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public m0 F0() {
        throw new UnsupportedOperationException();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return typeSubstitutor.k() ? this : new q(this, TypeSubstitutor.h(typeSubstitutor.j(), B0().j()));
        }
        h0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope S() {
        MemberScope memberScopeS = this.b.S();
        if (memberScopeS != null) {
            return memberScopeS;
        }
        h0(27);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope U() {
        MemberScope memberScopeE0 = e0(DescriptorUtilsKt.k(kotlin.reflect.jvm.internal.impl.resolve.c.g(this.b)));
        if (memberScopeE0 != null) {
            return memberScopeE0;
        }
        h0(12);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return this.b.V();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean Y() {
        return this.b.Y();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r, kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.d a() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarA = this.b.a();
        if (dVarA != null) {
            return dVarA;
        }
        h0(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.l, kotlin.reflect.jvm.internal.impl.descriptors.k
    public kotlin.reflect.jvm.internal.impl.descriptors.k b() {
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = this.b.b();
        if (kVarB != null) {
            return kVarB;
        }
        h0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean b0() {
        return this.b.b0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public MemberScope e0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (gVar == null) {
            h0(13);
            throw null;
        }
        MemberScope memberScopeE0 = this.b.e0(gVar);
        if (!this.c.k()) {
            return new SubstitutingScope(memberScopeE0, B0());
        }
        if (memberScopeE0 != null) {
            return memberScopeE0;
        }
        h0(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind g() {
        ClassKind classKindG = this.b.g();
        if (classKindG != null) {
            return classKindG;
        }
        h0(24);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean g0() {
        return this.b.g0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = this.b.getAnnotations();
        if (annotations != null) {
            return annotations;
        }
        h0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a0
    public kotlin.reflect.jvm.internal.impl.name.f getName() {
        kotlin.reflect.jvm.internal.impl.name.f name = this.b.getName();
        if (name != null) {
            return name;
        }
        h0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s visibility = this.b.getVisibility();
        if (visibility != null) {
            return visibility;
        }
        h0(26);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        q0 q0VarI = this.b.i();
        if (this.c.k()) {
            if (q0VarI != null) {
                return q0VarI;
            }
            h0(0);
            throw null;
        }
        if (this.f14952g == null) {
            TypeSubstitutor typeSubstitutorB0 = B0();
            Collection<kotlin.reflect.jvm.internal.impl.types.a0> collectionA = q0VarI.a();
            ArrayList arrayList = new ArrayList(collectionA.size());
            Iterator<kotlin.reflect.jvm.internal.impl.types.a0> it = collectionA.iterator();
            while (it.hasNext()) {
                arrayList.add(typeSubstitutorB0.p(it.next(), Variance.INVARIANT));
            }
            this.f14952g = new kotlin.reflect.jvm.internal.impl.types.h(this, this.f14950e, arrayList, LockBasedStorageManager.f15621e);
        }
        q0 q0Var = this.f14952g;
        if (q0Var != null) {
            return q0Var;
        }
        h0(1);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return this.b.i0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return this.b.isExternal();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return this.b.isInline();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> j() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionJ = this.b.j();
        ArrayList arrayList = new ArrayList(collectionJ.size());
        for (kotlin.reflect.jvm.internal.impl.descriptors.c cVar : collectionJ) {
            arrayList.add(((kotlin.reflect.jvm.internal.impl.descriptors.c) cVar.s().m(cVar.a()).j(cVar.q()).g(cVar.getVisibility()).q(cVar.g()).n(false).build()).c(B0()));
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope k0() {
        MemberScope memberScopeK0 = this.b.k0();
        if (memberScopeK0 != null) {
            return memberScopeK0;
        }
        h0(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d l0() {
        return this.b.l0();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.f
    public kotlin.reflect.jvm.internal.impl.types.f0 n() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarJ = KotlinTypeFactory.j(getAnnotations(), i(), y0.h(i().getParameters()), false, U());
        if (f0VarJ != null) {
            return f0VarJ;
        }
        h0(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.n
    public o0 o() {
        o0 o0Var = o0.f14970a;
        if (o0Var != null) {
            return o0Var;
        }
        h0(28);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope o0(v0 v0Var) {
        if (v0Var == null) {
            h0(10);
            throw null;
        }
        MemberScope memberScopeW = w(v0Var, DescriptorUtilsKt.k(kotlin.reflect.jvm.internal.impl.resolve.c.g(this)));
        if (memberScopeW != null) {
            return memberScopeW;
        }
        h0(11);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        B0();
        List<t0> list = this.f14951f;
        if (list != null) {
            return list;
        }
        h0(29);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        Modality modalityQ = this.b.q();
        if (modalityQ != null) {
            return modalityQ;
        }
        h0(25);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.v<kotlin.reflect.jvm.internal.impl.types.f0> t() {
        kotlin.reflect.jvm.internal.impl.descriptors.v<kotlin.reflect.jvm.internal.impl.types.f0> vVarT = this.b.t();
        if (vVarT == null) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.descriptors.v<>(vVarT.a(), H0((kotlin.reflect.jvm.internal.impl.types.f0) t().b()));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public MemberScope w(v0 v0Var, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (v0Var == null) {
            h0(5);
            throw null;
        }
        if (gVar == null) {
            h0(6);
            throw null;
        }
        MemberScope memberScopeW = this.b.w(v0Var, gVar);
        if (!this.c.k()) {
            return new SubstitutingScope(memberScopeW, B0());
        }
        if (memberScopeW != null) {
            return memberScopeW;
        }
        h0(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> x() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionX = this.b.x();
        if (collectionX != null) {
            return collectionX;
        }
        h0(30);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.a(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        return this.b.z();
    }
}
