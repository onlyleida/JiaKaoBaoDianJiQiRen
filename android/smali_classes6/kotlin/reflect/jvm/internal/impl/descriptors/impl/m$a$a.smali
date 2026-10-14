.class Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/l;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;-><init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;Lkotlin/reflect/jvm/internal/impl/storage/m;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lkotlin/jvm/b/l<",
        "Lkotlin/reflect/jvm/internal/impl/name/f;",
        "Ljava/util/Collection<",
        "+",
        "Lkotlin/reflect/jvm/internal/impl/descriptors/n0;",
        ">;>;"
    }
.end annotation


# instance fields
.field final synthetic a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;


# direct methods
.method constructor <init>(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Lkotlin/reflect/jvm/internal/impl/name/f;)Ljava/util/Collection;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/reflect/jvm/internal/impl/name/f;",
            ")",
            "Ljava/util/Collection<",
            "+",
            "Lkotlin/reflect/jvm/internal/impl/descriptors/n0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a$a;->a:Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;

    invoke-static {v0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;->i(Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a;Lkotlin/reflect/jvm/internal/impl/name/f;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lkotlin/reflect/jvm/internal/impl/name/f;

    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/descriptors/impl/m$a$a;->a(Lkotlin/reflect/jvm/internal/impl/name/f;)Ljava/util/Collection;

    move-result-object p1

    return-object p1
.end method
