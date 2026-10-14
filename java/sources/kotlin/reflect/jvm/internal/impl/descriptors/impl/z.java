package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.v0;

/* JADX INFO: loaded from: classes6.dex */
public class z extends i0 implements j0 {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final Modality f14963h;
    private kotlin.reflect.jvm.internal.impl.descriptors.s i;
    private Collection<? extends j0> j;
    private final j0 k;
    private final CallableMemberDescriptor.Kind l;
    private final boolean m;
    private final boolean n;
    private final boolean o;
    private final boolean p;
    private final boolean q;
    private final boolean r;
    private m0 s;
    private m0 t;
    private List<t0> u;
    private a0 v;
    private l0 w;
    private boolean x;
    private kotlin.reflect.jvm.internal.impl.descriptors.t y;
    private kotlin.reflect.jvm.internal.impl.descriptors.t z;

    public class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private kotlin.reflect.jvm.internal.impl.descriptors.k f14964a;
        private Modality b;
        private kotlin.reflect.jvm.internal.impl.descriptors.s c;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        private CallableMemberDescriptor.Kind f14967f;
        private m0 i;
        private kotlin.reflect.jvm.internal.impl.name.f k;
        private kotlin.reflect.jvm.internal.impl.types.a0 l;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private j0 f14965d = null;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        private boolean f14966e = false;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        private v0 f14968g = v0.f15717a;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        private boolean f14969h = true;
        private List<t0> j = null;

        public a() {
            this.f14964a = z.this.b();
            this.b = z.this.q();
            this.c = z.this.getVisibility();
            this.f14967f = z.this.g();
            this.i = z.this.s;
            this.k = z.this.getName();
            this.l = z.this.getType();
        }

        private static /* synthetic */ void a(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 5 || i == 7 || i == 9 || i == 11 || i == 19 || i == 13 || i == 14 || i == 16 || i == 17) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
                    break;
                case 4:
                    objArr[0] = "type";
                    break;
                case 6:
                    objArr[0] = "modality";
                    break;
                case 8:
                    objArr[0] = "visibility";
                    break;
                case 10:
                    objArr[0] = "kind";
                    break;
                case 12:
                    objArr[0] = "typeParameters";
                    break;
                case 15:
                    objArr[0] = "substitution";
                    break;
                case 18:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (i == 1) {
                objArr[1] = "setOwner";
            } else if (i == 2) {
                objArr[1] = "setOriginal";
            } else if (i == 3) {
                objArr[1] = "setPreserveSourceElement";
            } else if (i == 5) {
                objArr[1] = "setReturnType";
            } else if (i == 7) {
                objArr[1] = "setModality";
            } else if (i == 9) {
                objArr[1] = "setVisibility";
            } else if (i == 11) {
                objArr[1] = "setKind";
            } else if (i == 19) {
                objArr[1] = "setName";
            } else if (i == 13) {
                objArr[1] = "setTypeParameters";
            } else if (i == 14) {
                objArr[1] = "setDispatchReceiverParameter";
            } else if (i == 16) {
                objArr[1] = "setSubstitution";
            } else if (i != 17) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl$CopyConfiguration";
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 5:
                case 7:
                case 9:
                case 11:
                case 13:
                case 14:
                case 16:
                case 17:
                case 19:
                    break;
                case 4:
                    objArr[2] = "setReturnType";
                    break;
                case 6:
                    objArr[2] = "setModality";
                    break;
                case 8:
                    objArr[2] = "setVisibility";
                    break;
                case 10:
                    objArr[2] = "setKind";
                    break;
                case 12:
                    objArr[2] = "setTypeParameters";
                    break;
                case 15:
                    objArr[2] = "setSubstitution";
                    break;
                case 18:
                    objArr[2] = "setName";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 5 && i != 7 && i != 9 && i != 11 && i != 19 && i != 13 && i != 14 && i != 16 && i != 17) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        public j0 n() {
            return z.this.L0(this);
        }

        k0 o() {
            j0 j0Var = this.f14965d;
            if (j0Var == null) {
                return null;
            }
            return j0Var.getGetter();
        }

        l0 p() {
            j0 j0Var = this.f14965d;
            if (j0Var == null) {
                return null;
            }
            return j0Var.getSetter();
        }

        public a q(boolean z) {
            this.f14969h = z;
            return this;
        }

        public a r(CallableMemberDescriptor.Kind kind) {
            if (kind != null) {
                this.f14967f = kind;
                return this;
            }
            a(10);
            throw null;
        }

        public a s(Modality modality) {
            if (modality != null) {
                this.b = modality;
                return this;
            }
            a(6);
            throw null;
        }

        public a t(CallableMemberDescriptor callableMemberDescriptor) {
            this.f14965d = (j0) callableMemberDescriptor;
            return this;
        }

        public a u(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (kVar != null) {
                this.f14964a = kVar;
                return this;
            }
            a(0);
            throw null;
        }

        public a v(v0 v0Var) {
            if (v0Var != null) {
                this.f14968g = v0Var;
                return this;
            }
            a(15);
            throw null;
        }

        public a w(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
            if (sVar != null) {
                this.c = sVar;
                return this;
            }
            a(8);
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected z(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, boolean z, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, o0 o0Var, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        super(kVar, eVar, fVar, null, z, o0Var);
        if (kVar == null) {
            w(0);
            throw null;
        }
        if (eVar == null) {
            w(1);
            throw null;
        }
        if (modality == null) {
            w(2);
            throw null;
        }
        if (sVar == null) {
            w(3);
            throw null;
        }
        if (fVar == null) {
            w(4);
            throw null;
        }
        if (kind == null) {
            w(5);
            throw null;
        }
        if (o0Var == null) {
            w(6);
            throw null;
        }
        this.j = null;
        this.f14963h = modality;
        this.i = sVar;
        this.k = j0Var == null ? this : j0Var;
        this.l = kind;
        this.m = z2;
        this.n = z3;
        this.o = z4;
        this.p = z5;
        this.q = z6;
        this.r = z7;
    }

    public static z J0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, boolean z, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, o0 o0Var, boolean z2, boolean z3, boolean z4, boolean z5, boolean z6, boolean z7) {
        if (kVar == null) {
            w(7);
            throw null;
        }
        if (eVar == null) {
            w(8);
            throw null;
        }
        if (modality == null) {
            w(9);
            throw null;
        }
        if (sVar == null) {
            w(10);
            throw null;
        }
        if (fVar == null) {
            w(11);
            throw null;
        }
        if (kind == null) {
            w(12);
            throw null;
        }
        if (o0Var != null) {
            return new z(kVar, null, eVar, modality, sVar, z, fVar, kind, o0Var, z2, z3, z4, z5, z6, z7);
        }
        w(13);
        throw null;
    }

    private o0 N0(boolean z, j0 j0Var) {
        o0 o0VarO;
        if (z) {
            if (j0Var == null) {
                j0Var = a();
            }
            o0VarO = j0Var.o();
        } else {
            o0VarO = o0.f14970a;
        }
        if (o0VarO != null) {
            return o0VarO;
        }
        w(23);
        throw null;
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.u O0(TypeSubstitutor typeSubstitutor, kotlin.reflect.jvm.internal.impl.descriptors.i0 i0Var) {
        if (typeSubstitutor == null) {
            w(25);
            throw null;
        }
        if (i0Var == null) {
            w(26);
            throw null;
        }
        if (i0Var.q0() != null) {
            return i0Var.q0().c(typeSubstitutor);
        }
        return null;
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.s T0(kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind) {
        return (kind == CallableMemberDescriptor.Kind.FAKE_OVERRIDE && kotlin.reflect.jvm.internal.impl.descriptors.r.g(sVar.f())) ? kotlin.reflect.jvm.internal.impl.descriptors.r.f14978h : sVar;
    }

    /* JADX WARN: Code duplicated, block: B:10:0x001a  */
    /* JADX WARN: Code duplicated, block: B:19:0x002c  */
    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        if (i != 23 && i != 33 && i != 34 && i != 36 && i != 37) {
            switch (i) {
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 23 && i != 33 && i != 34 && i != 36 && i != 37) {
            switch (i) {
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 8:
                objArr[0] = "annotations";
                break;
            case 2:
            case 9:
                objArr[0] = "modality";
                break;
            case 3:
            case 10:
            case 16:
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 5:
            case 12:
            case 30:
                objArr[0] = "kind";
                break;
            case 6:
            case 13:
            case 32:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 14:
                objArr[0] = "outType";
                break;
            case 15:
                objArr[0] = "typeParameters";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 33:
            case 34:
            case 36:
            case 37:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                break;
            case 22:
                objArr[0] = "originalSubstitutor";
                break;
            case 24:
                objArr[0] = "copyConfiguration";
                break;
            case 25:
                objArr[0] = "substitutor";
                break;
            case 26:
                objArr[0] = "accessorDescriptor";
                break;
            case 27:
                objArr[0] = "newOwner";
                break;
            case 28:
                objArr[0] = "newModality";
                break;
            case 29:
                objArr[0] = "newVisibility";
                break;
            case 31:
                objArr[0] = "newName";
                break;
            case 35:
                objArr[0] = "overriddenDescriptors";
                break;
        }
        if (i == 23) {
            objArr[1] = "getSourceToUseForCopy";
        } else if (i == 33) {
            objArr[1] = "getOriginal";
        } else if (i == 34) {
            objArr[1] = "getKind";
        } else if (i == 36) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i != 37) {
            switch (i) {
                case 17:
                    objArr[1] = "getTypeParameters";
                    break;
                case 18:
                    objArr[1] = "getReturnType";
                    break;
                case 19:
                    objArr[1] = "getModality";
                    break;
                case 20:
                    objArr[1] = "getVisibility";
                    break;
                case 21:
                    objArr[1] = "getAccessors";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = MenuOptions.COPY;
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[2] = "create";
                break;
            case 14:
            case 15:
                objArr[2] = "setType";
                break;
            case 16:
                objArr[2] = "setVisibility";
                break;
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 23:
            case 33:
            case 34:
            case 36:
            case 37:
                break;
            case 22:
                objArr[2] = "substitute";
                break;
            case 24:
                objArr[2] = "doSubstitute";
                break;
            case 25:
            case 26:
                objArr[2] = "getSubstitutedInitialSignatureDescriptor";
                break;
            case 27:
            case 28:
            case 29:
            case 30:
            case 31:
            case 32:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 35:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 23 && i != 33 && i != 34 && i != 36 && i != 37) {
            switch (i) {
                case 17:
                case 18:
                case 19:
                case 20:
                case 21:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.x0
    public boolean A() {
        return this.r;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: I0, reason: merged with bridge method [inline-methods] */
    public j0 N(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        a aVarS0 = S0();
        aVarS0.u(kVar);
        aVarS0.t(null);
        aVarS0.s(modality);
        aVarS0.w(sVar);
        aVarS0.r(kind);
        aVarS0.q(z);
        j0 j0VarN = aVarS0.n();
        if (j0VarN != null) {
            return j0VarN;
        }
        w(37);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h0, kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 K() {
        return this.s;
    }

    protected z K0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, j0 j0Var, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var) {
        if (kVar == null) {
            w(27);
            throw null;
        }
        if (modality == null) {
            w(28);
            throw null;
        }
        if (sVar == null) {
            w(29);
            throw null;
        }
        if (kind == null) {
            w(30);
            throw null;
        }
        if (fVar == null) {
            w(31);
            throw null;
        }
        if (o0Var != null) {
            return new z(kVar, j0Var, getAnnotations(), modality, sVar, M(), fVar, kind, o0Var, v0(), isConst(), i0(), V(), isExternal(), A());
        }
        w(32);
        throw null;
    }

    protected j0 L0(a aVar) {
        m0 m0VarC;
        c0 c0Var;
        kotlin.reflect.jvm.internal.impl.storage.i<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> iVar;
        if (aVar == null) {
            w(24);
            throw null;
        }
        z zVarK0 = K0(aVar.f14964a, aVar.b, aVar.c, aVar.f14965d, aVar.f14967f, aVar.k, N0(aVar.f14966e, aVar.f14965d));
        List<t0> typeParameters = aVar.j == null ? getTypeParameters() : aVar.j;
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor typeSubstitutorB = kotlin.reflect.jvm.internal.impl.types.o.b(typeParameters, aVar.f14968g, zVarK0, arrayList);
        kotlin.reflect.jvm.internal.impl.types.a0 a0Var = aVar.l;
        Variance variance = Variance.OUT_VARIANCE;
        kotlin.reflect.jvm.internal.impl.types.a0 a0VarP = typeSubstitutorB.p(a0Var, variance);
        if (a0VarP == null) {
            return null;
        }
        m0 m0Var = aVar.i;
        if (m0Var != null) {
            m0VarC = m0Var.c(typeSubstitutorB);
            if (m0VarC == null) {
                return null;
            }
        } else {
            m0VarC = null;
        }
        m0 m0Var2 = this.t;
        if (m0Var2 != null) {
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarP2 = typeSubstitutorB.p(m0Var2.getType(), Variance.IN_VARIANCE);
            if (a0VarP2 == null) {
                return null;
            }
            c0Var = new c0(zVarK0, new kotlin.reflect.jvm.internal.impl.resolve.scopes.i.b(zVarK0, a0VarP2, this.t.getValue()), this.t.getAnnotations());
        } else {
            c0Var = null;
        }
        zVarK0.V0(a0VarP, arrayList, m0VarC, c0Var);
        a0 a0Var2 = this.v == null ? null : new a0(zVarK0, this.v.getAnnotations(), aVar.b, T0(this.v.getVisibility(), aVar.f14967f), this.v.E(), this.v.isExternal(), this.v.isInline(), aVar.f14967f, aVar.o(), o0.f14970a);
        if (a0Var2 != null) {
            kotlin.reflect.jvm.internal.impl.types.a0 returnType = this.v.getReturnType();
            a0Var2.J0(O0(typeSubstitutorB, this.v));
            a0Var2.M0(returnType != null ? typeSubstitutorB.p(returnType, variance) : null);
        }
        b0 b0Var = this.w == null ? null : new b0(zVarK0, this.w.getAnnotations(), aVar.b, T0(this.w.getVisibility(), aVar.f14967f), this.w.E(), this.w.isExternal(), this.w.isInline(), aVar.f14967f, aVar.p(), o0.f14970a);
        if (b0Var != null) {
            List<kotlin.reflect.jvm.internal.impl.descriptors.v0> listL0 = o.L0(b0Var, this.w.f(), typeSubstitutorB, false, false, null);
            if (listL0 == null) {
                zVarK0.U0(true);
                listL0 = Collections.singletonList(b0.L0(b0Var, DescriptorUtilsKt.g(aVar.f14964a).H(), this.w.f().get(0).getAnnotations()));
            }
            if (listL0.size() != 1) {
                throw new IllegalStateException();
            }
            b0Var.J0(O0(typeSubstitutorB, this.w));
            b0Var.N0(listL0.get(0));
        }
        kotlin.reflect.jvm.internal.impl.descriptors.t tVar = this.y;
        n nVar = tVar == null ? null : new n(tVar.getAnnotations(), zVarK0);
        kotlin.reflect.jvm.internal.impl.descriptors.t tVar2 = this.z;
        zVarK0.Q0(a0Var2, b0Var, nVar, tVar2 != null ? new n(tVar2.getAnnotations(), zVarK0) : null);
        if (aVar.f14969h) {
            kotlin.reflect.jvm.internal.impl.utils.e eVarA = kotlin.reflect.jvm.internal.impl.utils.e.a();
            Iterator<? extends j0> it = d().iterator();
            while (it.hasNext()) {
                eVarA.add(it.next().c(typeSubstitutorB));
            }
            zVarK0.z0(eVarA);
        }
        if (isConst() && (iVar = this.f14927g) != null) {
            zVarK0.G0(iVar);
        }
        return zVarK0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    /* JADX INFO: renamed from: M0, reason: merged with bridge method [inline-methods] */
    public a0 getGetter() {
        return this.v;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h0, kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 O() {
        return this.t;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    public kotlin.reflect.jvm.internal.impl.descriptors.t P() {
        return this.z;
    }

    public void P0(a0 a0Var, l0 l0Var) {
        Q0(a0Var, l0Var, null, null);
    }

    public void Q0(a0 a0Var, l0 l0Var, kotlin.reflect.jvm.internal.impl.descriptors.t tVar, kotlin.reflect.jvm.internal.impl.descriptors.t tVar2) {
        this.v = a0Var;
        this.w = l0Var;
        this.y = tVar;
        this.z = tVar2;
    }

    public boolean R0() {
        return this.x;
    }

    public a S0() {
        return new a();
    }

    public void U0(boolean z) {
        this.x = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return this.p;
    }

    public void V0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var, List<? extends t0> list, m0 m0Var, m0 m0Var2) {
        if (a0Var == null) {
            w(14);
            throw null;
        }
        if (list == null) {
            w(15);
            throw null;
        }
        B0(a0Var);
        this.u = new ArrayList(list);
        this.t = m0Var2;
        this.s = m0Var;
    }

    public void W0(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        if (sVar != null) {
            this.i = sVar;
        } else {
            w(16);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends j0> d() {
        Collection<? extends j0> collectionEmptyList = this.j;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList != null) {
            return collectionEmptyList;
        }
        w(36);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public CallableMemberDescriptor.Kind g() {
        CallableMemberDescriptor.Kind kind = this.l;
        if (kind != null) {
            return kind;
        }
        w(34);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h0, kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.a0 type = getType();
        if (type != null) {
            return type;
        }
        w(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    public l0 getSetter() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h0, kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<t0> getTypeParameters() {
        List<t0> list = this.u;
        if (list != null) {
            if (list != null) {
                return list;
            }
            w(17);
            throw null;
        }
        throw new IllegalStateException("typeParameters == null for " + toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = this.i;
        if (sVar != null) {
            return sVar;
        }
        w(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w0
    public boolean isConst() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return this.q;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        Modality modality = this.f14963h;
        if (modality != null) {
            return modality;
        }
        w(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    public List<kotlin.reflect.jvm.internal.impl.descriptors.i0> u() {
        ArrayList arrayList = new ArrayList(2);
        a0 a0Var = this.v;
        if (a0Var != null) {
            arrayList.add(a0Var);
        }
        l0 l0Var = this.w;
        if (l0Var != null) {
            arrayList.add(l0Var);
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j0
    public kotlin.reflect.jvm.internal.impl.descriptors.t u0() {
        return this.y;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w0
    public boolean v0() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.c(this, d2);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void z0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection != 0) {
            this.j = collection;
        } else {
            w(35);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    public j0 c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            w(22);
            throw null;
        }
        if (typeSubstitutor.k()) {
            return this;
        }
        a aVarS0 = S0();
        aVarS0.v(typeSubstitutor.j());
        aVarS0.t(a());
        return aVarS0.n();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    public j0 a() {
        j0 j0Var = this.k;
        j0 j0VarA = j0Var == this ? this : j0Var.a();
        if (j0VarA != null) {
            return j0VarA;
        }
        w(33);
        throw null;
    }
}
