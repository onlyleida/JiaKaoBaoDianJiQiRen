package kotlin.reflect.jvm.internal.impl.types;

import cn.mucang.android.core.api.verify.ErrorDialogParams;
import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import java.util.Collection;
import java.util.Collections;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.storage.LockBasedStorageManager;

/* JADX INFO: loaded from: classes6.dex */
public class t {

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.descriptors.z f15707a = new a();
    private static final c b = new c(kotlin.reflect.jvm.internal.impl.name.f.n("<ERROR CLASS>"));
    public static final f0 c = j("<LOOP IN SUPERTYPES>");

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private static final a0 f15708d = j("<ERROR PROPERTY TYPE>");

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private static final kotlin.reflect.jvm.internal.impl.descriptors.j0 f15709e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private static final Set<kotlin.reflect.jvm.internal.impl.descriptors.j0> f15710f;

    static class a implements kotlin.reflect.jvm.internal.impl.descriptors.z {
        a() {
        }

        /* JADX WARN: Code duplicated, block: B:11:0x001a  */
        /* JADX WARN: Code duplicated, block: B:21:0x002e  */
        private static /* synthetic */ void w(int i) {
            String str;
            int i2;
            if (i != 1 && i != 4 && i != 5 && i != 6 && i != 13 && i != 14) {
                switch (i) {
                    case 8:
                    case 9:
                    case 10:
                        str = "@NotNull method %s.%s must not return null";
                        break;
                    default:
                        str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                        break;
                }
            } else {
                str = "@NotNull method %s.%s must not return null";
            }
            if (i != 1 && i != 4 && i != 5 && i != 6 && i != 13 && i != 14) {
                switch (i) {
                    case 8:
                    case 9:
                    case 10:
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
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 13:
                case 14:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1";
                    break;
                case 2:
                case 7:
                    objArr[0] = "fqName";
                    break;
                case 3:
                    objArr[0] = "nameFilter";
                    break;
                case 11:
                    objArr[0] = "visitor";
                    break;
                case 12:
                    objArr[0] = "targetModule";
                    break;
                default:
                    objArr[0] = "capability";
                    break;
            }
            if (i == 1) {
                objArr[1] = "getAnnotations";
            } else if (i == 4) {
                objArr[1] = "getSubPackagesOf";
            } else if (i == 5) {
                objArr[1] = "getName";
            } else if (i == 6) {
                objArr[1] = "getStableName";
            } else if (i == 13) {
                objArr[1] = "getOriginal";
            } else if (i != 14) {
                switch (i) {
                    case 8:
                        objArr[1] = "getAllDependencyModules";
                        break;
                    case 9:
                        objArr[1] = "getExpectedByModules";
                        break;
                    case 10:
                        objArr[1] = "getAllExpectedByModules";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$1";
                        break;
                }
            } else {
                objArr[1] = "getBuiltIns";
            }
            switch (i) {
                case 1:
                case 4:
                case 5:
                case 6:
                case 8:
                case 9:
                case 10:
                case 13:
                case 14:
                    break;
                case 2:
                case 3:
                    objArr[2] = "getSubPackagesOf";
                    break;
                case 7:
                    objArr[2] = "getPackage";
                    break;
                case 11:
                    objArr[2] = "accept";
                    break;
                case 12:
                    objArr[2] = "shouldSeeInternalsOf";
                    break;
                default:
                    objArr[2] = "getCapability";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 4 && i != 5 && i != 6 && i != 13 && i != 14) {
                switch (i) {
                    case 8:
                    case 9:
                    case 10:
                        break;
                    default:
                        throw new IllegalArgumentException(str2);
                }
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
        public <T> T C0(kotlin.reflect.jvm.internal.impl.descriptors.y<T> yVar) {
            if (yVar != null) {
                return null;
            }
            w(0);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
        public boolean J(kotlin.reflect.jvm.internal.impl.descriptors.z zVar) {
            if (zVar != null) {
                return false;
            }
            w(12);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public kotlin.reflect.jvm.internal.impl.descriptors.k a() {
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public kotlin.reflect.jvm.internal.impl.descriptors.k b() {
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
        public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVarB = kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b();
            if (eVarB != null) {
                return eVarB;
            }
            w(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.a0
        public kotlin.reflect.jvm.internal.impl.name.f getName() {
            kotlin.reflect.jvm.internal.impl.name.f fVarN = kotlin.reflect.jvm.internal.impl.name.f.n("<ERROR MODULE>");
            if (fVarN != null) {
                return fVarN;
            }
            w(5);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
        public kotlin.reflect.jvm.internal.impl.descriptors.f0 j0(kotlin.reflect.jvm.internal.impl.name.c cVar) {
            if (cVar != null) {
                throw new IllegalStateException("Should not be called!");
            }
            w(7);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
        public kotlin.reflect.jvm.internal.impl.builtins.g k() {
            kotlin.reflect.jvm.internal.impl.builtins.d dVarE0 = kotlin.reflect.jvm.internal.impl.builtins.d.E0();
            if (dVarE0 != null) {
                return dVarE0;
            }
            w(14);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
        public Collection<kotlin.reflect.jvm.internal.impl.name.c> l(kotlin.reflect.jvm.internal.impl.name.c cVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
            if (cVar == null) {
                w(2);
                throw null;
            }
            if (function1 == null) {
                w(3);
                throw null;
            }
            List listJ = kotlin.collections.u.j();
            if (listJ != null) {
                return listJ;
            }
            w(4);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.z
        public List<kotlin.reflect.jvm.internal.impl.descriptors.z> w0() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.z> listJ = kotlin.collections.u.j();
            if (listJ != null) {
                return listJ;
            }
            w(9);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.k
        public <R, D> R y(kotlin.reflect.jvm.internal.impl.descriptors.m<R, D> mVar, D d2) {
            if (mVar != null) {
                return null;
            }
            w(11);
            throw null;
        }
    }

    static class b implements q0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ c f15711a;
        final /* synthetic */ String b;

        b(c cVar, String str) {
            this.f15711a = cVar;
            this.b = str;
        }

        private static /* synthetic */ void e(int i) {
            String str = i != 3 ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[i != 3 ? 2 : 3];
            if (i != 3) {
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2";
            } else {
                objArr[0] = "kotlinTypeRefiner";
            }
            if (i == 1) {
                objArr[1] = "getSupertypes";
            } else if (i == 2) {
                objArr[1] = "getBuiltIns";
            } else if (i == 3) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$2";
            } else if (i != 4) {
                objArr[1] = "getParameters";
            } else {
                objArr[1] = "refine";
            }
            if (i == 3) {
                objArr[2] = "refine";
            }
            String str2 = String.format(str, objArr);
            if (i == 3) {
                throw new IllegalArgumentException(str2);
            }
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public Collection<a0> a() {
            List listJ = kotlin.collections.u.j();
            if (listJ != null) {
                return listJ;
            }
            e(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            if (gVar != null) {
                return this;
            }
            e(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f u() {
            return this.f15711a;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return false;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<kotlin.reflect.jvm.internal.impl.descriptors.t0> getParameters() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> listJ = kotlin.collections.u.j();
            if (listJ != null) {
                return listJ;
            }
            e(0);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public kotlin.reflect.jvm.internal.impl.builtins.g k() {
            kotlin.reflect.jvm.internal.impl.builtins.d dVarE0 = kotlin.reflect.jvm.internal.impl.builtins.d.E0();
            if (dVarE0 != null) {
                return dVarE0;
            }
            e(2);
            throw null;
        }

        public String toString() {
            return this.b;
        }
    }

    private static class c extends kotlin.reflect.jvm.internal.impl.descriptors.impl.g {
        /* JADX WARN: Illegal instructions before constructor call */
        public c(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            if (fVar == null) {
                h0(0);
                throw null;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.z zVarQ = t.q();
            Modality modality = Modality.OPEN;
            ClassKind classKind = ClassKind.CLASS;
            List listEmptyList = Collections.emptyList();
            kotlin.reflect.jvm.internal.impl.descriptors.o0 o0Var = kotlin.reflect.jvm.internal.impl.descriptors.o0.f14970a;
            super(zVarQ, fVar, modality, classKind, listEmptyList, o0Var, false, LockBasedStorageManager.f15621e);
            kotlin.reflect.jvm.internal.impl.descriptors.impl.e eVarI1 = kotlin.reflect.jvm.internal.impl.descriptors.impl.e.i1(this, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), true, o0Var);
            eVarI1.l1(Collections.emptyList(), kotlin.reflect.jvm.internal.impl.descriptors.r.f14974d);
            MemberScope memberScopeH = t.h(getName().b());
            eVarI1.c1(new s(t.m("<ERROR>", this), memberScopeH));
            G0(memberScopeH, Collections.singleton(eVarI1), eVarI1);
        }

        private static /* synthetic */ void h0(int i) {
            String str = (i == 2 || i == 5 || i == 8) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 2 || i == 5 || i == 8) ? 2 : 3];
            switch (i) {
                case 1:
                    objArr[0] = "substitutor";
                    break;
                case 2:
                case 5:
                case 8:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor";
                    break;
                case 3:
                    objArr[0] = "typeArguments";
                    break;
                case 4:
                case 7:
                    objArr[0] = "kotlinTypeRefiner";
                    break;
                case 6:
                    objArr[0] = "typeSubstitution";
                    break;
                default:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
            }
            if (i == 2) {
                objArr[1] = "substitute";
            } else if (i == 5 || i == 8) {
                objArr[1] = "getMemberScope";
            } else {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorClassDescriptor";
            }
            switch (i) {
                case 1:
                    objArr[2] = "substitute";
                    break;
                case 2:
                case 5:
                case 8:
                    break;
                case 3:
                case 4:
                case 6:
                case 7:
                    objArr[2] = "getMemberScope";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 2 && i != 5 && i != 8) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a
        /* JADX INFO: renamed from: B0 */
        public kotlin.reflect.jvm.internal.impl.descriptors.d c(TypeSubstitutor typeSubstitutor) {
            if (typeSubstitutor != null) {
                return this;
            }
            h0(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.q0
        public /* bridge */ /* synthetic */ kotlin.reflect.jvm.internal.impl.descriptors.l c(TypeSubstitutor typeSubstitutor) {
            c(typeSubstitutor);
            return this;
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.g
        public String toString() {
            return getName().b();
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.impl.r
        public MemberScope w(v0 v0Var, kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            if (v0Var == null) {
                h0(6);
                throw null;
            }
            if (gVar == null) {
                h0(7);
                throw null;
            }
            MemberScope memberScopeH = t.h("Error scope for class " + getName() + " with arguments: " + v0Var);
            if (memberScopeH != null) {
                return memberScopeH;
            }
            h0(8);
            throw null;
        }
    }

    public static class d implements MemberScope {
        private final String b;

        /* synthetic */ d(String str, a aVar) {
            this(str);
        }

        /* JADX WARN: Code duplicated, block: B:13:0x0019  */
        /* JADX WARN: Code duplicated, block: B:7:0x000d  */
        private static /* synthetic */ void h(int i) {
            String str;
            int i2;
            if (i != 7 && i != 18) {
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
            } else {
                str = "@NotNull method %s.%s must not return null";
            }
            if (i != 7 && i != 18) {
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
            } else {
                i2 = 2;
            }
            Object[] objArr = new Object[i2];
            switch (i) {
                case 1:
                case 3:
                case 5:
                case 8:
                case 14:
                case 19:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                case 2:
                case 4:
                case 6:
                case 9:
                case 15:
                    objArr[0] = "location";
                    break;
                case 7:
                case 10:
                case 11:
                case 12:
                case 13:
                case 18:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorScope";
                    break;
                case 16:
                    objArr[0] = "kindFilter";
                    break;
                case 17:
                    objArr[0] = "nameFilter";
                    break;
                case 20:
                    objArr[0] = TtmlNode.TAG_P;
                    break;
                default:
                    objArr[0] = "debugMessage";
                    break;
            }
            if (i == 7) {
                objArr[1] = "getContributedVariables";
            } else if (i != 18) {
                switch (i) {
                    case 10:
                        objArr[1] = "getContributedFunctions";
                        break;
                    case 11:
                        objArr[1] = "getFunctionNames";
                        break;
                    case 12:
                        objArr[1] = "getVariableNames";
                        break;
                    case 13:
                        objArr[1] = "getClassifierNames";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ErrorScope";
                        break;
                }
            } else {
                objArr[1] = "getContributedDescriptors";
            }
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "getContributedClassifier";
                    break;
                case 3:
                case 4:
                    objArr[2] = "getContributedClassifierIncludeDeprecated";
                    break;
                case 5:
                case 6:
                    objArr[2] = "getContributedVariables";
                    break;
                case 7:
                case 10:
                case 11:
                case 12:
                case 13:
                case 18:
                    break;
                case 8:
                case 9:
                    objArr[2] = "getContributedFunctions";
                    break;
                case 14:
                case 15:
                    objArr[2] = "recordLookup";
                    break;
                case 16:
                case 17:
                    objArr[2] = "getContributedDescriptors";
                    break;
                case 19:
                    objArr[2] = "definitelyDoesNotContainName";
                    break;
                case 20:
                    objArr[2] = "printScopeStructure";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 7 && i != 18) {
                switch (i) {
                    case 10:
                    case 11:
                    case 12:
                    case 13:
                        break;
                    default:
                        throw new IllegalArgumentException(str2);
                }
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setEmptySet = Collections.emptySet();
            if (setEmptySet != null) {
                return setEmptySet;
            }
            h(11);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setEmptySet = Collections.emptySet();
            if (setEmptySet != null) {
                return setEmptySet;
            }
            h(12);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setEmptySet = Collections.emptySet();
            if (setEmptySet != null) {
                return setEmptySet;
            }
            h(13);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(1);
                throw null;
            }
            if (bVar != null) {
                return t.e(fVar.b());
            }
            h(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
            if (dVar == null) {
                h(16);
                throw null;
            }
            if (function1 == null) {
                h(17);
                throw null;
            }
            List listEmptyList = Collections.emptyList();
            if (listEmptyList != null) {
                return listEmptyList;
            }
            h(18);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
        public Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.n0> b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(8);
                throw null;
            }
            if (bVar == null) {
                h(9);
                throw null;
            }
            Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.n0> setSingleton = Collections.singleton(t.f(this));
            if (setSingleton != null) {
                return setSingleton;
            }
            h(10);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        /* JADX INFO: renamed from: j, reason: merged with bridge method [inline-methods] */
        public Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.j0> c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(5);
                throw null;
            }
            if (bVar == null) {
                h(6);
                throw null;
            }
            Set<? extends kotlin.reflect.jvm.internal.impl.descriptors.j0> set = t.f15710f;
            if (set != null) {
                return set;
            }
            h(7);
            throw null;
        }

        public String toString() {
            return "ErrorScope{" + this.b + '}';
        }

        private d(String str) {
            if (str != null) {
                this.b = str;
            } else {
                h(0);
                throw null;
            }
        }
    }

    private static class e implements MemberScope {
        private final String b;

        /* synthetic */ e(String str, a aVar) {
            this(str);
        }

        private static /* synthetic */ void h(int i) {
            Object[] objArr = new Object[3];
            switch (i) {
                case 1:
                case 3:
                case 5:
                case 7:
                case 11:
                case 13:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                case 2:
                case 4:
                case 6:
                case 8:
                case 12:
                    objArr[0] = "location";
                    break;
                case 9:
                    objArr[0] = "kindFilter";
                    break;
                case 10:
                    objArr[0] = "nameFilter";
                    break;
                case 14:
                    objArr[0] = TtmlNode.TAG_P;
                    break;
                default:
                    objArr[0] = ErrorDialogParams.EXTRA_MESSAGE;
                    break;
            }
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$ThrowingScope";
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "getContributedClassifier";
                    break;
                case 3:
                case 4:
                    objArr[2] = "getContributedClassifierIncludeDeprecated";
                    break;
                case 5:
                case 6:
                    objArr[2] = "getContributedVariables";
                    break;
                case 7:
                case 8:
                    objArr[2] = "getContributedFunctions";
                    break;
                case 9:
                case 10:
                    objArr[2] = "getContributedDescriptors";
                    break;
                case 11:
                case 12:
                    objArr[2] = "recordLookup";
                    break;
                case 13:
                    objArr[2] = "definitelyDoesNotContainName";
                    break;
                case 14:
                    objArr[2] = "printScopeStructure";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.n0> b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(7);
                throw null;
            }
            if (bVar == null) {
                h(8);
                throw null;
            }
            throw new IllegalStateException(this.b + ", required name: " + fVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<? extends kotlin.reflect.jvm.internal.impl.descriptors.j0> c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(5);
                throw null;
            }
            if (bVar == null) {
                h(6);
                throw null;
            }
            throw new IllegalStateException(this.b + ", required name: " + fVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            throw new IllegalStateException();
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public kotlin.reflect.jvm.internal.impl.descriptors.f f(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(1);
                throw null;
            }
            if (bVar == null) {
                h(2);
                throw null;
            }
            throw new IllegalStateException(this.b + ", required name: " + fVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
            if (dVar == null) {
                h(9);
                throw null;
            }
            if (function1 != null) {
                throw new IllegalStateException(this.b);
            }
            h(10);
            throw null;
        }

        public String toString() {
            return "ThrowingScope{" + this.b + '}';
        }

        private e(String str) {
            if (str != null) {
                this.b = str;
            } else {
                h(0);
                throw null;
            }
        }
    }

    public static class f implements q0 {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.descriptors.t0 f15712a;
        private final q0 b;

        private static /* synthetic */ void e(int i) {
            String str = (i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
            Object[] objArr = new Object[(i == 1 || i == 2 || i == 3 || i == 4 || i == 6) ? 2 : 3];
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor";
                    break;
                case 5:
                    objArr[0] = "kotlinTypeRefiner";
                    break;
                default:
                    objArr[0] = "descriptor";
                    break;
            }
            if (i == 1) {
                objArr[1] = "getTypeParameterDescriptor";
            } else if (i == 2) {
                objArr[1] = "getParameters";
            } else if (i == 3) {
                objArr[1] = "getSupertypes";
            } else if (i == 4) {
                objArr[1] = "getBuiltIns";
            } else if (i != 6) {
                objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils$UninferredParameterTypeConstructor";
            } else {
                objArr[1] = "refine";
            }
            switch (i) {
                case 1:
                case 2:
                case 3:
                case 4:
                case 6:
                    break;
                case 5:
                    objArr[2] = "refine";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 1 && i != 2 && i != 3 && i != 4 && i != 6) {
                throw new IllegalArgumentException(str2);
            }
            throw new IllegalStateException(str2);
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public Collection<a0> a() {
            Collection<a0> collectionA = this.b.a();
            if (collectionA != null) {
                return collectionA;
            }
            e(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public q0 b(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
            if (gVar != null) {
                return this;
            }
            e(5);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        /* JADX INFO: renamed from: c */
        public kotlin.reflect.jvm.internal.impl.descriptors.f u() {
            return this.b.u();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return this.b.d();
        }

        public kotlin.reflect.jvm.internal.impl.descriptors.t0 f() {
            kotlin.reflect.jvm.internal.impl.descriptors.t0 t0Var = this.f15712a;
            if (t0Var != null) {
                return t0Var;
            }
            e(1);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<kotlin.reflect.jvm.internal.impl.descriptors.t0> getParameters() {
            List<kotlin.reflect.jvm.internal.impl.descriptors.t0> parameters = this.b.getParameters();
            if (parameters != null) {
                return parameters;
            }
            e(2);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public kotlin.reflect.jvm.internal.impl.builtins.g k() {
            kotlin.reflect.jvm.internal.impl.builtins.g gVarG = DescriptorUtilsKt.g(this.f15712a);
            if (gVarG != null) {
                return gVarG;
            }
            e(4);
            throw null;
        }
    }

    static {
        kotlin.reflect.jvm.internal.impl.descriptors.impl.z zVarG = g();
        f15709e = zVarG;
        f15710f = Collections.singleton(zVarG);
    }

    private static /* synthetic */ void a(int i) {
        String str = (i == 4 || i == 6 || i == 19) ? "@NotNull method %s.%s must not return null" : "Argument for @NotNull parameter '%s' of %s.%s must not be null";
        Object[] objArr = new Object[(i == 4 || i == 6 || i == 19) ? 2 : 3];
        switch (i) {
            case 1:
            case 2:
            case 3:
            case 7:
            case 11:
            case 15:
                objArr[0] = "debugMessage";
                break;
            case 4:
            case 6:
            case 19:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils";
                break;
            case 5:
                objArr[0] = "ownerScope";
                break;
            case 8:
            case 9:
            case 16:
            case 17:
                objArr[0] = "debugName";
                break;
            case 10:
                objArr[0] = "typeConstructor";
                break;
            case 12:
            case 14:
                objArr[0] = "arguments";
                break;
            case 13:
                objArr[0] = "presentableName";
                break;
            case 18:
                objArr[0] = "errorClass";
                break;
            case 20:
                objArr[0] = "typeParameterDescriptor";
                break;
            default:
                objArr[0] = "function";
                break;
        }
        if (i == 4) {
            objArr[1] = "createErrorProperty";
        } else if (i == 6) {
            objArr[1] = "createErrorFunction";
        } else if (i != 19) {
            objArr[1] = "kotlin/reflect/jvm/internal/impl/types/ErrorUtils";
        } else {
            objArr[1] = "getErrorModule";
        }
        switch (i) {
            case 1:
                objArr[2] = "createErrorClass";
                break;
            case 2:
            case 3:
                objArr[2] = "createErrorScope";
                break;
            case 4:
            case 6:
            case 19:
                break;
            case 5:
                objArr[2] = "createErrorFunction";
                break;
            case 7:
                objArr[2] = "createErrorType";
                break;
            case 8:
                objArr[2] = "createErrorTypeWithCustomDebugName";
                break;
            case 9:
            case 10:
                objArr[2] = "createErrorTypeWithCustomConstructor";
                break;
            case 11:
            case 12:
                objArr[2] = "createErrorTypeWithArguments";
                break;
            case 13:
            case 14:
                objArr[2] = "createUnresolvedType";
                break;
            case 15:
                objArr[2] = "createErrorTypeConstructor";
                break;
            case 16:
            case 17:
            case 18:
                objArr[2] = "createErrorTypeConstructorWithCustomDebugName";
                break;
            case 20:
                objArr[2] = "createUninferredParameterType";
                break;
            default:
                objArr[2] = "containsErrorTypeInParameters";
                break;
        }
        String str2 = String.format(str, objArr);
        if (i != 4 && i != 6 && i != 19) {
            throw new IllegalArgumentException(str2);
        }
        throw new IllegalStateException(str2);
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.d e(String str) {
        if (str == null) {
            a(1);
            throw null;
        }
        return new c(kotlin.reflect.jvm.internal.impl.name.f.n("<ERROR CLASS: " + str + ">"));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static kotlin.reflect.jvm.internal.impl.descriptors.n0 f(d dVar) {
        if (dVar == null) {
            a(5);
            throw null;
        }
        kotlin.reflect.jvm.internal.impl.types.e1.a aVar = new kotlin.reflect.jvm.internal.impl.types.e1.a(b, dVar);
        aVar.N0(null, null, Collections.emptyList(), Collections.emptyList(), j("<ERROR FUNCTION RETURN TYPE>"), Modality.OPEN, kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e);
        return aVar;
    }

    private static kotlin.reflect.jvm.internal.impl.descriptors.impl.z g() {
        kotlin.reflect.jvm.internal.impl.descriptors.impl.z zVarJ0 = kotlin.reflect.jvm.internal.impl.descriptors.impl.z.J0(b, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), Modality.OPEN, kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e, true, kotlin.reflect.jvm.internal.impl.name.f.n("<ERROR PROPERTY>"), CallableMemberDescriptor.Kind.DECLARATION, kotlin.reflect.jvm.internal.impl.descriptors.o0.f14970a, false, false, false, false, false, false);
        zVarJ0.V0(f15708d, Collections.emptyList(), null, null);
        if (zVarJ0 != null) {
            return zVarJ0;
        }
        a(4);
        throw null;
    }

    public static MemberScope h(String str) {
        if (str != null) {
            return i(str, false);
        }
        a(2);
        throw null;
    }

    public static MemberScope i(String str, boolean z) {
        a aVar = null;
        if (str != null) {
            return z ? new e(str, aVar) : new d(str, aVar);
        }
        a(3);
        throw null;
    }

    public static f0 j(String str) {
        if (str != null) {
            return n(str, Collections.emptyList());
        }
        a(7);
        throw null;
    }

    public static q0 k(String str) {
        if (str == null) {
            a(15);
            throw null;
        }
        return m("[ERROR : " + str + "]", b);
    }

    public static q0 l(String str) {
        if (str != null) {
            return m(str, b);
        }
        a(16);
        throw null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static q0 m(String str, c cVar) {
        if (str == null) {
            a(17);
            throw null;
        }
        if (cVar != null) {
            return new b(cVar, str);
        }
        a(18);
        throw null;
    }

    public static f0 n(String str, List<s0> list) {
        if (str == null) {
            a(11);
            throw null;
        }
        if (list != null) {
            return new s(k(str), h(str), list, false);
        }
        a(12);
        throw null;
    }

    public static f0 o(String str, q0 q0Var) {
        if (str == null) {
            a(9);
            throw null;
        }
        if (q0Var != null) {
            return new s(q0Var, h(str));
        }
        a(10);
        throw null;
    }

    public static f0 p(String str) {
        if (str != null) {
            return o(str, l(str));
        }
        a(8);
        throw null;
    }

    public static kotlin.reflect.jvm.internal.impl.descriptors.z q() {
        kotlin.reflect.jvm.internal.impl.descriptors.z zVar = f15707a;
        if (zVar != null) {
            return zVar;
        }
        a(19);
        throw null;
    }

    public static boolean r(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        if (kVar == null) {
            return false;
        }
        return s(kVar) || s(kVar.b()) || kVar == f15707a;
    }

    private static boolean s(kotlin.reflect.jvm.internal.impl.descriptors.k kVar) {
        return kVar instanceof c;
    }

    public static boolean t(a0 a0Var) {
        return a0Var != null && (a0Var.I0() instanceof f);
    }
}
