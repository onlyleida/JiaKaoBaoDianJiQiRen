package kotlin.reflect.jvm.internal.impl.load.java.descriptors;

import com.tencent.open.SocialConstants;
import java.util.List;
import kotlin.Pair;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.types.a0;

/* JADX INFO: loaded from: classes6.dex */
public class b extends kotlin.reflect.jvm.internal.impl.descriptors.impl.e implements a {
    private Boolean F;
    private Boolean G;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected b(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, b bVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        super(dVar, bVar, eVar, z, kind, o0Var);
        if (dVar == null) {
            w(0);
            throw null;
        }
        if (eVar == null) {
            w(1);
            throw null;
        }
        if (kind == null) {
            w(2);
            throw null;
        }
        if (o0Var == null) {
            w(3);
            throw null;
        }
        this.F = null;
        this.G = null;
    }

    public static b o1(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, o0 o0Var) {
        if (dVar == null) {
            w(4);
            throw null;
        }
        if (eVar == null) {
            w(5);
            throw null;
        }
        if (o0Var != null) {
            return new b(dVar, null, eVar, z, CallableMemberDescriptor.Kind.DECLARATION, o0Var);
        }
        w(6);
        throw null;
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 11 || i == 18) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 11 || i == 18) ? 2 : 3];
        switch (i) {
            case 1:
            case 5:
            case 9:
            case 15:
                objArr[0] = "annotations";
                break;
            case 2:
            case 8:
            case 13:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 10:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 4:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 7:
            case 12:
                objArr[0] = "newOwner";
                break;
            case 11:
            case 18:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
                break;
            case 14:
                objArr[0] = "sourceElement";
                break;
            case 16:
                objArr[0] = "enhancedValueParametersData";
                break;
            case 17:
                objArr[0] = "enhancedReturnType";
                break;
        }
        if (i == 11) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 18) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/load/java/descriptors/JavaClassConstructorDescriptor";
        } else {
            objArr[1] = "enhance";
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "createJavaConstructor";
                break;
            case 7:
            case 8:
            case 9:
            case 10:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 11:
            case 18:
                break;
            case 12:
            case 13:
            case 14:
            case 15:
                objArr[2] = "createDescriptor";
                break;
            case 16:
            case 17:
                objArr[2] = "enhance";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 11 && i != 18) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    public boolean M0() {
        return this.F.booleanValue();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    public void U0(boolean z) {
        this.F = Boolean.valueOf(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    public void V0(boolean z) {
        this.G = Boolean.valueOf(z);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.a
    public boolean d0() {
        return this.G.booleanValue();
    }

    protected b n1(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, b bVar, CallableMemberDescriptor.Kind kind, o0 o0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar) {
        if (dVar == null) {
            w(12);
            throw null;
        }
        if (kind == null) {
            w(13);
            throw null;
        }
        if (o0Var == null) {
            w(14);
            throw null;
        }
        if (eVar != null) {
            return new b(dVar, bVar, eVar, this.D, kind, o0Var);
        }
        w(15);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.e
    /* JADX INFO: renamed from: p1, reason: merged with bridge method [inline-methods] */
    public b H0(k kVar, u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var) {
        if (kVar == null) {
            w(7);
            throw null;
        }
        if (kind == null) {
            w(8);
            throw null;
        }
        if (eVar == null) {
            w(9);
            throw null;
        }
        if (o0Var == null) {
            w(10);
            throw null;
        }
        if (kind == CallableMemberDescriptor.Kind.DECLARATION || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            b bVarN1 = n1((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar, (b) uVar, kind, o0Var, eVar);
            bVarN1.U0(M0());
            bVarN1.V0(d0());
            if (bVarN1 != null) {
                return bVarN1;
            }
            w(11);
            throw null;
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + kVar + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.a
    /* JADX INFO: renamed from: q1, reason: merged with bridge method [inline-methods] */
    public b X(a0 a0Var, List<h> list, a0 a0Var2, Pair<kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<?>, ?> pair) {
        if (list == null) {
            w(16);
            throw null;
        }
        if (a0Var2 == null) {
            w(17);
            throw null;
        }
        b bVarH0 = H0(b(), null, g(), null, getAnnotations(), o());
        bVarH0.N0(a0Var == null ? null : kotlin.reflect.jvm.internal.impl.resolve.b.f(bVarH0, a0Var, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b()), K(), getTypeParameters(), g.a(list, f(), bVarH0), a0Var2, q(), getVisibility());
        if (pair != null) {
            bVarH0.Q0(pair.getFirst(), pair.getSecond());
        }
        if (bVarH0 != null) {
            return bVarH0;
        }
        w(18);
        throw null;
    }
}
