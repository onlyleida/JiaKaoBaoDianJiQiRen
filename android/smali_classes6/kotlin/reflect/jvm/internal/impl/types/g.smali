.class final Lkotlin/reflect/jvm/internal/impl/types/g;
.super Lkotlin/reflect/jvm/internal/impl/types/n;
.source "SourceFile"


# instance fields
.field private final c:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V
    .locals 1

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "annotations"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/n;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;)V

    .line 2
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-void
.end method


# virtual methods
.method public bridge synthetic T0(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/m;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/types/g;->V0(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/g;

    move-result-object p1

    return-object p1
.end method

.method public V0(Lkotlin/reflect/jvm/internal/impl/types/f0;)Lkotlin/reflect/jvm/internal/impl/types/g;
    .locals 2

    const-string v0, "delegate"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/types/g;

    invoke-virtual {p0}, Lkotlin/reflect/jvm/internal/impl/types/g;->getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    move-result-object v1

    invoke-direct {v0, p1, v1}, Lkotlin/reflect/jvm/internal/impl/types/g;-><init>(Lkotlin/reflect/jvm/internal/impl/types/f0;Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;)V

    return-object v0
.end method

.method public getAnnotations()Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/types/g;->c:Lkotlin/reflect/jvm/internal/impl/descriptors/annotations/e;

    return-object v0
.end method
