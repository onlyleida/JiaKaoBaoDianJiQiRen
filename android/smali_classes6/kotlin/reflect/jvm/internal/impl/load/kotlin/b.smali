.class public final Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;)Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/d;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/t<",
            "*>;)",
            "Ljava/lang/String;"
        }
    .end annotation

    const-string v0, "klass"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_5

    .line 2
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    const-string v1, "klass.containingDeclaration"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v1

    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/name/h;->c(Lkotlin/reflect/jvm/internal/impl/name/f;)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object v1

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/name/f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v2, "safeIdentifier(klass.name).identifier"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    if-eqz v2, :cond_1

    .line 5
    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p0

    .line 6
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/c;->d()Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/c;->b()Ljava/lang/String;

    move-result-object v2

    const-string p0, "fqName.asString()"

    invoke-static {v2, p0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v3, 0x2e

    const/16 v4, 0x2f

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    invoke-static/range {v2 .. v7}, Lkotlin/text/l;->w(Ljava/lang/String;CCZILjava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x2f

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    .line 7
    :cond_1
    instance-of v2, v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v2, :cond_2

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    goto :goto_1

    :cond_2
    const/4 v2, 0x0

    :goto_1
    if-eqz v2, :cond_4

    .line 8
    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_3

    .line 9
    invoke-static {v2, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;)Ljava/lang/String;

    move-result-object p0

    .line 10
    :cond_3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const/16 p0, 0x24

    invoke-virtual {p1, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0

    .line 11
    :cond_4
    new-instance p1, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unexpected container: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v0, " for "

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_5
    return-object v0
.end method

.method public static synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;ILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;->a:Lkotlin/reflect/jvm/internal/impl/load/kotlin/u;

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/descriptors/a;)Z
    .locals 2

    const-string v0, "descriptor"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->A0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/a;->getReturnType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/y0;->m(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 3
    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/k0;

    if-nez p0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public static final d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/i<",
            "TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/t<",
            "+TT;>;",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/f<",
            "TT;>;",
            "Lkotlin/jvm/b/q<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            "-TT;-",
            "Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;",
            "Lkotlin/v;",
            ">;)TT;"
        }
    .end annotation

    const-string v0, "kotlinType"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "factory"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "mode"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "typeMappingConfiguration"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "writeGenericType"

    invoke-static {p5, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v1

    if-nez v1, :cond_15

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/f;->o(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->e()Z

    move-result v0

    invoke-static {p0, v0}, Lkotlin/reflect/jvm/internal/impl/builtins/i;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 4
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 5
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/checker/p;->a:Lkotlin/reflect/jvm/internal/impl/types/checker/p;

    .line 6
    invoke-static {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->b(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;)Ljava/lang/Object;

    move-result-object v1

    if-nez v1, :cond_14

    .line 7
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v1

    .line 8
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    if-eqz v2, :cond_2

    .line 9
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->g()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    if-nez p0, :cond_1

    .line 10
    invoke-virtual {v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->a()Ljava/util/Collection;

    move-result-object p0

    invoke-interface {p3, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->g(Ljava/util/Collection;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    .line 11
    :cond_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->t(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    .line 12
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 13
    :cond_2
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v1

    if-eqz v1, :cond_13

    .line 14
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/t;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v2

    const/4 v3, 0x0

    if-eqz v2, :cond_4

    const-string p2, "error/NonExistentClass"

    .line 15
    invoke-interface {p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    .line 16
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {p3, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->f(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)V

    if-nez p4, :cond_3

    return-object p1

    .line 17
    :cond_3
    invoke-virtual {p4, p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->c(Ljava/lang/Object;)V

    throw v3

    .line 18
    :cond_4
    instance-of v2, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v2, :cond_a

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 19
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_9

    .line 20
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object p0

    const/4 v0, 0x0

    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 21
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v4

    const-string v0, "memberProjection.type"

    invoke-static {v4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 22
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v0

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->IN_VARIANCE:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne v0, v2, :cond_6

    const-string p0, "java/lang/Object"

    .line 23
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    if-nez p4, :cond_5

    goto :goto_0

    .line 24
    :cond_5
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->b()V

    throw v3

    :cond_6
    if-nez p4, :cond_8

    .line 25
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p0

    const-string v0, "memberProjection.projectionKind"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p2, p0, v1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->f(Lkotlin/reflect/jvm/internal/impl/types/Variance;Z)Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    move-result-object v6

    move-object v5, p1

    move-object v7, p3

    move-object v8, p4

    move-object v9, p5

    .line 26
    invoke-static/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    if-nez p4, :cond_7

    .line 27
    :goto_0
    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->d(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    const-string p2, "["

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-interface {p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->a(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 28
    :cond_7
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->a()V

    throw v3

    .line 29
    :cond_8
    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->b()V

    throw v3

    .line 30
    :cond_9
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "arrays must have one type argument"

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_a
    if-eqz v2, :cond_f

    .line 31
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/d;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v2

    if-eqz v2, :cond_b

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->c()Z

    move-result v2

    if-nez v2, :cond_b

    .line 32
    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/impl/types/u;->a(Lkotlin/reflect/jvm/internal/impl/types/x0;Lkotlin/reflect/jvm/internal/impl/types/model/g;)Lkotlin/reflect/jvm/internal/impl/types/model/g;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/a0;

    if-eqz v2, :cond_b

    .line 33
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->g()Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;

    move-result-object v4

    move-object v3, p1

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    .line 34
    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 35
    :cond_b
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->e()Z

    move-result p4

    if-eqz p4, :cond_c

    move-object p4, v1

    check-cast p4, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->j0(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p4

    if-eqz p4, :cond_c

    .line 36
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->f()Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    .line 37
    :cond_c
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p4

    const-string v0, "descriptor.original"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {p3, p4}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Ljava/lang/Object;

    move-result-object p4

    if-nez p4, :cond_e

    .line 38
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->g()Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    move-result-object p4

    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;->ENUM_ENTRY:Lkotlin/reflect/jvm/internal/impl/descriptors/ClassKind;

    if-ne p4, v0, :cond_d

    .line 39
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p4

    move-object v1, p4

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 40
    :cond_d
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->a()Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    move-result-object p4

    const-string v0, "enumClassIfEnumEntry.original"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {p4, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;)Ljava/lang/String;

    move-result-object p3

    invoke-interface {p1, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;->e(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object p1

    goto :goto_1

    :cond_e
    move-object p1, p4

    .line 41
    :goto_1
    invoke-interface {p5, p0, p1, p2}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    .line 42
    :cond_f
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    if-eqz v0, :cond_11

    .line 43
    move-object p0, v1

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v4

    .line 44
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;->b()Lkotlin/jvm/b/q;

    move-result-object v9

    const/4 v8, 0x0

    move-object v5, p1

    move-object v6, p2

    move-object v7, p3

    .line 45
    invoke-static/range {v4 .. v9}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    if-nez p4, :cond_10

    return-object p0

    .line 46
    :cond_10
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    const-string p2, "descriptor.getName()"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p4, p1, p0}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;->d(Lkotlin/reflect/jvm/internal/impl/name/f;Ljava/lang/Object;)V

    throw v3

    .line 47
    :cond_11
    instance-of v0, v1, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    if-eqz v0, :cond_12

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->b()Z

    move-result v0

    if-eqz v0, :cond_12

    .line 48
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;->F()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    move-object v3, p1

    move-object v4, p2

    move-object v5, p3

    move-object v6, p4

    move-object v7, p5

    invoke-static/range {v2 .. v7}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0

    .line 49
    :cond_12
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "Unknown type "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 50
    :cond_13
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    const-string p2, "no descriptor for type constructor of "

    invoke-static {p2, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 51
    :cond_14
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;->d()Z

    move-result p3

    invoke-static {p1, v1, p3}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/w;->a(Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Ljava/lang/Object;Z)Ljava/lang/Object;

    move-result-object p1

    .line 52
    invoke-interface {p5, p0, p1, p2}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object p1

    :cond_15
    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move-object v6, p5

    .line 53
    :try_start_0
    invoke-static/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-object p0

    :catchall_0
    move-exception p0

    throw p0
.end method

.method public static synthetic e(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;ILjava/lang/Object;)Ljava/lang/Object;
    .locals 6

    and-int/lit8 p6, p6, 0x20

    if-eqz p6, :cond_0

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/utils/FunctionsKt;->b()Lkotlin/jvm/b/q;

    move-result-object p5

    :cond_0
    move-object v5, p5

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    .line 2
    invoke-static/range {v0 .. v5}, Lkotlin/reflect/jvm/internal/impl/load/kotlin/b;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/load/kotlin/i;Lkotlin/reflect/jvm/internal/impl/load/kotlin/v;Lkotlin/reflect/jvm/internal/impl/load/kotlin/t;Lkotlin/reflect/jvm/internal/impl/load/kotlin/f;Lkotlin/jvm/b/q;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
