package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.ArrayList;
import java.util.Collection;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public class v extends f {
    private final ClassKind i;
    private final boolean j;
    private Modality k;
    private kotlin.reflect.jvm.internal.impl.descriptors.s l;
    private q0 m;
    private List<t0> n;
    private final Collection<kotlin.reflect.jvm.internal.impl.types.a0> o;
    private final kotlin.reflect.jvm.internal.impl.storage.m p;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public v(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, ClassKind classKind, boolean z, boolean z2, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var, kotlin.reflect.jvm.internal.impl.storage.m mVar) {
        super(mVar, kVar, fVar, o0Var, z2);
        if (kVar == null) {
            h0(0);
            throw null;
        }
        if (classKind == null) {
            h0(1);
            throw null;
        }
        if (fVar == null) {
            h0(2);
            throw null;
        }
        if (o0Var == null) {
            h0(3);
            throw null;
        }
        if (mVar == null) {
            h0(4);
            throw null;
        }
        this.o = new ArrayList();
        this.p = mVar;
        this.i = classKind;
        this.j = z;
    }

    private static /* synthetic */ void h0(int i) {
        String str;
        int i2;
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                str = "@NotNull method %s.%s must not return null";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                i2 = 2;
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "kind";
                break;
            case 2:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 3:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 4:
                objArr[0] = "storageManager";
                break;
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 6:
                objArr[0] = "modality";
                break;
            case 9:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "supertype";
                break;
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 16:
                objArr[0] = "kotlinTypeRefiner";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 5:
                objArr[1] = "getAnnotations";
                break;
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/MutableClassDescriptor";
                break;
            case 7:
                objArr[1] = "getModality";
                break;
            case 8:
                objArr[1] = "getKind";
                break;
            case 10:
                objArr[1] = "getVisibility";
                break;
            case 11:
                objArr[1] = "getTypeConstructor";
                break;
            case 13:
                objArr[1] = "getConstructors";
                break;
            case 15:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 17:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 18:
                objArr[1] = "getStaticScope";
                break;
            case 19:
                objArr[1] = "getSealedSubclasses";
                break;
        }
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                break;
            case 6:
                objArr[2] = "setModality";
                break;
            case 9:
                objArr[2] = "setVisibility";
                break;
            case 12:
                objArr[2] = "addSupertype";
                break;
            case 14:
                objArr[2] = "setTypeParameterDescriptors";
                break;
            case 16:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 5:
            case 7:
            case 8:
            case 10:
            case 11:
            case 13:
            case 15:
            case 17:
            case 18:
            case 19:
                throw new IllegalStateException(str2);
            case 6:
            case 9:
            case 12:
            case 14:
            case 16:
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c C() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean D0() {
        return false;
    }

    public void G0() {
        this.m = new kotlin.reflect.jvm.internal.impl.types.h(this, this.n, this.o, this.p);
        Iterator<kotlin.reflect.jvm.internal.impl.descriptors.c> it = j().iterator();
        while (it.hasNext()) {
            ((e) it.next()).c1(n());
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: H0, reason: merged with bridge method [inline-methods] */
    public Set<kotlin.reflect.jvm.internal.impl.descriptors.c> j() {
        Set<kotlin.reflect.jvm.internal.impl.descriptors.c> setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        h0(13);
        throw null;
    }

    public void I0(Modality modality) {
        if (modality != null) {
            this.k = modality;
        } else {
            h0(6);
            throw null;
        }
    }

    public void J0(List<t0> list) {
        if (list == null) {
            h0(14);
            throw null;
        }
        if (this.n == null) {
            this.n = new ArrayList(list);
            return;
        }
        throw new IllegalStateException("Type parameters are already set for " + getName());
    }

    public void K0(kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        if (sVar != null) {
            this.l = sVar;
        } else {
            h0(9);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean b0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public MemberScope e0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (gVar == null) {
            h0(16);
            throw null;
        }
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar != null) {
            return aVar;
        }
        h0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind g() {
        ClassKind classKind = this.i;
        if (classKind != null) {
            return classKind;
        }
        h0(8);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean g0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
        if (eVarB != null) {
            return eVarB;
        }
        h0(5);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = this.l;
        if (sVar != null) {
            return sVar;
        }
        h0(10);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        q0 q0Var = this.m;
        if (q0Var != null) {
            return q0Var;
        }
        h0(11);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope k0() {
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar != null) {
            return aVar;
        }
        h0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d l0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        List<t0> list = this.n;
        if (list != null) {
            return list;
        }
        h0(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        Modality modality = this.k;
        if (modality != null) {
            return modality;
        }
        h0(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.v<kotlin.reflect.jvm.internal.impl.types.f0> t() {
        return null;
    }

    public String toString() {
        return i.e0(this);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> x() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        h0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        return this.j;
    }
}
