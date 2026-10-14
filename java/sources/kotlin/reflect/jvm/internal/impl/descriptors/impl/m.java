package kotlin.reflect.jvm.internal.impl.descriptors.impl;

import com.google.android.exoplayer2.text.ttml.TtmlNode;
import com.mobile.auth.gatewayauth.Constant;
import com.tencent.open.SocialConstants;
import java.util.Collection;
import java.util.Collections;
import java.util.HashSet;
import java.util.LinkedHashSet;
import java.util.List;
import java.util.Set;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.types.q0;

/* JADX INFO: loaded from: classes6.dex */
public class m extends f {
    private final q0 i;
    private final MemberScope j;
    private final kotlin.reflect.jvm.internal.impl.storage.h<Set<kotlin.reflect.jvm.internal.impl.name.f>> k;
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e l;

    private class a extends kotlin.reflect.jvm.internal.impl.resolve.scopes.f {
        private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends n0>> b;
        private final kotlin.reflect.jvm.internal.impl.storage.f<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends j0>> c;

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final kotlin.reflect.jvm.internal.impl.storage.h<Collection<kotlin.reflect.jvm.internal.impl.descriptors.k>> f14929d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ m f14930e;

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.descriptors.impl.m$a$a, reason: collision with other inner class name */
        class C0326a implements Function1<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends n0>> {
            C0326a(m mVar) {
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<? extends n0> invoke(kotlin.reflect.jvm.internal.impl.name.f fVar) {
                return a.this.m(fVar);
            }
        }

        class b implements Function1<kotlin.reflect.jvm.internal.impl.name.f, Collection<? extends j0>> {
            b(m mVar) {
            }

            @Override // kotlin.jvm.functions.Function1
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<? extends j0> invoke(kotlin.reflect.jvm.internal.impl.name.f fVar) {
                return a.this.n(fVar);
            }
        }

        class c implements Function0<Collection<kotlin.reflect.jvm.internal.impl.descriptors.k>> {
            c(m mVar) {
            }

            @Override // kotlin.jvm.functions.Function0
            /* JADX INFO: renamed from: a, reason: merged with bridge method [inline-methods] */
            public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> invoke() {
                return a.this.l();
            }
        }

        class d extends kotlin.reflect.jvm.internal.impl.resolve.f {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ Set f14934a;

            d(a aVar, Set set) {
                this.f14934a = set;
            }

            private static /* synthetic */ void f(int i) {
                Object[] objArr = new Object[3];
                if (i == 1) {
                    objArr[0] = "fromSuper";
                } else if (i != 2) {
                    objArr[0] = "fakeOverride";
                } else {
                    objArr[0] = "fromCurrent";
                }
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope$4";
                if (i == 1 || i == 2) {
                    objArr[2] = "conflict";
                } else {
                    objArr[2] = "addFakeOverride";
                }
                throw new IllegalArgumentException(String.format("Argument for @NotNull parameter '%s' of %s.%s must not be null", objArr));
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.g
            public void a(CallableMemberDescriptor callableMemberDescriptor) {
                if (callableMemberDescriptor == null) {
                    f(0);
                    throw null;
                }
                OverridingUtil.L(callableMemberDescriptor, null);
                this.f14934a.add(callableMemberDescriptor);
            }

            @Override // kotlin.reflect.jvm.internal.impl.resolve.f
            protected void e(CallableMemberDescriptor callableMemberDescriptor, CallableMemberDescriptor callableMemberDescriptor2) {
                if (callableMemberDescriptor == null) {
                    f(1);
                    throw null;
                }
                if (callableMemberDescriptor2 != null) {
                    return;
                }
                f(2);
                throw null;
            }
        }

        public a(m mVar, kotlin.reflect.jvm.internal.impl.storage.m mVar2) {
            if (mVar2 == null) {
                h(0);
                throw null;
            }
            this.f14930e = mVar;
            this.b = mVar2.i(new C0326a(mVar));
            this.c = mVar2.i(new b(mVar));
            this.f14929d = mVar2.c(new c(mVar));
        }

        /* JADX WARN: Code duplicated, block: B:17:0x0024  */
        /* JADX WARN: Code duplicated, block: B:9:0x0014  */
        private static /* synthetic */ void h(int i) {
            String str;
            int i2;
            if (i != 3 && i != 7 && i != 9 && i != 12) {
                switch (i) {
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                        str = "@NotNull method %s.%s must not return null";
                        break;
                    default:
                        str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                        break;
                }
            } else {
                str = "@NotNull method %s.%s must not return null";
            }
            if (i != 3 && i != 7 && i != 9 && i != 12) {
                switch (i) {
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
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
                case 8:
                case 10:
                    objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                    break;
                case 2:
                case 6:
                    objArr[0] = "location";
                    break;
                case 3:
                case 7:
                case 9:
                case 12:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope";
                    break;
                case 11:
                    objArr[0] = "fromSupertypes";
                    break;
                case 13:
                    objArr[0] = "kindFilter";
                    break;
                case 14:
                    objArr[0] = "nameFilter";
                    break;
                case 20:
                    objArr[0] = TtmlNode.TAG_P;
                    break;
                default:
                    objArr[0] = "storageManager";
                    break;
            }
            if (i == 3) {
                objArr[1] = "getContributedVariables";
            } else if (i == 7) {
                objArr[1] = "getContributedFunctions";
            } else if (i == 9) {
                objArr[1] = "getSupertypeScope";
            } else if (i != 12) {
                switch (i) {
                    case 15:
                        objArr[1] = "getContributedDescriptors";
                        break;
                    case 16:
                        objArr[1] = "computeAllDeclarations";
                        break;
                    case 17:
                        objArr[1] = "getFunctionNames";
                        break;
                    case 18:
                        objArr[1] = "getClassifierNames";
                        break;
                    case 19:
                        objArr[1] = "getVariableNames";
                        break;
                    default:
                        objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor$EnumEntryScope";
                        break;
                }
            } else {
                objArr[1] = "resolveFakeOverrides";
            }
            switch (i) {
                case 1:
                case 2:
                    objArr[2] = "getContributedVariables";
                    break;
                case 3:
                case 7:
                case 9:
                case 12:
                case 15:
                case 16:
                case 17:
                case 18:
                case 19:
                    break;
                case 4:
                    objArr[2] = "computeProperties";
                    break;
                case 5:
                case 6:
                    objArr[2] = "getContributedFunctions";
                    break;
                case 8:
                    objArr[2] = "computeFunctions";
                    break;
                case 10:
                case 11:
                    objArr[2] = "resolveFakeOverrides";
                    break;
                case 13:
                case 14:
                    objArr[2] = "getContributedDescriptors";
                    break;
                case 20:
                    objArr[2] = "printScopeStructure";
                    break;
                default:
                    objArr[2] = "<init>";
                    break;
            }
            String str2 = String.format(str, objArr);
            if (i != 3 && i != 7 && i != 9 && i != 12) {
                switch (i) {
                    case 15:
                    case 16:
                    case 17:
                    case 18:
                    case 19:
                        break;
                    default:
                        throw new IllegalArgumentException(str2);
                }
            }
            throw new IllegalStateException(str2);
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> l() {
            HashSet hashSet = new HashSet();
            for (kotlin.reflect.jvm.internal.impl.name.f fVar : (Set) this.f14930e.k.invoke()) {
                NoLookupLocation noLookupLocation = NoLookupLocation.FOR_NON_TRACKED_SCOPE;
                hashSet.addAll(b(fVar, noLookupLocation));
                hashSet.addAll(c(fVar, noLookupLocation));
            }
            return hashSet;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<? extends n0> m(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            if (fVar != null) {
                return p(fVar, o().b(fVar, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
            }
            h(8);
            throw null;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public Collection<? extends j0> n(kotlin.reflect.jvm.internal.impl.name.f fVar) {
            if (fVar != null) {
                return p(fVar, o().c(fVar, NoLookupLocation.FOR_NON_TRACKED_SCOPE));
            }
            h(4);
            throw null;
        }

        private MemberScope o() {
            MemberScope memberScopeM = this.f14930e.i().a().iterator().next().m();
            if (memberScopeM != null) {
                return memberScopeM;
            }
            h(9);
            throw null;
        }

        private <D extends CallableMemberDescriptor> Collection<? extends D> p(kotlin.reflect.jvm.internal.impl.name.f fVar, Collection<? extends D> collection) {
            if (fVar == null) {
                h(10);
                throw null;
            }
            if (collection == null) {
                h(11);
                throw null;
            }
            LinkedHashSet linkedHashSet = new LinkedHashSet();
            OverridingUtil.f15481d.w(fVar, collection, Collections.emptySet(), this.f14930e, new d(this, linkedHashSet));
            return linkedHashSet;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> a() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> set = (Set) this.f14930e.k.invoke();
            if (set != null) {
                return set;
            }
            h(17);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<? extends n0> b(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(5);
                throw null;
            }
            if (bVar == null) {
                h(6);
                throw null;
            }
            Collection<? extends n0> collectionInvoke = this.b.invoke(fVar);
            if (collectionInvoke != null) {
                return collectionInvoke;
            }
            h(7);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Collection<? extends j0> c(kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.incremental.components.b bVar) {
            if (fVar == null) {
                h(1);
                throw null;
            }
            if (bVar == null) {
                h(2);
                throw null;
            }
            Collection<? extends j0> collectionInvoke = this.c.invoke(fVar);
            if (collectionInvoke != null) {
                return collectionInvoke;
            }
            h(3);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> d() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> set = (Set) this.f14930e.k.invoke();
            if (set != null) {
                return set;
            }
            h(19);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
        public Set<kotlin.reflect.jvm.internal.impl.name.f> e() {
            Set<kotlin.reflect.jvm.internal.impl.name.f> setEmptySet = Collections.emptySet();
            if (setEmptySet != null) {
                return setEmptySet;
            }
            h(18);
            throw null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
        public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d dVar, Function1<? super kotlin.reflect.jvm.internal.impl.name.f, Boolean> function1) {
            if (dVar == null) {
                h(13);
                throw null;
            }
            if (function1 == null) {
                h(14);
                throw null;
            }
            Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> collectionInvoke = this.f14929d.invoke();
            if (collectionInvoke != null) {
                return collectionInvoke;
            }
            h(15);
            throw null;
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    private m(kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.types.a0 a0Var, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.storage.h<Set<kotlin.reflect.jvm.internal.impl.name.f>> hVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var) {
        super(mVar, dVar, fVar, o0Var, false);
        if (mVar == null) {
            h0(6);
            throw null;
        }
        if (dVar == null) {
            h0(7);
            throw null;
        }
        if (a0Var == null) {
            h0(8);
            throw null;
        }
        if (fVar == null) {
            h0(9);
            throw null;
        }
        if (hVar == null) {
            h0(10);
            throw null;
        }
        if (eVar == null) {
            h0(11);
            throw null;
        }
        if (o0Var == null) {
            h0(12);
            throw null;
        }
        this.l = eVar;
        this.i = new kotlin.reflect.jvm.internal.impl.types.h(this, Collections.emptyList(), Collections.singleton(a0Var), mVar);
        this.j = new a(this, mVar);
        this.k = hVar;
    }

    public static m H0(kotlin.reflect.jvm.internal.impl.storage.m mVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, kotlin.reflect.jvm.internal.impl.name.f fVar, kotlin.reflect.jvm.internal.impl.storage.h<Set<kotlin.reflect.jvm.internal.impl.name.f>> hVar, kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar, o0 o0Var) {
        if (mVar == null) {
            h0(0);
            throw null;
        }
        if (dVar == null) {
            h0(1);
            throw null;
        }
        if (fVar == null) {
            h0(2);
            throw null;
        }
        if (hVar == null) {
            h0(3);
            throw null;
        }
        if (eVar == null) {
            h0(4);
            throw null;
        }
        if (o0Var != null) {
            return new m(mVar, dVar, dVar.n(), fVar, hVar, eVar, o0Var);
        }
        h0(5);
        throw null;
    }

    private static /* synthetic */ void h0(int i) {
        String str;
        int i2;
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                str = "@NotNull method %s.%s must not return null";
                break;
            default:
                str = "Argument for @NotNull parameter '%s' of %s.%s must not be null";
                break;
        }
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                i2 = 2;
                break;
            default:
                i2 = 3;
                break;
        }
        Object[] objArr = new Object[i2];
        switch (i) {
            case 1:
                objArr[0] = "enumClass";
                break;
            case 2:
            case 9:
                objArr[0] = Constant.PROTOCOL_WEBVIEW_NAME;
                break;
            case 3:
            case 10:
                objArr[0] = "enumMemberNames";
                break;
            case 4:
            case 11:
                objArr[0] = "annotations";
                break;
            case 5:
            case 12:
                objArr[0] = SocialConstants.PARAM_SOURCE;
                break;
            case 6:
            default:
                objArr[0] = "storageManager";
                break;
            case 7:
                objArr[0] = "containingClass";
                break;
            case 8:
                objArr[0] = "supertype";
                break;
            case 13:
                objArr[0] = "kotlinTypeRefiner";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                objArr[0] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 14:
                objArr[1] = "getUnsubstitutedMemberScope";
                break;
            case 15:
                objArr[1] = "getStaticScope";
                break;
            case 16:
                objArr[1] = "getConstructors";
                break;
            case 17:
                objArr[1] = "getTypeConstructor";
                break;
            case 18:
                objArr[1] = "getKind";
                break;
            case 19:
                objArr[1] = "getModality";
                break;
            case 20:
                objArr[1] = "getVisibility";
                break;
            case 21:
                objArr[1] = "getAnnotations";
                break;
            case 22:
                objArr[1] = "getDeclaredTypeParameters";
                break;
            case 23:
                objArr[1] = "getSealedSubclasses";
                break;
            default:
                objArr[1] = "kotlin/reflect/jvm/internal/impl/descriptors/impl/EnumEntrySyntheticClassDescriptor";
                break;
        }
        switch (i) {
            case 6:
            case 7:
            case 8:
            case 9:
            case 10:
            case 11:
            case 12:
                objArr[2] = "<init>";
                break;
            case 13:
                objArr[2] = "getUnsubstitutedMemberScope";
                break;
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                break;
            default:
                objArr[2] = "create";
                break;
        }
        String str2 = String.format(str, objArr);
        switch (i) {
            case 14:
            case 15:
            case 16:
            case 17:
            case 18:
            case 19:
            case 20:
            case 21:
            case 22:
            case 23:
                throw new IllegalStateException(str2);
            default:
                throw new IllegalArgumentException(str2);
        }
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c C() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean D0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean V() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean Y() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean b0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    public MemberScope e0(kotlin.reflect.jvm.internal.impl.types.checker.g gVar) {
        if (gVar == null) {
            h0(13);
            throw null;
        }
        MemberScope memberScope = this.j;
        if (memberScope != null) {
            return memberScope;
        }
        h0(14);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind g() {
        ClassKind classKind = ClassKind.ENUM_ENTRY;
        if (classKind != null) {
            return classKind;
        }
        h0(18);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean g0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        kotlin.reflect.jvm.internal.impl.descriptors.annotations.e eVar = this.l;
        if (eVar != null) {
            return eVar;
        }
        h0(21);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e;
        if (sVar != null) {
            return sVar;
        }
        h0(20);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        q0 q0Var = this.i;
        if (q0Var != null) {
            return q0Var;
        }
        h0(17);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.w
    public boolean i0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean isInline() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> j() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        h0(16);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope k0() {
        MemberScope.a aVar = MemberScope.a.b;
        if (aVar != null) {
            return aVar;
        }
        h0(15);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d l0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        List<t0> listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        h0(22);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        Modality modality = Modality.FINAL;
        if (modality != null) {
            return modality;
        }
        h0(19);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.v<kotlin.reflect.jvm.internal.impl.types.f0> t() {
        return null;
    }

    public String toString() {
        return "enum entry " + getName();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> x() {
        List listEmptyList = Collections.emptyList();
        if (listEmptyList != null) {
            return listEmptyList;
        }
        h0(23);
        throw null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        return false;
    }
}
