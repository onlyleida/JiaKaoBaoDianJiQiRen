package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.HashSet;
import java.util.Iterator;
import java.util.LinkedHashSet;
import java.util.Set;
import kotlin.NoWhenBranchMatchedException;
import kotlin.collections.u0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.o;
import kotlin.jvm.internal.r;
import kotlin.reflect.jvm.internal.impl.descriptors.j0;
import kotlin.reflect.jvm.internal.impl.descriptors.n0;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.LightClassOriginKind;
import kotlin.reflect.jvm.internal.impl.load.java.structure.u;
import kotlin.reflect.jvm.internal.impl.load.kotlin.header.KotlinClassHeader;
import kotlin.reflect.jvm.internal.impl.load.kotlin.k;
import kotlin.reflect.jvm.internal.impl.load.kotlin.l;
import kotlin.reflect.jvm.internal.impl.load.kotlin.m;
import kotlin.reflect.jvm.internal.impl.name.f;
import kotlin.reflect.jvm.internal.impl.name.h;
import kotlin.reflect.jvm.internal.impl.storage.g;
import kotlin.reflect.jvm.internal.impl.storage.i;
import kotlin.reflect.jvm.internal.impl.utils.FunctionsKt;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaPackageScope extends c {
    private final u n;
    private final LazyJavaPackageFragment o;
    private final i<Set<String>> p;
    private final g<a, kotlin.reflect.jvm.internal.impl.descriptors.d> q;

    /* JADX INFO: Access modifiers changed from: private */
    static final class a {

        /* JADX INFO: renamed from: a, reason: collision with root package name */
        private final f f15096a;
        private final kotlin.reflect.jvm.internal.impl.load.java.structure.g b;

        public a(f name, kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar) {
            r.e(name, "name");
            this.f15096a = name;
            this.b = gVar;
        }

        public final kotlin.reflect.jvm.internal.impl.load.java.structure.g a() {
            return this.b;
        }

        public final f b() {
            return this.f15096a;
        }

        public boolean equals(Object obj) {
            return (obj instanceof a) && r.a(this.f15096a, ((a) obj).f15096a);
        }

        public int hashCode() {
            return this.f15096a.hashCode();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    static abstract class b {

        public static final class a extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            private final kotlin.reflect.jvm.internal.impl.descriptors.d f15097a;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public a(kotlin.reflect.jvm.internal.impl.descriptors.d descriptor) {
                super(null);
                r.e(descriptor, "descriptor");
                this.f15097a = descriptor;
            }

            public final kotlin.reflect.jvm.internal.impl.descriptors.d a() {
                return this.f15097a;
            }
        }

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$b$b, reason: collision with other inner class name */
        public static final class C0331b extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final C0331b f15098a = new C0331b();

            private C0331b() {
                super(null);
            }
        }

        public static final class c extends b {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            public static final c f15099a = new c();

            private c() {
                super(null);
            }
        }

        private b() {
        }

        public /* synthetic */ b(o oVar) {
            this();
        }
    }

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public LazyJavaPackageScope(final e c, u jPackage, LazyJavaPackageFragment ownerDescriptor) {
        super(c);
        r.e(c, "c");
        r.e(jPackage, "jPackage");
        r.e(ownerDescriptor, "ownerDescriptor");
        this.n = jPackage;
        this.o = ownerDescriptor;
        this.p = c.e().e(new Function0<Set<? extends String>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$knownClassNamesInPackage$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Set<? extends String> invoke() {
                return c.a().d().c(this.C().e());
            }
        });
        this.q = c.e().g(new Function1<a, kotlin.reflect.jvm.internal.impl.descriptors.d>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaPackageScope$classes$1
            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            {
                super(1);
            }

            /* JADX WARN: Code duplicated, block: B:31:0x0093  */
            @Override // kotlin.jvm.functions.Function1
            public final kotlin.reflect.jvm.internal.impl.descriptors.d invoke(LazyJavaPackageScope.a request) {
                byte[] bArrB;
                r.e(request, "request");
                kotlin.reflect.jvm.internal.impl.name.b bVar = new kotlin.reflect.jvm.internal.impl.name.b(this.this$0.C().e(), request.b());
                k.a aVarA = request.a() != null ? c.a().j().a(request.a()) : c.a().j().c(bVar);
                m mVarA = aVarA == null ? null : aVarA.a();
                kotlin.reflect.jvm.internal.impl.name.b bVarG = mVarA == null ? null : mVarA.g();
                if (bVarG != null && (bVarG.l() || bVarG.k())) {
                    return null;
                }
                LazyJavaPackageScope.b bVarR = this.this$0.R(mVarA);
                if (bVarR instanceof LazyJavaPackageScope.b.a) {
                    return ((LazyJavaPackageScope.b.a) bVarR).a();
                }
                if (bVarR instanceof LazyJavaPackageScope.b.c) {
                    return null;
                }
                if (!(bVarR instanceof LazyJavaPackageScope.b.C0331b)) {
                    throw new NoWhenBranchMatchedException();
                }
                kotlin.reflect.jvm.internal.impl.load.java.structure.g gVarA = request.a();
                if (gVarA == null) {
                    kotlin.reflect.jvm.internal.impl.load.java.i iVarD = c.a().d();
                    if (aVarA != null) {
                        if (!(aVarA instanceof k.a.C0341a)) {
                            aVarA = null;
                        }
                        k.a.C0341a c0341a = (k.a.C0341a) aVarA;
                        if (c0341a == null) {
                            bArrB = null;
                        } else {
                            bArrB = c0341a.b();
                        }
                    } else {
                        bArrB = null;
                    }
                    gVarA = iVarD.a(new kotlin.reflect.jvm.internal.impl.load.java.i.a(bVar, bArrB, null, 4, null));
                }
                kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar = gVarA;
                if ((gVar == null ? null : gVar.J()) != LightClassOriginKind.BINARY) {
                    kotlin.reflect.jvm.internal.impl.name.c cVarE = gVar == null ? null : gVar.e();
                    if (cVarE == null || cVarE.d() || !r.a(cVarE.e(), this.this$0.C().e())) {
                        return null;
                    }
                    LazyJavaClassDescriptor lazyJavaClassDescriptor = new LazyJavaClassDescriptor(c, this.this$0.C(), gVar, null, 8, null);
                    c.a().e().a(lazyJavaClassDescriptor);
                    return lazyJavaClassDescriptor;
                }
                throw new IllegalStateException("Couldn't find kotlin binary class for light class created by kotlin binary file\nJavaClass: " + gVar + "\nClassId: " + bVar + "\nfindKotlinClass(JavaClass) = " + l.a(c.a().j(), gVar) + "\nfindKotlinClass(ClassId) = " + l.b(c.a().j(), bVar) + '\n');
            }
        });
    }

    private final kotlin.reflect.jvm.internal.impl.descriptors.d N(f fVar, kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar) {
        if (!h.b(fVar)) {
            return null;
        }
        Set<String> setInvoke = this.p.invoke();
        if (gVar != null || setInvoke == null || setInvoke.contains(fVar.b())) {
            return this.q.invoke(new a(fVar, gVar));
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final b R(m mVar) {
        if (mVar == null) {
            return b.C0331b.f15098a;
        }
        if (mVar.b().c() != KotlinClassHeader.Kind.CLASS) {
            return b.c.f15099a;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarL = w().a().b().l(mVar);
        return dVarL != null ? new b.a(dVarL) : b.C0331b.f15098a;
    }

    public final kotlin.reflect.jvm.internal.impl.descriptors.d O(kotlin.reflect.jvm.internal.impl.load.java.structure.g javaClass) {
        r.e(javaClass, "javaClass");
        return N(javaClass.getName(), javaClass);
    }

    @Override // kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    /* JADX INFO: renamed from: P, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.descriptors.d f(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return N(name, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    /* JADX INFO: renamed from: Q, reason: merged with bridge method [inline-methods] */
    public LazyJavaPackageFragment C() {
        return this.o;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.MemberScope
    public Collection<j0> c(f name, kotlin.reflect.jvm.internal.impl.incremental.components.b location) {
        r.e(name, "name");
        r.e(location, "location");
        return kotlin.collections.u.j();
    }

    /* JADX WARN: Code duplicated, block: B:13:0x005d  */
    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope, kotlin.reflect.jvm.internal.impl.resolve.scopes.f, kotlin.reflect.jvm.internal.impl.resolve.scopes.h
    public Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> g(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> nameFilter) {
        boolean z;
        r.e(kindFilter, "kindFilter");
        r.e(nameFilter, "nameFilter");
        kotlin.reflect.jvm.internal.impl.resolve.scopes.d.a aVar = kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c;
        if (!kindFilter.a(aVar.e() | aVar.c())) {
            return kotlin.collections.u.j();
        }
        Collection<kotlin.reflect.jvm.internal.impl.descriptors.k> collectionInvoke = v().invoke();
        ArrayList arrayList = new ArrayList();
        for (Object obj : collectionInvoke) {
            kotlin.reflect.jvm.internal.impl.descriptors.k kVar = (kotlin.reflect.jvm.internal.impl.descriptors.k) obj;
            if (kVar instanceof kotlin.reflect.jvm.internal.impl.descriptors.d) {
                f name = ((kotlin.reflect.jvm.internal.impl.descriptors.d) kVar).getName();
                r.d(name, "it.name");
                if (nameFilter.invoke(name).booleanValue()) {
                    z = true;
                } else {
                    z = false;
                }
            } else {
                z = false;
            }
            if (z) {
                arrayList.add(obj);
            }
        }
        return arrayList;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<f> l(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> function1) {
        r.e(kindFilter, "kindFilter");
        if (!kindFilter.a(kotlin.reflect.jvm.internal.impl.resolve.scopes.d.c.e())) {
            return u0.b();
        }
        Set<String> setInvoke = this.p.invoke();
        if (setInvoke != null) {
            HashSet hashSet = new HashSet();
            Iterator<T> it = setInvoke.iterator();
            while (it.hasNext()) {
                hashSet.add(f.g((String) it.next()));
            }
            return hashSet;
        }
        u uVar = this.n;
        if (function1 == null) {
            function1 = FunctionsKt.a();
        }
        Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.g> collectionE = uVar.E(function1);
        LinkedHashSet linkedHashSet = new LinkedHashSet();
        for (kotlin.reflect.jvm.internal.impl.load.java.structure.g gVar : collectionE) {
            f name = gVar.J() == LightClassOriginKind.SOURCE ? null : gVar.getName();
            if (name != null) {
                linkedHashSet.add(name);
            }
        }
        return linkedHashSet;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<f> n(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> function1) {
        r.e(kindFilter, "kindFilter");
        return u0.b();
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a p() {
        return kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.a.C0332a.f15112a;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected void r(Collection<n0> result, f name) {
        r.e(result, "result");
        r.e(name, "name");
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaScope
    protected Set<f> t(kotlin.reflect.jvm.internal.impl.resolve.scopes.d kindFilter, Function1<? super f, Boolean> function1) {
        r.e(kindFilter, "kindFilter");
        return u0.b();
    }
}
