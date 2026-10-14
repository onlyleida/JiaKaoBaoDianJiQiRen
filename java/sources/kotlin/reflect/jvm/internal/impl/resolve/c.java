package kotlin.reflect.jvm.internal.impl.resolve;

import com.iflytek.cloud.SpeechUtility;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.connect.common.Constants;
import java.util.Collection;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.b0;
import kotlin.reflect.jvm.internal.impl.descriptors.f0;
import kotlin.reflect.jvm.internal.impl.descriptors.l0;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n;
import kotlin.reflect.jvm.internal.impl.descriptors.o;
import kotlin.reflect.jvm.internal.impl.descriptors.p0;
import kotlin.reflect.jvm.internal.impl.descriptors.r;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.w0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.t;
import kotlin.reflect.jvm.internal.impl.types.y0;

/* JADX INFO: loaded from: classes6.dex */
public class c {
    static {
        new kotlin.reflect.jvm.internal.impl.name.c("kotlin.jvm.JvmName");
    }

    public static boolean A(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return D(kVar, ClassKind.ENUM_CLASS);
    }

    public static boolean B(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar != null) {
            return D(kVar, ClassKind.ENUM_ENTRY);
        }
        a(36);
        throw null;
    }

    public static boolean C(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return D(kVar, ClassKind.INTERFACE);
    }

    private static boolean D(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, ClassKind classKind) {
        if (classKind != null) {
            return (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) && ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).g() == classKind;
        }
        a(37);
        throw null;
    }

    public static boolean E(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(1);
            throw null;
        }
        while (kVar != null) {
            if (u(kVar) || y(kVar)) {
                return true;
            }
            kVar = kVar.b();
        }
        return false;
    }

    private static boolean F(a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (a0Var == null) {
            a(30);
            throw null;
        }
        if (kVar == null) {
            a(31);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().u();
        if (fVarC == null) {
            return false;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarA = fVarC.a();
        return (kVarA instanceof kotlin.reflect.jvm.internal.impl.descriptors.f) && (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.f) && ((kotlin.reflect.jvm.internal.impl.descriptors.f) kVar).i().equals(((kotlin.reflect.jvm.internal.impl.descriptors.f) kVarA).i());
    }

    public static boolean G(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return (D(kVar, ClassKind.CLASS) || D(kVar, ClassKind.INTERFACE)) && ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).q() == Modality.SEALED;
    }

    public static boolean H(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
        if (dVar == null) {
            a(28);
            throw null;
        }
        if (dVar2 != null) {
            return I(dVar.n(), dVar2.a());
        }
        a(29);
        throw null;
    }

    public static boolean I(a0 a0Var, kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (a0Var == null) {
            a(32);
            throw null;
        }
        if (kVar == null) {
            a(33);
            throw null;
        }
        if (F(a0Var, kVar)) {
            return true;
        }
        Iterator<a0> it = a0Var.I0().a().iterator();
        while (it.hasNext()) {
            if (I(it.next(), kVar)) {
                return true;
            }
        }
        return false;
    }

    public static boolean J(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return kVar != null && (kVar.b() instanceof b0);
    }

    public static boolean K(w0 w0Var, a0 a0Var) {
        if (w0Var == null) {
            a(63);
            throw null;
        }
        if (a0Var == null) {
            a(64);
            throw null;
        }
        if (w0Var.M() || kotlin.reflect.jvm.internal.impl.types.b0.a(a0Var)) {
            return false;
        }
        if (y0.b(a0Var)) {
            return true;
        }
        kotlin.reflect.jvm.internal.impl.builtins.g gVarG = DescriptorUtilsKt.g(w0Var);
        if (!kotlin.reflect.jvm.internal.impl.builtins.g.q0(a0Var)) {
            kotlin.reflect.jvm.internal.impl.types.checker.f fVar = kotlin.reflect.jvm.internal.impl.types.checker.f.f15664a;
            if (!fVar.b(gVarG.W(), a0Var) && !fVar.b(gVarG.K().n(), a0Var) && !fVar.b(gVarG.i(), a0Var)) {
                kotlin.reflect.jvm.internal.impl.builtins.j jVar = kotlin.reflect.jvm.internal.impl.builtins.j.f14812a;
                if (!kotlin.reflect.jvm.internal.impl.builtins.j.d(a0Var)) {
                    return false;
                }
            }
        }
        return true;
    }

    public static <D extends CallableMemberDescriptor> D L(D d2) {
        if (d2 == null) {
            a(59);
            throw null;
        }
        while (d2.g() == CallableMemberDescriptor.Kind.FAKE_OVERRIDE) {
            Collection<? extends CallableMemberDescriptor> collectionD = d2.d();
            if (collectionD.isEmpty()) {
                throw new IllegalStateException("Fake override should have at least one overridden descriptor: " + d2);
            }
            d2 = (D) collectionD.iterator().next();
        }
        if (d2 != null) {
            return d2;
        }
        a(60);
        throw null;
    }

    public static <D extends o> D M(D d2) {
        if (d2 == null) {
            a(61);
            throw null;
        }
        if (d2 instanceof CallableMemberDescriptor) {
            return L((CallableMemberDescriptor) d2);
        }
        if (d2 != null) {
            return d2;
        }
        a(62);
        throw null;
    }

    private static /* synthetic */ void a(int i) {
        String str;
        int i2;
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 5:
            case 6:
            case 8:
            case 11:
            case 13:
            case 14:
            case 15:
            case 21:
            case 23:
            case 24:
            case 34:
            case 35:
            case 36:
            case 57:
            case 58:
            case 59:
            case 61:
            case 79:
            case 92:
            case 94:
                objArr[0] = "descriptor";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
            case 16:
                objArr[0] = "first";
                break;
            case 17:
                objArr[0] = "second";
                break;
            case 18:
            case 19:
                objArr[0] = "aClass";
                break;
            case 20:
                objArr[0] = "kotlinType";
                break;
            case 25:
                objArr[0] = "declarationDescriptor";
                break;
            case 26:
            case 28:
                objArr[0] = "subClass";
                break;
            case 27:
            case 29:
            case 33:
                objArr[0] = "superClass";
                break;
            case 30:
            case 32:
            case 45:
            case 64:
                objArr[0] = "type";
                break;
            case 31:
                objArr[0] = "other";
                break;
            case 37:
                objArr[0] = "classKind";
                break;
            case 38:
            case 39:
            case 41:
            case 44:
            case 48:
            case 54:
            case 65:
            case 66:
            case 67:
            case 74:
            case 75:
                objArr[0] = "classDescriptor";
                break;
            case 46:
                objArr[0] = "typeConstructor";
                break;
            case 55:
                objArr[0] = "innerClassName";
                break;
            case 56:
                objArr[0] = "location";
                break;
            case 63:
                objArr[0] = "variable";
                break;
            case 68:
                objArr[0] = "f";
                break;
            case 70:
                objArr[0] = "current";
                break;
            case 71:
                objArr[0] = SpeechUtility.TAG_RESOURCE_RESULT;
                break;
            case 72:
                objArr[0] = "memberDescriptor";
                break;
            case 76:
            case 77:
            case 78:
                objArr[0] = "annotated";
                break;
            case 82:
            case 84:
            case 87:
            case 89:
                objArr[0] = Constants.PARAM_SCOPE;
                break;
            case 85:
            case 88:
            case 90:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        switch (i) {
            case 4:
                objArr[1] = "getFqNameSafe";
                break;
            case 7:
                objArr[1] = "getFqNameUnsafe";
                break;
            case 9:
            case 10:
                objArr[1] = "getFqNameFromTopLevelClass";
                break;
            case 12:
                objArr[1] = "getClassIdForNonLocalClass";
                break;
            case 22:
                objArr[1] = "getContainingModule";
                break;
            case 40:
                objArr[1] = "getSuperclassDescriptors";
                break;
            case 42:
            case 43:
                objArr[1] = "getSuperClassType";
                break;
            case 47:
                objArr[1] = "getClassDescriptorForTypeConstructor";
                break;
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
                objArr[1] = "getDefaultConstructorVisibility";
                break;
            case 60:
                objArr[1] = "unwrapFakeOverride";
                break;
            case 62:
                objArr[1] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 69:
                objArr[1] = "getAllOverriddenDescriptors";
                break;
            case 73:
                objArr[1] = "getAllOverriddenDeclarations";
                break;
            case 80:
            case 81:
                objArr[1] = "getContainingSourceFile";
                break;
            case 83:
                objArr[1] = "getAllDescriptors";
                break;
            case 86:
                objArr[1] = "getFunctionByName";
                break;
            case 91:
                objArr[1] = "getPropertyByName";
                break;
            case 93:
                objArr[1] = "getDirectMember";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/resolve/DescriptorUtils";
                break;
        }
        switch (i) {
            case 1:
                objArr[2] = "isLocal";
                break;
            case 2:
                objArr[2] = "getFqName";
                break;
            case 3:
                objArr[2] = "getFqNameSafe";
                break;
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                break;
            case 5:
                objArr[2] = "getFqNameSafeIfPossible";
                break;
            case 6:
                objArr[2] = "getFqNameUnsafe";
                break;
            case 8:
                objArr[2] = "getFqNameFromTopLevelClass";
                break;
            case 11:
                objArr[2] = "getClassIdForNonLocalClass";
                break;
            case 13:
                objArr[2] = "isExtension";
                break;
            case 14:
                objArr[2] = "isOverride";
                break;
            case 15:
                objArr[2] = "isStaticDeclaration";
                break;
            case 16:
            case 17:
                objArr[2] = "areInSameModule";
                break;
            case 18:
            case 19:
                objArr[2] = "getParentOfType";
                break;
            case 20:
            case 23:
                objArr[2] = "getContainingModuleOrNull";
                break;
            case 21:
                objArr[2] = "getContainingModule";
                break;
            case 24:
                objArr[2] = "getContainingClass";
                break;
            case 25:
                objArr[2] = "isAncestor";
                break;
            case 26:
            case 27:
                objArr[2] = "isDirectSubclass";
                break;
            case 28:
            case 29:
                objArr[2] = "isSubclass";
                break;
            case 30:
            case 31:
                objArr[2] = "isSameClass";
                break;
            case 32:
            case 33:
                objArr[2] = "isSubtypeOfClass";
                break;
            case 34:
                objArr[2] = "isAnonymousObject";
                break;
            case 35:
                objArr[2] = "isAnonymousFunction";
                break;
            case 36:
                objArr[2] = "isEnumEntry";
                break;
            case 37:
                objArr[2] = "isKindOf";
                break;
            case 38:
                objArr[2] = "hasAbstractMembers";
                break;
            case 39:
                objArr[2] = "getSuperclassDescriptors";
                break;
            case 41:
                objArr[2] = "getSuperClassType";
                break;
            case 44:
                objArr[2] = "getSuperClassDescriptor";
                break;
            case 45:
                objArr[2] = "getClassDescriptorForType";
                break;
            case 46:
                objArr[2] = "getClassDescriptorForTypeConstructor";
                break;
            case 48:
                objArr[2] = "getDefaultConstructorVisibility";
                break;
            case 54:
            case 55:
            case 56:
                objArr[2] = "getInnerClassByName";
                break;
            case 57:
                objArr[2] = "isStaticNestedClass";
                break;
            case 58:
                objArr[2] = "isTopLevelOrInnerClass";
                break;
            case 59:
                objArr[2] = "unwrapFakeOverride";
                break;
            case 61:
                objArr[2] = "unwrapFakeOverrideToAnyDeclaration";
                break;
            case 63:
            case 64:
                objArr[2] = "shouldRecordInitializerForProperty";
                break;
            case 65:
                objArr[2] = "classCanHaveAbstractFakeOverride";
                break;
            case 66:
                objArr[2] = "classCanHaveAbstractDeclaration";
                break;
            case 67:
                objArr[2] = "classCanHaveOpenMembers";
                break;
            case 68:
                objArr[2] = "getAllOverriddenDescriptors";
                break;
            case 70:
            case 71:
                objArr[2] = "collectAllOverriddenDescriptors";
                break;
            case 72:
                objArr[2] = "getAllOverriddenDeclarations";
                break;
            case 74:
                objArr[2] = "isSingletonOrAnonymousObject";
                break;
            case 75:
                objArr[2] = "canHaveDeclaredConstructors";
                break;
            case 76:
                objArr[2] = "getJvmName";
                break;
            case 77:
                objArr[2] = "findJvmNameAnnotation";
                break;
            case 78:
                objArr[2] = "hasJvmNameAnnotation";
                break;
            case 79:
                objArr[2] = "getContainingSourceFile";
                break;
            case 82:
                objArr[2] = "getAllDescriptors";
                break;
            case 84:
            case 85:
                objArr[2] = "getFunctionByName";
                break;
            case 87:
            case 88:
                objArr[2] = "getFunctionByNameOrNull";
                break;
            case 89:
            case 90:
                objArr[2] = "getPropertyByName";
                break;
            case 92:
                objArr[2] = "getDirectMember";
                break;
            case 94:
                objArr[2] = "isMethodOfAny";
                break;
            default:
                objArr[2] = "getDispatchReceiverParameterIfNeeded";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 4:
            case 7:
            case 9:
            case 10:
            case 12:
            case 22:
            case 40:
            case 42:
            case 43:
            case 47:
            case 49:
            case 50:
            case 51:
            case 52:
            case 53:
            case 60:
            case 62:
            case 69:
            case 73:
            case 80:
            case 81:
            case 83:
            case 86:
            case 91:
            case 93:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    public static boolean b(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.k kVar2) {
        if (kVar == null) {
            a(16);
            throw null;
        }
        if (kVar2 != null) {
            return g(kVar).equals(g(kVar2));
        }
        a(17);
        throw null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    private static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> void c(D d2, Set<D> set) {
        if (d2 == null) {
            a(70);
            throw null;
        }
        if (set == 0) {
            a(71);
            throw null;
        }
        if (set.contains(d2)) {
            return;
        }
        Iterator<? extends kotlin.reflect.jvm.internal.impl.descriptors.a> it = d2.a().d().iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.a aVarA = it.next().a();
            c(aVarA, set);
            set.add(aVarA);
        }
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.a> Set<D> d(D d2) {
        if (d2 == null) {
            a(68);
            throw null;
        }
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        c(d2.a(), linkedHashSet);
        return linkedHashSet;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d e(a0 a0Var) {
        if (a0Var != null) {
            return f(a0Var.I0());
        }
        a(45);
        throw null;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d f(q0 q0Var) {
        if (q0Var == null) {
            a(46);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) q0Var.u();
        if (dVar != null) {
            return dVar;
        }
        a(47);
        throw null;
    }

    public static z g(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(21);
            throw null;
        }
        z zVarH = h(kVar);
        if (zVarH != null) {
            return zVarH;
        }
        a(22);
        throw null;
    }

    public static z h(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(23);
            throw null;
        }
        while (kVar != null) {
            if (kVar instanceof z) {
                return (z) kVar;
            }
            if (kVar instanceof f0) {
                return ((f0) kVar).getModule();
            }
            kVar = kVar.b();
        }
        return null;
    }

    public static z i(a0 a0Var) {
        if (a0Var == null) {
            a(20);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.f fVarC = a0Var.I0().u();
        if (fVarC == null) {
            return null;
        }
        return h(fVarC);
    }

    public static p0 j(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(79);
            throw null;
        }
        if (kVar instanceof l0) {
            kVar = ((l0) kVar).T();
        }
        if (kVar instanceof n) {
            p0 p0VarB = ((n) kVar).o().b();
            if (p0VarB != null) {
                return p0VarB;
            }
            a(80);
            throw null;
        }
        p0 p0Var = p0.f14972a;
        if (p0Var != null) {
            return p0Var;
        }
        a(81);
        throw null;
    }

    public static s k(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, boolean z) {
        if (dVar == null) {
            a(48);
            throw null;
        }
        ClassKind classKindG = dVar.g();
        if (classKindG == ClassKind.ENUM_CLASS || classKindG.isSingleton()) {
            s sVar = r.f14973a;
            if (sVar != null) {
                return sVar;
            }
            a(49);
            throw null;
        }
        if (G(dVar)) {
            if (z) {
                s sVar2 = r.c;
                if (sVar2 != null) {
                    return sVar2;
                }
                a(50);
                throw null;
            }
            s sVar3 = r.f14973a;
            if (sVar3 != null) {
                return sVar3;
            }
            a(51);
            throw null;
        }
        if (u(dVar)) {
            s sVar4 = r.k;
            if (sVar4 != null) {
                return sVar4;
            }
            a(52);
            throw null;
        }
        s sVar5 = r.f14975e;
        if (sVar5 != null) {
            return sVar5;
        }
        a(53);
        throw null;
    }

    public static m0 l(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(0);
            throw null;
        }
        if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).F0();
        }
        return null;
    }

    public static kotlin.reflect.jvm.internal.impl.name.d m(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar != null) {
            kotlin.reflect.jvm.internal.impl.name.c cVarO = o(kVar);
            return cVarO != null ? cVarO.j() : p(kVar);
        }
        a(2);
        throw null;
    }

    public static kotlin.reflect.jvm.internal.impl.name.c n(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(3);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.name.c cVarO = o(kVar);
        if (cVarO == null) {
            cVarO = p(kVar).l();
        }
        if (cVarO != null) {
            return cVarO;
        }
        a(4);
        throw null;
    }

    private static kotlin.reflect.jvm.internal.impl.name.c o(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(5);
            throw null;
        }
        if ((kVar instanceof z) || t.r(kVar)) {
            return kotlin.reflect.jvm.internal.impl.name.c.c;
        }
        if (kVar instanceof f0) {
            return ((f0) kVar).e();
        }
        if (kVar instanceof b0) {
            return ((b0) kVar).e();
        }
        return null;
    }

    private static kotlin.reflect.jvm.internal.impl.name.d p(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            a(6);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.name.d dVarC = m(kVar.b()).c(kVar.getName());
        if (dVarC != null) {
            return dVarC;
        }
        a(7);
        throw null;
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.k> D q(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Class<D> cls) {
        if (cls != null) {
            return (D) r(kVar, cls, true);
        }
        a(18);
        throw null;
    }

    public static <D extends kotlin.reflect.jvm.internal.impl.descriptors.k> D r(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Class<D> cls, boolean z) {
        if (cls == null) {
            a(19);
            throw null;
        }
        if (kVar == null) {
            return null;
        }
        if (z) {
            kVar = (D) kVar.b();
        }
        while (kVar != null) {
            if (cls.isInstance(kVar)) {
                return (D) kVar;
            }
            kVar = (D) kVar.b();
        }
        return null;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d s(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (dVar == null) {
            a(44);
            throw null;
        }
        Iterator<a0> it = dVar.i().a().iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarE = e(it.next());
            if (dVarE.g() != ClassKind.INTERFACE) {
                return dVarE;
            }
        }
        return null;
    }

    public static boolean t(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return D(kVar, ClassKind.ANNOTATION_CLASS);
    }

    public static boolean u(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar != null) {
            return v(kVar) && kVar.getName().equals(kotlin.reflect.jvm.internal.impl.name.h.f15394a);
        }
        a(34);
        throw null;
    }

    public static boolean v(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return D(kVar, ClassKind.CLASS);
    }

    public static boolean w(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return v(kVar) || A(kVar);
    }

    public static boolean x(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return D(kVar, ClassKind.OBJECT) && ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).Y();
    }

    public static boolean y(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return (kVar instanceof o) && ((o) kVar).getVisibility() == r.f14976f;
    }

    public static boolean z(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar2) {
        if (dVar == null) {
            a(26);
            throw null;
        }
        if (dVar2 == null) {
            a(27);
            throw null;
        }
        Iterator<a0> it = dVar.i().a().iterator();
        while (it.hasNext()) {
            if (F(it.next(), dVar2.a())) {
                return true;
            }
        }
        return false;
    }
}
