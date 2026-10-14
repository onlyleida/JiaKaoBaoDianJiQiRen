package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.functions.Function0;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public abstract class o extends j implements kotlin.reflect.jvm.internal.impl.descriptors.u {
    private final CallableMemberDescriptor.Kind A;
    private kotlin.reflect.jvm.internal.impl.descriptors.u B;
    protected Map<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> C;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private List<t0> f14935e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private List<v0> f14936f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private kotlin.reflect.jvm.internal.impl.types.a0 f14937g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private m0 f14938h;
    private m0 i;
    private Modality j;
    private kotlin.reflect.jvm.internal.impl.descriptors.s k;
    private boolean l;
    private boolean m;
    private boolean n;
    private boolean o;
    private boolean p;
    private boolean q;
    private boolean r;
    private boolean s;
    private boolean t;
    private boolean u;
    private boolean v;
    private boolean w;
    private Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> x;
    private volatile Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.u>> y;
    private final kotlin.reflect.jvm.internal.impl.descriptors.u z;

    class a implements Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.u>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ TypeSubstitutor f14939a;

        a(TypeSubstitutor typeSubstitutor) {
            this.f14939a = typeSubstitutor;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.u> invoke() {
            kotlin.reflect.jvm.internal.impl.utils.d dVar = new kotlin.reflect.jvm.internal.impl.utils.d();
            Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> it = o.this.d().iterator();
            while (it.hasNext()) {
                dVar.add(it.next().c(this.f14939a));
            }
            return dVar;
        }
    }

    static class b implements Function0<List<w0>> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ List f14940a;

        b(List list) {
            this.f14940a = list;
        }

        @Override // kotlin.jvm.functions.Function0
        /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
        public List<w0> invoke() {
            return this.f14940a;
        }
    }

    public class c implements kotlin.reflect.jvm.internal.impl.descriptors.u.a<kotlin.reflect.jvm.internal.impl.descriptors.u> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        protected kotlin.reflect.jvm.internal.impl.types.v0 f14941a;
        protected kotlin.reflect.jvm.internal.impl.descriptors.k b;
        protected Modality c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        protected kotlin.reflect.jvm.internal.impl.descriptors.s f14942d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        protected kotlin.reflect.jvm.internal.impl.descriptors.u f14943e;

        /* JADX INFO: renamed from: f, reason: collision with root package name */
        protected CallableMemberDescriptor.Kind f14944f;

        /* JADX INFO: renamed from: g, reason: collision with root package name */
        protected List<v0> f14945g;

        /* JADX INFO: renamed from: h, reason: collision with root package name */
        protected m0 f14946h;
        protected m0 i;
        protected kotlin.reflect.jvm.internal.impl.types.a0 j;
        protected kotlin.reflect.jvm.internal.impl.name.f k;
        protected boolean l;
        protected boolean m;
        protected boolean n;
        protected boolean o;
        private boolean p;
        private List<t0> q;
        private kotlin.reflect.jvm.internal.impl.descriptors.annotations.e r;
        private boolean s;
        private Map<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> t;
        private Boolean u;
        protected boolean v;
        final /* synthetic */ o w;

        public c(o oVar, kotlin.reflect.jvm.internal.impl.types.v0 v0Var, kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, List<v0> list, m0 m0Var, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, kotlin.reflect.jvm.internal.impl.name.f fVar) {
            if (v0Var == null) {
                t(0);
                throw null;
            }
            if (kVar == null) {
                t(1);
                throw null;
            }
            if (modality == null) {
                t(2);
                throw null;
            }
            if (sVar == null) {
                t(3);
                throw null;
            }
            if (kind == null) {
                t(4);
                throw null;
            }
            if (list == null) {
                t(5);
                throw null;
            }
            if (a0Var == null) {
                t(6);
                throw null;
            }
            this.w = oVar;
            this.f14943e = null;
            this.i = oVar.i;
            this.l = true;
            this.m = false;
            this.n = false;
            this.o = false;
            this.p = oVar.y0();
            this.q = null;
            this.r = null;
            this.s = oVar.A0();
            this.t = new LinkedHashMap();
            this.u = null;
            this.v = false;
            this.f14941a = v0Var;
            this.b = kVar;
            this.c = modality;
            this.f14942d = sVar;
            this.f14944f = kind;
            this.f14945g = list;
            this.f14946h = m0Var;
            this.j = a0Var;
            this.k = fVar;
        }

        private static /* synthetic */ void t(int i) {
            String str;
            int i2;
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    i2 = 2;
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    i2 = 3;
                    break;
            }
            Object[] objArr = new Object[i2];
            switch (i) {
                case 1:
                    objArr[0] = "newOwner";
                    break;
                case 2:
                    objArr[0] = "newModality";
                    break;
                case 3:
                    objArr[0] = "newVisibility";
                    break;
                case 4:
                case 13:
                    objArr[0] = "kind";
                    break;
                case 5:
                    objArr[0] = "newValueParameterDescriptors";
                    break;
                case 6:
                    objArr[0] = "newReturnType";
                    break;
                case 7:
                    objArr[0] = "owner";
                    break;
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 9:
                    objArr[0] = "modality";
                    break;
                case 11:
                    objArr[0] = "visibility";
                    break;
                case 16:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                case 18:
                case 20:
                    objArr[0] = "parameters";
                    break;
                case 22:
                    objArr[0] = "type";
                    break;
                case 32:
                    objArr[0] = "additionalAnnotations";
                    break;
                case 34:
                default:
                    objArr[0] = "substitution";
                    break;
                case 36:
                    objArr[0] = "userDataKey";
                    break;
            }
            switch (i) {
                case 8:
                    objArr[1] = "setOwner";
                    break;
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl$CopyConfiguration";
                    break;
                case 10:
                    objArr[1] = "setModality";
                    break;
                case 12:
                    objArr[1] = "setVisibility";
                    break;
                case 14:
                    objArr[1] = "setKind";
                    break;
                case 15:
                    objArr[1] = "setCopyOverrides";
                    break;
                case 17:
                    objArr[1] = "setName";
                    break;
                case 19:
                    objArr[1] = "setValueParameters";
                    break;
                case 21:
                    objArr[1] = "setTypeParameters";
                    break;
                case 23:
                    objArr[1] = "setReturnType";
                    break;
                case 24:
                    objArr[1] = "setExtensionReceiverParameter";
                    break;
                case 25:
                    objArr[1] = "setDispatchReceiverParameter";
                    break;
                case 26:
                    objArr[1] = "setOriginal";
                    break;
                case 27:
                    objArr[1] = "setSignatureChange";
                    break;
                case 28:
                    objArr[1] = "setPreserveSourceElement";
                    break;
                case 29:
                    objArr[1] = "setDropOriginalInContainingParts";
                    break;
                case 30:
                    objArr[1] = "setHiddenToOvercomeSignatureClash";
                    break;
                case 31:
                    objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                    break;
                case 33:
                    objArr[1] = "setAdditionalAnnotations";
                    break;
                case 35:
                    objArr[1] = "setSubstitution";
                    break;
                case 37:
                    objArr[1] = "putUserData";
                    break;
                case 38:
                    objArr[1] = "getSubstitution";
                    break;
                case 39:
                    objArr[1] = "setJustForTypeSubstitution";
                    break;
            }
            switch (i) {
                case 7:
                    objArr[2] = "setOwner";
                    break;
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    break;
                case 9:
                    objArr[2] = "setModality";
                    break;
                case 11:
                    objArr[2] = "setVisibility";
                    break;
                case 13:
                    objArr[2] = "setKind";
                    break;
                case 16:
                    objArr[2] = "setName";
                    break;
                case 18:
                    objArr[2] = "setValueParameters";
                    break;
                case 20:
                    objArr[2] = "setTypeParameters";
                    break;
                case 22:
                    objArr[2] = "setReturnType";
                    break;
                case 32:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                case 34:
                    objArr[2] = "setSubstitution";
                    break;
                case 36:
                    objArr[2] = "putUserData";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            switch (i) {
                case 8:
                case 10:
                case 12:
                case 14:
                case 15:
                case 17:
                case 19:
                case 21:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 29:
                case 30:
                case 31:
                case 33:
                case 35:
                case 37:
                case 38:
                case 39:
                    throw new IllegalStateException(str2);
                case 9:
                case 11:
                case 13:
                case 16:
                case 18:
                case 20:
                case 22:
                case 32:
                case 34:
                case 36:
                default:
                    throw new IllegalArgumentException(str2);
            }
        }

        public c A(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
            if (eVar != null) {
                this.r = eVar;
                return this;
            }
            t(32);
            throw null;
        }

        public c B(boolean z) {
            this.l = z;
            return this;
        }

        public c C(m0 m0Var) {
            this.i = m0Var;
            return this;
        }

        public c D() {
            this.o = true;
            return this;
        }

        public c E(m0 m0Var) {
            this.f14946h = m0Var;
            return this;
        }

        public c F(boolean z) {
            this.u = Boolean.valueOf(z);
            return this;
        }

        public c G() {
            this.s = true;
            return this;
        }

        public c H() {
            this.p = true;
            return this;
        }

        public c I(boolean z) {
            this.v = z;
            return this;
        }

        public c J(CallableMemberDescriptor.Kind kind) {
            if (kind != null) {
                this.f14944f = kind;
                return this;
            }
            t(13);
            throw null;
        }

        public c K(Modality modality) {
            if (modality != null) {
                this.c = modality;
                return this;
            }
            t(9);
            throw null;
        }

        public c L(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            if (fVar != null) {
                this.k = fVar;
                return this;
            }
            t(16);
            throw null;
        }

        public c M(CallableMemberDescriptor callableMemberDescriptor) {
            this.f14943e = (kotlin.reflect.jvm.internal.impl.descriptors.u) callableMemberDescriptor;
            return this;
        }

        public c N(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            if (kVar != null) {
                this.b = kVar;
                return this;
            }
            t(7);
            throw null;
        }

        public c O() {
            this.n = true;
            return this;
        }

        public c P(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
            if (a0Var != null) {
                this.j = a0Var;
                return this;
            }
            t(22);
            throw null;
        }

        public c Q() {
            this.m = true;
            return this;
        }

        public c R(kotlin.reflect.jvm.internal.impl.types.v0 v0Var) {
            if (v0Var != null) {
                this.f14941a = v0Var;
                return this;
            }
            t(34);
            throw null;
        }

        public c S(List<t0> list) {
            if (list != null) {
                this.q = list;
                return this;
            }
            t(20);
            throw null;
        }

        public c T(List<v0> list) {
            if (list != null) {
                this.f14945g = list;
                return this;
            }
            t(18);
            throw null;
        }

        public c U(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
            if (sVar != null) {
                this.f14942d = sVar;
                return this;
            }
            t(11);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a a() {
            D();
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a b(List list) {
            T(list);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public kotlin.reflect.jvm.internal.impl.descriptors.u build() {
            return this.w.I0(this);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a c(m0 m0Var) {
            C(m0Var);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a d() {
            G();
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a e(m0 m0Var) {
            E(m0Var);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a f(kotlin.reflect.jvm.internal.impl.types.v0 v0Var) {
            R(v0Var);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a g(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
            U(sVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a h() {
            H();
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a i(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            L(fVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a j(Modality modality) {
            K(modality);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a k() {
            O();
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a l(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
            P(a0Var);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a m(CallableMemberDescriptor callableMemberDescriptor) {
            M(callableMemberDescriptor);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a n(boolean z) {
            B(z);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a o(List list) {
            S(list);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a p(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
            N(kVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a q(CallableMemberDescriptor.Kind kind) {
            J(kind);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a r(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
            A(eVar);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.u.a s() {
            Q();
            return this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected o(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        super(kVar, eVar, fVar, o0Var);
        if (kVar == null) {
            w(0);
            throw null;
        }
        if (eVar == null) {
            w(1);
            throw null;
        }
        if (fVar == null) {
            w(2);
            throw null;
        }
        if (kind == null) {
            w(3);
            throw null;
        }
        if (o0Var == null) {
            w(4);
            throw null;
        }
        this.k = kotlin.reflect.jvm.internal.impl.descriptors.r.i;
        this.l = false;
        this.m = false;
        this.n = false;
        this.o = false;
        this.p = false;
        this.q = false;
        this.r = false;
        this.s = false;
        this.t = false;
        this.u = false;
        this.v = true;
        this.w = false;
        this.x = null;
        this.y = null;
        this.B = null;
        this.C = null;
        this.z = uVar == null ? this : uVar;
        this.A = kind;
    }

    private o0 J0(boolean z, kotlin.reflect.jvm.internal.impl.descriptors.u uVar) {
        o0 o0VarO;
        if (z) {
            if (uVar == null) {
                uVar = a();
            }
            o0VarO = uVar.o();
        } else {
            o0VarO = o0.f14970a;
        }
        if (o0VarO != null) {
            return o0VarO;
        }
        w(25);
        throw null;
    }

    public static List<v0> K0(kotlin.reflect.jvm.internal.impl.descriptors.u uVar, List<v0> list, TypeSubstitutor typeSubstitutor) {
        if (list == null) {
            w(26);
            throw null;
        }
        if (typeSubstitutor != null) {
            return L0(uVar, list, typeSubstitutor, false, false, null);
        }
        w(27);
        throw null;
    }

    public static List<v0> L0(kotlin.reflect.jvm.internal.impl.descriptors.u uVar, List<v0> list, TypeSubstitutor typeSubstitutor, boolean z, boolean z2, boolean[] zArr) {
        if (list == null) {
            w(28);
            throw null;
        }
        if (typeSubstitutor == null) {
            w(29);
            throw null;
        }
        ArrayList arrayList = new ArrayList(list.size());
        for (v0 v0Var : list) {
            kotlin.reflect.jvm.internal.impl.types.a0 type = v0Var.getType();
            Variance variance = Variance.IN_VARIANCE;
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarP = typeSubstitutor.p(type, variance);
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarT0 = v0Var.t0();
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarP2 = a0VarT0 == null ? null : typeSubstitutor.p(a0VarT0, variance);
            if (a0VarP == null) {
                return null;
            }
            if ((a0VarP != v0Var.getType() || a0VarT0 != a0VarP2) && zArr != null) {
                zArr[0] = true;
            }
            arrayList.add(ValueParameterDescriptorImpl.G0(uVar, z ? null : v0Var, v0Var.h(), v0Var.getAnnotations(), v0Var.getName(), a0VarP, v0Var.x0(), v0Var.p0(), v0Var.n0(), a0VarP2, z2 ? v0Var.o() : o0.f14970a, v0Var instanceof ValueParameterDescriptorImpl.WithDestructuringDeclaration ? new b(((ValueParameterDescriptorImpl.WithDestructuringDeclaration) v0Var).J0()) : null));
        }
        return arrayList;
    }

    private void P0() {
        Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.u>> function0 = this.y;
        if (function0 != null) {
            this.x = function0.invoke();
            this.y = null;
        }
    }

    private void W0(boolean z) {
        this.t = z;
    }

    private void X0(boolean z) {
        this.s = z;
    }

    private void Z0(kotlin.reflect.jvm.internal.impl.descriptors.u uVar) {
        this.B = uVar;
    }

    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                i2 = 2;
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 5:
                objArr[0] = "typeParameters";
                break;
            case 6:
            case 26:
            case 28:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 7:
            case 9:
                objArr[0] = "visibility";
                break;
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 10:
                objArr[0] = "unsubstitutedReturnType";
                break;
            case 11:
                objArr[0] = "extensionReceiverParameter";
                break;
            case 15:
                objArr[0] = "overriddenDescriptors";
                break;
            case 20:
                objArr[0] = "originalSubstitutor";
                break;
            case 22:
            case 27:
            case 29:
                objArr[0] = "substitutor";
                break;
            case 23:
                objArr[0] = "configuration";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 8:
                objArr[1] = "initialize";
                break;
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/FunctionDescriptorImpl";
                break;
            case 12:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 13:
                objArr[1] = "getModality";
                break;
            case 14:
                objArr[1] = "getVisibility";
                break;
            case 16:
                objArr[1] = "getTypeParameters";
                break;
            case 17:
                objArr[1] = "getValueParameters";
                break;
            case 18:
                objArr[1] = "getOriginal";
                break;
            case 19:
                objArr[1] = "getKind";
                break;
            case 21:
                objArr[1] = "newCopyBuilder";
                break;
            case 24:
                objArr[1] = MenuOptions.COPY;
                break;
            case 25:
                objArr[1] = "getSourceToUseForCopy";
                break;
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
                objArr[2] = "initialize";
                break;
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 10:
                objArr[2] = "setReturnType";
                break;
            case 11:
                objArr[2] = "setExtensionReceiverParameter";
                break;
            case 15:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 20:
                objArr[2] = "substitute";
                break;
            case 22:
                objArr[2] = "newCopyBuilder";
                break;
            case 23:
                objArr[2] = "doSubstitute";
                break;
            case 26:
            case 27:
            case 28:
            case 29:
                objArr[2] = "getSubstitutedValueParameters";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 8:
            case 12:
            case 13:
            case 14:
            case 16:
            case 17:
            case 18:
            case 19:
            case 21:
            case 24:
            case 25:
                throw new IllegalStateException(str2);
            case 9:
            case 10:
            case 11:
            case 15:
            case 20:
            case 22:
            case 23:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean A0() {
        return this.t;
    }

    public boolean B() {
        return this.p;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.u N(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.u uVarBuild = s().p(kVar).j(modality).g(sVar).q(kind).n(z).build();
        if (uVarBuild != null) {
            return uVarBuild;
        }
        w(24);
        throw null;
    }

    protected abstract o H0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var);

    protected kotlin.reflect.jvm.internal.impl.descriptors.u I0(c cVar) {
        c0 c0Var;
        m0 m0Var;
        kotlin.reflect.jvm.internal.impl.types.a0 a0VarP;
        if (cVar == null) {
            w(23);
            throw null;
        }
        boolean[] zArr = new boolean[1];
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarA = cVar.r != null ? kotlin.reflect.jvm.internal.impl.descriptors.annotations.g.a(getAnnotations(), cVar.r) : getAnnotations();
        kotlin.reflect.jvm.internal.impl.descriptors.k kVar = cVar.b;
        kotlin.reflect.jvm.internal.impl.descriptors.u uVar = cVar.f14943e;
        o oVarH0 = H0(kVar, uVar, cVar.f14944f, cVar.k, eVarA, J0(cVar.n, uVar));
        List<t0> typeParameters = cVar.q == null ? getTypeParameters() : cVar.q;
        zArr[0] = zArr[0] | (!typeParameters.isEmpty());
        ArrayList arrayList = new ArrayList(typeParameters.size());
        TypeSubstitutor typeSubstitutorC = kotlin.reflect.jvm.internal.impl.types.o.c(typeParameters, cVar.f14941a, oVarH0, arrayList, zArr);
        if (typeSubstitutorC == null) {
            return null;
        }
        m0 m0Var2 = cVar.f14946h;
        if (m0Var2 != null) {
            kotlin.reflect.jvm.internal.impl.types.a0 a0VarP2 = typeSubstitutorC.p(m0Var2.getType(), Variance.IN_VARIANCE);
            if (a0VarP2 == null) {
                return null;
            }
            c0 c0Var2 = new c0(oVarH0, new kotlin.reflect.jvm.internal.impl.resolve.scopes.i.b(oVarH0, a0VarP2, cVar.f14946h.getValue()), cVar.f14946h.getAnnotations());
            zArr[0] = (a0VarP2 != cVar.f14946h.getType()) | zArr[0];
            c0Var = c0Var2;
        } else {
            c0Var = null;
        }
        m0 m0Var3 = cVar.i;
        if (m0Var3 != null) {
            m0 m0VarC = m0Var3.c(typeSubstitutorC);
            if (m0VarC == null) {
                return null;
            }
            zArr[0] = zArr[0] | (m0VarC != cVar.i);
            m0Var = m0VarC;
        } else {
            m0Var = null;
        }
        List<v0> listL0 = L0(oVarH0, cVar.f14945g, typeSubstitutorC, cVar.o, cVar.n, zArr);
        if (listL0 == null || (a0VarP = typeSubstitutorC.p(cVar.j, Variance.OUT_VARIANCE)) == null) {
            return null;
        }
        zArr[0] = zArr[0] | (a0VarP != cVar.j);
        if (!zArr[0] && cVar.v) {
            return this;
        }
        oVarH0.N0(c0Var, m0Var, arrayList, listL0, a0VarP, cVar.c, cVar.f14942d);
        oVarH0.b1(this.l);
        oVarH0.Y0(this.m);
        oVarH0.T0(this.n);
        oVarH0.a1(this.o);
        oVarH0.e1(this.p);
        oVarH0.d1(this.u);
        oVarH0.S0(this.q);
        oVarH0.R0(this.r);
        oVarH0.U0(this.v);
        oVarH0.X0(cVar.p);
        oVarH0.W0(cVar.s);
        oVarH0.V0(cVar.u != null ? cVar.u.booleanValue() : this.w);
        if (!cVar.t.isEmpty() || this.C != null) {
            Map<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> map = cVar.t;
            Map<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> map2 = this.C;
            if (map2 != null) {
                for (Map.Entry<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> entry : map2.entrySet()) {
                    if (!map.containsKey(entry.getKey())) {
                        map.put(entry.getKey(), entry.getValue());
                    }
                }
            }
            if (map.size() == 1) {
                oVarH0.C = Collections.singletonMap(map.keySet().iterator().next(), map.values().iterator().next());
            } else {
                oVarH0.C = map;
            }
        }
        if (cVar.m || q0() != null) {
            oVarH0.Z0((q0() != null ? q0() : this).c(typeSubstitutorC));
        }
        if (cVar.l && !a().d().isEmpty()) {
            if (cVar.f14941a.f()) {
                Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.u>> function0 = this.y;
                if (function0 != null) {
                    oVarH0.y = function0;
                } else {
                    oVarH0.z0(d());
                }
            } else {
                oVarH0.y = new a(typeSubstitutorC);
            }
        }
        return oVarH0;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 K() {
        return this.i;
    }

    public boolean M0() {
        return this.v;
    }

    public o N0(m0 m0Var, m0 m0Var2, List<? extends t0> list, List<v0> list2, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        if (list == null) {
            w(5);
            throw null;
        }
        if (list2 == null) {
            w(6);
            throw null;
        }
        if (sVar == null) {
            w(7);
            throw null;
        }
        this.f14935e = CollectionsKt___CollectionsKt.M0(list);
        this.f14936f = CollectionsKt___CollectionsKt.M0(list2);
        this.f14937g = a0Var;
        this.j = modality;
        this.k = sVar;
        this.f14938h = m0Var;
        this.i = m0Var2;
        for (int i = 0; i < list.size(); i++) {
            t0 t0Var = list.get(i);
            if (t0Var.h() != i) {
                throw new IllegalStateException(t0Var + " index is " + t0Var.h() + " but position is " + i);
            }
        }
        for (int i2 = 0; i2 < list2.size(); i2++) {
            v0 v0Var = list2.get(i2);
            if (v0Var.h() != i2 + 0) {
                throw new IllegalStateException(v0Var + "index is " + v0Var.h() + " but position is " + i2);
            }
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 O() {
        return this.f14938h;
    }

    protected c O0(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return new c(this, typeSubstitutor.j(), b(), q(), getVisibility(), g(), f(), O(), getReturnType(), null);
        }
        w(22);
        throw null;
    }

    public <V> void Q0(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<V> interfaceC0321a, Object obj) {
        if (this.C == null) {
            this.C = new LinkedHashMap();
        }
        this.C.put(interfaceC0321a, obj);
    }

    public void R0(boolean z) {
        this.r = z;
    }

    public void S0(boolean z) {
        this.q = z;
    }

    public void T0(boolean z) {
        this.n = z;
    }

    public void U0(boolean z) {
        this.v = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return this.r;
    }

    public void V0(boolean z) {
        this.w = z;
    }

    public void Y0(boolean z) {
        this.m = z;
    }

    public void a1(boolean z) {
        this.o = z;
    }

    public void b1(boolean z) {
        this.l = z;
    }

    public void c1(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        if (a0Var != null) {
            this.f14937g = a0Var;
        } else {
            w(10);
            throw null;
        }
    }

    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> d() {
        P0();
        Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> collectionEmptyList = this.x;
        if (collectionEmptyList == null) {
            collectionEmptyList = Collections.emptyList();
        }
        if (collectionEmptyList != null) {
            return collectionEmptyList;
        }
        w(12);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return this.w;
    }

    public void d1(boolean z) {
        this.u = z;
    }

    public void e1(boolean z) {
        this.p = z;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<v0> f() {
        List<v0> list = this.f14936f;
        if (list != null) {
            return list;
        }
        w(17);
        throw null;
    }

    public void f1(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        if (sVar != null) {
            this.k = sVar;
        } else {
            w(9);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public CallableMemberDescriptor.Kind g() {
        CallableMemberDescriptor.Kind kind = this.A;
        if (kind != null) {
            return kind;
        }
        w(19);
        throw null;
    }

    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        return this.f14937g;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<t0> getTypeParameters() {
        List<t0> list = this.f14935e;
        if (list != null) {
            if (list != null) {
                return list;
            }
            w(16);
            throw null;
        }
        throw new IllegalStateException("typeParameters == null for " + this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = this.k;
        if (sVar != null) {
            return sVar;
        }
        w(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return this.q;
    }

    public boolean isExternal() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isInfix() {
        if (this.m) {
            return true;
        }
        Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> it = a().d().iterator();
        while (it.hasNext()) {
            if (it.next().isInfix()) {
                return true;
            }
        }
        return false;
    }

    public boolean isInline() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isOperator() {
        if (this.l) {
            return true;
        }
        Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> it = a().d().iterator();
        while (it.hasNext()) {
            if (it.next().isOperator()) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isSuspend() {
        return this.u;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        Modality modality = this.j;
        if (modality != null) {
            return modality;
        }
        w(13);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public kotlin.reflect.jvm.internal.impl.descriptors.u q0() {
        return this.B;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.u.a<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> s() {
        c cVarO0 = O0(TypeSubstitutor.b);
        if (cVarO0 != null) {
            return cVarO0;
        }
        w(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V s0(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<V> interfaceC0321a) {
        Map<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, Object> map = this.C;
        if (map == null) {
            return null;
        }
        return (V) map.get(interfaceC0321a);
    }

    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.i(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean y0() {
        return this.s;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public void z0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection == 0) {
            w(15);
            throw null;
        }
        this.x = collection;
        Iterator it = collection.iterator();
        while (it.hasNext()) {
            if (((kotlin.reflect.jvm.internal.impl.descriptors.u) it.next()).A0()) {
                this.t = true;
                return;
            }
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.q0
    public kotlin.reflect.jvm.internal.impl.descriptors.u c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor == null) {
            w(20);
            throw null;
        }
        if (typeSubstitutor.k()) {
            return this;
        }
        c cVarO0 = O0(typeSubstitutor);
        cVarO0.M(a());
        cVarO0.O();
        cVarO0.I(true);
        return cVarO0.build();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    public kotlin.reflect.jvm.internal.impl.descriptors.u a() {
        kotlin.reflect.jvm.internal.impl.descriptors.u uVar = this.z;
        kotlin.reflect.jvm.internal.impl.descriptors.u uVarA = uVar == this ? this : uVar.a();
        if (uVarA != null) {
            return uVarA;
        }
        w(18);
        throw null;
    }
}
