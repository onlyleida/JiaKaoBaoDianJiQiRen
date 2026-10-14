package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes6.dex */
public abstract class y extends j implements kotlin.reflect.jvm.internal.impl.descriptors.i0 {

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private boolean f14959e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f14960f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final Modality f14961g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final j0 f14962h;
    private final boolean i;
    private final CallableMemberDescriptor.Kind j;
    private kotlin.reflect.jvm.internal.impl.descriptors.s k;
    private kotlin.reflect.jvm.internal.impl.descriptors.u l;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public y(Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        super(j0Var.b(), eVar, fVar, o0Var);
        if (modality == null) {
            w(0);
            throw null;
        }
        if (sVar == null) {
            w(1);
            throw null;
        }
        if (j0Var == null) {
            w(2);
            throw null;
        }
        if (eVar == null) {
            w(3);
            throw null;
        }
        if (fVar == null) {
            w(4);
            throw null;
        }
        if (o0Var == null) {
            w(5);
            throw null;
        }
        this.l = null;
        this.f14961g = modality;
        this.k = sVar;
        this.f14962h = j0Var;
        this.f14959e = z;
        this.f14960f = z2;
        this.i = z3;
        this.j = kind;
    }

    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 7:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            case 7:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "visibility";
                break;
            case 2:
                objArr[0] = "correspondingProperty";
                break;
            case 3:
                objArr[0] = "annotations";
                break;
            case 4:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 5:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 7:
                objArr[0] = "substitutor";
                break;
            case 14:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "modality";
                break;
        }
        switch (i) {
            case 6:
                objArr[1] = "getKind";
                break;
            case 7:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyAccessorDescriptorImpl";
                break;
            case 8:
                objArr[1] = "getTypeParameters";
                break;
            case 9:
                objArr[1] = "getModality";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getCorrespondingVariable";
                break;
            case 12:
                objArr[1] = "getCorrespondingProperty";
                break;
            case 13:
                objArr[1] = "getOverriddenDescriptors";
                break;
        }
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            case 7:
                objArr[2] = "substitute";
                break;
            case 14:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 6:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            case 7:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean A0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean B() {
        return false;
    }

    public kotlin.reflect.jvm.internal.impl.descriptors.i0 B0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        throw new UnsupportedOperationException("Accessors must be copied by the corresponding property");
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public boolean E() {
        return this.f14959e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    /* JADX INFO: renamed from: G0, reason: merged with bridge method [inline-methods] */
    public abstract kotlin.reflect.jvm.internal.impl.descriptors.i0 a();

    protected Collection<kotlin.reflect.jvm.internal.impl.descriptors.i0> H0(boolean z) {
        ArrayList arrayList = new ArrayList(0);
        for (j0 j0Var : T().d()) {
            kotlin.reflect.jvm.internal.impl.descriptors.l getter = z ? j0Var.getGetter() : j0Var.getSetter();
            if (getter != null) {
                arrayList.add(getter);
            }
        }
        return arrayList;
    }

    public void I0(boolean z) {
        this.f14959e = z;
    }

    public void J0(kotlin.reflect.jvm.internal.impl.descriptors.u uVar) {
        this.l = uVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 K() {
        return T().K();
    }

    public void K0(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        this.k = sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public /* bridge */ /* synthetic */ CallableMemberDescriptor N(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        B0(kVar, modality, sVar, kind, z);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public m0 O() {
        return T().O();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.i0
    public j0 T() {
        j0 j0Var = this.f14962h;
        if (j0Var != null) {
            return j0Var;
        }
        w(12);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.q0
    public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.l c(TypeSubstitutor typeSubstitutor) {
        c(typeSubstitutor);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public CallableMemberDescriptor.Kind g() {
        CallableMemberDescriptor.Kind kind = this.j;
        if (kind != null) {
            return kind;
        }
        w(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<t0> getTypeParameters() {
        List<t0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        w(8);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = this.k;
        if (sVar != null) {
            return sVar;
        }
        w(10);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean isExternal() {
        return this.f14960f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isInfix() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isInline() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isOperator() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        Modality modality = this.f14961g;
        if (modality != null) {
            return modality;
        }
        w(9);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public kotlin.reflect.jvm.internal.impl.descriptors.u q0() {
        return this.l;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V s0(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<V> interfaceC0321a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean y0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void z0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection != null) {
            return;
        }
        w(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.q0
    public kotlin.reflect.jvm.internal.impl.descriptors.u c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            throw new UnsupportedOperationException();
        }
        w(7);
        throw null;
    }
}
