package kotlin.reflect.jvm.internal.impl.resolve;

import com.tencent.open.SocialConstants;
import java.util.Collections;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.ValueParameterDescriptorImpl;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.a0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.c0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.Variance;

/* JADX INFO: loaded from: classes6.dex */
public class b {

    private static class a extends kotlin.reflect.jvm.internal.impl.descriptors.impl.e {
        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, o0 o0Var, boolean z) {
            super(dVar, null, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), true, CallableMemberDescriptor.Kind.DECLARATION, o0Var);
            if (dVar == null) {
                w(0);
                throw null;
            }
            if (o0Var == null) {
                w(1);
                throw null;
            }
            l1(Collections.emptyList(), c.k(dVar, z));
        }

        private static /* synthetic */ void w(int i) {
            Object[] objArr = new Object[3];
            if (i != 1) {
                objArr[0] = "containingClass";
            } else {
                objArr[0] = SocialConstants.PARAM_SOURCE;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory$DefaultClassConstructorDescriptor";
            objArr[2] = "<init>";
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 12 || i == 23 || i == 25) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 12 || i == 23 || i == 25) ? 2 : 3];
        switch (i) {
            case 1:
            case 4:
            case 8:
            case 14:
            case 16:
            case 18:
            case 30:
                objArr[0] = "annotations";
                break;
            case 2:
            case 5:
            case 9:
                objArr[0] = "parameterAnnotations";
                break;
            case 3:
            case 7:
            case 13:
            case 15:
            case 17:
            default:
                objArr[0] = "propertyDescriptor";
                break;
            case 6:
            case 11:
            case 19:
                objArr[0] = "sourceElement";
                break;
            case 10:
                objArr[0] = "visibility";
                break;
            case 12:
            case 23:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
                break;
            case 20:
                objArr[0] = "containingClass";
                break;
            case 21:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 22:
            case 24:
                objArr[0] = "enumClass";
                break;
            case 26:
            case 27:
            case 28:
                objArr[0] = "descriptor";
                break;
            case 29:
                objArr[0] = "owner";
                break;
        }
        if (i == 12) {
            objArr[1] = "createSetter";
        } else if (i == 23) {
            objArr[1] = "createEnumValuesMethod";
        } else if (i != 25) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorFactory";
        } else {
            objArr[1] = "createEnumValueOfMethod";
        }
        switch (i) {
            case 3:
            case 4:
            case 5:
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
                objArr[2] = "createSetter";
                break;
            case 12:
            case 23:
            case 25:
                break;
            case 13:
            case 14:
                objArr[2] = "createDefaultGetter";
                break;
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
                objArr[2] = "createGetter";
                break;
            case 20:
            case 21:
                objArr[2] = "createPrimaryConstructorForObject";
                break;
            case 22:
                objArr[2] = "createEnumValuesMethod";
                break;
            case 24:
                objArr[2] = "createEnumValueOfMethod";
                break;
            case 26:
                objArr[2] = "isEnumValuesMethod";
                break;
            case 27:
                objArr[2] = "isEnumValueOfMethod";
                break;
            case 28:
                objArr[2] = "isEnumSpecialMethod";
                break;
            case 29:
            case 30:
                objArr[2] = "createExtensionReceiverParameterForCallable";
                break;
            default:
                objArr[2] = "createDefaultSetter";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 12 && i != 23 && i != 25) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static a0 b(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        if (j0Var == null) {
            a(13);
            throw null;
        }
        if (eVar != null) {
            return g(j0Var, eVar, true, false, false);
        }
        a(14);
        throw null;
    }

    public static b0 c(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar2) {
        if (j0Var == null) {
            a(0);
            throw null;
        }
        if (eVar == null) {
            a(1);
            throw null;
        }
        if (eVar2 != null) {
            return k(j0Var, eVar, eVar2, true, false, false, j0Var.o());
        }
        a(2);
        throw null;
    }

    public static n0 d(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(24);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.a aVar = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O;
        d0 d0VarH1 = d0.h1(dVar, aVar.b(), kotlin.reflect.jvm.internal.impl.builtins.h.c, CallableMemberDescriptor.Kind.SYNTHESIZED, dVar.o());
        d0 d0VarN0 = d0VarH1.N0(null, null, Collections.emptyList(), Collections.singletonList(new ValueParameterDescriptorImpl(d0VarH1, null, 0, aVar.b(), kotlin.reflect.jvm.internal.impl.name.f.g("value"), DescriptorUtilsKt.g(dVar).W(), false, false, false, null, dVar.o())), dVar.n(), Modality.FINAL, r.f14975e);
        if (d0VarN0 != null) {
            return d0VarN0;
        }
        a(25);
        throw null;
    }

    public static n0 e(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(22);
            throw null;
        }
        d0 d0VarN0 = d0.h1(dVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), kotlin.reflect.jvm.internal.impl.builtins.h.b, CallableMemberDescriptor.Kind.SYNTHESIZED, dVar.o()).N0(null, null, Collections.emptyList(), Collections.emptyList(), DescriptorUtilsKt.g(dVar).l(Variance.INVARIANT, dVar.n()), Modality.FINAL, r.f14975e);
        if (d0VarN0 != null) {
            return d0VarN0;
        }
        a(23);
        throw null;
    }

    public static m0 f(kotlin.reflect.jvm.internal.impl.descriptors.a aVar, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        if (aVar == null) {
            a(29);
            throw null;
        }
        if (eVar == null) {
            a(30);
            throw null;
        }
        if (a0Var == null) {
            return null;
        }
        return new c0(aVar, new kotlin.reflect.jvm.internal.impl.resolve.scopes.i.b(aVar, a0Var, null), eVar);
    }

    public static a0 g(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, boolean z2, boolean z3) {
        if (j0Var == null) {
            a(15);
            throw null;
        }
        if (eVar != null) {
            return h(j0Var, eVar, z, z2, z3, j0Var.o());
        }
        a(16);
        throw null;
    }

    public static a0 h(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, boolean z2, boolean z3, o0 o0Var) {
        if (j0Var == null) {
            a(17);
            throw null;
        }
        if (eVar == null) {
            a(18);
            throw null;
        }
        if (o0Var != null) {
            return new a0(j0Var, eVar, j0Var.q(), j0Var.getVisibility(), z, z2, z3, CallableMemberDescriptor.Kind.DECLARATION, null, o0Var);
        }
        a(19);
        throw null;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.impl.e i(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, o0 o0Var) {
        if (dVar == null) {
            a(20);
            throw null;
        }
        if (o0Var != null) {
            return new a(dVar, o0Var, false);
        }
        a(21);
        throw null;
    }

    public static b0 j(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar2, boolean z, boolean z2, boolean z3, s sVar, o0 o0Var) {
        if (j0Var == null) {
            a(7);
            throw null;
        }
        if (eVar == null) {
            a(8);
            throw null;
        }
        if (eVar2 == null) {
            a(9);
            throw null;
        }
        if (sVar == null) {
            a(10);
            throw null;
        }
        if (o0Var == null) {
            a(11);
            throw null;
        }
        b0 b0Var = new b0(j0Var, eVar, j0Var.q(), sVar, z, z2, z3, CallableMemberDescriptor.Kind.DECLARATION, null, o0Var);
        b0Var.N0(b0.L0(b0Var, j0Var.getType(), eVar2));
        return b0Var;
    }

    public static b0 k(j0 j0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar2, boolean z, boolean z2, boolean z3, o0 o0Var) {
        if (j0Var == null) {
            a(3);
            throw null;
        }
        if (eVar == null) {
            a(4);
            throw null;
        }
        if (eVar2 == null) {
            a(5);
            throw null;
        }
        if (o0Var != null) {
            return j(j0Var, eVar, eVar2, z, z2, z3, j0Var.getVisibility(), o0Var);
        }
        a(6);
        throw null;
    }

    private static boolean l(u uVar) {
        if (uVar != null) {
            return uVar.g() == CallableMemberDescriptor.Kind.SYNTHESIZED && c.A(uVar.b());
        }
        a(28);
        throw null;
    }

    public static boolean m(u uVar) {
        if (uVar != null) {
            return uVar.getName().equals(kotlin.reflect.jvm.internal.impl.builtins.h.c) && l(uVar);
        }
        a(27);
        throw null;
    }

    public static boolean n(u uVar) {
        if (uVar != null) {
            return uVar.getName().equals(kotlin.reflect.jvm.internal.impl.builtins.h.b) && l(uVar);
        }
        a(26);
        throw null;
    }
}
