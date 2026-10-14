.class public Lkotlin/reflect/jvm/internal/k;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lkotlin/reflect/jvm/internal/k$a;,
        Lkotlin/reflect/jvm/internal/k$b;,
        Lkotlin/reflect/jvm/internal/k$c;
    }
.end annotation


# direct methods
.method private static synthetic a(I)V
    .locals 3

    const/4 v0, 0x3

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    const-string v2, "initializer"

    aput-object v2, v0, v1

    const-string v1, "kotlin/reflect/jvm/internal/ReflectProperties"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    const/4 v1, 0x2

    if-eq p0, v2, :cond_0

    if-eq p0, v1, :cond_0

    const-string p0, "lazy"

    aput-object p0, v0, v1

    goto :goto_0

    :cond_0
    const-string p0, "lazySoft"

    aput-object p0, v0, v1

    :goto_0
    const-string p0, "Argument for @NotNull parameter \'%s\' of %s.%s must not be null"

    invoke-static {p0, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static b(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$b;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/k$b<",
            "TT;>;"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/k$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/k$b;-><init>(Lkotlin/jvm/b/a;)V

    return-object v0

    :cond_0
    const/4 p0, 0x0

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/k;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static c(Ljava/lang/Object;Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(TT;",
            "Lkotlin/jvm/b/a<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/k$a<",
            "TT;>;"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/k$a;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/k$a;-><init>(Ljava/lang/Object;Lkotlin/jvm/b/a;)V

    return-object v0

    :cond_0
    const/4 p0, 0x1

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/k;->a(I)V

    const/4 p0, 0x0

    throw p0
.end method

.method public static d(Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$a;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlin/jvm/b/a<",
            "TT;>;)",
            "Lkotlin/reflect/jvm/internal/k$a<",
            "TT;>;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p0, :cond_0

    .line 1
    invoke-static {v0, p0}, Lkotlin/reflect/jvm/internal/k;->c(Ljava/lang/Object;Lkotlin/jvm/b/a;)Lkotlin/reflect/jvm/internal/k$a;

    move-result-object p0

    return-object p0

    :cond_0
    const/4 p0, 0x2

    .line 2
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/k;->a(I)V

    throw v0
.end method
