.class public Lkotlin/reflect/jvm/internal/impl/load/java/l;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field public static final b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field public static final c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

.field private static final d:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/z0;",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/s;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/load/java/l$a;

    sget-object v1, Lkotlin/reflect/jvm/internal/impl/descriptors/b1/a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/b1/a;

    invoke-direct {v0, v1}, Lkotlin/reflect/jvm/internal/impl/load/java/l$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)V

    sput-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 2
    new-instance v1, Lkotlin/reflect/jvm/internal/impl/load/java/l$b;

    sget-object v2, Lkotlin/reflect/jvm/internal/impl/descriptors/b1/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/b1/c;

    invoke-direct {v1, v2}, Lkotlin/reflect/jvm/internal/impl/load/java/l$b;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)V

    sput-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/l;->b:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 3
    new-instance v2, Lkotlin/reflect/jvm/internal/impl/load/java/l$c;

    sget-object v3, Lkotlin/reflect/jvm/internal/impl/descriptors/b1/b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/b1/b;

    invoke-direct {v2, v3}, Lkotlin/reflect/jvm/internal/impl/load/java/l$c;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)V

    sput-object v2, Lkotlin/reflect/jvm/internal/impl/load/java/l;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    .line 4
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    sput-object v3, Lkotlin/reflect/jvm/internal/impl/load/java/l;->d:Ljava/util/Map;

    .line 5
    invoke-static {v0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 6
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    .line 7
    invoke-static {v2}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->f(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V

    return-void
.end method

.method private static synthetic a(I)V
    .locals 9

    const/4 v0, 0x6

    const/4 v1, 0x5

    if-eq p0, v1, :cond_0

    if-eq p0, v0, :cond_0

    const-string v2, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    goto :goto_0

    :cond_0
    const-string v2, "@NotNull method %s.%s must not return null"

    :goto_0
    const/4 v3, 0x3

    const/4 v4, 0x2

    if-eq p0, v1, :cond_1

    if-eq p0, v0, :cond_1

    const/4 v5, 0x3

    goto :goto_1

    :cond_1
    const/4 v5, 0x2

    :goto_1
    new-array v5, v5, [Ljava/lang/Object;

    const-string v6, "kotlin/reflect/jvm/internal/impl/load/java/JavaDescriptorVisibilities"

    const/4 v7, 0x0

    packed-switch p0, :pswitch_data_0

    const-string v8, "what"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_0
    aput-object v6, v5, v7

    goto :goto_2

    :pswitch_1
    const-string v8, "visibility"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_2
    const-string v8, "second"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_3
    const-string v8, "first"

    aput-object v8, v5, v7

    goto :goto_2

    :pswitch_4
    const-string v8, "from"

    aput-object v8, v5, v7

    :goto_2
    const-string v7, "toDescriptorVisibility"

    const/4 v8, 0x1

    if-eq p0, v1, :cond_2

    if-eq p0, v0, :cond_2

    aput-object v6, v5, v8

    goto :goto_3

    :cond_2
    aput-object v7, v5, v8

    :goto_3
    if-eq p0, v4, :cond_4

    if-eq p0, v3, :cond_4

    const/4 v3, 0x4

    if-eq p0, v3, :cond_3

    if-eq p0, v1, :cond_5

    if-eq p0, v0, :cond_5

    const-string v3, "isVisibleForProtectedAndPackage"

    aput-object v3, v5, v4

    goto :goto_4

    :cond_3
    aput-object v7, v5, v4

    goto :goto_4

    :cond_4
    const-string v3, "areInSamePackage"

    aput-object v3, v5, v4

    :cond_5
    :goto_4
    invoke-static {v2, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    if-eq p0, v1, :cond_6

    if-eq p0, v0, :cond_6

    new-instance p0, Ljava/lang/IllegalArgumentException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    goto :goto_5

    :cond_6
    new-instance p0, Ljava/lang/IllegalStateException;

    invoke-direct {p0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    :goto_5
    throw p0

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method static synthetic b(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    return p0
.end method

.method static synthetic c(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    return p0
.end method

.method private static d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 2

    const-class v0, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    const/4 v1, 0x0

    if-eqz p0, :cond_2

    if-eqz p1, :cond_1

    const/4 v1, 0x0

    .line 1
    invoke-static {p0, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    .line 2
    invoke-static {p1, v0, v1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->r(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Ljava/lang/Class;Z)Lkotlin/reflect/jvm/internal/impl/descriptors/k;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;

    if-eqz p1, :cond_0

    if-eqz p0, :cond_0

    .line 3
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p0

    invoke-interface {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/b0;->e()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/name/c;->equals(Ljava/lang/Object;)Z

    move-result p0

    if-eqz p0, :cond_0

    const/4 v1, 0x1

    :cond_0
    return v1

    :cond_1
    const/4 p0, 0x3

    .line 4
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v1

    :cond_2
    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v1
.end method

.method private static e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
    .locals 2

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    const/4 v1, 0x1

    if-eqz p2, :cond_1

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/resolve/c;->M(Lkotlin/reflect/jvm/internal/impl/descriptors/o;)Lkotlin/reflect/jvm/internal/impl/descriptors/o;

    move-result-object v0

    invoke-static {v0, p2}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->d(Lkotlin/reflect/jvm/internal/impl/descriptors/k;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result v0

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    invoke-virtual {v0, p0, p1, p2}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z

    move-result p0

    return p0

    .line 3
    :cond_1
    invoke-static {v1}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v0

    :cond_2
    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v0
.end method

.method private static f(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)V
    .locals 2

    .line 1
    sget-object v0, Lkotlin/reflect/jvm/internal/impl/load/java/l;->d:Ljava/util/Map;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static g(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;
    .locals 2

    const/4 v0, 0x0

    if-eqz p0, :cond_3

    .line 1
    sget-object v1, Lkotlin/reflect/jvm/internal/impl/load/java/l;->d:Ljava/util/Map;

    invoke-interface {v1, p0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    if-nez v1, :cond_1

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/r;->j(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)Lkotlin/reflect/jvm/internal/impl/descriptors/s;

    move-result-object p0

    if-eqz p0, :cond_0

    return-object p0

    :cond_0
    const/4 p0, 0x5

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v0

    :cond_1
    if-eqz v1, :cond_2

    return-object v1

    :cond_2
    const/4 p0, 0x6

    .line 3
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v0

    :cond_3
    const/4 p0, 0x4

    .line 4
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/l;->a(I)V

    throw v0
.end method
