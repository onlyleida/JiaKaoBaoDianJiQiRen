.class public abstract Lkotlinx/coroutines/channels/AbstractChannel;
.super Lkotlinx/coroutines/channels/b;
.source "SourceFile"

# interfaces
.implements Lkotlinx/coroutines/channels/f;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlinx/coroutines/channels/AbstractChannel$g;,
        Lkotlinx/coroutines/channels/AbstractChannel$f;,
        Lkotlinx/coroutines/channels/AbstractChannel$a;,
        Lkotlinx/coroutines/channels/AbstractChannel$b;,
        Lkotlinx/coroutines/channels/AbstractChannel$c;,
        Lkotlinx/coroutines/channels/AbstractChannel$d;,
        Lkotlinx/coroutines/channels/AbstractChannel$e;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<E:",
        "Ljava/lang/Object;",
        ">",
        "Lkotlinx/coroutines/channels/b<",
        "TE;>;",
        "Lkotlinx/coroutines/channels/f<",
        "TE;>;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lkotlin/jvm/b/l;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/b;-><init>(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method public static final synthetic H(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/o;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->M(Lkotlinx/coroutines/channels/o;)Z

    move-result p0

    return p0
.end method

.method public static final synthetic I(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/f;ILkotlin/jvm/b/p;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractChannel;->Z(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/b/p;)V

    return-void
.end method

.method public static final synthetic J(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/k;Lkotlinx/coroutines/channels/o;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->a0(Lkotlinx/coroutines/k;Lkotlinx/coroutines/channels/o;)V

    return-void
.end method

.method private final M(Lkotlinx/coroutines/channels/o;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/o<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->N(Lkotlinx/coroutines/channels/o;)Z

    move-result p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->U()V

    :cond_0
    return p1
.end method

.method private final O(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;I)Z
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;",
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;I)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$e;

    invoke-direct {v0, p0, p1, p2, p3}, Lkotlinx/coroutines/channels/AbstractChannel$e;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;I)V

    .line 2
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->M(Lkotlinx/coroutines/channels/o;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 3
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/f;->h(Lkotlinx/coroutines/y0;)V

    :cond_0
    return p2
.end method

.method private final X(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TE;"
        }
    .end annotation

    .line 1
    instance-of v0, p1, Lkotlinx/coroutines/channels/j;

    if-eqz v0, :cond_1

    .line 2
    check-cast p1, Lkotlinx/coroutines/channels/j;

    iget-object p1, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    :cond_0
    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_1
    return-object p1
.end method

.method private final Z(Lkotlinx/coroutines/selects/f;ILkotlin/jvm/b/p;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;I",
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;)V"
        }
    .end annotation

    .line 1
    :cond_0
    :goto_0
    invoke-interface {p1}, Lkotlinx/coroutines/selects/f;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    return-void

    .line 2
    :cond_1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->R()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 3
    invoke-direct {p0, p1, p3, p2}, Lkotlinx/coroutines/channels/AbstractChannel;->O(Lkotlinx/coroutines/selects/f;Lkotlin/jvm/b/p;I)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 4
    :cond_2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->W(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-static {}, Lkotlinx/coroutines/selects/g;->d()Ljava/lang/Object;

    move-result-object v1

    if-ne v0, v1, :cond_3

    return-void

    .line 6
    :cond_3
    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-ne v0, v1, :cond_4

    goto :goto_0

    .line 7
    :cond_4
    sget-object v1, Lkotlinx/coroutines/internal/c;->b:Ljava/lang/Object;

    if-ne v0, v1, :cond_5

    goto :goto_0

    .line 8
    :cond_5
    invoke-direct {p0, p3, p1, p2, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->b0(Lkotlin/jvm/b/p;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private final a0(Lkotlinx/coroutines/k;Lkotlinx/coroutines/channels/o;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/k<",
            "*>;",
            "Lkotlinx/coroutines/channels/o<",
            "*>;)V"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$f;

    invoke-direct {v0, p0, p2}, Lkotlinx/coroutines/channels/AbstractChannel$f;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/o;)V

    invoke-interface {p1, v0}, Lkotlinx/coroutines/k;->l(Lkotlin/jvm/b/l;)V

    return-void
.end method

.method private final b0(Lkotlin/jvm/b/p;Lkotlinx/coroutines/selects/f;ILjava/lang/Object;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/p<",
            "Ljava/lang/Object;",
            "-",
            "Lkotlin/coroutines/c<",
            "-TR;>;+",
            "Ljava/lang/Object;",
            ">;",
            "Lkotlinx/coroutines/selects/f<",
            "-TR;>;I",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 1
    instance-of v0, p4, Lkotlinx/coroutines/channels/j;

    const/4 v1, 0x2

    if-eqz v0, :cond_6

    if-eqz p3, :cond_5

    const/4 v0, 0x1

    if-eq p3, v0, :cond_2

    if-eq p3, v1, :cond_0

    goto/16 :goto_1

    .line 2
    :cond_0
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->j()Z

    move-result p3

    if-nez p3, :cond_1

    return-void

    .line 3
    :cond_1
    sget-object p3, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    check-cast p4, Lkotlinx/coroutines/channels/j;

    iget-object p3, p4, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    .line 4
    new-instance p4, Lkotlinx/coroutines/channels/x$a;

    invoke-direct {p4, p3}, Lkotlinx/coroutines/channels/x$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p4}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    invoke-static {p4}, Lkotlinx/coroutines/channels/x;->a(Ljava/lang/Object;)Lkotlinx/coroutines/channels/x;

    move-result-object p3

    .line 5
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/a3/b;->d(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    goto :goto_1

    .line 6
    :cond_2
    check-cast p4, Lkotlinx/coroutines/channels/j;

    iget-object p3, p4, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    if-nez p3, :cond_4

    .line 7
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->j()Z

    move-result p3

    if-nez p3, :cond_3

    return-void

    :cond_3
    const/4 p3, 0x0

    .line 8
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/a3/b;->d(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    goto :goto_1

    .line 9
    :cond_4
    invoke-virtual {p4}, Lkotlinx/coroutines/channels/j;->Y()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    .line 10
    :cond_5
    check-cast p4, Lkotlinx/coroutines/channels/j;

    invoke-virtual {p4}, Lkotlinx/coroutines/channels/j;->Y()Ljava/lang/Throwable;

    move-result-object p1

    invoke-static {p1}, Lkotlinx/coroutines/internal/x;->k(Ljava/lang/Throwable;)Ljava/lang/Throwable;

    move-result-object p1

    throw p1

    :cond_6
    if-ne p3, v1, :cond_8

    .line 11
    sget-object p3, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    if-eqz v0, :cond_7

    check-cast p4, Lkotlinx/coroutines/channels/j;

    iget-object p3, p4, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    .line 12
    new-instance p4, Lkotlinx/coroutines/channels/x$a;

    invoke-direct {p4, p3}, Lkotlinx/coroutines/channels/x$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {p4}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 13
    :cond_7
    invoke-static {p4}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    :goto_0
    invoke-static {p4}, Lkotlinx/coroutines/channels/x;->a(Ljava/lang/Object;)Lkotlinx/coroutines/channels/x;

    move-result-object p3

    .line 15
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object p2

    invoke-static {p1, p3, p2}, Lkotlinx/coroutines/a3/b;->d(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    goto :goto_1

    .line 16
    :cond_8
    invoke-interface {p2}, Lkotlinx/coroutines/selects/f;->o()Lkotlin/coroutines/c;

    move-result-object p2

    invoke-static {p1, p4, p2}, Lkotlinx/coroutines/a3/b;->d(Lkotlin/jvm/b/p;Ljava/lang/Object;Lkotlin/coroutines/c;)V

    :goto_1
    return-void
.end method


# virtual methods
.method public final A(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->V()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-eq v0, v1, :cond_0

    instance-of v1, v0, Lkotlinx/coroutines/channels/j;

    if-nez v1, :cond_0

    return-object v0

    :cond_0
    const/4 v0, 0x1

    .line 3
    invoke-virtual {p0, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->Y(ILkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method protected C()Lkotlinx/coroutines/channels/q;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/q<",
            "TE;>;"
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lkotlinx/coroutines/channels/b;->C()Lkotlinx/coroutines/channels/q;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    instance-of v1, v0, Lkotlinx/coroutines/channels/j;

    if-nez v1, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->T()V

    :cond_0
    return-object v0
.end method

.method public final K(Ljava/lang/Throwable;)Z
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/b;->D(Ljava/lang/Throwable;)Z

    move-result p1

    .line 2
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->S(Z)V

    return p1
.end method

.method protected final L()Lkotlinx/coroutines/channels/AbstractChannel$g;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/AbstractChannel$g<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$g;

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->i()Lkotlinx/coroutines/internal/l;

    move-result-object v1

    invoke-direct {v0, v1}, Lkotlinx/coroutines/channels/AbstractChannel$g;-><init>(Lkotlinx/coroutines/internal/l;)V

    return-object v0
.end method

.method protected N(Lkotlinx/coroutines/channels/o;)Z
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/o<",
            "-TE;>;)Z"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->P()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->i()Lkotlinx/coroutines/internal/l;

    move-result-object v0

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v3

    .line 4
    instance-of v4, v3, Lkotlinx/coroutines/channels/s;

    xor-int/2addr v4, v2

    if-nez v4, :cond_1

    goto :goto_2

    .line 5
    :cond_1
    invoke-virtual {v3, p1, v0}, Lkotlinx/coroutines/internal/n;->z(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto :goto_1

    .line 6
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->i()Lkotlinx/coroutines/internal/l;

    move-result-object v0

    .line 7
    new-instance v3, Lkotlinx/coroutines/channels/AbstractChannel$h;

    invoke-direct {v3, p1, p1, p0}, Lkotlinx/coroutines/channels/AbstractChannel$h;-><init>(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/channels/AbstractChannel;)V

    .line 8
    :goto_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v4

    .line 9
    instance-of v5, v4, Lkotlinx/coroutines/channels/s;

    xor-int/2addr v5, v2

    if-nez v5, :cond_3

    goto :goto_2

    .line 10
    :cond_3
    invoke-virtual {v4, p1, v0, v3}, Lkotlinx/coroutines/internal/n;->Q(Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n;Lkotlinx/coroutines/internal/n$b;)I

    move-result v4

    if-eq v4, v2, :cond_4

    const/4 v5, 0x2

    if-eq v4, v5, :cond_5

    goto :goto_0

    :cond_4
    :goto_1
    const/4 v1, 0x1

    :cond_5
    :goto_2
    return v1
.end method

.method protected abstract P()Z
.end method

.method protected abstract Q()Z
.end method

.method protected final R()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->i()Lkotlinx/coroutines/internal/l;

    move-result-object v0

    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n;->H()Lkotlinx/coroutines/internal/n;

    move-result-object v0

    instance-of v0, v0, Lkotlinx/coroutines/channels/s;

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method protected S(Z)V
    .locals 4

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->h()Lkotlinx/coroutines/channels/j;

    move-result-object p1

    if-eqz p1, :cond_7

    const/4 v0, 0x0

    const/4 v1, 0x1

    .line 2
    invoke-static {v0, v1, v0}, Lkotlinx/coroutines/internal/k;->b(Ljava/lang/Object;ILkotlin/jvm/internal/o;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    :goto_0
    invoke-virtual {p1}, Lkotlinx/coroutines/internal/n;->I()Lkotlinx/coroutines/internal/n;

    move-result-object v2

    .line 4
    instance-of v3, v2, Lkotlinx/coroutines/internal/l;

    if-eqz v3, :cond_3

    if-nez v0, :cond_0

    goto :goto_2

    .line 5
    :cond_0
    instance-of v2, v0, Ljava/util/ArrayList;

    if-nez v2, :cond_1

    check-cast v0, Lkotlinx/coroutines/channels/s;

    .line 6
    invoke-virtual {v0, p1}, Lkotlinx/coroutines/channels/s;->T(Lkotlinx/coroutines/channels/j;)V

    goto :goto_2

    :cond_1
    const-string v2, "null cannot be cast to non-null type kotlin.collections.ArrayList<E> /* = java.util.ArrayList<E> */"

    .line 7
    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/ArrayList;

    .line 8
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v2

    sub-int/2addr v2, v1

    :goto_1
    if-ltz v2, :cond_2

    .line 9
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlinx/coroutines/channels/s;

    .line 10
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/s;->T(Lkotlinx/coroutines/channels/j;)V

    add-int/lit8 v2, v2, -0x1

    goto :goto_1

    :cond_2
    :goto_2
    return-void

    .line 11
    :cond_3
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v3

    if-eqz v3, :cond_5

    instance-of v3, v2, Lkotlinx/coroutines/channels/s;

    if-eqz v3, :cond_4

    goto :goto_3

    :cond_4
    new-instance p1, Ljava/lang/AssertionError;

    invoke-direct {p1}, Ljava/lang/AssertionError;-><init>()V

    throw p1

    .line 12
    :cond_5
    :goto_3
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->N()Z

    move-result v3

    if-nez v3, :cond_6

    .line 13
    invoke-virtual {v2}, Lkotlinx/coroutines/internal/n;->K()V

    goto :goto_0

    :cond_6
    const-string v3, "null cannot be cast to non-null type kotlinx.coroutines.channels.Send"

    .line 14
    invoke-static {v2, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/s;

    invoke-static {v0, v2}, Lkotlinx/coroutines/internal/k;->c(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0

    .line 15
    :cond_7
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "Cannot happen"

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method protected T()V
    .locals 0

    return-void
.end method

.method protected U()V
    .locals 0

    return-void
.end method

.method protected V()Ljava/lang/Object;
    .locals 3

    .line 1
    :goto_0
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->E()Lkotlinx/coroutines/channels/s;

    move-result-object v0

    if-eqz v0, :cond_4

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lkotlinx/coroutines/channels/s;->U(Lkotlinx/coroutines/internal/n$c;)Lkotlinx/coroutines/internal/y;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3
    invoke-static {}, Lkotlinx/coroutines/l0;->a()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lkotlinx/coroutines/m;->a:Lkotlinx/coroutines/internal/y;

    if-ne v1, v2, :cond_0

    const/4 v1, 0x1

    goto :goto_1

    :cond_0
    const/4 v1, 0x0

    :goto_1
    if-eqz v1, :cond_1

    goto :goto_2

    :cond_1
    new-instance v0, Ljava/lang/AssertionError;

    invoke-direct {v0}, Ljava/lang/AssertionError;-><init>()V

    throw v0

    .line 4
    :cond_2
    :goto_2
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/s;->R()V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/s;->S()Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 6
    :cond_3
    invoke-virtual {v0}, Lkotlinx/coroutines/channels/s;->V()V

    goto :goto_0

    .line 7
    :cond_4
    sget-object v0, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    return-object v0
.end method

.method protected W(Lkotlinx/coroutines/selects/f;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/selects/f<",
            "*>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->L()Lkotlinx/coroutines/channels/AbstractChannel$g;

    move-result-object v0

    .line 2
    invoke-interface {p1, v0}, Lkotlinx/coroutines/selects/f;->q(Lkotlinx/coroutines/internal/b;)Ljava/lang/Object;

    move-result-object p1

    if-eqz p1, :cond_0

    return-object p1

    .line 3
    :cond_0
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n$d;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/s;

    .line 4
    invoke-virtual {p1}, Lkotlinx/coroutines/channels/s;->R()V

    .line 5
    invoke-virtual {v0}, Lkotlinx/coroutines/internal/n$d;->o()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/s;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/s;->S()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method final synthetic Y(ILkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<R:",
            "Ljava/lang/Object;",
            ">(I",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    .line 1
    invoke-static {p2}, Lkotlin/coroutines/intrinsics/a;->c(Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object v0

    invoke-static {v0}, Lkotlinx/coroutines/n;->b(Lkotlin/coroutines/c;)Lkotlinx/coroutines/l;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    const-string v2, "null cannot be cast to non-null type kotlinx.coroutines.CancellableContinuation<kotlin.Any?>"

    if-nez v1, :cond_0

    .line 3
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$b;

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-direct {v1, v0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$b;-><init>(Lkotlinx/coroutines/k;I)V

    goto :goto_0

    .line 4
    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/AbstractChannel$c;

    invoke-static {v0, v2}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    iget-object v2, p0, Lkotlinx/coroutines/channels/b;->b:Lkotlin/jvm/b/l;

    invoke-direct {v1, v0, p1, v2}, Lkotlinx/coroutines/channels/AbstractChannel$c;-><init>(Lkotlinx/coroutines/k;ILkotlin/jvm/b/l;)V

    .line 5
    :cond_1
    :goto_0
    invoke-static {p0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->H(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/channels/o;)Z

    move-result p1

    if-eqz p1, :cond_2

    .line 6
    invoke-static {p0, v0, v1}, Lkotlinx/coroutines/channels/AbstractChannel;->J(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlinx/coroutines/k;Lkotlinx/coroutines/channels/o;)V

    goto :goto_1

    .line 7
    :cond_2
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->V()Ljava/lang/Object;

    move-result-object p1

    .line 8
    instance-of v2, p1, Lkotlinx/coroutines/channels/j;

    if-eqz v2, :cond_3

    .line 9
    check-cast p1, Lkotlinx/coroutines/channels/j;

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel$b;->T(Lkotlinx/coroutines/channels/j;)V

    goto :goto_1

    .line 10
    :cond_3
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-eq p1, v2, :cond_1

    .line 11
    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/AbstractChannel$b;->U(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    invoke-virtual {v1, p1}, Lkotlinx/coroutines/channels/o;->S(Ljava/lang/Object;)Lkotlin/jvm/b/l;

    move-result-object p1

    invoke-interface {v0, v2, p1}, Lkotlinx/coroutines/k;->r(Ljava/lang/Object;Lkotlin/jvm/b/l;)V

    .line 12
    :goto_1
    invoke-virtual {v0}, Lkotlinx/coroutines/l;->x()Ljava/lang/Object;

    move-result-object p1

    .line 13
    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    if-ne p1, v0, :cond_4

    invoke-static {p2}, Lkotlin/coroutines/jvm/internal/f;->c(Lkotlin/coroutines/c;)V

    :cond_4
    return-object p1
.end method

.method public final a(Ljava/util/concurrent/CancellationException;)V
    .locals 2

    if-eqz p1, :cond_0

    goto :goto_0

    .line 1
    :cond_0
    new-instance p1, Ljava/util/concurrent/CancellationException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {p0}, Lkotlinx/coroutines/m0;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " was cancelled"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/util/concurrent/CancellationException;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel;->K(Ljava/lang/Throwable;)Z

    return-void
.end method

.method public g()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/b;->f()Lkotlinx/coroutines/channels/j;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->Q()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public final iterator()Lkotlinx/coroutines/channels/ChannelIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/channels/ChannelIterator<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$a;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$a;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    return-object v0
.end method

.method public final poll()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TE;"
        }
    .end annotation

    .line 1
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->V()Ljava/lang/Object;

    move-result-object v0

    .line 2
    sget-object v1, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    invoke-direct {p0, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->X(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    :goto_0
    return-object v0
.end method

.method public final v(Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlinx/coroutines/channels/x<",
            "+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;

    iget v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;

    invoke-direct {v0, p0, p1}, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object v1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$1:Ljava/lang/Object;

    iget-object v0, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/AbstractChannel;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    .line 2
    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-virtual {p0}, Lkotlinx/coroutines/channels/AbstractChannel;->V()Ljava/lang/Object;

    move-result-object p1

    .line 5
    sget-object v2, Lkotlinx/coroutines/channels/a;->d:Lkotlinx/coroutines/internal/y;

    if-eq p1, v2, :cond_4

    .line 6
    instance-of v0, p1, Lkotlinx/coroutines/channels/j;

    if-eqz v0, :cond_3

    sget-object v0, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    check-cast p1, Lkotlinx/coroutines/channels/j;

    iget-object p1, p1, Lkotlinx/coroutines/channels/j;->d:Ljava/lang/Throwable;

    .line 7
    new-instance v0, Lkotlinx/coroutines/channels/x$a;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/x$a;-><init>(Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p1, v0

    goto :goto_1

    .line 8
    :cond_3
    sget-object v0, Lkotlinx/coroutines/channels/x;->b:Lkotlinx/coroutines/channels/x$b;

    .line 9
    invoke-static {p1}, Lkotlinx/coroutines/channels/x;->b(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_1
    return-object p1

    :cond_4
    const/4 v2, 0x2

    .line 10
    iput-object p0, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->L$1:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/AbstractChannel$receiveOrClosed$1;->label:I

    invoke-virtual {p0, v2, v0}, Lkotlinx/coroutines/channels/AbstractChannel;->Y(ILkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v1, :cond_5

    return-object v1

    :cond_5
    :goto_2
    check-cast p1, Lkotlinx/coroutines/channels/x;

    invoke-virtual {p1}, Lkotlinx/coroutines/channels/x;->i()Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final y()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$i;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$i;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    return-object v0
.end method

.method public final z()Lkotlinx/coroutines/selects/d;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lkotlinx/coroutines/selects/d<",
            "TE;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlinx/coroutines/channels/AbstractChannel$j;

    invoke-direct {v0, p0}, Lkotlinx/coroutines/channels/AbstractChannel$j;-><init>(Lkotlinx/coroutines/channels/AbstractChannel;)V

    return-object v0
.end method
