.class public abstract Lkotlin/reflect/jvm/internal/impl/types/n;
.super Lkotlin/reflect/jvm/internal/impl/types/m;
.source "SourceFile"


# instance fields
.field private final b:Lkotlin/reflect/jvm/internal/impl/types/f0;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/f0;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lkotlin/reflect/jvm/internal/impl/types/m;-><init>()V

    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/types/n;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-void
.end method


# virtual methods
.method public bridge synthetic O0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/c1;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->U0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/n;

    move-result-object p1

    return-object p1
.end method

.method public P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/m;->J0()Z

    move-result v0

    if-ne p1, v0, :cond_0

    return-object p0

    .line 2
    :cond_0
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/n;->R0()Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object v0

    invoke-virtual {v0, p1}, Lkotlin/reflect/jvm/internal/impl/types/f0;->P0(Z)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/m;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    invoke-virtual {p1, v0}, Lkotlin/reflect/jvm/internal/impl/types/f0;->Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic Q0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/n;->U0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/n;

    move-result-object p1

    return-object p1
.end method

.method protected R0()Lkotlin/reflect/jvm/internal/impl/types/f0;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/n;->b:Lkotlin/reflect/jvm/internal/impl/types/f0;

    return-object v0
.end method

.method public U0(Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)Lkotlin/reflect/jvm/internal/impl/types/n;
    .locals 1

    const-string v0, "newAnnotations"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/m;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v0

    if-eq p1, v0, :cond_0

    .line 2
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/g;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/g;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    goto :goto_0

    :cond_0
    move-object v0, p0

    :goto_0
    return-object v0
.end method
