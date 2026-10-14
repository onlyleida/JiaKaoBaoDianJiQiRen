.class final Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;
.super Lkotlin/reflect/jvm/internal/impl/descriptors/p;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/p;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)V

    return-void
.end method

.method private static synthetic g(I)V
    .locals 6

    const/4 v0, 0x3

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x1

    const/4 v3, 0x0

    const/4 v4, 0x2

    if-eq p0, v2, :cond_2

    if-eq p0, v4, :cond_1

    if-eq p0, v0, :cond_0

    const-string v5, "what"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_0
    const-string v5, "fromClass"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_1
    const-string v5, "whatDeclaration"

    aput-object v5, v1, v3

    goto :goto_0

    :cond_2
    const-string v5, "from"

    aput-object v5, v1, v3

    :goto_0
    const-string v3, "kotlin/reflect/jvm/internal/impl/descriptors/DescriptorVisibilities$3"

    aput-object v3, v1, v2

    if-eq p0, v4, :cond_3

    if-eq p0, v0, :cond_3

    const-string p0, "isVisible"

    aput-object p0, v1, v4

    goto :goto_1

    :cond_3
    const-string p0, "doesReceiverFitForProtectedVisibility"

    aput-object p0, v1, v4

    :goto_1
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private h(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 3

    const/4 v0, 0x0

    if-eqz p2, :cond_9

    if-eqz p3, :cond_8

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->n:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;

    const/4 v1, 0x0

    if-ne p1, v0, :cond_0

    return v1

    .line 2
    :cond_0
    instance-of v0, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/CallableMemberDescriptor;

    const/4 v2, 0x1

    if-nez v0, :cond_1

    return v2

    .line 3
    :cond_1
    instance-of p2, p2, Lkotlin/reflect/jvm/internal/impl/descriptors/j;

    if-eqz p2, :cond_2

    return v2

    .line 4
    :cond_2
    sget-object p2, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->m:Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;

    if-ne p1, p2, :cond_3

    return v2

    .line 5
    :cond_3
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->b()Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;

    move-result-object p2

    if-eq p1, p2, :cond_7

    if-nez p1, :cond_4

    goto :goto_1

    .line 6
    :cond_4
    instance-of p2, p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/e;

    if-eqz p2, :cond_5

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/e;

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/e;->a()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    goto :goto_0

    :cond_5
    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;->getType()Lkotlin/reflect/jvm/internal/impl/types/a0;

    move-result-object p1

    .line 7
    :goto_0
    invoke-static {p1, p3}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->I(Lkotlin/reflect/jvm/internal/impl/types/a0;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p2

    if-nez p2, :cond_6

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/types/r;->a(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result p1

    if-eqz p1, :cond_7

    :cond_6
    const/4 v1, 0x1

    :cond_7
    :goto_1
    return v1

    :cond_8
    const/4 p1, 0x3

    .line 8
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;->g(I)V

    throw v0

    :cond_9
    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;->g(I)V

    throw v0
.end method


# virtual methods
.method public e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 5

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    const/4 v1, 0x0

    const/4 v2, 0x0

    if-eqz p2, :cond_5

    const/4 v3, 0x1

    if-eqz p3, :cond_4

    .line 1
    invoke-static {p2, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->q(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    .line 2
    invoke-static {p3, v0, v2}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p3

    check-cast p3, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez p3, :cond_0

    return v2

    :cond_0
    if-eqz v1, :cond_1

    .line 3
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->x(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->q(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-eqz v1, :cond_1

    .line 5
    invoke-static {p3, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->H(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v1

    if-eqz v1, :cond_1

    return v3

    .line 6
    :cond_1
    invoke-static {p2}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->M(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v1

    .line 7
    invoke-static {v1, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->q(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object v0

    check-cast v0, Lkotlin/reflect/jvm/internal/impl/descriptors/d;

    if-nez v0, :cond_2

    return v2

    .line 8
    :cond_2
    invoke-static {p3, v0}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->H(Lkotlin/reflect/jvm/internal/impl/descriptors/d;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-direct {p0, p1, v1, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;->h(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result v0

    if-eqz v0, :cond_3

    return v3

    .line 9
    :cond_3
    invoke-interface {p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/d;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p3

    invoke-virtual {p0, p1, p2, p3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;->e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p1

    return p1

    .line 10
    :cond_4
    invoke-static {v3}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;->g(I)V

    throw v1

    :cond_5
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/descriptors/r$f;->g(I)V

    throw v1
.end method
