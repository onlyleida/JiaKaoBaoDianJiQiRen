package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import kotlin.Lazy;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.collections.IntIterator;
import kotlin.collections.s;
import kotlin.collections.u;
import kotlin.collections.v;
import kotlin.i;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.ranges.IntRange;
import kotlin.reflect.jvm.internal.impl.descriptors.ClassKind;
import kotlin.reflect.jvm.internal.impl.descriptors.Modality;
import kotlin.reflect.jvm.internal.impl.descriptors.NotFoundClasses;
import kotlin.reflect.jvm.internal.impl.descriptors.ScopesHolderForClass;
import kotlin.reflect.jvm.internal.impl.descriptors.TypeParameterUtilsKt;
import kotlin.reflect.jvm.internal.impl.descriptors.impl.f;
import kotlin.reflect.jvm.internal.impl.descriptors.k;
import kotlin.reflect.jvm.internal.impl.descriptors.r0;
import kotlin.reflect.jvm.internal.impl.descriptors.t0;
import kotlin.reflect.jvm.internal.impl.descriptors.z0;
import kotlin.reflect.jvm.internal.impl.incremental.components.NoLookupLocation;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.ContextKt;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.j;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;
import kotlin.reflect.jvm.internal.impl.load.java.structure.y;
import kotlin.reflect.jvm.internal.impl.resolve.constants.t;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope;
import kotlin.reflect.jvm.internal.impl.serialization.deserialization.l;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.types.KotlinTypeFactory;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.q0;
import kotlin.reflect.jvm.internal.impl.types.u0;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaClassDescriptor extends f implements kotlin.reflect.jvm.internal.impl.load.java.descriptors.c {
    private final e i;
    private final g j;
    private final kotlin.reflect.jvm.internal.impl.descriptors.d k;
    private final e l;
    private final Lazy m;
    private final ClassKind n;
    private final Modality o;
    private final z0 p;
    private final boolean q;
    private final LazyJavaClassTypeConstructor r;
    private final LazyJavaClassMemberScope s;
    private final ScopesHolderForClass<LazyJavaClassMemberScope> t;
    private final kotlin.reflect.jvm.internal.impl.resolve.scopes.e u;
    private final LazyJavaStaticClassScope v;
    private final kotlin.reflect.jvm.internal.impl.descriptors.annotations.e w;
    private final h<List<t0>> x;

    private final class LazyJavaClassTypeConstructor extends kotlin.reflect.jvm.internal.impl.types.b {

        /* JADX INFO: renamed from: d, reason: collision with root package name */
        private final h<List<t0>> f15091d;

        /* JADX INFO: renamed from: e, reason: collision with root package name */
        final /* synthetic */ LazyJavaClassDescriptor f15092e;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        public LazyJavaClassTypeConstructor(final LazyJavaClassDescriptor this$0) {
            super(this$0.l.e());
            r.e(this$0, "this$0");
            this.f15092e = this$0;
            this.f15091d = this$0.l.e().c(new Function0<List<? extends t0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$LazyJavaClassTypeConstructor$parameters$1
                {
                    super(0);
                }

                @Override // kotlin.jvm.functions.Function0
                public final List<? extends t0> invoke() {
                    return TypeParameterUtilsKt.d(this$0);
                }
            });
        }

        /* JADX WARN: Code duplicated, block: B:4:0x0008  */
        private final a0 v() {
            kotlin.reflect.jvm.internal.impl.name.c cVarB;
            ArrayList arrayList;
            kotlin.reflect.jvm.internal.impl.name.c cVarW = w();
            if (cVarW != null) {
                if (!(!cVarW.d() && cVarW.i(kotlin.reflect.jvm.internal.impl.builtins.h.k))) {
                    cVarW = null;
                }
            } else {
                cVarW = null;
            }
            if (cVarW == null) {
                cVarB = kotlin.reflect.jvm.internal.impl.load.java.g.f15057a.b(DescriptorUtilsKt.i(this.f15092e));
                if (cVarB == null) {
                    return null;
                }
            } else {
                cVarB = cVarW;
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVarR = DescriptorUtilsKt.r(this.f15092e.l.d(), cVarB, NoLookupLocation.FROM_JAVA_LOADER);
            if (dVarR == null) {
                return null;
            }
            int size = dVarR.i().getParameters().size();
            List<t0> parameters = this.f15092e.i().getParameters();
            r.d(parameters, "getTypeConstructor().parameters");
            int size2 = parameters.size();
            if (size2 == size) {
                arrayList = new ArrayList(v.u(parameters, 10));
                Iterator<T> it = parameters.iterator();
                while (it.hasNext()) {
                    arrayList.add(new u0(Variance.INVARIANT, ((t0) it.next()).n()));
                }
            } else {
                if (size2 != 1 || size <= 1 || cVarW != null) {
                    return null;
                }
                u0 u0Var = new u0(Variance.INVARIANT, ((t0) s.C0(parameters)).n());
                IntRange intRange = new IntRange(1, size);
                ArrayList arrayList2 = new ArrayList(v.u(intRange, 10));
                Iterator<Integer> it2 = intRange.iterator();
                while (it2.hasNext()) {
                    ((IntIterator) it2).e();
                    arrayList2.add(u0Var);
                }
                arrayList = arrayList2;
            }
            return KotlinTypeFactory.g(kotlin.reflect.jvm.internal.impl.descriptors.annotations.e.O.b(), dVarR, arrayList);
        }

        private final kotlin.reflect.jvm.internal.impl.name.c w() {
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.e annotations = this.f15092e.getAnnotations();
            kotlin.reflect.jvm.internal.impl.name.c PURELY_IMPLEMENTS_ANNOTATION = kotlin.reflect.jvm.internal.impl.load.java.r.n;
            r.d(PURELY_IMPLEMENTS_ANNOTATION, "PURELY_IMPLEMENTS_ANNOTATION");
            kotlin.reflect.jvm.internal.impl.descriptors.annotations.c cVarD = annotations.d(PURELY_IMPLEMENTS_ANNOTATION);
            if (cVarD == null) {
                return null;
            }
            Object objD0 = s.D0(cVarD.a().values());
            t tVar = objD0 instanceof t ? (t) objD0 : null;
            String strB = tVar == null ? null : tVar.b();
            if (strB != null && kotlin.reflect.jvm.internal.impl.name.e.e(strB)) {
                return new kotlin.reflect.jvm.internal.impl.name.c(strB);
            }
            return null;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public boolean d() {
            return true;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.q0
        public List<t0> getParameters() {
            return this.f15091d.invoke();
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected Collection<a0> j() {
            Collection<j> collectionA = this.f15092e.L0().a();
            ArrayList arrayList = new ArrayList(collectionA.size());
            ArrayList arrayList2 = new ArrayList(0);
            a0 a0VarV = v();
            Iterator<j> it = collectionA.iterator();
            while (true) {
                if (!it.hasNext()) {
                    break;
                }
                j next = it.next();
                a0 a0VarF = this.f15092e.l.a().r().f(this.f15092e.l.g().o(next, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.SUPERTYPE, false, null, 3, null)), this.f15092e.l);
                if (a0VarF.I0().u() instanceof NotFoundClasses.b) {
                    arrayList2.add(next);
                }
                if (!r.a(a0VarF.I0(), a0VarV != null ? a0VarV.I0() : null) && !kotlin.reflect.jvm.internal.impl.builtins.g.b0(a0VarF)) {
                    arrayList.add(a0VarF);
                }
            }
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = this.f15092e.k;
            kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, dVar != null ? kotlin.reflect.jvm.internal.impl.builtins.jvm.g.a(dVar, this.f15092e).c().p(dVar.n(), Variance.INVARIANT) : null);
            kotlin.reflect.jvm.internal.impl.utils.a.a(arrayList, a0VarV);
            if (!arrayList2.isEmpty()) {
                l lVarC = this.f15092e.l.a().c();
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarU = u();
                ArrayList arrayList3 = new ArrayList(v.u(arrayList2, 10));
                Iterator it2 = arrayList2.iterator();
                while (it2.hasNext()) {
                    arrayList3.add(((j) ((x) it2.next())).D());
                }
                lVarC.b(dVarU, arrayList3);
            }
            return arrayList.isEmpty() ^ true ? CollectionsKt___CollectionsKt.M0(arrayList) : kotlin.collections.t.d(this.f15092e.l.d().k().i());
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeConstructor
        protected r0 o() {
            return this.f15092e.l.a().v();
        }

        public String toString() {
            String strB = this.f15092e.getName().b();
            r.d(strB, "name.asString()");
            return strB;
        }

        @Override // kotlin.reflect.jvm.internal.impl.types.b
        public kotlin.reflect.jvm.internal.impl.descriptors.d u() {
            return this.f15092e;
        }
    }

    static {
        kotlin.collections.u0.f("equals", "hashCode", "getClass", "wait", "notify", "notifyAll", "toString");
    }

    public /* synthetic */ LazyJavaClassDescriptor(e eVar, k kVar, g gVar, kotlin.reflect.jvm.internal.impl.descriptors.d dVar, int i, o oVar) {
        this(eVar, kVar, gVar, (i & 8) != 0 ? null : dVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.c C() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean D0() {
        return false;
    }

    public final LazyJavaClassDescriptor J0(kotlin.reflect.jvm.internal.impl.load.java.components.d javaResolverCache, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        r.e(javaResolverCache, "javaResolverCache");
        e eVar = this.l;
        e eVarJ = ContextKt.j(eVar, eVar.a().x(javaResolverCache));
        k containingDeclaration = b();
        r.d(containingDeclaration, "containingDeclaration");
        return new LazyJavaClassDescriptor(eVarJ, containingDeclaration, this.j, dVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: K0, reason: merged with bridge method [inline-methods] */
    public List<kotlin.reflect.jvm.internal.impl.descriptors.c> j() {
        return this.s.w0().invoke();
    }

    public final g L0() {
        return this.j;
    }

    public final List<kotlin.reflect.jvm.internal.impl.load.java.structure.a> M0() {
        return (List) this.m.getValue();
    }

    public final e N0() {
        return this.i;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.d
    /* JADX INFO: renamed from: O0, reason: merged with bridge method [inline-methods] */
    public LazyJavaClassMemberScope U() {
        return (LazyJavaClassMemberScope) super.U();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.r
    /* JADX INFO: renamed from: P0, reason: merged with bridge method [inline-methods] */
    public LazyJavaClassMemberScope e0(kotlin.reflect.jvm.internal.impl.types.checker.g kotlinTypeRefiner) {
        r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        return (LazyJavaClassMemberScope) this.t.c(kotlinTypeRefiner);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.impl.a, kotlin.reflect.jvm.internal.impl.descriptors.d
    public MemberScope S() {
        return this.u;
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

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public ClassKind g() {
        return this.n;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public boolean g0() {
        return false;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.a
    public kotlin.reflect.jvm.internal.impl.descriptors.annotations.e getAnnotations() {
        return this.w;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.o, kotlin.reflect.jvm.internal.impl.descriptors.w
    public kotlin.reflect.jvm.internal.impl.descriptors.s getVisibility() {
        if (!r.a(this.p, kotlin.reflect.jvm.internal.impl.descriptors.r.f14973a) || this.j.l() != null) {
            return kotlin.reflect.jvm.internal.impl.load.java.v.a(this.p);
        }
        kotlin.reflect.jvm.internal.impl.descriptors.s sVar = kotlin.reflect.jvm.internal.impl.load.java.l.f15062a;
        r.d(sVar, "{\n            JavaDescri…KAGE_VISIBILITY\n        }");
        return sVar;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.f
    public q0 i() {
        return this.r;
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
    public MemberScope k0() {
        return this.v;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.d l0() {
        return null;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.g
    public List<t0> p() {
        return this.x.invoke();
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d, kotlin.reflect.jvm.internal.impl.descriptors.w
    public Modality q() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public kotlin.reflect.jvm.internal.impl.descriptors.v<f0> t() {
        return null;
    }

    public String toString() {
        return r.m("Lazy Java class ", DescriptorUtilsKt.j(this));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.d
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.d> x() {
        if (this.o != Modality.SEALED) {
            return u.j();
        }
        kotlin.reflect.jvm.internal.impl.load.java.lazy.types.a aVarD = kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, false, null, 3, null);
        Collection<j> collectionB = this.j.B();
        ArrayList arrayList = new ArrayList();
        Iterator<T> it = collectionB.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.descriptors.f fVarU = this.l.g().o((j) it.next(), aVarD).I0().u();
            kotlin.reflect.jvm.internal.impl.descriptors.d dVar = fVarU instanceof kotlin.reflect.jvm.internal.impl.descriptors.d ? (kotlin.reflect.jvm.internal.impl.descriptors.d) fVarU : null;
            if (dVar != null) {
                arrayList.add(dVar);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.g
    public boolean z() {
        return this.q;
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaClassDescriptor(e outerContext, k containingDeclaration, g jClass, kotlin.reflect.jvm.internal.impl.descriptors.d dVar) {
        Modality modalityA;
        super(outerContext.e(), containingDeclaration, jClass.getName(), outerContext.a().t().a(jClass), false);
        r.e(outerContext, "outerContext");
        r.e(containingDeclaration, "containingDeclaration");
        r.e(jClass, "jClass");
        this.i = outerContext;
        this.j = jClass;
        this.k = dVar;
        e eVarD = ContextKt.d(outerContext, this, jClass, 0, 4, null);
        this.l = eVarD;
        eVarD.a().h().e(jClass, this);
        jClass.J();
        this.m = i.b(new Function0<List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.a>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$moduleAnnotations$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.a> invoke() {
                kotlin.reflect.jvm.internal.impl.name.b bVarH = DescriptorUtilsKt.h(this.this$0);
                if (bVarH == null) {
                    return null;
                }
                return this.this$0.N0().a().f().a(bVarH);
            }
        });
        this.n = jClass.o() ? ClassKind.ANNOTATION_CLASS : jClass.I() ? ClassKind.INTERFACE : jClass.v() ? ClassKind.ENUM_CLASS : ClassKind.CLASS;
        if (jClass.o() || jClass.v()) {
            modalityA = Modality.FINAL;
        } else {
            modalityA = Modality.Companion.a(false, jClass.x() || jClass.isAbstract() || jClass.I(), !jClass.isFinal());
        }
        this.o = modalityA;
        this.p = jClass.getVisibility();
        this.q = (jClass.l() == null || jClass.O()) ? false : true;
        this.r = new LazyJavaClassTypeConstructor(this);
        LazyJavaClassMemberScope lazyJavaClassMemberScope = new LazyJavaClassMemberScope(eVarD, this, jClass, dVar != null, null, 16, null);
        this.s = lazyJavaClassMemberScope;
        this.t = ScopesHolderForClass.f14856e.a(this, eVarD.e(), eVarD.a().k().c(), new Function1<kotlin.reflect.jvm.internal.impl.types.checker.g, LazyJavaClassMemberScope>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$scopeHolder$1
            {
                super(1);
            }

            @Override // kotlin.jvm.functions.Function1
            public final LazyJavaClassMemberScope invoke(kotlin.reflect.jvm.internal.impl.types.checker.g it) {
                r.e(it, "it");
                e eVar = this.this$0.l;
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.this$0;
                return new LazyJavaClassMemberScope(eVar, lazyJavaClassDescriptor, lazyJavaClassDescriptor.L0(), this.this$0.k != null, this.this$0.s);
            }
        });
        this.u = new kotlin.reflect.jvm.internal.impl.resolve.scopes.e(lazyJavaClassMemberScope);
        this.v = new LazyJavaStaticClassScope(eVarD, jClass, this);
        this.w = kotlin.reflect.jvm.internal.impl.load.java.lazy.d.a(eVarD, jClass);
        this.x = eVarD.e().c(new Function0<List<? extends t0>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaClassDescriptor$declaredParameters$1
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final List<? extends t0> invoke() {
                List<y> typeParameters = this.this$0.L0().getTypeParameters();
                LazyJavaClassDescriptor lazyJavaClassDescriptor = this.this$0;
                ArrayList arrayList = new ArrayList(v.u(typeParameters, 10));
                for (y yVar : typeParameters) {
                    t0 t0VarA = lazyJavaClassDescriptor.l.f().a(yVar);
                    if (t0VarA == null) {
                        throw new AssertionError("Parameter " + yVar + " surely belongs to class " + lazyJavaClassDescriptor.L0() + ", so it must be resolved");
                    }
                    arrayList.add(t0VarA);
                }
                return arrayList;
            }
        });
    }
}
