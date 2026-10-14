.class public final Lkotlin/collections/r0$a;
.super Lkotlin/collections/b;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lkotlin/collections/r0;->iterator()Ljava/util/Iterator;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/collections/b<",
        "TT;>;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0019\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000*\u0001\u0000\u0008\n\u0018\u00002\u0008\u0012\u0004\u0012\u00028\u00000\u0001J\u0008\u0010\u0005\u001a\u00020\u0006H\u0014R\u000e\u0010\u0002\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0004\u001a\u00020\u0003X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u0007"
    }
    d2 = {
        "kotlin/collections/RingBuffer$iterator$1",
        "Lkotlin/collections/AbstractIterator;",
        "count",
        "",
        "index",
        "computeNext",
        "",
        "kotlin-stdlib"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
.end annotation


# instance fields
.field private c:I

.field private d:I

.field final synthetic e:Lkotlin/collections/r0;


# direct methods
.method constructor <init>(Lkotlin/collections/r0;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .line 1
    iput-object p1, p0, Lkotlin/collections/r0$a;->e:Lkotlin/collections/r0;

    invoke-direct {p0}, Lkotlin/collections/b;-><init>()V

    .line 2
    invoke-virtual {p1}, Lkotlin/collections/AbstractCollection;->size()I

    move-result v0

    iput v0, p0, Lkotlin/collections/r0$a;->c:I

    .line 3
    invoke-static {p1}, Lkotlin/collections/r0;->j(Lkotlin/collections/r0;)I

    move-result p1

    iput p1, p0, Lkotlin/collections/r0$a;->d:I

    return-void
.end method


# virtual methods
.method protected c()V
    .locals 2

    .line 1
    iget v0, p0, Lkotlin/collections/r0$a;->c:I

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lkotlin/collections/b;->e()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lkotlin/collections/r0$a;->e:Lkotlin/collections/r0;

    invoke-static {v0}, Lkotlin/collections/r0;->f(Lkotlin/collections/r0;)[Ljava/lang/Object;

    move-result-object v0

    iget v1, p0, Lkotlin/collections/r0$a;->d:I

    aget-object v0, v0, v1

    invoke-virtual {p0, v0}, Lkotlin/collections/b;->f(Ljava/lang/Object;)V

    .line 4
    iget-object v0, p0, Lkotlin/collections/r0$a;->e:Lkotlin/collections/r0;

    iget v1, p0, Lkotlin/collections/r0$a;->d:I

    add-int/lit8 v1, v1, 0x1

    .line 5
    invoke-static {v0}, Lkotlin/collections/r0;->i(Lkotlin/collections/r0;)I

    move-result v0

    rem-int/2addr v1, v0

    iput v1, p0, Lkotlin/collections/r0$a;->d:I

    .line 6
    iget v0, p0, Lkotlin/collections/r0$a;->c:I

    add-int/lit8 v0, v0, -0x1

    iput v0, p0, Lkotlin/collections/r0$a;->c:I

    :goto_0
    return-void
.end method
