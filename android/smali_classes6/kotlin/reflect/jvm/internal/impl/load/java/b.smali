.class public final Lkotlin/reflect/jvm/internal/impl/load/java/b;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final synthetic a(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 0

    .line 1
    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/load/java/b;->b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z

    move-result p0

    return p0
.end method

.method private static final b(Lkotlin/reflect/jvm/internal/impl/descriptors/d;)Z
    .locals 2

    .line 1
    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->b()Ljava/util/Set;

    move-result-object v0

    invoke-static {p0}, Lkotlin/reflect/jvm/internal/impl/resolve/descriptorUtil/DescriptorUtilsKt;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v1

    invoke-interface {v0, v1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_1

    invoke-interface {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/a;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object p0

    invoke-static {}, Lkotlin/reflect/jvm/internal/impl/load/java/a;->f()Lkotlin/reflect/jvm/internal/impl/name/c;

    move-result-object v0

    invoke-interface {p0, v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;->h(Lkotlin/reflect/jvm/internal/impl/name/c;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method
