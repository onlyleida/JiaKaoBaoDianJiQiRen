package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.LinkedHashMap;
import java.util.List;
import java.util.Map;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;

/* JADX INFO: loaded from: classes6.dex */
public class d0 extends o implements n0 {
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected d0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, n0 n0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        super(kVar, n0Var, eVar, fVar, kind, o0Var);
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
        if (o0Var != null) {
        } else {
            w(4);
            throw null;
        }
    }

    public static d0 h1(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.name.f fVar, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        if (kVar == null) {
            w(5);
            throw null;
        }
        if (eVar == null) {
            w(6);
            throw null;
        }
        if (fVar == null) {
            w(7);
            throw null;
        }
        if (kind == null) {
            w(8);
            throw null;
        }
        if (o0Var != null) {
            return new d0(kVar, null, eVar, fVar, kind, o0Var);
        }
        w(9);
        throw null;
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 13 || i == 17 || i == 18 || i == 23 || i == 24) ? 2 : 3];
        switch (i) {
            case 1:
            case 6:
            case 21:
                objArr[0] = "annotations";
                break;
            case 2:
            case 7:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 3:
            case 8:
            case 20:
                objArr[0] = "kind";
                break;
            case 4:
            case 9:
            case 22:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 5:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 14:
                objArr[0] = "typeParameters";
                break;
            case 11:
            case 15:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 12:
            case 16:
                objArr[0] = "visibility";
                break;
            case 13:
            case 17:
            case 18:
            case 23:
            case 24:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
                break;
            case 19:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 13 || i == 17) {
            objArr[1] = "initialize";
        } else if (i == 18) {
            objArr[1] = "getOriginal";
        } else if (i == 23) {
            objArr[1] = MenuOptions.COPY;
        } else if (i != 24) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/SimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = "newCopyBuilder";
        }
        switch (i) {
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
                objArr[2] = "create";
                break;
            case 10:
            case 11:
            case 12:
            case 14:
            case 15:
            case 16:
                objArr[2] = "initialize";
                break;
            case 13:
            case 17:
            case 18:
            case 23:
            case 24:
                break;
            case 19:
            case 20:
            case 21:
            case 22:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 13 && i != 17 && i != 18 && i != 23 && i != 24) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    protected o H0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var) {
        if (kVar == null) {
            w(19);
            throw null;
        }
        if (kind == null) {
            w(20);
            throw null;
        }
        if (eVar == null) {
            w(21);
            throw null;
        }
        if (o0Var == null) {
            w(22);
            throw null;
        }
        n0 n0Var = (n0) uVar;
        if (fVar == null) {
            fVar = getName();
        }
        return new d0(kVar, n0Var, eVar, fVar, kind, o0Var);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: g1, reason: merged with bridge method [inline-methods] */
    public n0 N(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        n0 n0Var = (n0) super.N(kVar, modality, sVar, kind, z);
        if (n0Var != null) {
            return n0Var;
        }
        w(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    /* JADX INFO: renamed from: i1, reason: merged with bridge method [inline-methods] */
    public n0 a() {
        n0 n0Var = (n0) super.a();
        if (n0Var != null) {
            return n0Var;
        }
        w(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    /* JADX INFO: renamed from: j1, reason: merged with bridge method [inline-methods] */
    public d0 N0(m0 m0Var, m0 m0Var2, List<? extends t0> list, List<v0> list2, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        if (list == null) {
            w(10);
            throw null;
        }
        if (list2 == null) {
            w(11);
            throw null;
        }
        if (sVar == null) {
            w(12);
            throw null;
        }
        d0 d0VarK1 = k1(m0Var, m0Var2, list, list2, a0Var, modality, sVar, null);
        if (d0VarK1 != null) {
            return d0VarK1;
        }
        w(13);
        throw null;
    }

    public d0 k1(m0 m0Var, m0 m0Var2, List<? extends t0> list, List<v0> list2, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, Map<? extends kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> map) {
        if (list == null) {
            w(14);
            throw null;
        }
        if (list2 == null) {
            w(15);
            throw null;
        }
        if (sVar == null) {
            w(16);
            throw null;
        }
        super.N0(m0Var, m0Var2, list, list2, a0Var, modality, sVar);
        if (map != null && !map.isEmpty()) {
            this.C = new LinkedHashMap(map);
        }
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.n0
    public kotlin.reflect.jvm.internal.impl.descriptors.u.a<? extends n0> s() {
        kotlin.reflect.jvm.internal.impl.descriptors.u.a aVarS = super.s();
        if (aVarS != null) {
            return aVarS;
        }
        w(24);
        throw null;
    }
}
