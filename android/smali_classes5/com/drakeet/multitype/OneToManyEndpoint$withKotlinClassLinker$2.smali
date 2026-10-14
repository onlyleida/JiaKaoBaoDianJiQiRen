.class final Lcom/drakeet/multitype/OneToManyEndpoint$withKotlinClassLinker$2;
.super Lkotlin/jvm/internal/Lambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/jvm/internal/Lambda;",
        "Lkotlin/jvm/b/p<",
        "Ljava/lang/Integer;",
        "TT;",
        "Ljava/lang/Class<",
        "+",
        "Lcom/drakeet/multitype/c<",
        "TT;*>;>;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0016\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0008\u001a\u0014\u0012\u0010\u0008\u0001\u0012\u000c\u0012\u0004\u0012\u00028\u0000\u0012\u0002\u0008\u00030\u00050\u0004\"\u0004\u0008\u0000\u0010\u00002\u0006\u0010\u0002\u001a\u00020\u00012\u0006\u0010\u0003\u001a\u00028\u0000H\n\u00a2\u0006\u0004\u0008\u0006\u0010\u0007"
    }
    d2 = {
        "T",
        "",
        "position",
        "item",
        "Ljava/lang/Class;",
        "Lcom/drakeet/multitype/c;",
        "invoke",
        "(ILjava/lang/Object;)Ljava/lang/Class;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# instance fields
.field final synthetic $classLinker:Lkotlin/jvm/b/p;


# direct methods
.method constructor <init>(Lkotlin/jvm/b/p;)V
    .locals 0

    iput-object p1, p0, Lcom/drakeet/multitype/OneToManyEndpoint$withKotlinClassLinker$2;->$classLinker:Lkotlin/jvm/b/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(ILjava/lang/Object;)Ljava/lang/Class;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(ITT;)",
            "Ljava/lang/Class<",
            "+",
            "Lcom/drakeet/multitype/c<",
            "TT;*>;>;"
        }
    .end annotation

    .line 2
    iget-object v0, p0, Lcom/drakeet/multitype/OneToManyEndpoint$withKotlinClassLinker$2;->$classLinker:Lkotlin/jvm/b/p;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {v0, p1, p2}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lkotlin/reflect/d;

    invoke-static {p1}, Lkotlin/jvm/a;->b(Lkotlin/reflect/d;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Number;

    invoke-virtual {p1}, Ljava/lang/Number;->intValue()I

    move-result p1

    invoke-virtual {p0, p1, p2}, Lcom/drakeet/multitype/OneToManyEndpoint$withKotlinClassLinker$2;->invoke(ILjava/lang/Object;)Ljava/lang/Class;

    move-result-object p1

    return-object p1
.end method
