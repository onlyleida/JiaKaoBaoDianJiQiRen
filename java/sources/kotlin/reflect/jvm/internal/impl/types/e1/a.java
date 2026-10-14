package kotlin.reflect.jvm.internal.impl.types.e1;

import cn.mucang.android.core.webview.MenuOptions;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.List;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.e;
import kotlin.reflect.jvm.internal.impl.descriptors.d;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.d0;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.o;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.m0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.s;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.t;

/* JADX INFO: loaded from: classes6.dex */
public class a extends d0 {

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.e1.a$a, reason: collision with other inner class name */
    class C0358a implements u.a<n0> {
        C0358a() {
        }

        /* JADX WARN: Code duplicated, block: B:16:0x0030  */
        /* JADX WARN: Code duplicated, block: B:31:0x004e  */
        private static /* synthetic */ void t(int i) {
            String str;
            int i2;
            if (i != 1 && i != 3 && i != 5 && i != 10 && i != 12 && i != 14 && i != 16 && i != 18 && i != 30 && i != 7 && i != 8) {
                switch (i) {
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        str = "@NotNull method %s.%s must not return null";
                        break;
                    default:
                        str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                        break;
                }
            } else {
                str = "@NotNull method %s.%s must not return null";
            }
            if (i != 1 && i != 3 && i != 5 && i != 10 && i != 12 && i != 14 && i != 16 && i != 18 && i != 30 && i != 7 && i != 8) {
                switch (i) {
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
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
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                case 14:
                case 16:
                case 18:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 30:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl$1";
                    break;
                case 2:
                    objArr[0] = "modality";
                    break;
                case 4:
                    objArr[0] = "visibility";
                    break;
                case 6:
                    objArr[0] = "kind";
                    break;
                case 9:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                case 11:
                case 17:
                    objArr[0] = "parameters";
                    break;
                case 13:
                    objArr[0] = "substitution";
                    break;
                case 15:
                    objArr[0] = "userDataKey";
                    break;
                case 19:
                    objArr[0] = "type";
                    break;
                case 29:
                    objArr[0] = "additionalAnnotations";
                    break;
                default:
                    objArr[0] = "owner";
                    break;
            }
            if (i == 1) {
                objArr[1] = "setOwner";
            } else if (i == 3) {
                objArr[1] = "setModality";
            } else if (i == 5) {
                objArr[1] = "setVisibility";
            } else if (i == 10) {
                objArr[1] = "setName";
            } else if (i == 12) {
                objArr[1] = "setValueParameters";
            } else if (i == 14) {
                objArr[1] = "setSubstitution";
            } else if (i == 16) {
                objArr[1] = "putUserData";
            } else if (i == 18) {
                objArr[1] = "setTypeParameters";
            } else if (i == 30) {
                objArr[1] = "setAdditionalAnnotations";
            } else if (i == 7) {
                objArr[1] = "setKind";
            } else if (i != 8) {
                switch (i) {
                    case 20:
                        objArr[1] = "setReturnType";
                        break;
                    case 21:
                        objArr[1] = "setExtensionReceiverParameter";
                        break;
                    case 22:
                        objArr[1] = "setDispatchReceiverParameter";
                        break;
                    case 23:
                        objArr[1] = "setOriginal";
                        break;
                    case 24:
                        objArr[1] = "setSignatureChange";
                        break;
                    case 25:
                        objArr[1] = "setPreserveSourceElement";
                        break;
                    case 26:
                        objArr[1] = "setDropOriginalInContainingParts";
                        break;
                    case 27:
                        objArr[1] = "setHiddenToOvercomeSignatureClash";
                        break;
                    case 28:
                        objArr[1] = "setHiddenForResolutionEverywhereBesideSupercalls";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl$1";
                        break;
                }
            } else {
                objArr[1] = "setCopyOverrides";
            }
            switch (i) {
                case 1:
                case 3:
                case 5:
                case 7:
                case 8:
                case 10:
                case 12:
                case 14:
                case 16:
                case 18:
                case 20:
                case 21:
                case 22:
                case 23:
                case 24:
                case 25:
                case 26:
                case 27:
                case 28:
                case 30:
                    break;
                case 2:
                    objArr[2] = "setModality";
                    break;
                case 4:
                    objArr[2] = "setVisibility";
                    break;
                case 6:
                    objArr[2] = "setKind";
                    break;
                case 9:
                    objArr[2] = "setName";
                    break;
                case 11:
                    objArr[2] = "setValueParameters";
                    break;
                case 13:
                    objArr[2] = "setSubstitution";
                    break;
                case 15:
                    objArr[2] = "putUserData";
                    break;
                case 17:
                    objArr[2] = "setTypeParameters";
                    break;
                case 19:
                    objArr[2] = "setReturnType";
                    break;
                case 29:
                    objArr[2] = "setAdditionalAnnotations";
                    break;
                default:
                    objArr[2] = "setOwner";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 3 && i != 5 && i != 10 && i != 12 && i != 14 && i != 16 && i != 18 && i != 30 && i != 7 && i != 8) {
                switch (i) {
                    case 20:
                    case 21:
                    case 22:
                    case 23:
                    case 24:
                    case 25:
                    case 26:
                    case 27:
                    case 28:
                        break;
                    default:
                        throw new IllegalArgumentException(str2);
                }
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> a() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> b(List<v0> list) {
            if (list != null) {
                return this;
            }
            t(11);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> c(m0 m0Var) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> d() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> e(m0 m0Var) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> f(kotlin.reflect.jvm.internal.impl.types.v0 v0Var) {
            if (v0Var != null) {
                return this;
            }
            t(13);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> g(s sVar) {
            if (sVar != null) {
                return this;
            }
            t(4);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> h() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> i(f fVar) {
            if (fVar != null) {
                return this;
            }
            t(9);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> j(Modality modality) {
            if (modality != null) {
                return this;
            }
            t(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> k() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> l(a0 a0Var) {
            if (a0Var != null) {
                return this;
            }
            t(19);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> m(CallableMemberDescriptor callableMemberDescriptor) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> n(boolean z) {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> o(List<t0> list) {
            if (list != null) {
                return this;
            }
            t(17);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> p(k kVar) {
            if (kVar != null) {
                return this;
            }
            t(0);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> q(CallableMemberDescriptor.Kind kind) {
            if (kind != null) {
                return this;
            }
            t(6);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> r(e eVar) {
            if (eVar != null) {
                return this;
            }
            t(29);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        public u.a<n0> s() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.u.a
        /* JADX INFO: renamed from: u, reason: merged with bridge method [inline-methods] */
        public n0 build() {
            return a.this;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public a(d dVar, t.d dVar2) {
        super(dVar, null, e.O.b(), f.n("<ERROR FUNCTION>"), CallableMemberDescriptor.Kind.DECLARATION, o0.f14970a);
        if (dVar == null) {
            w(0);
            throw null;
        }
        if (dVar2 != null) {
        } else {
            w(1);
            throw null;
        }
    }

    private static /* synthetic */ void w(int i) {
        String str = (i == 6 || i == 7) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 6 || i == 7) ? 2 : 3];
        switch (i) {
            case 1:
                objArr[0] = "ownerScope";
                break;
            case 2:
                objArr[0] = "newOwner";
                break;
            case 3:
                objArr[0] = "kind";
                break;
            case 4:
                objArr[0] = "annotations";
                break;
            case 5:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
            case 7:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl";
                break;
            case 8:
                objArr[0] = "overriddenDescriptors";
                break;
            default:
                objArr[0] = "containingDeclaration";
                break;
        }
        if (i == 6) {
            objArr[1] = "createSubstitutedCopy";
        } else if (i != 7) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/error/ErrorSimpleFunctionDescriptorImpl";
        } else {
            objArr[1] = MenuOptions.COPY;
        }
        switch (i) {
            case 2:
            case 3:
            case 4:
            case 5:
                objArr[2] = "createSubstitutedCopy";
                break;
            case 6:
            case 7:
                break;
            case 8:
                objArr[2] = "setOverriddenDescriptors";
                break;
            default:
                objArr[2] = "<init>";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 6 && i != 7) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    /* JADX INFO: renamed from: G0 */
    public /* bridge */ /* synthetic */ u N(k kVar, Modality modality, s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        N(kVar, modality, sVar, kind, z);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o
    protected o H0(k kVar, u uVar, CallableMemberDescriptor.Kind kind, f fVar, e eVar, o0 o0Var) {
        if (kVar == null) {
            w(2);
            throw null;
        }
        if (kind == null) {
            w(3);
            throw null;
        }
        if (eVar == null) {
            w(4);
            throw null;
        }
        if (o0Var != null) {
            return this;
        }
        w(5);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public /* bridge */ /* synthetic */ CallableMemberDescriptor N(k kVar, Modality modality, s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        N(kVar, modality, sVar, kind, z);
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0
    /* JADX INFO: renamed from: g1 */
    public n0 N(k kVar, Modality modality, s sVar, CallableMemberDescriptor.Kind kind, boolean z) {
        return this;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u
    public boolean isSuspend() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.d0, kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.u, kotlin.reflect.jvm.internal.impl.descriptors.n0
    public u.a<? extends n0> s() {
        return new C0358a();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.a
    public <V> V s0(kotlin.reflect.jvm.internal.impl.descriptors.a.InterfaceC0321a<V> interfaceC0321a) {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.o, kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor
    public void z0(Collection<? extends CallableMemberDescriptor> collection) {
        if (collection != null) {
            return;
        }
        w(8);
        throw null;
    }
}
