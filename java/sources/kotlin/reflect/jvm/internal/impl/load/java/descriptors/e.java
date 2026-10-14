package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.z;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.load.java.typeEnhancement.o;
import kotlin.reflect.jvm.internal.impl.storage.i;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public class e extends z implements a {
    private final boolean A;
    private final Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> B;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected e(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, Modality modality, s sVar, boolean z, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var, j0 j0Var, CallableMemberDescriptor.Kind kind, boolean z2, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> pair) {
        super(kVar, j0Var, eVar, modality, sVar, z, fVar, kind, o0Var, false, false, false, false, false, false);
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
        if (o0Var == null) {
            w(5);
            throw null;
        }
        if (kind == null) {
            w(6);
            throw null;
        }
        this.A = z2;
        this.B = pair;
    }

    public static e X0(k kVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, Modality modality, s sVar, boolean z, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var, boolean z2) {
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
        if (o0Var != null) {
            return new e(kVar, eVar, modality, sVar, z, fVar, o0Var, null, CallableMemberDescriptor.Kind.DECLARATION, z2, null);
        }
        w(12);
        throw null;
    }

    private static /* synthetic */ void w(int i) {
        String str = i != 21 ? "Argument for @NotNull parameter '%s' of %s.%s must not be null" : "@NotNull method %s.%s must not return null";
        Object[] objArr = new Object[i != 21 ? 3 : 2];
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
                objArr[0] = "visibility";
                break;
            case 4:
            case 11:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 5:
            case 12:
            case 18:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
            case 16:
                objArr[0] = "kind";
                break;
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 13:
                objArr[0] = "newOwner";
                break;
            case 14:
                objArr[0] = "newModality";
                break;
            case 15:
                objArr[0] = "newVisibility";
                break;
            case 17:
                objArr[0] = "newName";
                break;
            case 19:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 20:
                objArr[0] = "enhancedReturnType";
                break;
            case 21:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
                break;
        }
        if (i != 21) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaPropertyDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "create";
                break;
            case 13:
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 19:
            case 20:
                objArr[2] = "enhance";
                break;
            case 21:
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i == 21) {
            throw new IllegalStateException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z
    protected z K0(k kVar, Modality modality, s sVar, j0 j0Var, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, o0 o0Var) {
        if (kVar == null) {
            w(13);
            throw null;
        }
        if (modality == null) {
            w(14);
            throw null;
        }
        if (sVar == null) {
            w(15);
            throw null;
        }
        if (kind == null) {
            w(16);
            throw null;
        }
        if (fVar == null) {
            w(17);
            throw null;
        }
        if (o0Var != null) {
            return new e(kVar, getAnnotations(), modality, sVar, M(), fVar, o0Var, j0Var, kind, this.A, this.B);
        }
        w(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.a
    public a X(a0 a0Var, List<h> list, a0 a0Var2, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> pair) {
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0Var3;
        b0 b0Var;
        if (list == null) {
            w(19);
            throw null;
        }
        if (a0Var2 == null) {
            w(20);
            throw null;
        }
        j0 j0VarA = a() == this ? null : a();
        e eVar = new e(b(), getAnnotations(), q(), getVisibility(), M(), getName(), o(), j0VarA, g(), this.A, pair);
        kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 getter = getGetter();
        if (getter != null) {
            a0Var3 = a0Var;
            kotlin.reflect.jvm.internal.impl.descriptors.impl.a0 a0Var4 = new kotlin.reflect.jvm.internal.impl.descriptors.impl.a0(eVar, getter.getAnnotations(), getter.q(), getter.getVisibility(), getter.E(), getter.isExternal(), getter.isInline(), g(), j0VarA == null ? null : j0VarA.getGetter(), getter.o());
            a0Var3.J0(getter.q0());
            a0Var3.M0(a0Var2);
        } else {
            a0Var3 = null;
        }
        l0 setter = getSetter();
        if (setter != null) {
            b0 b0Var2 = new b0(eVar, setter.getAnnotations(), setter.q(), setter.getVisibility(), setter.E(), setter.isExternal(), setter.isInline(), g(), j0VarA == null ? null : j0VarA.getSetter(), setter.o());
            b0Var2.J0(b0Var2.q0());
            b0Var2.N0(setter.f().get(0));
            b0Var = b0Var2;
        } else {
            b0Var = null;
        }
        eVar.Q0(a0Var3, b0Var, u0(), P());
        eVar.U0(R0());
        i<kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> iVar = this.f14927g;
        if (iVar != null) {
            eVar.G0(iVar);
        }
        eVar.z0(d());
        eVar.V0(a0Var2, getTypeParameters(), K(), a0Var == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.f(this, a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b()));
        return eVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.h0, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.z, kotlin.reflect.jvm.internal.impl.descriptors.w0
    public boolean isConst() {
        a0 type = getType();
        return this.A && kotlin.reflect.jvm.internal.impl.descriptors.h.a(type) && (!o.i(type) || kotlin.reflect.jvm.internal.impl.builtins.g.t0(type));
    }
}
