.class public Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;
.super Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "Ljava/util/List<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
        "*>;>;>;"
    }
.end annotation


# instance fields
.field private final b:Lkotlin/jvm/b/l;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/b/l<",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/z;",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Ljava/util/List;Lkotlin/jvm/b/l;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/resolve/constants/g<",
            "*>;>;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/z;",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/types/a0;",
            ">;)V"
        }
    .end annotation

    const-string v0, "value"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "computeType"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lkotlin/reflect/jvm/internal/impl/resolve/constants/g;-><init>(Ljava/lang/Object;)V

    .line 2
    iput-object p2, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->b:Lkotlin/jvm/b/l;

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/descriptors/z;)Lkotlin/reflect/jvm/internal/impl/types/a0;
    .locals 1

    const-string v0, "module"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/resolve/constants/b;->b:Lkotlin/jvm/b/l;

    invoke-interface {v0, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/jvm/internal/impl/types/a0;

    .line 2
    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->c0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->o0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-static {p1}, Lkotlin/reflect/jvm/internal/impl/builtins/g;->B0(Lkotlin/reflect/jvm/internal/impl/types/a0;)Z

    move-result v0

    :cond_0
    return-object p1
.end method
