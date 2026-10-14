package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import cn.mucang.android.core.webview.MenuOptions;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;

/* JADX INFO: loaded from: classes6.dex */
public class e extends o implements kotlin.reflect.jvm.internal.impl.descriptors.c {
    private static final kotlin.reflect.jvm.internal.impl.name.f E = kotlin.reflect.jvm.internal.impl.name.f.n("<init>");
    protected final boolean D;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    protected e(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.j jVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, CallableMemberDescriptor.Kind kind, o0 o0Var) {
        super(dVar, jVar, eVar, E, kind, o0Var);
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
        this.D = z;
    }

    public static e i1(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, boolean z, o0 o0Var) {
        if (dVar == null) {
            w(4);
            throw null;
        }
        if (eVar == null) {
            w(5);
            throw null;
        }
        if (o0Var != null) {
            return new e(dVar, null, eVar, z, CallableMemberDescriptor.Kind.DECLARATION, o0Var);
        }
        w(6);
        throw null;
    }

    /* JADX WARN: Code duplicated, block: B:13:0x001a  */
    /* JADX WARN: Code duplicated, block: B:7:0x000e  */
    private static /* synthetic */ void w(int i) {
        String str;
        int i2;
        if (i != 19 && i != 25) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                    str = "@NotNull method %s.%s must not return null";
                    break;
                default:
                    str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                    break;
            }
        } else {
            str = "@NotNull method %s.%s must not return null";
        }
        if (i != 19 && i != 25) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                    i2 = 2;
                    break;
                default:
                    i2 = 3;
                    break;
            }
        } else {
            i2 = 2;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
            case 5:
            case 8:
            case 23:
                objArr[0] = "annotations";
                break;
            case 2:
            case 22:
                objArr[0] = "kind";
                break;
            case 3:
            case 6:
            case 9:
            case 24:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 4:
            case 7:
            default:
                objArr[0] = "containingDeclaration";
                break;
            case 10:
            case 13:
                objArr[0] = "unsubstitutedValueParameters";
                break;
            case 11:
            case 14:
                objArr[0] = "visibility";
                break;
            case 12:
                objArr[0] = "typeParameterDescriptors";
                break;
            case 15:
            case 16:
            case 17:
            case 19:
            case 25:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl";
                break;
            case 18:
                objArr[0] = "originalSubstitutor";
                break;
            case 20:
                objArr[0] = "overriddenDescriptors";
                break;
            case 21:
                objArr[0] = "newOwner";
                break;
        }
        if (i == 19) {
            objArr[1] = "getOverriddenDescriptors";
        } else if (i != 25) {
            switch (i) {
                case 15:
                    objArr[1] = "getContainingDeclaration";
                    break;
                case 16:
                    objArr[1] = "getConstructedClass";
                    break;
                case 17:
                    objArr[1] = "getOriginal";
                    break;
                default:
                    objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/ClassConstructorDescriptorImpl";
                    break;
            }
        } else {
            objArr[1] = MenuOptions.COPY;
        }
        switch (i) {
            case 4:
            case 5:
            case 6:
                objArr[2] = "create";
                break;
            case 7:
            case 8:
            case 9:
                objArr[2] = "createSynthesized";
                break;
            case 10:
            case 11:
            case 12:
            case 13:
            case 14:
                objArr[2] = "initialize";
                break;
            case 15:
            case 16:
            case 17:
            case 19:
            case 25:
                break;
            case 18:
                objArr[2] = "substitute";
                break;
            case 20:
                objArr[2] = "setOverriddenDescriptors";
                break;
            case 21:
            case 22:
            case 23:
            case 24:
                objArr[2] = "createSubstitutedCopy";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 19 && i != 25) {
            switch (i) {
                case 15:
                case 16:
                case 17:
                    break;
                default:
                    throw new IllegalArgumentException(str2);
            }
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public boolean Z() {
        return this.D;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.j
    public kotlin.reflect.jvm.internal.impl.descriptors.d a0() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = b();
        if (dVarB != null) {
            return dVarB;
        }
        w(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor, kotlin.reflect.jvm.internal.impl.descriptors.a
    public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.u> d() {
        Set setEmptySet = Collections.emptySet();
        if (setEmptySet != null) {
            return setEmptySet;
        }
        w(19);
        throw null;
    }

    public m0 g1() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarB = b();
        if (!dVarB.z()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.k kVarB = dVarB.b();
        if (kVarB instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
            return ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVarB).F0();
        }
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    /* JADX INFO: renamed from: h1, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.c N(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, Modality modality, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) super.N(kVar, modality, sVar, kind, z);
        if (cVar != null) {
            return cVar;
        }
        w(25);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    /* JADX INFO: renamed from: j1, reason: merged with bridge method [inline-methods] */
    public e H0(kotlin.reflect.jvm.internal.impl.descriptors.k kVar, kotlin.reflect.jvm.internal.impl.descriptors.u uVar, CallableMemberDescriptor.Kind kind, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var) {
        if (kVar == null) {
            w(21);
            throw null;
        }
        if (kind == null) {
            w(22);
            throw null;
        }
        if (eVar == null) {
            w(23);
            throw null;
        }
        if (o0Var == null) {
            w(24);
            throw null;
        }
        CallableMemberDescriptor.Kind kind2 = CallableMemberDescriptor.Kind.DECLARATION;
        if (kind == kind2 || kind == CallableMemberDescriptor.Kind.SYNTHESIZED) {
            return new e((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar, this, eVar, this.D, kind2, o0Var);
        }
        throw new IllegalStateException("Attempt at creating a constructor that is not a declaration: \ncopy from: " + this + "\nnewOwner: " + kVar + "\nkind: " + kind);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.j, kotlin.reflect.jvm.internal.impl.descriptors.k
    /* JADX INFO: renamed from: k1, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d b() {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVar = (kotlin.reflect.jvm.internal.impl.descriptors.d) super.b();
        if (dVar != null) {
            return dVar;
        }
        w(15);
        throw null;
    }

    public e l1(List<v0> list, kotlin.reflect.jvm.internal.impl.descriptors.s sVar) {
        if (list == null) {
            w(13);
            throw null;
        }
        if (sVar != null) {
            m1(list, sVar, b().p());
            return this;
        }
        w(14);
        throw null;
    }

    public e m1(List<v0> list, kotlin.reflect.jvm.internal.impl.descriptors.s sVar, List<t0> list2) {
        if (list == null) {
            w(10);
            throw null;
        }
        if (sVar == null) {
            w(11);
            throw null;
        }
        if (list2 != null) {
            super.N0(null, g1(), list2, list, null, Modality.FINAL, sVar);
            return this;
        }
        w(12);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.k
    public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
        return mVar.j(this, d2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void z0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection != null) {
            return;
        }
        w(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.q0
    public kotlin.reflect.jvm.internal.impl.descriptors.c c(TypeSubstitutor typeSubstitutor) {
        if (typeSubstitutor != null) {
            return (kotlin.reflect.jvm.internal.impl.descriptors.c) super.c(typeSubstitutor);
        }
        w(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.impl.j
    public kotlin.reflect.jvm.internal.impl.descriptors.c a() {
        kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) super.a();
        if (cVar != null) {
            return cVar;
        }
        w(17);
        throw null;
    }
}
