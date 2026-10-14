.class public final Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation


# direct methods
.method public static a(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;)Lkotlin/reflect/jvm/internal/impl/descriptors/z0;
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;->getModifiers()I

    move-result p0

    .line 2
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPublic(I)Z

    move-result v0

    if-eqz v0, :cond_0

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y0$h;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/y0$h;

    goto :goto_0

    .line 3
    :cond_0
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isPrivate(I)Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/y0$e;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/y0$e;

    goto :goto_0

    .line 4
    :cond_1
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isProtected(I)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 5
    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    if-eqz p0, :cond_2

    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b1/c;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/b1/c;

    goto :goto_0

    .line 6
    :cond_2
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b1/b;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/b1/b;

    goto :goto_0

    .line 7
    :cond_3
    sget-object p0, Lkotlin/reflect/jvm/internal/impl/descriptors/b1/a;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/b1/a;

    :goto_0
    return-object p0
.end method

.method public static b(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isAbstract(I)Z

    move-result p0

    return p0
.end method

.method public static c(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isFinal(I)Z

    move-result p0

    return p0
.end method

.method public static d(Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;)Z
    .locals 1

    const-string v0, "this"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/runtime/structure/r;->getModifiers()I

    move-result p0

    invoke-static {p0}, Ljava/lang/reflect/Modifier;->isStatic(I)Z

    move-result p0

    return p0
.end method
