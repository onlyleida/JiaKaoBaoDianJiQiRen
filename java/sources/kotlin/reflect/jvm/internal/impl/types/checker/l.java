package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.resolve.OverridingUtil;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.c1;

/* JADX INFO: loaded from: classes6.dex */
public final class l implements k {
    private final g c;

    /* JADX INFO: renamed from: d, reason: collision with root package name */
    private final KotlinTypePreparator f15672d;

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final OverridingUtil f15673e;

    public l(g kotlinTypeRefiner, KotlinTypePreparator kotlinTypePreparator) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        kotlin.jvm.internal.r.e(kotlinTypePreparator, "kotlinTypePreparator");
        this.c = kotlinTypeRefiner;
        this.f15672d = kotlinTypePreparator;
        OverridingUtil overridingUtilN = OverridingUtil.n(c());
        kotlin.jvm.internal.r.d(overridingUtilN, "createWithTypeRefiner(kotlinTypeRefiner)");
        this.f15673e = overridingUtilN;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.k
    public OverridingUtil a() {
        return this.f15673e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.f
    public boolean b(a0 a2, a0 b) {
        kotlin.jvm.internal.r.e(a2, "a");
        kotlin.jvm.internal.r.e(b, "b");
        return e(new a(false, false, false, c(), f(), null, 38, null), a2.L0(), b.L0());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.k
    public g c() {
        return this.c;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.checker.f
    public boolean d(a0 subtype, a0 supertype) {
        kotlin.jvm.internal.r.e(subtype, "subtype");
        kotlin.jvm.internal.r.e(supertype, "supertype");
        return g(new a(true, false, false, c(), f(), null, 38, null), subtype.L0(), supertype.L0());
    }

    public final boolean e(a aVar, c1 a2, c1 b) {
        kotlin.jvm.internal.r.e(aVar, "<this>");
        kotlin.jvm.internal.r.e(a2, "a");
        kotlin.jvm.internal.r.e(b, "b");
        return kotlin.reflect.jvm.internal.impl.types.f.f15682a.i(aVar, a2, b);
    }

    public KotlinTypePreparator f() {
        return this.f15672d;
    }

    public final boolean g(a aVar, c1 subType, c1 superType) {
        kotlin.jvm.internal.r.e(aVar, "<this>");
        kotlin.jvm.internal.r.e(subType, "subType");
        kotlin.jvm.internal.r.e(superType, "superType");
        return kotlin.reflect.jvm.internal.impl.types.f.q(kotlin.reflect.jvm.internal.impl.types.f.f15682a, aVar, subType, superType, false, 8, null);
    }

    public /* synthetic */ l(g gVar, KotlinTypePreparator kotlinTypePreparator, int i, kotlin.jvm.internal.o oVar) {
        this(gVar, (i & 2) != 0 ? KotlinTypePreparator.a.f15654a : kotlinTypePreparator);
    }
}
