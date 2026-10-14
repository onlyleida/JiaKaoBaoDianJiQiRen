package kotlin.reflect.jvm.internal.impl.types.checker;

import kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext;
import kotlin.reflect.jvm.internal.impl.types.TypeSubstitutor;
import kotlin.reflect.jvm.internal.impl.types.Variance;
import kotlin.reflect.jvm.internal.impl.types.a0;
import kotlin.reflect.jvm.internal.impl.types.c1;
import kotlin.reflect.jvm.internal.impl.types.f0;
import kotlin.reflect.jvm.internal.impl.types.r0;

/* JADX INFO: loaded from: classes6.dex */
public class a extends AbstractTypeCheckerContext {
    public static final C0356a k = new C0356a(null);

    /* JADX INFO: renamed from: e, reason: collision with root package name */
    private final boolean f15659e;

    /* JADX INFO: renamed from: f, reason: collision with root package name */
    private final boolean f15660f;

    /* JADX INFO: renamed from: g, reason: collision with root package name */
    private final boolean f15661g;

    /* JADX INFO: renamed from: h, reason: collision with root package name */
    private final g f15662h;
    private final KotlinTypePreparator i;
    private final c j;

    /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.checker.a$a, reason: collision with other inner class name */
    public static final class C0356a {

        /* JADX INFO: renamed from: kotlin.reflect.jvm.internal.impl.types.checker.a$a$a, reason: collision with other inner class name */
        public static final class C0357a extends AbstractTypeCheckerContext.a.AbstractC0355a {

            /* JADX INFO: renamed from: a, reason: collision with root package name */
            final /* synthetic */ c f15663a;
            final /* synthetic */ TypeSubstitutor b;

            C0357a(c cVar, TypeSubstitutor typeSubstitutor) {
                this.f15663a = cVar;
                this.b = typeSubstitutor;
            }

            @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext.a
            public kotlin.reflect.jvm.internal.impl.types.model.h a(AbstractTypeCheckerContext context, kotlin.reflect.jvm.internal.impl.types.model.g type) {
                kotlin.jvm.internal.r.e(context, "context");
                kotlin.jvm.internal.r.e(type, "type");
                c cVar = this.f15663a;
                a0 a0VarN = this.b.n((a0) cVar.m0(type), Variance.INVARIANT);
                kotlin.jvm.internal.r.d(a0VarN, "substitutor.safeSubstitu…ANT\n                    )");
                kotlin.reflect.jvm.internal.impl.types.model.h hVarC = cVar.c(a0VarN);
                kotlin.jvm.internal.r.c(hVarC);
                return hVarC;
            }
        }

        private C0356a() {
        }

        public /* synthetic */ C0356a(kotlin.jvm.internal.o oVar) {
            this();
        }

        /* JADX WARN: Multi-variable type inference failed */
        public final AbstractTypeCheckerContext.a.AbstractC0355a a(c cVar, kotlin.reflect.jvm.internal.impl.types.model.h type) {
            kotlin.jvm.internal.r.e(cVar, "<this>");
            kotlin.jvm.internal.r.e(type, "type");
            if (type instanceof f0) {
                return new C0357a(cVar, r0.b.a((a0) type).c());
            }
            throw new IllegalArgumentException(b.b(type).toString());
        }
    }

    public /* synthetic */ a(boolean z, boolean z2, boolean z3, g gVar, KotlinTypePreparator kotlinTypePreparator, c cVar, int i, kotlin.jvm.internal.o oVar) {
        this(z, (i & 2) != 0 ? true : z2, (i & 4) == 0 ? z3 : true, (i & 8) != 0 ? g.a.f15665a : gVar, (i & 16) != 0 ? KotlinTypePreparator.a.f15654a : kotlinTypePreparator, (i & 32) != 0 ? p.f15676a : cVar);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean l(kotlin.reflect.jvm.internal.impl.types.model.g gVar) {
        kotlin.jvm.internal.r.e(gVar, "<this>");
        return (gVar instanceof c1) && this.f15661g && (((c1) gVar).I0() instanceof m);
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean n() {
        return this.f15659e;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public boolean o() {
        return this.f15660f;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public kotlin.reflect.jvm.internal.impl.types.model.g p(kotlin.reflect.jvm.internal.impl.types.model.g type) {
        kotlin.jvm.internal.r.e(type, "type");
        if (type instanceof a0) {
            return this.i.a(((a0) type).L0());
        }
        throw new IllegalArgumentException(b.b(type).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    public kotlin.reflect.jvm.internal.impl.types.model.g q(kotlin.reflect.jvm.internal.impl.types.model.g type) {
        kotlin.jvm.internal.r.e(type, "type");
        if (type instanceof a0) {
            return this.f15662h.g((a0) type);
        }
        throw new IllegalArgumentException(b.b(type).toString());
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    /* JADX INFO: renamed from: s, reason: merged with bridge method [inline-methods] */
    public c j() {
        return this.j;
    }

    @Override // kotlin.reflect.jvm.internal.impl.types.AbstractTypeCheckerContext
    /* JADX INFO: renamed from: t, reason: merged with bridge method [inline-methods] */
    public AbstractTypeCheckerContext.a.AbstractC0355a r(kotlin.reflect.jvm.internal.impl.types.model.h type) {
        kotlin.jvm.internal.r.e(type, "type");
        return k.a(j(), type);
    }

    public a(boolean z, boolean z2, boolean z3, g kotlinTypeRefiner, KotlinTypePreparator kotlinTypePreparator, c typeSystemContext) {
        kotlin.jvm.internal.r.e(kotlinTypeRefiner, "kotlinTypeRefiner");
        kotlin.jvm.internal.r.e(kotlinTypePreparator, "kotlinTypePreparator");
        kotlin.jvm.internal.r.e(typeSystemContext, "typeSystemContext");
        this.f15659e = z;
        this.f15660f = z2;
        this.f15661g = z3;
        this.f15662h = kotlinTypeRefiner;
        this.i = kotlinTypePreparator;
        this.j = typeSystemContext;
    }
}
