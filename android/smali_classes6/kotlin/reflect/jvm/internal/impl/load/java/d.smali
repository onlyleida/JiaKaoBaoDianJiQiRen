.class public final Lkotlin/reflect/jvm/internal/impl/load/java/d;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/name/c;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->c(Lkotlin/reflect/jvm/internal/impl/name/c;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p0

    return-object p0
.end method

.method public static final synthetic b(Lkotlin/reflect/jvm/internal/impl/name/d;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/c;
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lkotlin/reflect/jvm/internal/impl/load/java/d;->d(Lkotlin/reflect/jvm/internal/impl/name/d;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p0

    return-object p0
.end method

.method private static final c(Lkotlin/reflect/jvm/internal/impl/name/c;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/c;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/f;->g(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/name/c;->c(Lkotlin/reflect/jvm/internal/impl/name/f;)Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p0

    const-string p1, "child(Name.identifier(name))"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method

.method private static final d(Lkotlin/reflect/jvm/internal/impl/name/d;Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/c;
    .locals 0

    .line 1
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/name/f;->g(Ljava/lang/String;)Lkotlin/reflect/jvm/internal/impl/name/f;

    move-result-object p1

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/name/d;->c(Lkotlin/reflect/jvm/internal/impl/name/f;)Lkotlin/reflect/jvm/internal/impl/name/d;

    move-result-object p0

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/name/d;->l()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object p0

    const-string p1, "child(Name.identifier(name)).toSafe()"

    invoke-static {p0, p1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object p0
.end method
