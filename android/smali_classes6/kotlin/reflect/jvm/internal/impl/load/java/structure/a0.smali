.class public final Lkotlin/reflect/jvm/internal/impl/load/java/structure/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final a(Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;)Z
    .locals 2

    .line 1
    instance-of v0, p0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;

    if-eqz v0, :cond_0

    check-cast p0, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    const/4 v0, 0x0

    if-nez p0, :cond_1

    goto :goto_1

    :cond_1
    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;->b()Lkotlin/reflect/jvm/internal/impl/load/java/structure/x;

    move-result-object v1

    if-eqz v1, :cond_2

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/structure/c0;->K()Z

    move-result p0

    if-nez p0, :cond_2

    const/4 p0, 0x1

    const/4 v0, 0x1

    :cond_2
    :goto_1
    return v0
.end method
