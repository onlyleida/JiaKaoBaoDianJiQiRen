package kotlin.reflect.jvm.internal.impl.builtins.jvm;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Objects;
import java.util.Set;
import kotlin.collections.s;
import kotlin.collections.t;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.Ref$ObjectRef;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.CallableMemberDescriptor;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.annotations.AnnotationUtilKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.w;
import kotlin.reflect.jvm.internal.impl.descriptors.j;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.descriptors.o0;
import kotlin.reflect.jvm.internal.impl.descriptors.u;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.x;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassMemberScope;
import kotlin.reflect.jvm.internal.impl.load.kotlin.SignatureBuildingComponents;
import kotlin.reflect.jvm.internal.impl.load.kotlin.q;
import kotlin.reflect.jvm.internal.impl.metadata.ProtoBuf$Function;
import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.descriptors.DeserializedClassDescriptor;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.l;
import kotlin.reflect.jvm.internal.impl.storage.m;
import kotlin.reflect.jvm.internal.impl.types.LazyWrappedType;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;

/* JADX INFO: loaded from: classes6.dex */
public final class JvmBuiltInsCustomizer implements kotlin.reflect.jvm.internal.impl.descriptors.a1.a, kotlin.reflect.jvm.internal.impl.descriptors.a1.c {

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    static final /* synthetic */ KProperty<Object>[] f14825h = {v.i(new PropertyReference1Impl(v.b(JvmBuiltInsCustomizer.class), "settings", "getSettings()Lorg/jetbrains/kotlin/builtins/jvm/JvmBuiltIns$Settings;")), v.i(new PropertyReference1Impl(v.b(JvmBuiltInsCustomizer.class), "cloneableType", "getCloneableType()Lorg/jetbrains/kotlin/types/SimpleType;")), v.i(new PropertyReference1Impl(v.b(JvmBuiltInsCustomizer.class), "notConsideredDeprecation", "getNotConsideredDeprecation()Lorg/jetbrains/kotlin/descriptors/annotations/Annotations;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final z f14826a;
    private final kotlin.reflect.jvm.internal.impl.builtins.jvm.d b;
    private final h c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final a0 f14827d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final h f14828e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.storage.a<kotlin.reflect.jvm.internal.impl.name.c, kotlin.reflect.jvm.internal.impl.descriptors.d> f14829f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final h f14830g;

    private enum JDKMemberStatus {
        HIDDEN,
        VISIBLE,
        NOT_CONSIDERED,
        DROP
    }

    public /* synthetic */ class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f14831a;

        static {
            int[] iArr = new int[JDKMemberStatus.values().length];
            iArr[JDKMemberStatus.HIDDEN.ordinal()] = 1;
            iArr[JDKMemberStatus.NOT_CONSIDERED.ordinal()] = 2;
            iArr[JDKMemberStatus.DROP.ordinal()] = 3;
            iArr[JDKMemberStatus.VISIBLE.ordinal()] = 4;
            f14831a = iArr;
        }
    }

    public static final class b extends w {
        b(z zVar, kotlin.reflect.jvm.internal.impl.name.c cVar) {
            super(zVar, cVar);
        }

        @Override // kotlin.reflect.jvm.internal.impl.descriptors.b0
        /* JADX INFO: renamed from: B0, reason: merged with bridge method [inline-methods] */
        public MemberScope.a m() {
            return MemberScope.a.b;
        }
    }

    static final class c<N> implements kotlin.reflect.jvm.internal.impl.utils.b.c {
        c() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<kotlin.reflect.jvm.internal.impl.descriptors.d> a(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
            Collection<a0> collectionA = dVar.i().a();
            r.d(collectionA, "it.typeConstructor.supertypes");
            JvmBuiltInsCustomizer jvmBuiltInsCustomizer = JvmBuiltInsCustomizer.this;
            ArrayList arrayList = new ArrayList();
            Iterator<T> it = collectionA.iterator();
            while (it.hasNext()) {
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = ((a0) it.next()).I0().u();
                kotlin.reflect.jvm.internal.impl.descriptors.f fVarA = fVarU == null ? null : fVarU.a();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = fVarA instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarA : null;
                LazyJavaClassDescriptor lazyJavaClassDescriptorP = dVar2 != null ? jvmBuiltInsCustomizer.p(dVar2) : null;
                if (lazyJavaClassDescriptorP != null) {
                    arrayList.add(lazyJavaClassDescriptorP);
                }
            }
            return arrayList;
        }
    }

    public static final class d extends kotlin.reflect.jvm.internal.impl.utils.b.AbstractC0361b<kotlin.reflect.jvm.internal.impl.descriptors.d, JDKMemberStatus> {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        final /* synthetic */ String f14833a;
        final /* synthetic */ Ref$ObjectRef<JDKMemberStatus> b;

        d(String str, Ref$ObjectRef<JDKMemberStatus> ref$ObjectRef) {
            this.f14833a = str;
            this.b = ref$ObjectRef;
        }

        /* JADX WARN: Type inference failed for: r0v4, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$JDKMemberStatus] */
        /* JADX WARN: Type inference failed for: r0v5, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$JDKMemberStatus] */
        /* JADX WARN: Type inference failed for: r0v6, types: [T, kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$JDKMemberStatus] */
        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: d, reason: merged with bridge method [inline-methods] */
        public boolean c(kotlin.reflect.jvm.internal.impl.descriptors.d javaClassDescriptor) {
            r.e(javaClassDescriptor, "javaClassDescriptor");
            String strA = q.a(SignatureBuildingComponents.f15194a, javaClassDescriptor, this.f14833a);
            f fVar = f.f14847a;
            if (fVar.e().contains(strA)) {
                this.b.element = JDKMemberStatus.HIDDEN;
            } else if (fVar.h().contains(strA)) {
                this.b.element = JDKMemberStatus.VISIBLE;
            } else if (fVar.c().contains(strA)) {
                this.b.element = JDKMemberStatus.DROP;
            }
            return this.b.element == null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.d
        /* JADX INFO: renamed from: e, reason: merged with bridge method [inline-methods] */
        public JDKMemberStatus a() {
            JDKMemberStatus jDKMemberStatus = this.b.element;
            return jDKMemberStatus == null ? JDKMemberStatus.NOT_CONSIDERED : jDKMemberStatus;
        }
    }

    static final class e<N> implements kotlin.reflect.jvm.internal.impl.utils.b.c {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        public static final e<N> f14834a = new e<>();

        e() {
        }

        @Override // kotlin.reflect.jvm.internal.impl.utils.b.c
        /* JADX INFO: renamed from: b, reason: merged with bridge method [inline-methods] */
        public final Iterable<CallableMemberDescriptor> a(CallableMemberDescriptor callableMemberDescriptor) {
            return callableMemberDescriptor.a().d();
        }
    }

    public JvmBuiltInsCustomizer(z moduleDescriptor, final m storageManager, Function0<JvmBuiltIns.a> settingsComputation) {
        r.e(moduleDescriptor, "moduleDescriptor");
        r.e(storageManager, "storageManager");
        r.e(settingsComputation, "settingsComputation");
        this.f14826a = moduleDescriptor;
        this.b = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.f14846a;
        this.c = storageManager.c(settingsComputation);
        this.f14827d = k(storageManager);
        this.f14828e = storageManager.c(new Function0<f0>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$cloneableType$2
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final f0 invoke() {
                return FindClassInModuleKt.c(this.this$0.s().a(), JvmBuiltInClassDescriptorFactory.f14815d.a(), new NotFoundClasses(storageManager, this.this$0.s().a())).n();
            }
        });
        this.f14829f = storageManager.a();
        this.f14830g = storageManager.c(new Function0<kotlin.reflect.jvm.internal.impl.descriptors.annotations.e>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$notConsideredDeprecation$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e invoke() {
                return kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.a(t.d(AnnotationUtilKt.b(this.this$0.f14826a.k(), "This member is not fully supported by Kotlin compiler, so it may be absent or have different signature in next major version", null, null, 6, null)));
            }
        });
    }

    private final n0 j(DeserializedClassDescriptor deserializedClassDescriptor, n0 n0Var) {
        u.a<? extends n0> aVarS = n0Var.s();
        aVarS.p(deserializedClassDescriptor);
        aVarS.g(kotlin.reflect.jvm.internal.impl.descriptors.r.f14975e);
        aVarS.l(deserializedClassDescriptor.n());
        aVarS.c(deserializedClassDescriptor.F0());
        u uVarBuild = aVarS.build();
        r.c(uVarBuild);
        return (n0) uVarBuild;
    }

    private final a0 k(m mVar) {
        kotlin.reflect.jvm.internal.impl.descriptors.impl.g gVar = new kotlin.reflect.jvm.internal.impl.descriptors.impl.g(new b(this.f14826a, new kotlin.reflect.jvm.internal.impl.name.c("java.io")), kotlin.reflect.jvm.internal.impl.name.f.g("Serializable"), Modality.ABSTRACT, ClassKind.INTERFACE, t.d(new LazyWrappedType(mVar, new Function0<a0>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$createMockJavaIoSerializableType$superTypes$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final a0 invoke() {
                f0 f0VarI = this.this$0.f14826a.k().i();
                r.d(f0VarI, "moduleDescriptor.builtIns.anyType");
                return f0VarI;
            }
        })), o0.f14970a, false, mVar);
        gVar.G0(MemberScope.a.b, u0.b(), null);
        f0 f0VarN = gVar.n();
        r.d(f0VarN, "mockSerializableClass.defaultType");
        return f0VarN;
    }

    /* JADX WARN: Code duplicated, block: B:19:0x0097  */
    private final Collection<n0> l(kotlin.reflect.jvm.internal.impl.descriptors.d dVar, Function1<? super MemberScope, ? extends Collection<? extends n0>> function1) {
        boolean z;
        boolean z2;
        final LazyJavaClassDescriptor lazyJavaClassDescriptorP = p(dVar);
        if (lazyJavaClassDescriptorP == null) {
            return kotlin.collections.u.j();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> collectionI = this.b.i(DescriptorUtilsKt.i(lazyJavaClassDescriptorP), kotlin.reflect.jvm.internal.impl.builtins.jvm.b.f14837g.a());
        final kotlin.reflect.jvm.internal.impl.descriptors.d dVar2 = (kotlin.reflect.jvm.internal.impl.descriptors.d) s.p0(collectionI);
        if (dVar2 == null) {
            return kotlin.collections.u.j();
        }
        kotlin.reflect.jvm.internal.impl.utils.e.b bVar = kotlin.reflect.jvm.internal.impl.utils.e.c;
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(collectionI, 10));
        Iterator<T> it = collectionI.iterator();
        while (it.hasNext()) {
            arrayList.add(DescriptorUtilsKt.i((kotlin.reflect.jvm.internal.impl.descriptors.d) it.next()));
        }
        kotlin.reflect.jvm.internal.impl.utils.e eVarB = bVar.b(arrayList);
        boolean zC = this.b.c(dVar);
        MemberScope memberScopeU = this.f14829f.a(DescriptorUtilsKt.i(lazyJavaClassDescriptorP), new Function0<kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$getAdditionalFunctions$fakeJavaClassDescriptor$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke() {
                LazyJavaClassDescriptor lazyJavaClassDescriptor = lazyJavaClassDescriptorP;
                kotlin.reflect.jvm.internal.impl.load.java.components.d EMPTY = kotlin.reflect.jvm.internal.impl.load.java.components.d.f15049a;
                r.d(EMPTY, "EMPTY");
                return lazyJavaClassDescriptor.J0(EMPTY, dVar2);
            }
        }).U();
        r.d(memberScopeU, "fakeJavaClassDescriptor.unsubstitutedMemberScope");
        Collection<? extends n0> collectionInvoke = function1.invoke(memberScopeU);
        ArrayList arrayList2 = new ArrayList();
        for (Object obj : collectionInvoke) {
            n0 n0Var = (n0) obj;
            if (n0Var.g() == CallableMemberDescriptor.Kind.DECLARATION && n0Var.getVisibility().d() && !kotlin.reflect.jvm.internal.impl.builtins.g.i0(n0Var)) {
                Collection<? extends u> collectionD = n0Var.d();
                r.d(collectionD, "analogueMember.overriddenDescriptors");
                if (collectionD.isEmpty()) {
                    z = false;
                    break;
                }
                Iterator<T> it2 = collectionD.iterator();
                while (true) {
                    if (!it2.hasNext()) {
                        z = false;
                        break;
                    }
                    k kVarB = ((u) it2.next()).b();
                    r.d(kVarB, "it.containingDeclaration");
                    if (eVarB.contains(DescriptorUtilsKt.i(kVarB))) {
                        z = true;
                        break;
                    }
                }
                z2 = (z || t(n0Var, zC)) ? false : true;
            }
            if (z2) {
                arrayList2.add(obj);
            }
        }
        return arrayList2;
    }

    private final f0 m() {
        return (f0) l.a(this.f14828e, this, f14825h[1]);
    }

    private static final boolean n(j jVar, TypeSubstitutor typeSubstitutor, j jVar2) {
        return OverridingUtil.y(jVar, jVar2.c(typeSubstitutor)) == OverridingUtil.OverrideCompatibilityInfo.Result.OVERRIDABLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final LazyJavaClassDescriptor p(kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (kotlin.reflect.jvm.internal.impl.builtins.g.a0(dVar) || !kotlin.reflect.jvm.internal.impl.builtins.g.z0(dVar)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = DescriptorUtilsKt.j(dVar);
        if (!dVarJ.f()) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.name.b bVarO = kotlin.reflect.jvm.internal.impl.builtins.jvm.c.f14839a.o(dVarJ);
        kotlin.reflect.jvm.internal.impl.name.c cVarB = bVarO == null ? null : bVarO.b();
        if (cVarB == null) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarC = kotlin.reflect.jvm.internal.impl.descriptors.q.c(s().a(), cVarB, NoLookupLocation.FROM_BUILTINS);
        if (dVarC instanceof LazyJavaClassDescriptor) {
            return (LazyJavaClassDescriptor) dVarC;
        }
        return null;
    }

    private final JDKMemberStatus q(u uVar) {
        Object objB = kotlin.reflect.jvm.internal.impl.utils.b.b(t.d((kotlin.reflect.jvm.internal.impl.descriptors.d) uVar.b()), new c(), new d(kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(uVar, false, false, 3, null), new Ref$ObjectRef()));
        r.d(objB, "private fun FunctionDesc…ERED\n            })\n    }");
        return (JDKMemberStatus) objB;
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e r() {
        return (kotlin.reflect.jvm.internal.impl.descriptors.annotations.e) l.a(this.f14830g, this, f14825h[2]);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final JvmBuiltIns.a s() {
        return (JvmBuiltIns.a) l.a(this.c, this, f14825h[0]);
    }

    private final boolean t(n0 n0Var, boolean z) {
        if (z ^ f.f14847a.f().contains(q.a(SignatureBuildingComponents.f15194a, (kotlin.reflect.jvm.internal.impl.descriptors.d) n0Var.b(), kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(n0Var, false, false, 3, null)))) {
            return true;
        }
        Boolean boolE = kotlin.reflect.jvm.internal.impl.utils.b.e(t.d(n0Var), e.f14834a, new Function1<CallableMemberDescriptor, Boolean>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$isMutabilityViolation$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Boolean invoke(CallableMemberDescriptor callableMemberDescriptor) {
                return Boolean.valueOf(callableMemberDescriptor.g() == CallableMemberDescriptor.Kind.DECLARATION && this.this$0.b.c((kotlin.reflect.jvm.internal.impl.descriptors.d) callableMemberDescriptor.b()));
            }
        });
        r.d(boolE, "private fun SimpleFuncti…scriptor)\n        }\n    }");
        return boolE.booleanValue();
    }

    private final boolean u(j jVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        if (jVar.f().size() == 1) {
            List<v0> valueParameters = jVar.f();
            r.d(valueParameters, "valueParameters");
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = ((v0) s.C0(valueParameters)).getType().I0().u();
            if (r.a(fVarU == null ? null : DescriptorUtilsKt.j(fVarU), DescriptorUtilsKt.j(dVar))) {
                return true;
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
    public Collection<n0> a(final kotlin.reflect.jvm.internal.impl.name.f name, kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        r.e(name, "name");
        r.e(classDescriptor, "classDescriptor");
        boolean z = true;
        if (r.a(name, kotlin.reflect.jvm.internal.impl.builtins.jvm.a.f14835e.a()) && (classDescriptor instanceof DeserializedClassDescriptor) && kotlin.reflect.jvm.internal.impl.builtins.g.d0(classDescriptor)) {
            DeserializedClassDescriptor deserializedClassDescriptor = (DeserializedClassDescriptor) classDescriptor;
            List<ProtoBuf$Function> functionList = deserializedClassDescriptor.V0().getFunctionList();
            r.d(functionList, "classDescriptor.classProto.functionList");
            if ((functionList instanceof Collection) && functionList.isEmpty()) {
                z = false;
            } else {
                Iterator<T> it = functionList.iterator();
                while (it.hasNext()) {
                    if (r.a(kotlin.reflect.jvm.internal.impl.serialization.deserialization.q.b(deserializedClassDescriptor.U0().g(), ((ProtoBuf$Function) it.next()).getName()), kotlin.reflect.jvm.internal.impl.builtins.jvm.a.f14835e.a())) {
                    }
                }
                z = false;
            }
            return z ? kotlin.collections.u.j() : t.d(j(deserializedClassDescriptor, (n0) s.B0(m().m().b(name, NoLookupLocation.FROM_BUILTINS))));
        }
        if (!s().b()) {
            return kotlin.collections.u.j();
        }
        Collection<n0> collectionL = l(classDescriptor, new Function1<MemberScope, Collection<? extends n0>>() { // from class: kotlin.reflect.jvm.internal.impl.builtins.jvm.JvmBuiltInsCustomizer$getFunctions$2
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final Collection<n0> invoke(MemberScope it2) {
                r.e(it2, "it");
                return it2.b(name, NoLookupLocation.FROM_BUILTINS);
            }
        });
        ArrayList arrayList = new ArrayList();
        for (n0 n0Var : collectionL) {
            u uVarC = n0Var.c(g.a((kotlin.reflect.jvm.internal.impl.descriptors.d) n0Var.b(), classDescriptor).c());
            Objects.requireNonNull(uVarC, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.SimpleFunctionDescriptor");
            u.a<? extends n0> aVarS = ((n0) uVarC).s();
            aVarS.p(classDescriptor);
            aVarS.c(classDescriptor.F0());
            aVarS.k();
            int i = a.f14831a[q(n0Var).ordinal()];
            n0 n0Var2 = null;
            if (i != 1) {
                if (i == 2) {
                    aVarS.r(r());
                } else if (i != 3) {
                }
                u uVarBuild = aVarS.build();
                r.c(uVarBuild);
                n0Var2 = (n0) uVarBuild;
            } else if (!x.a(classDescriptor)) {
                aVarS.d();
                u uVarBuild2 = aVarS.build();
                r.c(uVarBuild2);
                n0Var2 = (n0) uVarBuild2;
            }
            if (n0Var2 != null) {
                arrayList.add(n0Var2);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.c
    public boolean b(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor, n0 functionDescriptor) {
        r.e(classDescriptor, "classDescriptor");
        r.e(functionDescriptor, "functionDescriptor");
        LazyJavaClassDescriptor lazyJavaClassDescriptorP = p(classDescriptor);
        if (lazyJavaClassDescriptorP == null || !functionDescriptor.getAnnotations().h(kotlin.reflect.jvm.internal.impl.descriptors.a1.d.a())) {
            return true;
        }
        if (!s().b()) {
            return false;
        }
        String strC = kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(functionDescriptor, false, false, 3, null);
        LazyJavaClassMemberScope lazyJavaClassMemberScopeO0 = lazyJavaClassDescriptorP.U();
        kotlin.reflect.jvm.internal.impl.name.f name = functionDescriptor.getName();
        r.d(name, "functionDescriptor.name");
        Collection<n0> collectionB = lazyJavaClassMemberScopeO0.b(name, NoLookupLocation.FROM_BUILTINS);
        if (!(collectionB instanceof Collection) || !collectionB.isEmpty()) {
            Iterator<T> it = collectionB.iterator();
            while (it.hasNext()) {
                if (r.a(kotlin.reflect.jvm.internal.impl.load.kotlin.r.c((n0) it.next(), false, false, 3, null), strC)) {
                    return true;
                }
            }
        }
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> c(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarH;
        boolean z;
        r.e(classDescriptor, "classDescriptor");
        if (classDescriptor.g() != ClassKind.CLASS || !s().b()) {
            return kotlin.collections.u.j();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorP = p(classDescriptor);
        if (lazyJavaClassDescriptorP != null && (dVarH = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.h(this.b, DescriptorUtilsKt.i(lazyJavaClassDescriptorP), kotlin.reflect.jvm.internal.impl.builtins.jvm.b.f14837g.a(), null, 4, null)) != null) {
            TypeSubstitutor typeSubstitutorC = g.a(dVarH, lazyJavaClassDescriptorP).c();
            List<kotlin.reflect.jvm.internal.impl.descriptors.c> listK0 = lazyJavaClassDescriptorP.j();
            ArrayList<kotlin.reflect.jvm.internal.impl.descriptors.c> arrayList = new ArrayList();
            Iterator<T> it = listK0.iterator();
            while (true) {
                boolean z2 = false;
                if (!it.hasNext()) {
                    break;
                }
                Object next = it.next();
                kotlin.reflect.jvm.internal.impl.descriptors.c cVar = (kotlin.reflect.jvm.internal.impl.descriptors.c) next;
                if (cVar.getVisibility().d()) {
                    Collection<kotlin.reflect.jvm.internal.impl.descriptors.c> collectionJ = dVarH.j();
                    r.d(collectionJ, "defaultKotlinVersion.constructors");
                    if (collectionJ.isEmpty()) {
                        z = true;
                        break;
                    }
                    Iterator<T> it2 = collectionJ.iterator();
                    while (true) {
                        if (!it2.hasNext()) {
                            z = true;
                            break;
                        }
                        kotlin.reflect.jvm.internal.impl.descriptors.c it3 = (kotlin.reflect.jvm.internal.impl.descriptors.c) it2.next();
                        r.d(it3, "it");
                        if (n(it3, typeSubstitutorC, cVar)) {
                            z = false;
                            break;
                        }
                    }
                    if (z && !u(cVar, classDescriptor) && !kotlin.reflect.jvm.internal.impl.builtins.g.i0(cVar) && !f.f14847a.d().contains(q.a(SignatureBuildingComponents.f15194a, lazyJavaClassDescriptorP, kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(cVar, false, false, 3, null)))) {
                        z2 = true;
                    }
                }
                if (z2) {
                    arrayList.add(next);
                }
            }
            ArrayList arrayList2 = new ArrayList(kotlin.collections.v.u(arrayList, 10));
            for (kotlin.reflect.jvm.internal.impl.descriptors.c cVar2 : arrayList) {
                u.a<? extends u> aVarS = cVar2.s();
                aVarS.p(classDescriptor);
                aVarS.l(classDescriptor.n());
                aVarS.k();
                aVarS.f(typeSubstitutorC.j());
                if (!f.f14847a.g().contains(q.a(SignatureBuildingComponents.f15194a, lazyJavaClassDescriptorP, kotlin.reflect.jvm.internal.impl.load.kotlin.r.c(cVar2, false, false, 3, null)))) {
                    aVarS.r(r());
                }
                u uVarBuild = aVarS.build();
                Objects.requireNonNull(uVarBuild, "null cannot be cast to non-null type org.jetbrains.kotlin.descriptors.ClassConstructorDescriptor");
                arrayList2.add((kotlin.reflect.jvm.internal.impl.descriptors.c) uVarBuild);
            }
            return arrayList2;
        }
        return kotlin.collections.u.j();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
    public Collection<a0> d(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        r.e(classDescriptor, "classDescriptor");
        kotlin.reflect.jvm.internal.impl.name.d dVarJ = DescriptorUtilsKt.j(classDescriptor);
        f fVar = f.f14847a;
        if (!fVar.i(dVarJ)) {
            return fVar.j(dVarJ) ? t.d(this.f14827d) : kotlin.collections.u.j();
        }
        f0 cloneableType = m();
        r.d(cloneableType, "cloneableType");
        return kotlin.collections.u.m(cloneableType, this.f14827d);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.a1.a
    /* JADX INFO: renamed from: o, reason: merged with bridge method [inline-methods] */
    public Set<kotlin.reflect.jvm.internal.impl.name.f> e(kotlin.reflect.jvm.internal.impl.descriptors.d classDescriptor) {
        LazyJavaClassMemberScope lazyJavaClassMemberScopeO0;
        r.e(classDescriptor, "classDescriptor");
        if (!s().b()) {
            return u0.b();
        }
        LazyJavaClassDescriptor lazyJavaClassDescriptorP = p(classDescriptor);
        Set<kotlin.reflect.jvm.internal.impl.name.f> setA = null;
        if (lazyJavaClassDescriptorP != null && (lazyJavaClassMemberScopeO0 = lazyJavaClassDescriptorP.U()) != null) {
            setA = lazyJavaClassMemberScopeO0.a();
        }
        return setA == null ? u0.b() : setA;
    }
}
