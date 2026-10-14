.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;
.super Lkotlin/coroutines/jvm/internal/SuspendLambda;
.source "SourceFile"

# interfaces
.implements Lkotlin/jvm/b/p;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lkotlin/coroutines/jvm/internal/SuspendLambda;",
        "Lkotlin/jvm/b/p<",
        "Lkotlinx/coroutines/channels/n<",
        "-TR;>;",
        "Lkotlin/coroutines/c<",
        "-",
        "Lkotlin/v;",
        ">;",
        "Ljava/lang/Object;",
        ">;"
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u0000\u0010\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0006\u001a\u00020\u0003\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001*\u0008\u0012\u0004\u0012\u00028\u00010\u0002H\u008a@\u00a2\u0006\u0004\u0008\u0004\u0010\u0005"
    }
    d2 = {
        "E",
        "R",
        "Lkotlinx/coroutines/channels/n;",
        "Lkotlin/v;",
        "invoke",
        "(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;",
        "<anonymous>"
    }
    k = 0x3
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation

.annotation runtime Lkotlin/coroutines/jvm/internal/d;
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$mapIndexed$1"
    f = "Channels.common.kt"
    l = {
        0x58a,
        0x58b,
        0x58b
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $this_mapIndexed:Lkotlinx/coroutines/channels/p;

.field final synthetic $transform:Lkotlin/jvm/b/q;

.field I$0:I

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/n;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->$this_mapIndexed:Lkotlinx/coroutines/channels/p;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->$transform:Lkotlin/jvm/b/q;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p3}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            "Lkotlin/coroutines/c<",
            "*>;)",
            "Lkotlin/coroutines/c<",
            "Lkotlin/v;",
            ">;"
        }
    .end annotation

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->$this_mapIndexed:Lkotlinx/coroutines/channels/p;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->$transform:Lkotlin/jvm/b/q;

    invoke-direct {v0, v1, v2, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;-><init>(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)V

    check-cast p1, Lkotlinx/coroutines/channels/n;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->p$:Lkotlinx/coroutines/channels/n;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 11

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->label:I

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v1, :cond_3

    if-eq v1, v4, :cond_2

    if-eq v1, v3, :cond_1

    if-ne v1, v2, :cond_0

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->I$0:I

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/n;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object p1, v6

    move-object v6, p0

    goto :goto_0

    .line 2
    :cond_0
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string v0, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p1, v0}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1

    .line 3
    :cond_1
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/n;

    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    iget v7, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->I$0:I

    iget-object v8, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/n;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v9, p0

    move-object v10, v8

    move-object v8, v6

    move-object v6, v10

    goto/16 :goto_2

    :cond_2
    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->I$0:I

    iget-object v6, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/n;

    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v7, p0

    goto :goto_1

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->p$:Lkotlinx/coroutines/channels/n;

    const/4 v1, 0x0

    .line 4
    iget-object v5, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->$this_mapIndexed:Lkotlinx/coroutines/channels/p;

    invoke-interface {v5}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5

    move-object v6, p0

    move-object v1, v5

    const/4 v5, 0x0

    :goto_0
    iput-object p1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    iput v5, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->I$0:I

    iput-object v1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    iput v4, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->label:I

    invoke-interface {v1, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v0, :cond_4

    return-object v0

    :cond_4
    move-object v10, v6

    move-object v6, p1

    move-object p1, v7

    move-object v7, v10

    :goto_1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    invoke-interface {v1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 5
    iget-object v8, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->$transform:Lkotlin/jvm/b/q;

    invoke-static {v5}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v9

    add-int/2addr v5, v4

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    iput v5, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->I$0:I

    iput-object p1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$3:Ljava/lang/Object;

    iput v3, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->label:I

    invoke-interface {v8, v9, p1, v7}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v0, :cond_5

    return-object v0

    :cond_5
    move-object v9, v7

    move v7, v5

    move-object v5, v1

    move-object v1, v6

    move-object v10, v8

    move-object v8, p1

    move-object p1, v10

    :goto_2
    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$0:Ljava/lang/Object;

    iput v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->I$0:I

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v5, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->L$2:Ljava/lang/Object;

    iput v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexed$1;->label:I

    invoke-interface {v1, p1, v9}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p1

    if-ne p1, v0, :cond_6

    return-object v0

    :cond_6
    move-object v1, v5

    move-object p1, v6

    move v5, v7

    move-object v6, v9

    goto :goto_0

    .line 6
    :cond_7
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    return-object p1
.end method
