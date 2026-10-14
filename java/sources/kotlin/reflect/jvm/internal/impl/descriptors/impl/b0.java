package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;

/* JADX INFO: loaded from: classes6.dex */
public class b0 extends y implements l0 {
    private v0 m;
    private final l0 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public b0(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, l0 l0Var, o0 o0Var) {
        l0 l0Var2;
        b0 b0Var;
        super(modality, sVar, j0Var, eVar, kotlin.reflect.jvm.internal.impl.name.f.n("<set-" + j0Var.getName() + ">"), z, z2, z3, kind, o0Var);
        if (j0Var == null) {
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
        if (kind == null) {
            w(4);
            throw null;
        }
        if (o0Var == null) {
            w(5);
            throw null;
        }
        if (l0Var != null) {
            b0Var = this;
            l0Var2 = l0Var;
        } else {
            l0Var2 = this;
            b0Var = l0Var2;
        }
        b0Var.n = l0Var2;
    }

    public static ValueParameterDescriptorImpl L0(l0 l0Var, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        if (l0Var == null) {
            w(7);
            throw null;
        }
        if (a0Var == null) {
            w(8);
            throw null;
        }
        if (eVar != null) {
            return new ValueParameterDescriptorImpl(l0Var, null, 0, eVar, kotlin.reflect.jvm.internal.impl.name.f.n("<set-?>"), a0Var, false, false, false, null, o0.f14970a);
        }
        w(9);
        throw null;
    }

    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 9:
                objArr[0] = "annotations";
                break;
            case 2:
                objArr[0] = "modality";
                break;
            case 3:
                objArr[0] = "visibility";
                break;
            case 4:
                objArr[0] = "kind";
                break;
            case 5:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
                objArr[0] = "parameter";
                break;
            case 7:
                objArr[0] = "setterDescriptor";
                break;
            case 8:
                objArr[0] = "type";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        switch (i) {
            case 10:
                objArr[1] = "getOverriddenDescriptors";
                break;
            case 11:
                objArr[1] = "getValueParameters";
                break;
            case 12:
                objArr[1] = "getReturnType";
                break;
            case 13:
                objArr[1] = "getOriginal";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertySetterDescriptorImpl";
                break;
        }
        switch (i) {
            case 6:
                objArr[2] = "initialize";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSetterParameter";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 10:
            case 11:
            case 12:
            case 13:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.y, kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    /* JADX INFO: renamed from: M0, reason: merged with bridge method [inline-methods] */
    public l0 a() {
        l0 l0Var = this.n;
        if (l0Var != null) {
            return l0Var;
        }
        w(13);
        throw null;
    }

    public void N0(v0 v0Var) {
        if (v0Var != null) {
            this.m = v0Var;
        } else {
            w(6);
            throw null;
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends l0> d() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.i0> collectionH0 = super.H0(false);
        if (collectionH0 != null) {
            return collectionH0;
        }
        w(10);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<v0> f() {
        v0 v0Var = this.m;
        if (v0Var == null) {
            throw new IllegalStateException();
        }
        List<v0> listSingletonList = Collections.singletonList(v0Var);
        if (listSingletonList != null) {
            return listSingletonList;
        }
        w(11);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        kotlin.reflect.jvm.internal.impl.types.f0 f0VarZ = DescriptorUtilsKt.g(this).Z();
        if (f0VarZ != null) {
            return f0VarZ;
        }
        w(12);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.e(this, d2);
    }
}
