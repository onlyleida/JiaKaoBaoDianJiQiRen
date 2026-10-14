.class public final Lkotlin/reflect/jvm/internal/impl/types/m0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/impl/types/m0$a;
    }
.end annotation


# static fields
.field public static final c:Lkotlin/reflect/jvm/internal/impl/types/m0$a;


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/types/o0;

.field private final b:Z


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/m0$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/m0$a;-><init>(Lkotlin/jvm/internal/o;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/types/m0;->c:Lkotlin/reflect/jvm/internal/impl/types/m0$a;

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/m0;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/o0$a;->a:Lkotlin/reflect/jvm/internal/impl/types/o0$a;

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/m0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/o0;Z)V

    return-void
.end method

.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/o0;Z)V
    .locals 1

    const-string v0, "reportStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->a:Lkotlin/reflect/jvm/internal/impl/types/o0;

    .line 3
    iput-boolean p2, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->b:Z

    return-void
.end method

.method private final a(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V
    .locals 2

    .line 1
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 2
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    .line 3
    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;

    .line 4
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_0
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :cond_1
    :goto_1
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result p2

    if-eqz p2, :cond_2

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;

    .line 6
    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 7
    iget-object v1, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->a:Lkotlin/reflect/jvm/internal/impl/types/o0;

    invoke-interface {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/o0;->c(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/c;)V

    goto :goto_1

    :cond_2
    return-void
.end method

.method private final b(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/a0;)V
    .locals 8

    .line 1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;->f(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;

    move-result-object v0

    const-string v1, "create(substitutedType)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object p2

    .line 3
    invoke-interface {p2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p2

    const/4 v1, 0x0

    :goto_0
    invoke-interface {p2}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {p2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    add-int/lit8 v3, v1, 0x1

    if-ltz v1, :cond_1

    check-cast v2, Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 4
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v4

    if-nez v4, :cond_0

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v4

    const-string v5, "substitutedArgument.type"

    invoke-static {v4, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v4}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->d(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 5
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 6
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v6

    invoke-interface {v6}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    .line 7
    iget-boolean v6, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->b:Z

    if-eqz v6, :cond_0

    .line 8
    iget-object v6, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->a:Lkotlin/reflect/jvm/internal/impl/types/o0;

    .line 9
    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v4

    const-string v7, "unsubstitutedArgument.type"

    invoke-static {v4, v7}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 10
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v2

    invoke-static {v2, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v5, "typeParameter"

    .line 11
    invoke-static {v1, v5}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 12
    invoke-interface {v6, v0, v4, v2, v1}, Lkotlin/reflect/jvm/internal/impl/types/o0;->a(Lkotlin/reflect/jvm/internal/impl/types/TypeSubstitutor;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)V

    :cond_0
    move v1, v3

    goto :goto_0

    .line 13
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p1, 0x0

    throw p1

    :cond_2
    return-void
.end method

.method private final c(Lkotlin/reflect/jvm/internal/impl/types/q;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/q;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p2

    invoke-virtual {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/q;->V0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/q;

    move-result-object p1

    return-object p1
.end method

.method private final d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 2

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->h(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p2

    const/4 v0, 0x1

    const/4 v1, 0x0

    invoke-static {p1, v1, p2, v0, v1}, Lkotlin/reflect/jvm/internal/impl/types/w0;->f(Lkotlin/reflect/jvm/internal/impl/types/f0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method private final e(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    .line 1
    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result p2

    invoke-static {p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/y0;->s(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    const-string p2, "makeNullableIfNeeded(thi\u2026romType.isMarkedNullable)"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1
.end method

.method private final f(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->e(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-interface {p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method

.method private final g(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 2

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/n0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    move-result-object v0

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/f;->i()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    const-string v1, "descriptor.typeConstructor"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/n0;->a()Ljava/util/List;

    move-result-object p1

    .line 3
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;->b:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope$a;

    .line 4
    invoke-static {p2, v0, p1, p3, v1}, Lkotlin/reflect/jvm/internal/impl/types/KotlinTypeFactory;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/types/q0;Ljava/util/List;ZLkotlin/reflect/jvm/internal/impl/resolve/scopes/MemberScope;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method

.method private final h(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1

    .line 2
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    invoke-static {p2, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/g;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    return-object p1
.end method

.method private final j(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/n0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 11

    .line 1
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/r;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v1

    if-eqz v1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/w0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    .line 4
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v1

    if-nez v1, :cond_8

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/typeUtil/TypeUtilsKt;->u(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v1

    if-nez v1, :cond_1

    goto/16 :goto_2

    .line 5
    :cond_1
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v1

    .line 6
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->c()Lkotlin/reflect/jvm/internal/impl/descriptors/f;

    move-result-object v2

    .line 7
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    .line 8
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    if-eqz v3, :cond_2

    goto/16 :goto_2

    .line 9
    :cond_2
    instance-of v3, v2, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    if-eqz v3, :cond_7

    .line 10
    check-cast v2, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/n0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->a:Lkotlin/reflect/jvm/internal/impl/types/o0;

    invoke-interface {p1, v2}, Lkotlin/reflect/jvm/internal/impl/types/o0;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;)V

    .line 12
    new-instance p1, Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 13
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 14
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/a0;->getName()Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p3

    const-string v0, "Recursive type alias: "

    invoke-static {v0, p3}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p3

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/t;->j(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p3

    .line 15
    invoke-direct {p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p1

    .line 16
    :cond_3
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v3

    .line 17
    new-instance v4, Ljava/util/ArrayList;

    const/16 v5, 0xa

    invoke-static {v3, v5}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v5

    invoke-direct {v4, v5}, Ljava/util/ArrayList;-><init>(I)V

    const/4 v5, 0x0

    .line 18
    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    add-int/lit8 v7, v5, 0x1

    if-ltz v5, :cond_4

    .line 19
    check-cast v6, Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 20
    invoke-interface {v1}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v8

    invoke-interface {v8, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    add-int/lit8 v8, p3, 0x1

    invoke-direct {p0, v6, p2, v5, v8}, Lkotlin/reflect/jvm/internal/impl/types/m0;->l(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v5, v7

    goto :goto_0

    .line 21
    :cond_4
    invoke-static {}, Lkotlin/collections/s;->t()V

    const/4 p1, 0x0

    throw p1

    .line 22
    :cond_5
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/n0;->e:Lkotlin/reflect/jvm/internal/impl/types/n0$a;

    invoke-virtual {v1, p2, v2, v4}, Lkotlin/reflect/jvm/internal/impl/types/n0$a;->a(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Ljava/util/List;)Lkotlin/reflect/jvm/internal/impl/types/n0;

    move-result-object v6

    .line 23
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v7

    .line 24
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result v8

    add-int/lit8 v9, p3, 0x1

    const/4 v10, 0x0

    move-object v5, p0

    .line 25
    invoke-direct/range {v5 .. v10}, Lkotlin/reflect/jvm/internal/impl/types/m0;->k(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    .line 26
    invoke-direct {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/m0;->m(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/n0;I)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    .line 27
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/types/r;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result p3

    if-eqz p3, :cond_6

    goto :goto_1

    :cond_6
    invoke-static {v1, p2}, Lkotlin/reflect/jvm/internal/impl/types/i0;->j(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v1

    .line 28
    :goto_1
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-direct {p2, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    move-object p1, p2

    goto :goto_2

    .line 29
    :cond_7
    invoke-direct {p0, v0, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/m0;->m(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/n0;I)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p2

    .line 30
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->b(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    .line 31
    new-instance p3, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    invoke-direct {p3, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    move-object p1, p3

    :cond_8
    :goto_2
    return-object p1
.end method

.method private final k(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 3

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 2
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    .line 3
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/n0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    move-result-object v2

    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/s0;->r0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v2

    .line 4
    invoke-direct {v0, v1, v2}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    const/4 v2, 0x0

    .line 5
    invoke-direct {p0, v0, p1, v2, p4}, Lkotlin/reflect/jvm/internal/impl/types/m0;->l(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p4

    .line 6
    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    const-string v2, "expandedProjection.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/w0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    .line 7
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/types/b0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v2

    if-eqz v2, :cond_0

    return-object v0

    .line 8
    :cond_0
    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p4

    .line 9
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p4

    invoke-direct {p0, p4, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    .line 10
    invoke-direct {p0, v0, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->d(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p4

    invoke-static {p4, p3}, Lkotlin/reflect/jvm/internal/impl/types/y0;->s(Lkotlin/reflect/jvm/internal/impl/types/f0;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p4

    const-string v0, "expandedType.combineAnno\u2026fNeeded(it, isNullable) }"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p5, :cond_1

    .line 11
    invoke-direct {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/types/m0;->g(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-static {p4, p1}, Lkotlin/reflect/jvm/internal/impl/types/i0;->j(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p4

    :cond_1
    return-object p4
.end method

.method private final l(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;
    .locals 3

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/types/m0;->c:Lkotlin/reflect/jvm/internal/impl/types/m0$a;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/n0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    move-result-object v1

    invoke-static {v0, p4, v1}, Lkotlin/reflect/jvm/internal/impl/types/m0$a;->a(Lkotlin/reflect/jvm/internal/impl/types/m0$a;ILkotlin/reflect/jvm/internal/impl/descriptors/s0;)V

    .line 2
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v0

    const-string v1, "makeStarProjection(typeParameterDescriptor!!)"

    if-eqz v0, :cond_0

    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/y0;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 3
    :cond_0
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v0

    const-string v2, "underlyingProjection.type"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v2

    invoke-virtual {p2, v2}, Lkotlin/reflect/jvm/internal/impl/types/n0;->c(Lkotlin/reflect/jvm/internal/impl/types/q0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v2

    if-nez v2, :cond_1

    .line 5
    invoke-direct {p0, p1, p2, p4}, Lkotlin/reflect/jvm/internal/impl/types/m0;->j(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/n0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result p4

    if-eqz p4, :cond_2

    invoke-static {p3}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-static {p3}, Lkotlin/reflect/jvm/internal/impl/types/y0;->t(Lkotlin/reflect/jvm/internal/impl/descriptors/t0;)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object p1

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p1

    .line 7
    :cond_2
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p4

    invoke-virtual {p4}, Lkotlin/reflect/jvm/internal/impl/types/a0;->L0()Lkotlin/reflect/jvm/internal/impl/types/c1;

    move-result-object p4

    .line 8
    invoke-interface {v2}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v1

    const-string v2, "argument.projectionKind"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    .line 9
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    const-string v2, "underlyingProjection.projectionKind"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_3

    goto :goto_0

    .line 10
    :cond_3
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v2, :cond_4

    goto :goto_0

    :cond_4
    if-ne v1, v2, :cond_5

    move-object v1, p1

    goto :goto_0

    .line 11
    :cond_5
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->a:Lkotlin/reflect/jvm/internal/impl/types/o0;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/n0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    move-result-object v2

    invoke-interface {p1, v2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/o0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    :goto_0
    if-nez p3, :cond_6

    const/4 p1, 0x0

    goto :goto_1

    .line 12
    :cond_6
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;->getVariance()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object p1

    :goto_1
    if-nez p1, :cond_7

    sget-object p1, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    :cond_7
    const-string v2, "typeParameterDescriptor?\u2026nce ?: Variance.INVARIANT"

    invoke-static {p1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    if-ne p1, v1, :cond_8

    goto :goto_2

    .line 13
    :cond_8
    sget-object v2, Lkotlin/reflect/jvm/internal/impl/types/Variance;->INVARIANT:Lkotlin/reflect/jvm/internal/impl/types/Variance;

    if-ne p1, v2, :cond_9

    goto :goto_2

    :cond_9
    if-ne v1, v2, :cond_a

    move-object v1, v2

    goto :goto_2

    .line 14
    :cond_a
    iget-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/m0;->a:Lkotlin/reflect/jvm/internal/impl/types/o0;

    invoke-virtual {p2}, Lkotlin/reflect/jvm/internal/impl/types/n0;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/s0;

    move-result-object p2

    invoke-interface {p1, p2, p3, p4}, Lkotlin/reflect/jvm/internal/impl/types/o0;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/s0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    .line 15
    :goto_2
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    invoke-interface {p4}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p2

    invoke-direct {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/types/m0;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    .line 16
    instance-of p1, p4, Lkotlin/reflect/jvm/internal/impl/types/q;

    if-eqz p1, :cond_b

    .line 17
    check-cast p4, Lkotlin/reflect/jvm/internal/impl/types/q;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p1

    invoke-direct {p0, p4, p1}, Lkotlin/reflect/jvm/internal/impl/types/m0;->c(Lkotlin/reflect/jvm/internal/impl/types/q;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/q;

    move-result-object p1

    goto :goto_3

    .line 18
    :cond_b
    invoke-static {p4}, Lkotlin/reflect/jvm/internal/impl/types/w0;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-direct {p0, p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/m0;->f(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/a0;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    .line 19
    :goto_3
    new-instance p2, Lkotlin/reflect/jvm/internal/impl/types/u0;

    invoke-direct {p2, v1, p1}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    return-object p2
.end method

.method private final m(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/types/n0;I)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 8

    .line 1
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->I0()Lkotlin/reflect/jvm/internal/impl/types/q0;

    move-result-object v0

    .line 2
    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/types/a0;->H0()Ljava/util/List;

    move-result-object v1

    .line 3
    new-instance v2, Ljava/util/ArrayList;

    const/16 v3, 0xa

    invoke-static {v1, v3}, Lkotlin/collections/s;->u(Ljava/lang/Iterable;I)I

    move-result v3

    invoke-direct {v2, v3}, Ljava/util/ArrayList;-><init>(I)V

    .line 4
    invoke-interface {v1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v3, 0x0

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    const/4 v5, 0x0

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    add-int/lit8 v6, v3, 0x1

    if-ltz v3, :cond_1

    .line 5
    check-cast v4, Lkotlin/reflect/jvm/internal/impl/types/s0;

    .line 6
    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/types/q0;->getParameters()Ljava/util/List;

    move-result-object v5

    invoke-interface {v5, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lkotlin/reflect/jvm/internal/impl/descriptors/t0;

    add-int/lit8 v5, p3, 0x1

    .line 7
    invoke-direct {p0, v4, p2, v3, v5}, Lkotlin/reflect/jvm/internal/impl/types/m0;->l(Lkotlin/reflect/jvm/internal/impl/types/s0;Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/t0;I)Lkotlin/reflect/jvm/internal/impl/types/s0;

    move-result-object v3

    .line 8
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/s0;->a()Z

    move-result v5

    if-eqz v5, :cond_0

    goto :goto_1

    .line 9
    :cond_0
    new-instance v5, Lkotlin/reflect/jvm/internal/impl/types/u0;

    .line 10
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/s0;->c()Lkotlin/reflect/jvm/internal/impl/types/Variance;

    move-result-object v7

    .line 11
    invoke-interface {v3}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v3

    invoke-interface {v4}, Lkotlin/reflect/jvm/internal/impl/types/s0;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v4

    invoke-virtual {v4}, Lkotlin/reflect/jvm/internal/impl/types/a0;->J0()Z

    move-result v4

    invoke-static {v3, v4}, Lkotlin/reflect/jvm/internal/impl/types/y0;->r(Lkotlin/reflect/jvm/internal/impl/types/a0;Z)Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object v3

    .line 12
    invoke-direct {v5, v7, v3}, Lkotlin/reflect/jvm/internal/impl/types/u0;-><init>(Lkotlin/reflect/jvm/internal/impl/types/Variance;Lkotlin/reflect/jvm/internal/impl/types/a0;)V

    move-object v3, v5

    .line 13
    :goto_1
    invoke-interface {v2, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move v3, v6

    goto :goto_0

    .line 14
    :cond_1
    invoke-static {}, Lkotlin/collections/s;->t()V

    throw v5

    :cond_2
    const/4 p2, 0x2

    .line 15
    invoke-static {p1, v2, v5, p2, v5}, Lkotlin/reflect/jvm/internal/impl/types/w0;->f(Lkotlin/reflect/jvm/internal/impl/types/f0;Ljava/util/List;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ILjava/lang/Object;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public final i(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 7

    const-string v0, "typeAliasExpansion"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    .line 1
    invoke-direct/range {v1 .. v6}, Lkotlin/reflect/jvm/internal/impl/types/m0;->k(Lkotlin/reflect/jvm/internal/impl/types/n0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;ZIZ)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method
