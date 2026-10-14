.class final Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;
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
        "-TV;>;",
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
        "\u0000\u0010\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\u0010\u0007\u001a\u00020\u0004\"\u0004\u0008\u0000\u0010\u0000\"\u0004\u0008\u0001\u0010\u0001\"\u0004\u0008\u0002\u0010\u0002*\u0008\u0012\u0004\u0012\u00028\u00020\u0003H\u008a@\u00a2\u0006\u0004\u0008\u0005\u0010\u0006"
    }
    d2 = {
        "E",
        "R",
        "V",
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
    c = "kotlinx.coroutines.channels.ChannelsKt__Channels_commonKt$zip$2"
    f = "Channels.common.kt"
    l = {
        0x894,
        0x88a,
        0x88c
    }
    m = "invokeSuspend"
.end annotation


# instance fields
.field final synthetic $other:Lkotlinx/coroutines/channels/p;

.field final synthetic $this_zip:Lkotlinx/coroutines/channels/p;

.field final synthetic $transform:Lkotlin/jvm/b/p;

.field L$0:Ljava/lang/Object;

.field L$1:Ljava/lang/Object;

.field L$10:Ljava/lang/Object;

.field L$2:Ljava/lang/Object;

.field L$3:Ljava/lang/Object;

.field L$4:Ljava/lang/Object;

.field L$5:Ljava/lang/Object;

.field L$6:Ljava/lang/Object;

.field L$7:Ljava/lang/Object;

.field L$8:Ljava/lang/Object;

.field L$9:Ljava/lang/Object;

.field label:I

.field private p$:Lkotlinx/coroutines/channels/n;


# direct methods
.method constructor <init>(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)V
    .locals 0

    iput-object p1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/p;

    iput-object p2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$other:Lkotlinx/coroutines/channels/p;

    iput-object p3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$transform:Lkotlin/jvm/b/p;

    const/4 p1, 0x2

    invoke-direct {p0, p1, p4}, Lkotlin/coroutines/jvm/internal/SuspendLambda;-><init>(ILkotlin/coroutines/c;)V

    return-void
.end method


# virtual methods
.method public final create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;
    .locals 4
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

    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v1, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/p;

    iget-object v2, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$other:Lkotlinx/coroutines/channels/p;

    iget-object v3, p0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$transform:Lkotlin/jvm/b/p;

    invoke-direct {v0, v1, v2, v3, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;-><init>(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)V

    check-cast p1, Lkotlinx/coroutines/channels/n;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->p$:Lkotlinx/coroutines/channels/n;

    return-object v0
.end method

.method public final invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    check-cast p2, Lkotlin/coroutines/c;

    invoke-virtual {p0, p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->create(Ljava/lang/Object;Lkotlin/coroutines/c;)Lkotlin/coroutines/c;

    move-result-object p1

    check-cast p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    sget-object p2, Lkotlin/v;->a:Lkotlin/v;

    invoke-virtual {p1, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    return-object p1
.end method

.method public final invokeSuspend(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 17

    move-object/from16 v1, p0

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v0

    .line 1
    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-eq v2, v4, :cond_1

    if-ne v2, v3, :cond_0

    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$7:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/n;

    :try_start_0
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-object v13, v1

    goto/16 :goto_3

    .line 2
    :cond_0
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v2, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_1
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$9:Ljava/lang/Object;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$8:Ljava/lang/Object;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$7:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Throwable;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/n;

    :try_start_1
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v15, p1

    move-object v4, v1

    move-object/from16 v16, v14

    move-object v14, v2

    move-object v2, v7

    move-object v7, v6

    move-object v6, v8

    move-object v8, v10

    move-object v10, v12

    move-object/from16 v12, v16

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v8, v10

    goto/16 :goto_4

    :cond_2
    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$7:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/n;

    :try_start_2
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    move-object/from16 v14, p1

    move-object v13, v1

    goto :goto_1

    :cond_3
    invoke-static/range {p1 .. p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    iget-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->p$:Lkotlinx/coroutines/channels/n;

    .line 4
    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$other:Lkotlinx/coroutines/channels/p;

    invoke-interface {v6}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6

    .line 5
    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$this_zip:Lkotlinx/coroutines/channels/p;

    const/4 v7, 0x0

    .line 6
    :try_start_3
    invoke-interface {v8}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v9

    move-object v13, v1

    move-object v12, v2

    move-object v11, v6

    move-object v6, v8

    move-object v10, v6

    move-object v2, v9

    move-object v9, v13

    :goto_0
    iput-object v12, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v11, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v10, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v9, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v8, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v7, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    iput-object v6, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iput-object v2, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$7:Ljava/lang/Object;

    iput v5, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    invoke-interface {v2, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v0, :cond_4

    return-object v0

    :cond_4
    :goto_1
    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_8

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v14

    .line 7
    iput-object v12, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v11, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v10, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v9, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v8, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v7, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    iput-object v6, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iput-object v2, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$7:Ljava/lang/Object;

    iput-object v14, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$8:Ljava/lang/Object;

    iput-object v14, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$9:Ljava/lang/Object;

    iput v4, v13, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    invoke-interface {v11, v13}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v15

    if-ne v15, v0, :cond_5

    return-object v0

    :cond_5
    move-object v4, v13

    move-object v13, v11

    move-object v11, v9

    move-object v9, v7

    move-object v7, v14

    :goto_2
    check-cast v15, Ljava/lang/Boolean;

    invoke-virtual {v15}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v15

    if-nez v15, :cond_6

    move-object v7, v9

    move-object v9, v11

    move-object v11, v13

    move-object v13, v4

    const/4 v4, 0x2

    goto :goto_0

    .line 8
    :cond_6
    invoke-interface {v13}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v15

    .line 9
    iget-object v5, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->$transform:Lkotlin/jvm/b/p;

    invoke-interface {v5, v14, v15}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    iput-object v12, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$0:Ljava/lang/Object;

    iput-object v13, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$1:Ljava/lang/Object;

    iput-object v10, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$2:Ljava/lang/Object;

    iput-object v11, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$3:Ljava/lang/Object;

    iput-object v8, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$4:Ljava/lang/Object;

    iput-object v9, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$6:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$7:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$8:Ljava/lang/Object;

    iput-object v14, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$9:Ljava/lang/Object;

    iput-object v15, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->L$10:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$zip$2;->label:I

    invoke-interface {v12, v5, v4}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v0, :cond_7

    return-object v0

    :cond_7
    move-object v7, v9

    move-object v9, v11

    move-object v11, v13

    move-object v13, v4

    :goto_3
    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_0

    .line 10
    :cond_8
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    invoke-static {v8, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1
    move-exception v0

    move-object v2, v0

    .line 12
    :goto_4
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception v0

    move-object v3, v0

    .line 13
    invoke-static {v8, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw v3
.end method
