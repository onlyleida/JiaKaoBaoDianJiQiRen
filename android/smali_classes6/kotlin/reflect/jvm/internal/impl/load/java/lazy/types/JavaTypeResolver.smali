.class public final Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

.field private final b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

.field private final c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;

.field private final d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;)V
    .locals 1

    const-string v0, "c"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeParameterResolver"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    .line 3
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    .line 4
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;

    const/4 p2, 0x0

    const/4 v0, 0x1

    invoke-direct {p1, p2, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;ILkotlin/jvm/internal/o;)V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;

    .line 5
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;

    invoke-direct {p2, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;)V

    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;

    return-void
.end method

.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->c:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/TypeParameterUpperBoundEraser;

    return-object p0
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 1

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->y()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/a0;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;)Z

    move-result p1

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return v0

    .line 2
    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    .line 3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object p1

    const-string p2, "JavaToKotlinClassMapper.\u2026ypeConstructor.parameters"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p1}, Lkotlin/collections/s;->q0(Ljava/util/List;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    if-nez p1, :cond_1

    const/4 p1, 0x0

    goto :goto_0

    :cond_1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    :goto_0
    if-nez p1, :cond_2

    return v0

    .line 4
    :cond_2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-eq p1, p2, :cond_3

    const/4 v0, 0x1

    :cond_3
    return v0
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/q0;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->s()Z

    move-result v0

    const/4 v1, 0x0

    const-string v2, "constructor.parameters"

    const/4 v3, 0x1

    if-nez v0, :cond_1

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->y()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->isEmpty()Z

    move-result v0

    xor-int/2addr v0, v3

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :cond_1
    :goto_0
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v0

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz v3, :cond_2

    .line 4
    invoke-direct {p0, p1, v0, p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 5
    :cond_2
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result p2

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->y()Ljava/util/List;

    move-result-object p3

    invoke-interface {p3}, Ljava/util/List;->size()I

    move-result p3

    const/16 v2, 0xa

    if-eq p2, p3, :cond_4

    .line 6
    new-instance p1, Ljava/util/ArrayList;

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result p2

    invoke-direct {p1, p2}, Ljava/util/ArrayList;-><init>(I)V

    .line 7
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_1
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_3

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 8
    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    .line 9
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p3

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/name/f;->b()Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/t;->j(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p3

    invoke-direct {v0, p3}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1

    .line 10
    :cond_4
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->y()Ljava/util/List;

    move-result-object p1

    invoke-static {p1}, Lkotlin/collections/s;->S0(Ljava/lang/Iterable;)Ljava/lang/Iterable;

    move-result-object p1

    .line 11
    new-instance p2, Ljava/util/ArrayList;

    invoke-static {p1, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result p3

    invoke-direct {p2, p3}, Ljava/util/ArrayList;-><init>(I)V

    .line 12
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_2
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 13
    check-cast p3, Lkotlin/collections/f0;

    .line 14
    invoke-virtual {p3}, Lkotlin/collections/f0;->a()I

    move-result v2

    invoke-virtual {p3}, Lkotlin/collections/f0;->b()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    .line 15
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    .line 16
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    .line 17
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-static {v3, v1, v5, v4, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->d(Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/descriptors/t0;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object v3

    const-string v4, "parameter"

    invoke-static {v2, v4}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, p3, v3, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->p(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p3

    invoke-interface {p2, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_5
    invoke-static {p2}, Lkotlin/collections/s;->M0(Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object p1

    return-object p1
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/types/q0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/t0;",
            ">;",
            "Lkotlin/reflect/jvm/internal/impl/types/q0;",
            "Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;",
            ")",
            "Ljava/util/List<",
            "Lkotlin/reflect/jvm/internal/impl/types/s0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0xa

    invoke-static {p2, v1}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v1

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    .line 2
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    const/4 v2, 0x0

    .line 4
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->f()Ljava/util/Set;

    move-result-object v3

    invoke-static {v1, v2, v3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->k(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/Set;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5
    invoke-static {v1, p4}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v1

    goto :goto_2

    .line 6
    :cond_0
    new-instance v8, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;

    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->e()Lkotlin/reflect/jvm/internal/impl/storage/m;

    move-result-object v9

    new-instance v10, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1;

    move-object v2, v10

    move-object v3, p0

    move-object v4, v1

    move-object v5, p1

    move-object v6, p4

    move-object v7, p3

    invoke-direct/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver$computeRawTypeArguments$1$erasedUpperBound$1;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/q0;)V

    invoke-direct {v8, v9, v10}, Lkotlin/reflect/jvm/internal/impl/types/LazyWrappedType;-><init>(Lkotlin/reflect/jvm/internal/impl/storage/m;Lkotlin/jvm/b/a;)V

    .line 7
    iget-object v2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->d:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;

    .line 8
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->s()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, p4

    goto :goto_1

    :cond_1
    sget-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->INFLEXIBLE:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    invoke-virtual {p4, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->i(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object v3

    .line 9
    :goto_1
    invoke-virtual {v2, v1, v3, v8}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawSubstitution;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v1

    :goto_2
    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    return-object v0
.end method

.method private final e(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    move-object/from16 v2, p3

    const/4 v3, 0x0

    if-nez v2, :cond_0

    move-object v4, v3

    goto :goto_0

    .line 1
    :cond_0
    invoke-interface/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v4

    :goto_0
    if-nez v4, :cond_1

    new-instance v4, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    iget-object v6, v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    const/4 v8, 0x0

    const/4 v9, 0x4

    const/4 v10, 0x0

    move-object v5, v4

    move-object/from16 v7, p1

    invoke-direct/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/structure/d;ZILkotlin/jvm/internal/o;)V

    :cond_1
    move-object v11, v4

    .line 2
    invoke-direct/range {p0 .. p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->f(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v12

    if-nez v12, :cond_2

    return-object v3

    .line 3
    :cond_2
    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->i(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Z

    move-result v14

    if-nez v2, :cond_3

    goto :goto_1

    .line 4
    :cond_3
    invoke-virtual/range {p3 .. p3}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v3

    :goto_1
    invoke-static {v3, v12}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    invoke-interface/range {p1 .. p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->s()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v14, :cond_4

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    return-object v1

    :cond_4
    move-object/from16 v2, p1

    .line 6
    invoke-direct {v0, v2, v1, v12}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->c(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/q0;)Ljava/util/List;

    move-result-object v13

    const/4 v15, 0x0

    const/16 v16, 0x10

    const/16 v17, 0x0

    .line 7
    invoke-static/range {v11 .. v17}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/types/checker/g;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    return-object v1
.end method

.method private final f(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 4

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->c()Lkotlin/reflect/jvm/internal/impl/load/java/structure/i;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->g(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    const/4 v2, 0x0

    if-eqz v1, :cond_4

    .line 3
    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v3

    if-eqz v3, :cond_3

    .line 4
    invoke-direct {p0, p1, p2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->j(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p2

    if-nez p2, :cond_1

    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object p2

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->n()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;

    move-result-object p2

    invoke-interface {p2, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/f;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/g;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p2

    :cond_1
    if-nez p2, :cond_2

    goto :goto_0

    .line 5
    :cond_2
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p2

    move-object v2, p2

    :goto_0
    if-nez v2, :cond_6

    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->g(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    goto :goto_1

    :cond_3
    const-string p1, "Class type should have a FQ name: "

    .line 6
    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-instance p2, Ljava/lang/AssertionError;

    invoke-direct {p2, p1}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw p2

    .line 7
    :cond_4
    instance-of p1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/y;

    if-eqz p1, :cond_7

    .line 8
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->b:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/y;

    invoke-interface {p1, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/h;->a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/y;)Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    move-result-object p1

    if-nez p1, :cond_5

    goto :goto_1

    :cond_5
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    :cond_6
    :goto_1
    return-object v2

    .line 9
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "Unknown classifier kind: "

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final g(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/q0;
    .locals 2

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/name/c;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->G()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lkotlin/reflect/jvm/internal/impl/name/c;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/name/b;->m(Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/name/b;

    move-result-object p1

    const-string v0, "topLevel(FqName(javaType.classifierQualifiedName))"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->b()Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/DeserializedDescriptorResolver;->e()Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/serialization/deserialization/g;->q()Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-static {v1}, Lkotlin/collections/s;->d(Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/NotFoundClasses;->d(Lkotlin/reflect/jvm/internal/impl/name/b;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p1

    const-string v0, "c.components.deserialize\u2026istOf(0)).typeConstructor"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final h(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Z
    .locals 3

    .line 1
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p2

    if-eq p1, p2, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private final i(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Z
    .locals 3

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->d()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    return v2

    .line 2
    :cond_0
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->g()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->e()Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    move-result-object p1

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    if-eq p1, v0, :cond_1

    const/4 v2, 0x1

    :cond_1
    return v2
.end method

.method private final j(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/name/c;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;
    .locals 7

    .line 1
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->g()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->a()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v0

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->a()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/b;->p()Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/ReflectionTypes;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1

    .line 3
    :cond_0
    sget-object v6, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->a:Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;

    .line 4
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object v2

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, v6

    move-object v1, p3

    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->h(Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;Lkotlin/reflect/jvm/internal/impl/name/c;Lkotlin/reflect/jvm/internal/impl/builtins/g;Ljava/lang/Integer;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p3

    if-nez p3, :cond_1

    const/4 p1, 0x0

    return-object p1

    .line 5
    :cond_1
    invoke-virtual {v6, p3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->e(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->d()Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    if-eq v0, v1, :cond_2

    .line 7
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->e()Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    move-result-object p2

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    if-eq p2, v0, :cond_2

    .line 8
    invoke-direct {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->b(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p1

    if-eqz p1, :cond_3

    .line 9
    :cond_2
    invoke-virtual {v6, p3}, Lkotlin/reflect/jvm/internal/impl/builtins/jvm/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p1

    return-object p1

    :cond_3
    return-object p3
.end method

.method public static synthetic l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 0

    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_0

    const/4 p3, 0x0

    .line 1
    :cond_0
    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->k(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Z)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    return-object p0
.end method

.method private final m(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 3

    .line 1
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->g()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->e()Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    move-result-object v0

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->SUPERTYPE:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->s()Z

    move-result v1

    const/4 v2, 0x0

    if-nez v1, :cond_2

    if-nez v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->e(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    if-nez p2, :cond_1

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->n(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    :cond_1
    return-object p2

    .line 4
    :cond_2
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_LOWER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    invoke-virtual {p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->i(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object v0

    invoke-direct {p0, p1, v0, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->e(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    if-nez v0, :cond_3

    .line 5
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->n(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;->FLEXIBLE_UPPER_BOUND:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->i(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeFlexibility;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object p2

    invoke-direct {p0, p1, p2, v0}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->e(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    if-nez p2, :cond_4

    .line 7
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->n(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1

    :cond_4
    if-eqz v1, :cond_5

    .line 8
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;

    invoke-direct {p1, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/RawTypeImpl;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)V

    goto :goto_1

    .line 9
    :cond_5
    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    :goto_1
    return-object p1
.end method

.method private static final n(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;->D()Ljava/lang/String;

    move-result-object p0

    const-string v0, "Unresolved java class "

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/t;->j(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    const-string v0, "createErrorType(\"Unresol\u2026vaType.presentableText}\")"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private final p(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 4

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;

    if-eqz v0, :cond_3

    .line 2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;->b()Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    move-result-object v0

    .line 3
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;->K()Z

    move-result p1

    if-eqz p1, :cond_0

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_0

    :cond_0
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :goto_0
    if-eqz v0, :cond_2

    .line 4
    invoke-direct {p0, p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->h(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Z

    move-result v1

    if-eqz v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    const/4 v1, 0x0

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-static {p2, v1, v3, v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->d(Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/descriptors/t0;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object p2

    invoke-virtual {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p2

    .line 6
    invoke-static {p2, p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->e(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_2
    :goto_1
    invoke-static {p3, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_3
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/types/u0;

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    invoke-direct {p3, v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    move-object p1, p3

    :goto_2
    return-object p1
.end method


# virtual methods
.method public final k(Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;Z)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 6

    const-string v0, "arrayType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;->n()Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    move-result-object v0

    .line 2
    instance-of v1, v0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;

    goto :goto_0

    :cond_0
    move-object v1, v2

    :goto_0
    if-nez v1, :cond_1

    move-object v1, v2

    goto :goto_1

    :cond_1
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;->getType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object v1

    .line 3
    :goto_1
    new-instance v3, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;

    iget-object v4, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    const/4 v5, 0x1

    invoke-direct {v3, v4, p1, v5}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/LazyJavaAnnotations;-><init>(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;Lkotlin/reflect/jvm/internal/impl/load/java/structure/d;Z)V

    if-eqz v1, :cond_3

    .line 4
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-virtual {p1, v1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->O(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    const-string p3, "c.module.builtIns.getPri\u2026KotlinType(primitiveType)"

    invoke-static {p1, p3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 5
    sget-object p3, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->O:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    invoke-static {v3, v0}, Lkotlin/collections/s;->v0(Ljava/lang/Iterable;Ljava/lang/Iterable;)Ljava/util/List;

    move-result-object v0

    invoke-virtual {p3, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e$a;->a(Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p3

    invoke-virtual {p1, p3}, Lkotlin/reflect/jvm/internal/impl/types/f0;->Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    .line 6
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->g()Z

    move-result p2

    if-eqz p2, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    :goto_2
    return-object p1

    .line 8
    :cond_3
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;->COMMON:Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->g()Z

    move-result v1

    const/4 v4, 0x2

    invoke-static {p1, v1, v2, v4, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/b;->d(Lkotlin/reflect/jvm/internal/impl/load/java/components/TypeUsage;ZLkotlin/reflect/jvm/internal/impl/descriptors/t0;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;

    move-result-object p1

    .line 9
    invoke-virtual {p0, v0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    .line 10
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;->g()Z

    move-result p2

    const-string v0, "c.module.builtIns.getArr\u2026mponentType, annotations)"

    if-eqz p2, :cond_5

    if-eqz p3, :cond_4

    .line 11
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    goto :goto_3

    :cond_4
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 12
    :goto_3
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p3

    invoke-virtual {p3, p2, p1, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->m(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 13
    :cond_5
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p2

    sget-object p3, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p2, p3, p1, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->m(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 14
    iget-object p3, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p3}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p3

    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p3

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/Variance;->OUT_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    invoke-virtual {p3, v0, p1, v3}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->m(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-virtual {p1, v5}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    .line 15
    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    return-object p1
.end method

.method public final o(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 7

    const-string v0, "attr"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/v;->getType()Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p2, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p2

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p2

    invoke-virtual {p2, p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->R(Lkotlin/reflect/jvm/internal/impl/builtins/PrimitiveType;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->Z()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    :goto_0
    const-string p2, "{\n                val pr\u2026ns.unitType\n            }"

    .line 5
    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    .line 6
    :cond_1
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;

    if-eqz v0, :cond_2

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->m(Lkotlin/reflect/jvm/internal/impl/load/java/structure/j;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    goto :goto_2

    .line 7
    :cond_2
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;

    if-eqz v0, :cond_3

    move-object v2, p1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;

    const/4 v4, 0x0

    const/4 v5, 0x4

    const/4 v6, 0x0

    move-object v1, p0

    move-object v3, p2

    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->l(Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;Lkotlin/reflect/jvm/internal/impl/load/java/structure/f;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    goto :goto_2

    .line 8
    :cond_3
    instance-of v0, p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;

    const-string v1, "c.module.builtIns.defaultBound"

    if-eqz v0, :cond_5

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;->b()Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    move-result-object p1

    if-nez p1, :cond_4

    const/4 p1, 0x0

    goto :goto_1

    :cond_4
    invoke-virtual {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->o(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/a;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_6

    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->y()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    goto :goto_2

    :cond_5
    if-nez p1, :cond_7

    .line 9
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/types/JavaTypeResolver;->a:Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/load/java/lazy/e;->d()Lkotlin/reflect/jvm/internal/impl/descriptors/z;

    move-result-object p1

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z;->k()Lkotlin/reflect/jvm/internal/impl/builtins/g;

    move-result-object p1

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->y()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    :cond_6
    :goto_2
    return-object p1

    .line 10
    :cond_7
    new-instance p2, Ljava/lang/UnsupportedOperationException;

    const-string v0, "Unsupported type: "

    invoke-static {v0, p1}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-direct {p2, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p2
.end method
