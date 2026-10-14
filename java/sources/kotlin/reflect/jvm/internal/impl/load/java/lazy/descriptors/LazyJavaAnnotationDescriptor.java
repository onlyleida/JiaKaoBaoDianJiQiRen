package kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors;

import java.util.ArrayList;
import java.util.Collection;
import java.util.Iterator;
import java.util.List;
import java.util.Map;
import kotlin.Pair;
import kotlin.collections.o0;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.PropertyReference1Impl;
import kotlin.jvm.internal.r;
import kotlin.jvm.internal.v;
import kotlin.l;
import kotlin.reflect.KProperty;
import kotlin.reflect.jvm.internal.impl.descriptors.FindClassInModuleKt;
import kotlin.reflect.jvm.internal.impl.descriptors.v0;
import kotlin.reflect.jvm.internal.impl.descriptors.z;
import kotlin.reflect.jvm.internal.impl.load.java.components.TypeUsage;
import kotlin.reflect.jvm.internal.impl.load.java.descriptors.f;
import kotlin.reflect.jvm.internal.impl.load.java.lazy.e;
import kotlin.reflect.jvm.internal.impl.load.java.structure.g;
import kotlin.reflect.jvm.internal.impl.load.java.structure.m;
import kotlin.reflect.jvm.internal.impl.load.java.structure.o;
import kotlin.reflect.jvm.internal.impl.load.java.structure.x;
import kotlin.reflect.jvm.internal.impl.renderer.DescriptorRenderer;
import kotlin.reflect.jvm.internal.impl.resolve.constants.ConstantValueFactory;
import kotlin.reflect.jvm.internal.impl.resolve.constants.q;
import kotlin.reflect.jvm.internal.impl.resolve.descriptorUtil.DescriptorUtilsKt;
import kotlin.reflect.jvm.internal.impl.storage.h;
import kotlin.reflect.jvm.internal.impl.storage.i;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.b0;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.t;

/* JADX INFO: loaded from: classes6.dex */
public final class LazyJavaAnnotationDescriptor implements kotlin.reflect.jvm.internal.impl.descriptors.annotations.c, f {
    static final /* synthetic */ KProperty<Object>[] i = {v.i(new PropertyReference1Impl(v.b(LazyJavaAnnotationDescriptor.class), "fqName", "getFqName()Lorg/jetbrains/kotlin/name/FqName;")), v.i(new PropertyReference1Impl(v.b(LazyJavaAnnotationDescriptor.class), "type", "getType()Lorg/jetbrains/kotlin/types/SimpleType;")), v.i(new PropertyReference1Impl(v.b(LazyJavaAnnotationDescriptor.class), "allValueArguments", "getAllValueArguments()Ljava/util/Map;"))};

    /* JADX INFO: renamed from: a, reason: collision with root package name */
    private final e f15085a;
    private final kotlin.reflect.jvm.internal.impl.load.java.structure.a b;
    private final i c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final h f15086d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final kotlin.reflect.jvm.internal.impl.load.java.w.a f15087e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final h f15088f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15089g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final boolean f15090h;

    public LazyJavaAnnotationDescriptor(e c, kotlin.reflect.jvm.internal.impl.load.java.structure.a javaAnnotation, boolean z) {
        r.e(c, "c");
        r.e(javaAnnotation, "javaAnnotation");
        this.f15085a = c;
        this.b = javaAnnotation;
        this.c = c.e().e(new Function0<kotlin.reflect.jvm.internal.impl.name.c>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$fqName$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final kotlin.reflect.jvm.internal.impl.name.c invoke() {
                kotlin.reflect.jvm.internal.impl.name.b bVarG = this.this$0.b.g();
                if (bVarG == null) {
                    return null;
                }
                return bVarG.b();
            }
        });
        this.f15086d = c.e().c(new Function0<f0>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$type$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final f0 invoke() {
                kotlin.reflect.jvm.internal.impl.name.c cVarE = this.this$0.e();
                if (cVarE == null) {
                    return t.j(r.m("No fqName: ", this.this$0.b));
                }
                kotlin.reflect.jvm.internal.impl.descriptors.d dVarH = kotlin.reflect.jvm.internal.impl.builtins.jvm.d.h(kotlin.reflect.jvm.internal.impl.builtins.jvm.d.f14846a, cVarE, this.this$0.f15085a.d().k(), null, 4, null);
                if (dVarH == null) {
                    g gVarT = this.this$0.b.t();
                    dVarH = gVarT == null ? null : this.this$0.f15085a.a().n().a(gVarT);
                    if (dVarH == null) {
                        dVarH = this.this$0.g(cVarE);
                    }
                }
                return dVarH.n();
            }
        });
        this.f15087e = c.a().t().a(javaAnnotation);
        this.f15088f = c.e().c(new Function0<Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>>>() { // from class: kotlin.reflect.jvm.internal.impl.load.java.lazy.descriptors.LazyJavaAnnotationDescriptor$allValueArguments$2
            {
                super(0);
            }

            @Override // kotlin.jvm.functions.Function0
            public final Map<kotlin.reflect.jvm.internal.impl.name.f, ? extends kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> invoke() {
                Collection<kotlin.reflect.jvm.internal.impl.load.java.structure.b> collectionI = this.this$0.b.i();
                LazyJavaAnnotationDescriptor lazyJavaAnnotationDescriptor = this.this$0;
                ArrayList arrayList = new ArrayList();
                for (kotlin.reflect.jvm.internal.impl.load.java.structure.b bVar : collectionI) {
                    kotlin.reflect.jvm.internal.impl.name.f name = bVar.getName();
                    if (name == null) {
                        name = kotlin.reflect.jvm.internal.impl.load.java.r.b;
                    }
                    kotlin.reflect.jvm.internal.impl.resolve.constants.g gVarL = lazyJavaAnnotationDescriptor.l(bVar);
                    Pair pairA = gVarL == null ? null : l.a(name, gVarL);
                    if (pairA != null) {
                        arrayList.add(pairA);
                    }
                }
                return o0.q(arrayList);
            }
        });
        this.f15089g = javaAnnotation.k();
        this.f15090h = javaAnnotation.F() || z;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.descriptors.d g(kotlin.reflect.jvm.internal.impl.name.c cVar) {
        z zVarD = this.f15085a.d();
        kotlin.reflect.jvm.internal.impl.name.b bVarM = kotlin.reflect.jvm.internal.impl.name.b.m(cVar);
        r.d(bVarM, "topLevel(fqName)");
        return FindClassInModuleKt.c(zVarD, bVarM, this.f15085a.a().b().e().q());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> l(kotlin.reflect.jvm.internal.impl.load.java.structure.b bVar) {
        if (bVar instanceof o) {
            return ConstantValueFactory.f15493a.c(((o) bVar).getValue());
        }
        if (bVar instanceof m) {
            m mVar = (m) bVar;
            return p(mVar.c(), mVar.d());
        }
        if (!(bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.e)) {
            if (bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.c) {
                return m(((kotlin.reflect.jvm.internal.impl.load.java.structure.c) bVar).a());
            }
            if (bVar instanceof kotlin.reflect.jvm.internal.impl.load.java.structure.h) {
                return q(((kotlin.reflect.jvm.internal.impl.load.java.structure.h) bVar).b());
            }
            return null;
        }
        kotlin.reflect.jvm.internal.impl.load.java.structure.e eVar = (kotlin.reflect.jvm.internal.impl.load.java.structure.e) bVar;
        kotlin.reflect.jvm.internal.impl.name.f name = eVar.getName();
        if (name == null) {
            name = kotlin.reflect.jvm.internal.impl.load.java.r.b;
        }
        r.d(name, "argument.name ?: DEFAULT_ANNOTATION_MEMBER_NAME");
        return n(name, eVar.getElements());
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> m(kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar) {
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.a(new LazyJavaAnnotationDescriptor(this.f15085a, aVar, false, 4, null));
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> n(kotlin.reflect.jvm.internal.impl.name.f fVar, List<? extends kotlin.reflect.jvm.internal.impl.load.java.structure.b> list) {
        f0 type = getType();
        r.d(type, "type");
        if (b0.a(type)) {
            return null;
        }
        kotlin.reflect.jvm.internal.impl.descriptors.d dVarF = DescriptorUtilsKt.f(this);
        r.c(dVarF);
        v0 v0VarB = kotlin.reflect.jvm.internal.impl.load.java.components.a.b(fVar, dVarF);
        a0 type2 = v0VarB != null ? v0VarB.getType() : null;
        if (type2 == null) {
            type2 = this.f15085a.a().m().k().l(Variance.INVARIANT, t.j("Unknown array element type"));
        }
        r.d(type2, "DescriptorResolverUtils.… type\")\n                )");
        ArrayList arrayList = new ArrayList(kotlin.collections.v.u(list, 10));
        Iterator<T> it = list.iterator();
        while (it.hasNext()) {
            kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> gVarL = l((kotlin.reflect.jvm.internal.impl.load.java.structure.b) it.next());
            if (gVarL == null) {
                gVarL = new q();
            }
            arrayList.add(gVarL);
        }
        return ConstantValueFactory.f15493a.b(arrayList, type2);
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> p(kotlin.reflect.jvm.internal.impl.name.b bVar, kotlin.reflect.jvm.internal.impl.name.f fVar) {
        if (bVar == null || fVar == null) {
            return null;
        }
        return new kotlin.reflect.jvm.internal.impl.resolve.constants.i(bVar, fVar);
    }

    private final kotlin.reflect.jvm.internal.impl.resolve.constants.g<?> q(x xVar) {
        return kotlin.reflect.jvm.internal.impl.resolve.constants.o.b.a(this.f15085a.g().o(xVar, kotlin.reflect.jvm.internal.impl.load.java.lazy.types.b.d(TypeUsage.COMMON, false, null, 3, null)));
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public Map<kotlin.reflect.jvm.internal.impl.name.f, kotlin.reflect.jvm.internal.impl.resolve.constants.g<?>> a() {
        return (Map) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f15088f, this, i[2]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    public kotlin.reflect.jvm.internal.impl.name.c e() {
        return (kotlin.reflect.jvm.internal.impl.name.c) kotlin.reflect.jvm.internal.impl.storage.l.b(this.c, this, i[0]);
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    /* JADX INFO: renamed from: h, reason: merged with bridge method [inline-methods] */
    public kotlin.reflect.jvm.internal.impl.load.java.w.a o() {
        return this.f15087e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.descriptors.annotations.c
    /* JADX INFO: renamed from: i, reason: merged with bridge method [inline-methods] */
    public f0 getType() {
        return (f0) kotlin.reflect.jvm.internal.impl.storage.l.a(this.f15086d, this, i[1]);
    }

    public final boolean j() {
        return this.f15090h;
    }

    @Override // kotlin.reflect.jvm.internal.impl.load.java.descriptors.f
    public boolean k() {
        return this.f15089g;
    }

    public String toString() {
        return DescriptorRenderer.s(DescriptorRenderer.b, this, null, 2, null);
    }

    public /* synthetic */ LazyJavaAnnotationDescriptor(e eVar, kotlin.reflect.jvm.internal.impl.load.java.structure.a aVar, boolean z, int i2, kotlin.jvm.internal.o oVar) {
        this(eVar, aVar, (i2 & 4) != 0 ? false : z);
    }
}
