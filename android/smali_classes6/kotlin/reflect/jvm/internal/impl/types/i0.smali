.class public final Lkotlin/reflect/jvm/internal/impl/types/i0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/a;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/a;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    return-object p0
.end method

.method public static final b(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/a;

    move-result-object p0

    if-nez p0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a;->U0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    :goto_0
    return-object p0
.end method

.method public static final c(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p0

    instance-of p0, p0, Lkotlin/reflect/jvm/internal/impl/types/k;

    return p0
.end method

.method private static final d(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;
    .locals 8

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->a()Ljava/util/Collection;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    const/16 v2, 0xa

    invoke-static {v0, v2}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-eqz v4, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    .line 4
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/a0;

    .line 5
    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/y0;->m(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v3

    invoke-static {v3, v2, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/i0;->f(Lkotlin/reflect/jvm/internal/impl/types/c1;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v4

    const/4 v3, 0x1

    .line 6
    :cond_0
    invoke-interface {v1, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_1
    if-nez v3, :cond_2

    goto :goto_2

    .line 7
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->g()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p0

    if-nez p0, :cond_3

    goto :goto_1

    .line 8
    :cond_3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/y0;->m(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p0

    invoke-static {p0, v2, v5, v6}, Lkotlin/reflect/jvm/internal/impl/types/i0;->f(Lkotlin/reflect/jvm/internal/impl/types/c1;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p0

    :cond_4
    move-object v6, p0

    .line 9
    :goto_1
    new-instance p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    invoke-direct {p0, v1}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;-><init>(Ljava/util/Collection;)V

    invoke-virtual {p0, v6}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->l(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object v6

    :goto_2
    return-object v6
.end method

.method public static final e(Lkotlin/reflect/jvm/internal/impl/types/c1;Z)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/k;->d:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->b(Lkotlin/reflect/jvm/internal/impl/types/c1;Z)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/c1;->M0(Z)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic f(Lkotlin/reflect/jvm/internal/impl/types/c1;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/i0;->e(Lkotlin/reflect/jvm/internal/impl/types/c1;Z)Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p0

    return-object p0
.end method

.method private static final g(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 2

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object p0

    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    goto :goto_0

    :cond_0
    move-object p0, v1

    :goto_0
    if-nez p0, :cond_1

    return-object v1

    .line 2
    :cond_1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->d(Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;)Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;

    move-result-object p0

    if-nez p0, :cond_2

    return-object v1

    .line 3
    :cond_2
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/IntersectionTypeConstructor;->f()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final h(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/k;->d:Lkotlin/reflect/jvm/internal/impl/types/k$a;

    invoke-virtual {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/k$a;->b(Lkotlin/reflect/jvm/internal/impl/types/c1;Z)Lkotlin/reflect/jvm/internal/impl/types/k;

    move-result-object p1

    if-nez p1, :cond_0

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/i0;->g(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    .line 3
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    :cond_0
    return-object p1
.end method

.method public static synthetic i(Lkotlin/reflect/jvm/internal/impl/types/f0;ZILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    and-int/lit8 p2, p2, 0x1

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/i0;->h(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p0

    return-object p0
.end method

.method public static final j(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "abbreviatedType"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/a;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/a;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)V

    return-object v0
.end method

.method public static final k(Lkotlin/reflect/jvm/internal/impl/types/checker/i;)Lkotlin/reflect/jvm/internal/impl/types/checker/i;
    .locals 8

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/checker/i;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/i;->R0()Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;

    move-result-object v2

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/i;->S0()Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;

    move-result-object v3

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/i;->T0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v4

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/i;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v5

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/checker/i;->J0()Z

    move-result v6

    const/4 v7, 0x1

    move-object v1, v0

    invoke-direct/range {v1 .. v7}, Lkotlin/reflect/jvm/internal/impl/types/checker/i;-><init>(Lkotlin/reflect/jvm/internal/impl/types/model/CaptureStatus;Lkotlin/reflect/jvm/internal/impl/types/checker/NewCapturedTypeConstructor;Lkotlin/reflect/jvm/internal/impl/types/c1;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZZ)V

    return-object v0
.end method
