.class public final Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;
    }
.end annotation


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    invoke-direct {v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;-><init>()V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1;->INSTANCE:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$EMPTY_REFINED_TYPE_FACTORY$1;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/types/checker/g;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->f(Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/types/checker/g;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;

    move-result-object p0

    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;"
        }
    .end annotation

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/m0;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/o0$a;->a:Lkotlin/reflect/jvm/internal/impl/types/o0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/m0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/o0;Z)V

    .line 2
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/n0;->e:Lkotlin/reflect/jvm/internal/impl/types/n0$a;

    const/4 v2, 0x0

    invoke-virtual {v1, v2, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/n0$a;->a(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/n0;

    move-result-object p0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    .line 3
    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/m0;->i(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/g;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    if-eqz v1, :cond_0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->m()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    goto :goto_0

    .line 3
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_3

    if-nez p3, :cond_1

    .line 4
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->l(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/types/checker/g;

    move-result-object p3

    .line 5
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 6
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {v0, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/s;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    goto :goto_0

    .line 7
    :cond_2
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 8
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/r0;->b:Lkotlin/reflect/jvm/internal/impl/types/r0$a;

    invoke-virtual {v1, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/r0$a;->b(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/v0;

    move-result-object p1

    .line 9
    invoke-static {v0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/s;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/types/v0;Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    goto :goto_0

    .line 10
    :cond_3
    instance-of p2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    if-eqz p2, :cond_4

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    const-string p2, "Scope for abbreviation: "

    invoke-static {p2, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    const/4 p2, 0x1

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/t;->i(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    const-string p2, "createErrorScope(\"Scope \u2026{descriptor.name}\", true)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :goto_0
    return-object p1

    .line 11
    :cond_4
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz p2, :cond_5

    .line 12
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->e()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object p1

    return-object p1

    .line 13
    :cond_5
    new-instance p2, Ljava/lang/IllegalStateException;

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Unsupported classifier: "

    invoke-virtual {p3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for constructor: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p2
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 1

    const-string v0, "lowerBound"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "upperBound"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/w;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/w;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)V

    return-object v0
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/resolve/constants/IntegerLiteralTypeConstructor;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 3

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lkotlin/collections/s;->j()Ljava/util/List;

    move-result-object v0

    const-string v1, "Scope for integer literal type"

    const/4 v2, 0x1

    .line 2
    invoke-static {v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/t;->i(Ljava/lang/String;Z)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v1

    const-string v2, "createErrorScope(\"Scope \u2026eger literal type\", true)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-static {p0, p1, v0, p2, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method private final f(Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/types/checker/g;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/g;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    move-object p1, v0

    goto :goto_0

    .line 2
    :cond_0
    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/checker/g;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_1

    return-object v0

    .line 3
    :cond_1
    instance-of v1, p1, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    if-eqz v1, :cond_2

    .line 4
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-direct {p2, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/q0;)V

    return-object p2

    .line 5
    :cond_2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/q0;->b(Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    const-string p2, "descriptor.typeConstruct\u2026refine(kotlinTypeRefiner)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 6
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;

    invoke-direct {p2, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/q0;)V

    return-object p2
.end method

.method public static final g(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/d;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "descriptor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    const-string p1, "descriptor.typeConstructor"

    invoke-static {v2, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/16 v6, 0x10

    const/4 v7, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/g;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/g;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    if-nez p3, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object p0

    invoke-static {p0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->n()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    const-string p1, "constructor.declarationDescriptor!!.defaultType"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0

    .line 3
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->a:Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;

    .line 4
    invoke-direct {v0, p1, p2, p4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->c(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;

    move-result-object v5

    .line 5
    new-instance v6, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleType$1;

    invoke-direct {v6, p1, p2, p0, p3}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleType$1;-><init>(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Z)V

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static synthetic i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/g;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    and-int/lit8 p5, p5, 0x10

    if-eqz p5, :cond_0

    const/4 p4, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->h(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/g;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            ")",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/g0;

    .line 2
    new-instance v7, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1;

    move-object v1, v7

    move-object v2, p1

    move-object v3, p2

    move-object v4, p0

    move v5, p3

    move-object v6, p4

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory$simpleTypeWithNonTrivialMemberScope$1;-><init>(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)V

    move-object v1, v0

    move v4, p3

    move-object v5, p4

    move-object v6, v7

    .line 3
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)V

    .line 4
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 5
    :cond_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/g;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/g;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method

.method public static final k(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;Z",
            "Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/checker/g;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;",
            ">;)",
            "Lkotlin/reflect/jvm/internal/impl/types/f0;"
        }
    .end annotation

    const-string v0, "annotations"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "constructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "arguments"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "memberScope"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "refinedTypeFactory"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/g0;

    move-object v1, v0

    move-object v2, p1

    move-object v3, p2

    move v4, p3

    move-object v5, p4

    move-object v6, p5

    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/g0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;Lkotlin/jvm/b/l;)V

    .line 2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->isEmpty()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/g;

    invoke-direct {p1, v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/g;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    move-object v0, p1

    :goto_0
    return-object v0
.end method
