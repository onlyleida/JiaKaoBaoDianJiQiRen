.class public abstract Lkotlin/reflect/jvm/internal/impl/descriptors/s;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method protected constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final a(Lkotlin/reflect/jvm/internal/impl/descriptors/s;)Ljava/lang/Integer;
    .locals 1

    const-string v0, "visibility"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    move-result-object v0

    invoke-virtual {p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    move-result-object p1

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->a(Lkotlin/reflect/jvm/internal/impl/descriptors/z0;)Ljava/lang/Integer;

    move-result-object p1

    return-object p1
.end method

.method public abstract b()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;
.end method

.method public abstract c()Ljava/lang/String;
.end method

.method public final d()Z
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->c()Z

    move-result v0

    return v0
.end method

.method public abstract e(Lkotlin/reflect/jvm/internal/impl/resolve/scopes/i/d;Lkotlin/reflect/jvm/internal/impl/descriptors/o;Lkotlin/reflect/jvm/internal/impl/descriptors/k;)Z
.end method

.method public abstract f()Lkotlin/reflect/jvm/internal/impl/descriptors/s;
.end method

.method public final toString()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/descriptors/s;->b()Lkotlin/reflect/jvm/internal/impl/descriptors/z0;

    move-result-object v0

    invoke-virtual {v0}, Lkotlin/reflect/jvm/internal/impl/descriptors/z0;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
