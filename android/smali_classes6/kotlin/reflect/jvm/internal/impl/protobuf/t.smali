.class public Lkotlin/reflect/jvm/internal/impl/protobuf/t;
.super Ljava/util/AbstractList;
.source "SourceFile"

# interfaces
.implements Ljava/util/RandomAccess;
.implements Lkotlin/reflect/jvm/internal/impl/protobuf/l;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/util/AbstractList<",
        "Ljava/lang/String;",
        ">;",
        "Ljava/util/RandomAccess;",
        "Lkotlin/reflect/jvm/internal/impl/protobuf/l;"
    }
.end annotation


# instance fields
.field private final a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;


# direct methods
.method public constructor <init>(Lkotlin/reflect/jvm/internal/impl/protobuf/l;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/util/AbstractList;-><init>()V

    .line 2
    iput-object p1, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    return-void
.end method

.method static synthetic a(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)Lkotlin/reflect/jvm/internal/impl/protobuf/l;
    .locals 0

    .line 1
    iget-object p0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    return-object p0
.end method


# virtual methods
.method public b(I)Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/String;

    return-object p1
.end method

.method public c()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "*>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-interface {v0}, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->c()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public e(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-interface {v0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/l;->e(I)Lkotlin/reflect/jvm/internal/impl/protobuf/d;

    move-result-object p1

    return-object p1
.end method

.method public g(Lkotlin/reflect/jvm/internal/impl/protobuf/d;)V
    .locals 0

    .line 1
    new-instance p1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {p1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw p1
.end method

.method public bridge synthetic get(I)Ljava/lang/Object;
    .locals 0

    .line 1
    invoke-virtual {p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->b(I)Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public iterator()Ljava/util/Iterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Iterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;

    invoke-direct {v0, p0}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$b;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;)V

    return-object v0
.end method

.method public k()Lkotlin/reflect/jvm/internal/impl/protobuf/l;
    .locals 0

    return-object p0
.end method

.method public listIterator(I)Ljava/util/ListIterator;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ListIterator<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;

    invoke-direct {v0, p0, p1}, Lkotlin/reflect/jvm/internal/impl/protobuf/t$a;-><init>(Lkotlin/reflect/jvm/internal/impl/protobuf/t;I)V

    return-object v0
.end method

.method public size()I
    .locals 1

    .line 1
    iget-object v0, p0, Lkotlin/reflect/jvm/internal/impl/protobuf/t;->a:Lkotlin/reflect/jvm/internal/impl/protobuf/l;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method
