package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;

/* JADX INFO: loaded from: classes6.dex */
public class a0 extends y implements k0 {
    private kotlin.reflect.jvm.internal.impl.types.a0 m;
    private final k0 n;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    /* JADX WARN: Multi-variable type inference failed */
    public a0(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, boolean z, boolean z2, boolean z3, CallableMemberDescriptor.Kind kind, k0 k0Var, o0 o0Var) {
        k0 k0Var2;
        a0 a0Var;
        super(modality, sVar, j0Var, eVar, kotlin.reflect.jvm.internal.impl.name.f.n("<get-" + j0Var.getName() + ">"), z, z2, z3, kind, o0Var);
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
        if (k0Var != null) {
            a0Var = this;
            k0Var2 = k0Var;
        } else {
            k0Var2 = this;
            a0Var = k0Var2;
        }
        a0Var.n = k0Var2;
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 6 || i == 7 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7 || i == 8) ? 2 : 3];
        switch (i) {
            case 1:
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
            case 7:
            case 8:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
                break;
            default:
                objArr[0] = "correspondingProperty";
                break;
        }
        if (i == 6) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i == 7) {
            objArr[1] = "getValueParameters";
        } else if (i != 8) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/PropertyGetterDescriptorImpl";
        } else {
            objArr[1] = "getOriginal";
        }
        if (i != 6 && i != 7 && i != 8) {
            objArr[2] = "<init>";
        }
        String str2 = String.format(str, objArr);
        if (i != 6 && i != 7 && i != 8) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.y, kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    /* JADX INFO: renamed from: L0, reason: merged with bridge method [inline-methods] */
    public k0 a() {
        k0 k0Var = this.n;
        if (k0Var != null) {
            return k0Var;
        }
        w(8);
        throw null;
    }

    public void M0(kotlin.reflect.jvm.internal.impl.types.a0 a0Var) {
        if (a0Var == null) {
            a0Var = T().getType();
        }
        this.m = a0Var;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends k0> d() {
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.i0> collectionH0 = super.H0(true);
        if (collectionH0 != null) {
            return collectionH0;
        }
        w(6);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a
    public List<v0> f() {
        List<v0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        w(7);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a, kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.types.a0 getReturnType() {
        return this.m;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.g(this, d2);
    }
}
