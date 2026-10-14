.class final synthetic Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method public static final A(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/l;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v8

    move-object v8, v1

    move-object v1, v10

    move-object v10, v3

    move-object v3, v14

    move-object v15, v9

    move-object v9, v2

    move-object v2, v15

    move-object/from16 v16, v11

    move-object v11, v7

    move-object/from16 v7, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v3, p0

    move-object v6, v3

    move-object/from16 v7, p1

    move-object v10, v0

    move-object v8, v1

    move-object v9, v2

    move-object v11, v4

    move-object v0, v6

    move-object v1, v0

    move-object v2, v1

    :goto_1
    :try_start_2
    iput-object v0, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$0:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$1:Ljava/lang/Object;

    iput-object v1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$2:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$3:Ljava/lang/Object;

    iput-object v3, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$4:Ljava/lang/Object;

    iput-object v11, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$5:Ljava/lang/Object;

    iput-object v6, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$6:Ljava/lang/Object;

    iput-object v10, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->L$7:Ljava/lang/Object;

    iput v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$find$1;->label:I

    invoke-interface {v10, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v9, :cond_3

    return-object v9

    :cond_3
    move-object v14, v12

    move-object v12, v0

    move-object v0, v14

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {v7, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v13, :cond_4

    const/4 v1, 0x2

    invoke-static {v1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v3, v11}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/q;->a(I)V

    move-object v4, v0

    goto :goto_3

    :cond_4
    move-object v0, v12

    goto :goto_1

    .line 7
    :cond_5
    :try_start_3
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v3, v11}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    :goto_3
    return-object v4

    :catchall_1
    move-exception v0

    goto :goto_4

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_4
    move-object v1, v0

    .line 9
    :goto_5
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final B(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v2

    move-object v2, p1

    move-object p1, v9

    move-object v9, v6

    move-object v6, v1

    move-object v1, v3

    move-object v3, v8

    move-object v8, v11

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v3

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object v3, p1

    move-object p1, v1

    move-object p0, v2

    move-object v2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$0:Ljava/lang/Object;

    iput-object v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$1:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$2:Ljava/lang/Object;

    iput-object v8, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$3:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$4:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$5:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$6:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$7:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->L$8:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$findLast$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_3

    return-object v6

    :cond_3
    move-object v11, v7

    move-object v7, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-interface {v3, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 7
    iput-object p2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4
    move-object p2, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 8
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v1, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 10
    iget-object p0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 11
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 12
    invoke-static {v1, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final C(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/p;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->L$4:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v1, p1

    move-object p1, v0

    move-object v4, v2

    move-object v2, p0

    move-object p0, v4

    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    .line 8
    :cond_4
    :try_start_3
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    .line 9
    :goto_2
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 10
    invoke-static {v2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final D(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$first$3;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v9, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v8, :cond_4

    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p2

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 7
    :cond_5
    :try_start_3
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final E(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/p;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    move-object v2, p0

    move-object p0, p1

    move-object p1, v0

    move-object v1, v3

    :goto_1
    :try_start_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-nez p1, :cond_4

    .line 6
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v3

    .line 7
    :cond_4
    :try_start_3
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    .line 8
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    .line 9
    :goto_2
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    :catchall_2
    move-exception p1

    .line 10
    invoke-static {v2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final F(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/l;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v8

    move-object v8, v2

    move-object v2, v7

    move-object v7, v10

    move-object v11, v5

    move-object v5, v0

    move-object v0, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v5

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v2, p1

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object p1, p0

    move-object v0, p1

    move-object v1, v0

    move-object p0, p2

    move-object p2, v1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$1:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$5:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->L$6:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$firstOrNull$3;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_3

    return-object v6

    :cond_3
    move-object v10, v6

    move-object v6, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v9, :cond_4

    const/4 p0, 0x2

    invoke-static {p0}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v0, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p2

    :cond_4
    move-object p2, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 7
    :cond_5
    :try_start_3
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v3

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 9
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final G(Lkotlinx/coroutines/channels/p;Ljava/lang/Object;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TR;",
            "Lkotlin/jvm/b/p<",
            "-TR;-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$1:Ljava/lang/Object;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v14, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move-object v2, v14

    move-object v15, v9

    move-object v9, v3

    move-object v3, v5

    move-object v5, v11

    move-object v11, v15

    move-object/from16 v16, v10

    move-object v10, v6

    move-object/from16 v6, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v3, p1

    iput-object v3, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v5, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v11, v0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v5

    move-object v9, v6

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object/from16 v6, p2

    move-object v5, v3

    move-object v3, v2

    :goto_1
    :try_start_2
    iput-object v0, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$0:Ljava/lang/Object;

    iput-object v5, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$1:Ljava/lang/Object;

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$2:Ljava/lang/Object;

    iput-object v11, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$3:Ljava/lang/Object;

    iput-object v1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$4:Ljava/lang/Object;

    iput-object v2, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$5:Ljava/lang/Object;

    iput-object v10, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$6:Ljava/lang/Object;

    iput-object v3, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$7:Ljava/lang/Object;

    iput-object v9, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->L$8:Ljava/lang/Object;

    iput v4, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$fold$1;->label:I

    invoke-interface {v9, v7}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v8, :cond_3

    return-object v8

    :cond_3
    move-object v14, v12

    move-object v12, v0

    move-object v0, v14

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-object v13, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v6, v13, v0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, v12

    goto :goto_1

    .line 7
    :cond_4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v2, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 10
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final H(Lkotlinx/coroutines/channels/p;Ljava/lang/Object;Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TR;",
            "Lkotlin/jvm/b/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TR;-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TR;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/q;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$1:Ljava/lang/Object;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move-object/from16 v2, v16

    move-object/from16 v17, v9

    move-object v9, v3

    move-object v3, v5

    move-object v5, v12

    move-object v12, v10

    move-object v10, v6

    move-object v6, v11

    move-object/from16 v11, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 5
    new-instance v3, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    move-object/from16 v5, p1

    iput-object v5, v3, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    const/4 v6, 0x0

    .line 6
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v0

    move-object v8, v2

    move-object v11, v3

    move-object v10, v6

    move-object v9, v7

    move-object/from16 v0, p0

    move-object v2, v0

    move-object v3, v2

    move-object/from16 v6, p2

    move-object v7, v1

    move-object v1, v3

    :goto_1
    :try_start_2
    iput-object v0, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v5, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v12, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v11, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$5:Ljava/lang/Object;

    iput-object v2, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v10, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$7:Ljava/lang/Object;

    iput-object v3, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$8:Ljava/lang/Object;

    iput-object v9, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->L$9:Ljava/lang/Object;

    iput v4, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$foldIndexed$1;->label:I

    invoke-interface {v9, v7}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_3

    return-object v8

    :cond_3
    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    iget v14, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v14

    iget-object v15, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    invoke-interface {v6, v14, v15, v0}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    iput-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    move-object v0, v13

    goto :goto_1

    .line 8
    :cond_4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v2, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 10
    iget-object v0, v11, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 11
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 12
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final I(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/List<",
            "+TE;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/l;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v7

    move-object v7, v1

    move-object v1, v10

    move-object v10, v6

    move-object v6, v11

    move-object v11, v9

    move-object v9, v3

    move-object v3, v15

    move-object/from16 v16, v8

    move-object v8, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, p1

    move-object v11, v0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v3

    move-object v9, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v5, v3

    :goto_1
    :try_start_2
    iput-object v0, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$2:Ljava/lang/Object;

    iput-object v11, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$3:Ljava/lang/Object;

    iput-object v2, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$4:Ljava/lang/Object;

    iput-object v3, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$5:Ljava/lang/Object;

    iput-object v10, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$6:Ljava/lang/Object;

    iput-object v5, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$7:Ljava/lang/Object;

    iput-object v9, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->L$8:Ljava/lang/Object;

    iput v4, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$1;->label:I

    invoke-interface {v9, v7}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v8, :cond_3

    return-object v8

    :cond_3
    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-interface {v6, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 7
    invoke-interface {v11, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    .line 8
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v11, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4
    check-cast v14, Ljava/util/List;

    .line 11
    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v12

    goto :goto_1

    .line 12
    :cond_5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 13
    invoke-static {v3, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v11

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    move-object v1, v0

    .line 14
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 15
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final J(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/Map<",
            "TK;+",
            "Ljava/util/List<",
            "+TV;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$4:Ljava/lang/Object;

    check-cast v9, Ljava/util/Map;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/l;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/b/l;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v10

    move-object v10, v3

    move-object v3, v7

    move-object v7, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Ljava/util/LinkedHashMap;

    invoke-direct {v0}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v12, v0

    move-object v8, v1

    move-object v9, v2

    move-object v11, v3

    move-object v10, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v5, v3

    :goto_1
    :try_start_2
    iput-object v0, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$3:Ljava/lang/Object;

    iput-object v12, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$4:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$5:Ljava/lang/Object;

    iput-object v3, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$6:Ljava/lang/Object;

    iput-object v11, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$7:Ljava/lang/Object;

    iput-object v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$8:Ljava/lang/Object;

    iput-object v10, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->L$9:Ljava/lang/Object;

    iput v4, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupBy$2;->label:I

    invoke-interface {v10, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v9, :cond_3

    return-object v9

    :cond_3
    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    invoke-interface {v6, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 7
    invoke-interface {v12, v14}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    if-nez v15, :cond_4

    .line 8
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 9
    invoke-interface {v12, v14, v15}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 10
    :cond_4
    check-cast v15, Ljava/util/List;

    .line 11
    invoke-interface {v7, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v15, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v13

    goto :goto_1

    .line 12
    :cond_5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 13
    invoke-static {v3, v11}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v12

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    move-object v1, v0

    .line 14
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 15
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final K(Lkotlinx/coroutines/channels/p;Ljava/util/Map;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/util/List<",
            "TE;>;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TM;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/c<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v10

    move-object v11, v4

    move-object v4, p2

    move-object p2, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v10, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v10

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 6
    invoke-interface {v1, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-nez v9, :cond_4

    .line 7
    new-instance v9, Ljava/util/ArrayList;

    invoke-direct {v9}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v1, v8, v9}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_4
    check-cast v9, Ljava/util/List;

    .line 10
    invoke-interface {v9, p3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 11
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 12
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    move-object v2, p3

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v2, p0

    move-object p0, p1

    .line 13
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final L(Lkotlinx/coroutines/channels/p;Ljava/util/Map;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;",
            "Ljava/util/List<",
            "TV;>;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TM;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/c<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p4

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/b/l;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Map;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v8

    move-object v8, v1

    move-object v1, v15

    move-object/from16 v16, v9

    move-object v9, v2

    move-object v2, v7

    move-object/from16 v7, v16

    move-object/from16 v17, v10

    move-object v10, v3

    move-object v3, v5

    move-object v5, v11

    move-object v11, v6

    move-object/from16 v6, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v5, p1

    move-object/from16 v6, p2

    move-object/from16 v7, p3

    move-object v11, v0

    move-object v8, v1

    move-object v9, v2

    move-object v10, v3

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    :try_start_2
    iput-object v0, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$0:Ljava/lang/Object;

    iput-object v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$1:Ljava/lang/Object;

    iput-object v6, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$2:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$3:Ljava/lang/Object;

    iput-object v1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$5:Ljava/lang/Object;

    iput-object v11, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$6:Ljava/lang/Object;

    iput-object v3, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$7:Ljava/lang/Object;

    iput-object v10, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->L$8:Ljava/lang/Object;

    iput v4, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$groupByTo$3;->label:I

    invoke-interface {v10, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v9, :cond_3

    return-object v9

    :cond_3
    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {v6, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .line 6
    invoke-interface {v5, v13}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    if-nez v14, :cond_4

    .line 7
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 8
    invoke-interface {v5, v13, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 9
    :cond_4
    check-cast v14, Ljava/util/List;

    .line 10
    invoke-interface {v7, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v14, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object v0, v12

    goto :goto_1

    .line 11
    :cond_5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 12
    invoke-static {v2, v11}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 13
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final M(Lkotlinx/coroutines/channels/p;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$1:Ljava/lang/Object;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    move-object v1, p1

    move-object p1, v8

    move-object v8, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    move-object v11, v7

    move-object v7, v2

    move-object v2, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p2

    move-object v5, v1

    move-object v6, v2

    move-object p2, p0

    move-object v1, p2

    move-object v2, p1

    move-object p1, v1

    move-object p0, v4

    move-object v4, v0

    move-object v0, p1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$2:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$5:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$6:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->L$7:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOf$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_3

    return-object v5

    :cond_3
    move-object v9, v5

    move-object v5, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    .line 9
    :cond_4
    :try_start_3
    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 11
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    const/4 p0, -0x1

    .line 12
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 13
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 14
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final N(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/l;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    move-object v1, p1

    move-object p1, v8

    move-object v8, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    move-object v11, v7

    move-object v7, v2

    move-object v2, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p2

    move-object v5, v1

    move-object v6, v2

    move-object p2, p0

    move-object v1, p2

    move-object v2, p1

    move-object p1, v1

    move-object p0, v4

    move-object v4, v0

    move-object v0, p1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$2:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$5:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$6:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->L$7:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfFirst$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_3

    return-object v5

    :cond_3
    move-object v9, v5

    move-object v5, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 7
    iget p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    .line 9
    :cond_4
    :try_start_3
    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    const/4 p0, -0x1

    .line 12
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 13
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final O(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v10

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, -0x1

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 5
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, 0x0

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x0

    .line 6
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v7, v2

    move-object v6, v4

    move-object p2, p0

    move-object v2, p1

    move-object v4, v0

    move-object p1, p2

    move-object v0, p1

    move-object p0, v5

    move-object v5, v1

    move-object v1, v0

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$1:Ljava/lang/Object;

    iput-object v8, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$2:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$3:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$4:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$6:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$7:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->L$8:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$indexOfLast$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v5

    move-object v5, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput p2, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 9
    :cond_4
    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 12
    iget p0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 13
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final P(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$5:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object v6, v5

    move-object p0, v2

    move-object v2, v6

    move-object v8, v4

    move-object v4, p1

    move-object p1, v8

    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v7, v6

    move-object v8, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, v4

    move-object v4, v8

    .line 7
    :goto_2
    :try_start_4
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$2:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v6, v1, :cond_5

    return-object v1

    :cond_5
    move-object v8, v6

    move-object v6, p0

    move-object p0, p1

    move-object p1, v8

    :goto_3
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 8
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p0, v6

    goto :goto_2

    .line 9
    :cond_6
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    .line 10
    :cond_7
    :try_start_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 11
    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 12
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final Q(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v11

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v7, v2

    move-object v6, v3

    move-object p2, p0

    move-object v2, p1

    move-object v3, v0

    move-object p1, p2

    move-object v0, p1

    move-object p0, v5

    move-object v5, v1

    move-object v1, v0

    :goto_1
    :try_start_2
    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$2:Ljava/lang/Object;

    iput-object v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$3:Ljava/lang/Object;

    iput-object p2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$4:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$6:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$7:Ljava/lang/Object;

    iput-object p0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->L$8:Ljava/lang/Object;

    iput v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$last$3;->label:I

    invoke-interface {p0, v3}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_3

    return-object v5

    :cond_3
    move-object v11, v5

    move-object v5, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v11

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 8
    iput-object p2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 9
    iput-boolean v4, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 12
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_6

    .line 13
    iget-object p0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    .line 14
    :cond_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 15
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 16
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final R(Lkotlinx/coroutines/channels/p;Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TE;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v10

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, -0x1

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 5
    new-instance v2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v4, 0x0

    iput v4, v2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v4, 0x0

    .line 6
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v7, v2

    move-object v6, v4

    move-object p2, p0

    move-object v2, p1

    move-object v4, v0

    move-object p1, p2

    move-object v0, p1

    move-object p0, v5

    move-object v5, v1

    move-object v1, v0

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$1:Ljava/lang/Object;

    iput-object v8, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$2:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$3:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$4:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$6:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$7:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->L$8:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastIndexOf$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v5

    move-object v5, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-static {v2, p2}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p2

    if-eqz p2, :cond_4

    .line 8
    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    iput p2, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 9
    :cond_4
    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 11
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    .line 12
    iget p0, v9, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 13
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 14
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final S(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$5:Ljava/lang/Object;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v7, v6

    move-object v5, v3

    move-object p0, p1

    move-object p1, v2

    move-object v2, v7

    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p1, :cond_5

    .line 6
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v3

    .line 7
    :cond_5
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    move-object v2, p0

    :goto_2
    move-object p0, v6

    .line 8
    :try_start_5
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v6, v1, :cond_6

    return-object v1

    :cond_6
    move-object v8, v6

    move-object v6, p0

    move-object p0, p1

    move-object p1, v8

    :goto_3
    :try_start_6
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 9
    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    goto :goto_2

    .line 10
    :cond_7
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v6, p0

    move-object p0, p1

    .line 11
    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 12
    invoke-static {v6, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final T(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/l;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v8

    move-object v8, v6

    move-object v6, v10

    move-object v11, v3

    move-object v3, v0

    move-object v0, v11

    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p2

    move-object v5, v1

    move-object v6, v3

    move-object p2, p0

    move-object v1, p2

    move-object v3, v0

    move-object v0, v1

    move-object p0, v2

    move-object v2, p1

    move-object p1, v0

    :goto_1
    :try_start_2
    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$2:Ljava/lang/Object;

    iput-object p2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$5:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$6:Ljava/lang/Object;

    iput-object p0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->L$7:Ljava/lang/Object;

    iput v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$lastOrNull$3;->label:I

    invoke-interface {p0, v3}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v5

    move-object v5, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Ljava/lang/Boolean;

    invoke-virtual {v9}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v9

    if-eqz v9, :cond_4

    .line 7
    iput-object p2, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 8
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 10
    iget-object p0, v8, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 11
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 12
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final U(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v10

    move-object v10, v3

    move-object v3, v7

    move-object v7, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v12, v0

    move-object v8, v1

    move-object v9, v2

    move-object v11, v3

    move-object v10, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v5, v3

    :goto_1
    :try_start_2
    iput-object v0, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v12, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object v3, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$6:Ljava/lang/Object;

    iput-object v11, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$7:Ljava/lang/Object;

    iput-object v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$8:Ljava/lang/Object;

    iput-object v10, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->L$9:Ljava/lang/Object;

    iput v4, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$1;->label:I

    invoke-interface {v10, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v9, :cond_3

    return-object v9

    :cond_3
    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    new-instance v14, Lkotlin/collections/f0;

    iget v15, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v14, v15, v0}, Lkotlin/collections/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lkotlin/collections/f0;->a()I

    move-result v0

    invoke-virtual {v14}, Lkotlin/collections/f0;->b()Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v4}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_4

    invoke-interface {v6, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v13

    const/4 v4, 0x1

    goto :goto_1

    .line 8
    :cond_5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v3, v11}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    move-object v1, v0

    .line 10
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final V(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$14:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$13:Ljava/lang/Object;

    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->I$0:I

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$12:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/f0;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$11:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$10:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/b/p;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/t;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/b/p;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/t;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v13

    move-object v13, v3

    move-object v3, v8

    move-object/from16 v8, v16

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v6

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v6, v3

    :goto_1
    :try_start_3
    iput-object v0, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v7, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v8, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object v12, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object v6, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object v13, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    iput v5, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    invoke-interface {v13, v10}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v11, :cond_4

    return-object v11

    :cond_4
    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v11

    move-object v11, v1

    move-object v1, v10

    move-object v10, v9

    move-object v9, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v8

    move-object v8, v7

    move-object v7, v12

    move-object/from16 v12, v18

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    new-instance v15, Lkotlin/collections/f0;

    iget v5, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v5, 0x1

    iput v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v15, v5, v0}, Lkotlin/collections/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15}, Lkotlin/collections/f0;->a()I

    move-result v4

    invoke-virtual {v15}, Lkotlin/collections/f0;->b()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p0, v2

    .line 7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v5}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_6

    iput-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$9:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$10:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$11:Ljava/lang/Object;

    iput-object v15, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$12:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->I$0:I

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$13:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->L$14:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedNotNullTo$3;->label:I

    invoke-interface {v8, v2, v1}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p0

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-object v2, v4

    move-object/from16 v16, v8

    move-object v8, v3

    move-object v3, v13

    move-object/from16 v13, v16

    :goto_3
    move-object/from16 v16, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v2

    move-object v2, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v13

    move-object v13, v3

    move-object v3, v8

    move-object v8, v12

    move-object v12, v7

    move-object/from16 v7, v17

    goto :goto_4

    :cond_6
    move-object/from16 v4, p0

    const/4 v0, 0x2

    move-object v2, v9

    move-object v9, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v4

    move-object/from16 v16, v12

    move-object v12, v7

    move-object v7, v8

    move-object/from16 v8, v16

    :goto_4
    move-object v0, v14

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 8
    :cond_7
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v3, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v8

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_5
    move-object v1, v0

    .line 10
    :goto_6
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final W(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$7:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$6:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$5:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$1:Ljava/lang/Object;

    check-cast v11, Ljava/util/Collection;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v7

    move-object v7, v1

    move-object v1, v8

    move-object v8, v2

    move-object v2, v15

    move-object/from16 v16, v9

    move-object v9, v3

    move-object v3, v5

    move-object v5, v11

    move-object/from16 v11, v16

    move-object/from16 v17, v10

    move-object v10, v6

    move-object/from16 v6, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, p2

    move-object v11, v0

    move-object v7, v1

    move-object v8, v2

    move-object v10, v3

    move-object v9, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object/from16 v5, p1

    :goto_1
    :try_start_2
    iput-object v0, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$0:Ljava/lang/Object;

    iput-object v5, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$1:Ljava/lang/Object;

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$2:Ljava/lang/Object;

    iput-object v11, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$3:Ljava/lang/Object;

    iput-object v1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$5:Ljava/lang/Object;

    iput-object v10, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$6:Ljava/lang/Object;

    iput-object v3, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$7:Ljava/lang/Object;

    iput-object v9, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->L$8:Ljava/lang/Object;

    iput v4, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$1;->label:I

    invoke-interface {v9, v7}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v8, :cond_3

    return-object v8

    :cond_3
    move-object v15, v12

    move-object v12, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget v13, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v11, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v13}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v13

    invoke-interface {v6, v13, v0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    invoke-interface {v5, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object v0, v12

    goto :goto_1

    .line 7
    :cond_4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v2, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v5

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 9
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final X(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 20
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$10:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$9:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/t;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v13

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v10

    move-object v10, v2

    move-object v2, v8

    move-object/from16 v8, v17

    move-object/from16 v18, v12

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v6, v18

    move-object/from16 v19, v11

    move-object v11, v7

    move-object/from16 v7, v19

    goto :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/t;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v10

    move-object v10, v2

    move-object v2, v8

    move-object/from16 v8, v16

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v7, p2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object v12, v6

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object/from16 v6, p1

    :goto_1
    :try_start_3
    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v3, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v12, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    iput v5, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    invoke-interface {v12, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_4

    return-object v10

    :cond_4
    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v9

    move-object v9, v1

    move-object/from16 v1, v17

    move-object/from16 v18, v6

    move-object v6, v3

    move-object v3, v12

    move-object/from16 v12, v18

    move-object/from16 v19, v11

    move-object v11, v7

    move-object/from16 v7, v19

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v3}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget v14, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v15, v14, 0x1

    iput v15, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {v14}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v14

    invoke-interface {v11, v14, v0}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$9:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->L$10:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapIndexedTo$3;->label:I

    invoke-interface {v12, v14, v1}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    move-object v0, v13

    move-object/from16 v16, v9

    move-object v9, v1

    move-object/from16 v1, v16

    move-object/from16 v17, v12

    move-object v12, v3

    move-object v3, v6

    move-object/from16 v6, v17

    move-object/from16 v18, v11

    move-object v11, v7

    move-object/from16 v7, v18

    goto :goto_1

    .line 7
    :cond_6
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v2, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v12

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 9
    :goto_4
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final Y(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, p2

    move-object p2, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v8, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v8

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    if-eqz p3, :cond_4

    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final Z(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$10:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$9:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v2

    goto/16 :goto_4

    :cond_3
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object p1, p0

    move-object p2, p1

    move-object p3, p2

    :goto_1
    :try_start_3
    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    invoke-interface {v7, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_4

    return-object v6

    :cond_4
    move-object v10, v8

    move-object v8, p0

    move-object p0, v7

    move-object v7, v0

    move-object v0, v5

    move-object v5, p1

    move-object p1, p3

    move-object p3, v10

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_7

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v6, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    if-eqz v9, :cond_6

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$8:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$9:Ljava/lang/Object;

    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->L$10:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapNotNullTo$3;->label:I

    invoke-interface {v7, v9, v0}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    :goto_3
    move-object p3, p1

    move-object p1, v5

    move-object v5, v0

    move-object v0, v7

    move-object v7, p0

    move-object p0, v8

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    goto :goto_1

    :cond_6
    move-object p3, p1

    move-object p1, v5

    move-object v5, v0

    move-object v0, v7

    move-object v7, p0

    move-object p0, v8

    move-object v10, v6

    move-object v6, v1

    move-object v1, v10

    goto :goto_1

    .line 6
    :cond_7
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {p2, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v7

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 8
    :goto_4
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final a(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$all$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v8, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 7
    :cond_5
    :try_start_3
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final a0(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, p2

    move-object p2, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v8, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v8

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final b(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/p;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/p;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    if-ne v0, v1, :cond_3

    return-object v1

    .line 5
    :cond_3
    :goto_1
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 6
    :goto_2
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 7
    invoke-static {v1, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final b0(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$9:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p3, p1

    move-object p1, v5

    move-object v5, v0

    move-object v0, v7

    move-object v7, p0

    move-object p0, v8

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v2

    goto/16 :goto_3

    :cond_3
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v0, p1

    move-object v1, p2

    move-object v2, p3

    move-object p1, p0

    move-object p2, p1

    move-object p3, p2

    :goto_1
    :try_start_3
    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    invoke-interface {v7, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_4

    return-object v6

    :cond_4
    move-object v10, v8

    move-object v8, p0

    move-object p0, v7

    move-object v7, v0

    move-object v0, v5

    move-object v5, p1

    move-object p1, p3

    move-object p3, v10

    move-object v11, v6

    move-object v6, v1

    move-object v1, v11

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v6, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$3:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$5:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$6:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$7:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$8:Ljava/lang/Object;

    iput-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->L$9:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$mapTo$3;->label:I

    invoke-interface {v7, v9, v0}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p3

    if-ne p3, v1, :cond_5

    return-object v1

    :cond_5
    move-object p3, p1

    move-object p1, v5

    move-object v5, v0

    move-object v0, v7

    move-object v7, p0

    move-object p0, v8

    move-object v10, v6

    move-object v6, v1

    move-object v1, v10

    goto :goto_1

    .line 6
    :cond_6
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {p2, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v7

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final c(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$any$3;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v8, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 7
    :cond_5
    :try_start_3
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    const/4 p0, 0x0

    .line 9
    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final c0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;

    iget v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$6:Ljava/lang/Object;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Throwable;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/l;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v5

    move-object v5, v1

    move-object v1, v10

    :goto_1
    move-object v10, v9

    move-object v9, v15

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v10

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Throwable;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v15

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v9

    goto/16 :goto_5

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    .line 5
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_4

    return-object v3

    :cond_4
    move-object v11, v1

    move-object v10, v4

    move-object v9, v5

    move-object v4, v11

    move-object v15, v8

    move-object v8, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_5

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v1, v9}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v5

    .line 7
    :cond_5
    :try_start_3
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {v10, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    move-object v12, v11

    move-object v11, v10

    move-object v15, v4

    move-object v4, v0

    move-object v0, v15

    .line 9
    :goto_3
    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$6:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->L$7:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxBy$1;->label:I

    invoke-interface {v8, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_6

    return-object v3

    :cond_6
    move-object v15, v8

    move-object v8, v0

    move-object v0, v10

    goto/16 :goto_1

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-interface {v11, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Comparable;

    .line 12
    invoke-interface {v5, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-gez v14, :cond_7

    move-object v4, v0

    move-object v5, v13

    :cond_7
    move-object v0, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_3

    .line 13
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v1, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v6}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v4

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 15
    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v7}, Lkotlin/jvm/internal/q;->b(I)V

    .line 16
    invoke-static {v1, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v7}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final d(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v2

    move-object v2, p1

    move-object p1, v9

    move-object v9, v6

    move-object v6, v1

    move-object v1, v4

    move-object v4, v8

    move-object v8, v11

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    move-object p0, v4

    move-object v4, p1

    move-object p1, v2

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$1:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$2:Ljava/lang/Object;

    iput-object v8, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$3:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$4:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$5:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$6:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$7:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->L$8:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associate$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_3

    return-object v6

    :cond_3
    move-object v11, v7

    move-object v7, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-interface {v4, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v9, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 7
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v1, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v9

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 9
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v1, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final d0(Lkotlinx/coroutines/channels/p;Ljava/util/Comparator;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Comparator;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Comparator;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object v7, v5

    move-object v6, p1

    move-object p1, v7

    move-object p0, p2

    move-object p2, v2

    move-object v2, v3

    :goto_1
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_5

    .line 6
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v3

    .line 7
    :cond_5
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    move-object v2, p1

    move-object p1, p0

    :goto_2
    move-object p0, v5

    .line 8
    :try_start_5
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$maxWith$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v5

    move-object v5, p0

    move-object p0, p2

    move-object p2, v9

    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 9
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-interface {v6, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-gez v8, :cond_7

    goto :goto_2

    :cond_7
    move-object p2, p0

    goto :goto_2

    .line 11
    :cond_8
    invoke-static {v5, v3}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 12
    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 13
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final e(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/Map<",
            "TK;+TE;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v2

    move-object v2, p1

    move-object p1, v9

    move-object v9, v6

    move-object v6, v1

    move-object v1, v4

    move-object v4, v8

    move-object v8, v11

    move-object v12, v5

    move-object v5, v0

    move-object v0, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/LinkedHashMap;

    invoke-direct {p2}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object v2, v1

    move-object p0, v4

    move-object v4, p1

    move-object p1, v2

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$0:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$1:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$2:Ljava/lang/Object;

    iput-object v8, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$3:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$4:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$5:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$6:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$7:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->L$8:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v6, :cond_3

    return-object v6

    :cond_3
    move-object v11, v7

    move-object v7, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v11

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-interface {v4, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v9, v10, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 7
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v1, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v9

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 9
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v1, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final e0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "R::",
            "Ljava/lang/Comparable<",
            "-TR;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TR;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v1, p0

    move-object/from16 v0, p2

    instance-of v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;

    if-eqz v2, :cond_0

    move-object v2, v0

    check-cast v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;

    iget v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;

    invoke-direct {v2, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    const/4 v5, 0x0

    const/4 v6, 0x2

    const/4 v7, 0x1

    if-eqz v4, :cond_3

    if-eq v4, v7, :cond_2

    if-ne v4, v6, :cond_1

    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$7:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Comparable;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$6:Ljava/lang/Object;

    iget-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Throwable;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/l;

    iget-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v5

    move-object v5, v1

    move-object v1, v10

    :goto_1
    move-object v10, v9

    move-object v9, v15

    goto/16 :goto_4

    :catchall_0
    move-exception v0

    move-object v2, v0

    move-object v1, v10

    goto/16 :goto_5

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    check-cast v8, Ljava/lang/Throwable;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v15, v8

    move-object v8, v1

    move-object v1, v9

    move-object v9, v15

    goto :goto_2

    :catchall_1
    move-exception v0

    move-object v2, v0

    move-object v1, v9

    goto/16 :goto_5

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v0

    .line 5
    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    move-object/from16 v4, p1

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    iput v7, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    invoke-interface {v0, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v3, :cond_4

    return-object v3

    :cond_4
    move-object v11, v1

    move-object v10, v4

    move-object v9, v5

    move-object v4, v11

    move-object v15, v8

    move-object v8, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-nez v0, :cond_5

    const/4 v0, 0x3

    invoke-static {v0}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v1, v9}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v5

    .line 7
    :cond_5
    :try_start_3
    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 8
    invoke-interface {v10, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Comparable;

    move-object v12, v11

    move-object v11, v10

    move-object v15, v4

    move-object v4, v0

    move-object v0, v15

    .line 9
    :goto_3
    iput-object v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$0:Ljava/lang/Object;

    iput-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$1:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$2:Ljava/lang/Object;

    iput-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$4:Ljava/lang/Object;

    iput-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$5:Ljava/lang/Object;

    iput-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$6:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->L$7:Ljava/lang/Object;

    iput v6, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minBy$1;->label:I

    invoke-interface {v8, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v10

    if-ne v10, v3, :cond_6

    return-object v3

    :cond_6
    move-object v15, v8

    move-object v8, v0

    move-object v0, v10

    goto/16 :goto_1

    :goto_4
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 10
    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 11
    invoke-interface {v11, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Comparable;

    .line 12
    invoke-interface {v5, v13}, Ljava/lang/Comparable;->compareTo(Ljava/lang/Object;)I

    move-result v14
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    if-lez v14, :cond_7

    move-object v4, v0

    move-object v5, v13

    :cond_7
    move-object v0, v8

    move-object v8, v9

    move-object v9, v10

    goto :goto_3

    .line 13
    :cond_8
    invoke-static {v6}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v1, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v6}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v4

    :catchall_2
    move-exception v0

    move-object v2, v0

    .line 15
    :goto_5
    :try_start_4
    throw v2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v7}, Lkotlin/jvm/internal/q;->b(I)V

    .line 16
    invoke-static {v1, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v7}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final f(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/util/Map<",
            "TK;+TV;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$9:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$8:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$7:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$6:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$4:Ljava/lang/Object;

    check-cast v5, Ljava/util/Map;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/l;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v5

    move-object v5, p2

    move-object p2, v6

    move-object v6, v0

    move-object v0, v2

    move-object v2, v8

    move-object v8, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p3, Ljava/util/LinkedHashMap;

    invoke-direct {p3}, Ljava/util/LinkedHashMap;-><init>()V

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p3

    move-object v6, v0

    move-object v7, v1

    move-object v5, v2

    move-object p3, p0

    move-object v0, p3

    move-object v1, v0

    move-object v2, p1

    move-object p1, v1

    move-object p0, v4

    move-object v4, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$0:Ljava/lang/Object;

    iput-object v2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$1:Ljava/lang/Object;

    iput-object v4, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$2:Ljava/lang/Object;

    iput-object p2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$3:Ljava/lang/Object;

    iput-object v8, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$4:Ljava/lang/Object;

    iput-object p3, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$5:Ljava/lang/Object;

    iput-object v0, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$6:Ljava/lang/Object;

    iput-object v5, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$7:Ljava/lang/Object;

    iput-object v1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$8:Ljava/lang/Object;

    iput-object p0, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->L$9:Ljava/lang/Object;

    iput v3, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateBy$2;->label:I

    invoke-interface {p0, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v7, :cond_3

    return-object v7

    :cond_3
    move-object v11, v4

    move-object v4, p3

    move-object p3, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v11

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 6
    invoke-interface {v2, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v9, v10, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v4

    move-object v4, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 7
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v5}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v9

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 9
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final f0(Lkotlinx/coroutines/channels/p;Ljava/util/Comparator;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Ljava/util/Comparator<",
            "-TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v5, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Comparator;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Comparator;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p0

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object v7, v5

    move-object v6, p1

    move-object p1, v7

    move-object p0, p2

    move-object p2, v2

    move-object v2, v3

    :goto_1
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-nez p2, :cond_5

    .line 6
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v3

    .line 7
    :cond_5
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    move-object v3, v2

    move-object v2, p1

    move-object p1, p0

    :goto_2
    move-object p0, v5

    .line 8
    :try_start_5
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$2:Ljava/lang/Object;

    iput-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->L$6:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$minWith$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    if-ne v5, v1, :cond_6

    return-object v1

    :cond_6
    move-object v9, v5

    move-object v5, p0

    move-object p0, p2

    move-object p2, v9

    :goto_3
    :try_start_6
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_8

    .line 9
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 10
    invoke-interface {v6, p0, p2}, Ljava/util/Comparator;->compare(Ljava/lang/Object;Ljava/lang/Object;)I

    move-result v8
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0

    if-lez v8, :cond_7

    goto :goto_2

    :cond_7
    move-object p2, p0

    goto :goto_2

    .line 11
    :cond_8
    invoke-static {v5, v3}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_1
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 12
    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    :catchall_2
    move-exception p1

    .line 13
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final g(Lkotlinx/coroutines/channels/p;Ljava/util/Map;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TM;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/coroutines/c<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v9, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v1, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final g0(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$3:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/p;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$2:Ljava/lang/Object;

    check-cast p0, Ljava/lang/Throwable;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$1:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/p;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, p1

    move-object p1, p0

    move-object p0, v1

    goto :goto_1

    :catchall_0
    move-exception p0

    goto :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->L$3:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v1, :cond_3

    return-object v1

    :cond_3
    :goto_1
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_4

    goto :goto_2

    :cond_4
    const/4 v3, 0x0

    :goto_2
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 5
    invoke-static {p0, p1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v0

    :catchall_1
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 6
    :goto_3
    :try_start_2
    throw p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    :catchall_2
    move-exception p1

    .line 7
    invoke-static {v1, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final h(Lkotlinx/coroutines/channels/p;Ljava/util/Map;Lkotlin/jvm/b/l;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TM;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TK;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;+TV;>;",
            "Lkotlin/coroutines/c<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;

    if-eqz v0, :cond_0

    move-object v0, p4

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;

    invoke-direct {v0, p4}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$6:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$5:Ljava/lang/Object;

    check-cast p3, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlin/jvm/b/l;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p4}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v5

    move-object v5, v9

    move-object v10, v2

    move-object v2, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p4}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p4, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p1

    move-object v1, p2

    move-object p1, p3

    move-object p2, p1

    move-object p0, v2

    move-object v2, p4

    move-object p4, p2

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$0:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$1:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$2:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$3:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$4:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$5:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$6:Ljava/lang/Object;

    iput-object p4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$7:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->L$8:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateByTo$3;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v9, v0

    move-object v0, p4

    move-object p4, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    check-cast p4, Ljava/lang/Boolean;

    invoke-virtual {p4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p4

    if-eqz p4, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p4

    .line 5
    invoke-interface {v1, p4}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v4, p4}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p4

    invoke-interface {v6, v8, p4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p4, v0

    move-object v0, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {p3, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v6

    :catchall_1
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_2

    :catchall_2
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final h0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Boolean;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$none$3;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v8, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    const/4 p0, 0x0

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 7
    :cond_5
    :try_start_3
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    invoke-static {v3}, Lkotlin/coroutines/jvm/internal/a;->a(Z)Ljava/lang/Boolean;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final i(Lkotlinx/coroutines/channels/p;Ljava/util/Map;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TM;",
            "Lkotlin/jvm/b/l<",
            "-TE;+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;",
            "Lkotlin/coroutines/c<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$associateTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v9, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Lkotlin/Pair;

    invoke-virtual {p3}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p3}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p3

    invoke-interface {v1, v8, p3}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final i0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/Pair<",
            "+",
            "Ljava/util/List<",
            "+TE;>;+",
            "Ljava/util/List<",
            "+TE;>;>;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/util/ArrayList;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$2:Ljava/lang/Object;

    check-cast v7, Ljava/util/ArrayList;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v11

    move-object v12, v4

    move-object v4, v0

    move-object v0, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/4 v4, 0x0

    .line 6
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v7, v2

    move-object v6, v4

    move-object p2, p0

    move-object v2, p1

    move-object v4, v0

    move-object p1, p2

    move-object v0, p1

    move-object p0, v5

    move-object v5, v1

    move-object v1, v0

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$1:Ljava/lang/Object;

    iput-object v8, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$2:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$3:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$4:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$5:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$6:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$7:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->L$8:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$partition$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_3

    return-object v5

    :cond_3
    move-object v11, v5

    move-object v5, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v11

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_4

    .line 8
    invoke-virtual {v9, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_3

    .line 9
    :cond_4
    invoke-virtual {v8, p2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    :goto_3
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 10
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 12
    new-instance p0, Lkotlin/Pair;

    invoke-direct {p0, v9, v8}, Lkotlin/Pair;-><init>(Ljava/lang/Object;Ljava/lang/Object;)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 13
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 14
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlinx/coroutines/channels/p<",
            "*>;",
            "Ljava/lang/Throwable;",
            ")V"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p1, :cond_2

    .line 1
    instance-of v1, p1, Ljava/util/concurrent/CancellationException;

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Ljava/util/concurrent/CancellationException;

    if-eqz v0, :cond_1

    goto :goto_1

    :cond_1
    const-string v0, "Channel was consumed, consumer had failed"

    invoke-static {v0, p1}, Lkotlinx/coroutines/h1;->a(Ljava/lang/String;Ljava/lang/Throwable;)Ljava/util/concurrent/CancellationException;

    move-result-object p1

    move-object v0, p1

    .line 2
    :cond_2
    :goto_1
    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/p;->a(Ljava/util/concurrent/CancellationException;)V

    return-void
.end method

.method public static final j0(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    const-string v0, "null cannot be cast to non-null type kotlinx.coroutines.channels.ReceiveChannel<E?>"

    .line 1
    invoke-static {p0, v0}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    invoke-interface {p0, p1}, Lkotlinx/coroutines/channels/p;->A(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public static final k(Lkotlinx/coroutines/channels/e;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/e<",
            "TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/e;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/l;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/e;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_2

    move-object v8, v2

    move-object v2, p1

    move-object p1, v7

    move-object v7, v8

    move-object v9, v1

    move-object v1, v0

    move-object v0, v6

    move-object v6, v9

    goto :goto_2

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/e;->o()Lkotlinx/coroutines/channels/p;

    move-result-object v2

    .line 5
    :try_start_1
    invoke-interface {v2}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, v1

    move-object v6, v2

    move-object v1, v0

    move-object v0, p1

    move-object p1, p0

    move-object p0, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$0:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$1:Ljava/lang/Object;

    iput-object p2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$2:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$3:Ljava/lang/Object;

    iput-object v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$4:Ljava/lang/Object;

    iput-object p0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->L$5:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$1;->label:I

    invoke-interface {p0, v1}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v8, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v0, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v7, v3, v4, v3}, Lkotlinx/coroutines/channels/p$a;->a(Lkotlinx/coroutines/channels/p;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    :catchall_0
    move-exception p0

    move-object v2, v7

    goto :goto_3

    :catchall_1
    move-exception p0

    move-object v2, v6

    goto :goto_3

    :catchall_2
    move-exception p0

    .line 8
    :goto_3
    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v2, v3, v4, v3}, Lkotlinx/coroutines/channels/p$a;->a(Lkotlinx/coroutines/channels/p;Ljava/util/concurrent/CancellationException;ILjava/lang/Object;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p0
.end method

.method public static final k0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::TS;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/p<",
            "-TS;-TE;+TS;>;",
            "Lkotlin/coroutines/c<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$6:Ljava/lang/Object;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/p;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v6

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, p0

    move-object v6, p1

    move-object p1, v7

    move-object p0, p2

    move-object p2, v5

    move-object v5, p1

    :goto_1
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v7

    move-object v7, v6

    move-object v9, p1

    move-object p1, p0

    move-object p0, v5

    move-object v5, v2

    move-object v2, v9

    .line 7
    :goto_2
    :try_start_4
    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$2:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$5:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduce$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v6, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, v6

    move-object v6, p0

    move-object p0, p2

    move-object p2, v9

    :goto_3
    :try_start_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 8
    invoke-interface {p1}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v7, p0, p2}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p0, v6

    goto :goto_2

    .line 9
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v6, v5}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    .line 11
    :cond_7
    :try_start_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty channel can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 12
    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 13
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final l(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v7, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v2

    move-object v2, v7

    move-object v8, v5

    move-object v5, v1

    move-object v1, v8

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v5, p2

    move-object v4, v1

    move-object p2, p0

    move-object v1, p1

    move-object p1, p2

    move-object p0, v2

    move-object v2, v0

    move-object v0, p1

    :goto_1
    :try_start_2
    iput-object p1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$0:Ljava/lang/Object;

    iput-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$1:Ljava/lang/Object;

    iput-object p2, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$2:Ljava/lang/Object;

    iput-object v5, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$3:Ljava/lang/Object;

    iput-object v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$4:Ljava/lang/Object;

    iput-object p0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->L$5:Ljava/lang/Object;

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEach$3;->label:I

    invoke-interface {p0, v2}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v6, v4, :cond_3

    return-object v4

    :cond_3
    move-object v7, v4

    move-object v4, p2

    move-object p2, v6

    move-object v6, v5

    move-object v5, v7

    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v1, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v4

    move-object v4, v5

    move-object v5, v6

    goto :goto_1

    .line 5
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 6
    invoke-static {v4, v6}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 7
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final l0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/q;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "E::TS;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/q<",
            "-",
            "Ljava/lang/Integer;",
            "-TS;-TE;+TS;>;",
            "Lkotlin/coroutines/c<",
            "-TS;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$6:Ljava/lang/Object;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/q;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_3

    :catchall_0
    move-exception p0

    move-object v5, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/b/q;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_4

    :cond_3
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v2, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    invoke-interface {p2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v5, v1, :cond_4

    return-object v1

    :cond_4
    move-object v7, p0

    move-object v6, p1

    move-object p1, v7

    move-object p0, p2

    move-object p2, v5

    move-object v5, p1

    :goto_1
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    move-object v8, v6

    move-object v9, v7

    move-object v6, v2

    move-object v2, p0

    move-object p0, v5

    move-object v5, p1

    const/4 p1, 0x1

    .line 7
    :goto_2
    :try_start_4
    iput-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$1:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$5:Ljava/lang/Object;

    iput p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->I$0:I

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->L$6:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$reduceIndexed$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    if-ne v7, v1, :cond_5

    return-object v1

    :cond_5
    move-object v11, v7

    move-object v7, p0

    move-object p0, p2

    move-object p2, v11

    :goto_3
    :try_start_5
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 8
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p2

    add-int/lit8 p1, p1, 0x1

    invoke-interface {v2}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v8, p2, p0, v10}, Lkotlin/jvm/b/q;->invoke(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    move-object p0, v7

    goto :goto_2

    .line 9
    :cond_6
    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v7, v6}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    .line 11
    :cond_7
    :try_start_6
    new-instance p0, Ljava/lang/UnsupportedOperationException;

    const-string p1, "Empty channel can\'t be reduced."

    invoke-direct {p0, p1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 12
    :goto_4
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 13
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final m(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-",
            "Lkotlin/collections/f0<",
            "+TE;>;",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v6

    move-object v6, v1

    move-object v1, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v10

    move-object v10, v9

    move-object v9, v15

    move-object/from16 v16, v7

    move-object v7, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v0

    move-object v6, v1

    move-object v7, v2

    move-object v9, v3

    move-object v8, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object/from16 v5, p1

    :goto_1
    :try_start_2
    iput-object v0, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$1:Ljava/lang/Object;

    iput-object v10, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$2:Ljava/lang/Object;

    iput-object v1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$3:Ljava/lang/Object;

    iput-object v2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$4:Ljava/lang/Object;

    iput-object v9, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$5:Ljava/lang/Object;

    iput-object v3, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$6:Ljava/lang/Object;

    iput-object v8, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->L$7:Ljava/lang/Object;

    iput v4, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$consumeEachIndexed$1;->label:I

    invoke-interface {v8, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v7, :cond_3

    return-object v7

    :cond_3
    move-object v15, v11

    move-object v11, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    new-instance v12, Lkotlin/collections/f0;

    iget v13, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v14, v13, 0x1

    iput v14, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v12, v13, v0}, Lkotlin/collections/f0;-><init>(ILjava/lang/Object;)V

    invoke-interface {v5, v12}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-object v0, v11

    goto :goto_1

    .line 7
    :cond_4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v2, v9}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 9
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final m0(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$5:Ljava/lang/Object;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/p;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    move-object v5, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto/16 :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p1, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    invoke-interface {v2, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v4, v1, :cond_4

    return-object v1

    :cond_4
    move-object v5, p0

    move-object v6, v5

    move-object p0, v2

    move-object v2, v6

    move-object v7, v4

    move-object v4, p1

    move-object p1, v7

    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 6
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 7
    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$0:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne p0, v1, :cond_5

    return-object v1

    :cond_5
    move-object v1, v4

    move-object v2, v5

    move-object v7, p1

    move-object p1, p0

    move-object p0, v7

    :goto_2
    :try_start_4
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    if-nez p1, :cond_6

    .line 8
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    .line 9
    :cond_6
    :try_start_5
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReceiveChannel has more than one element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    .line 10
    :cond_7
    :try_start_6
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel is empty."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_1

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 11
    :goto_3
    :try_start_7
    throw p0
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_3

    :catchall_3
    move-exception p1

    .line 12
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final n(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$5:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$4:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v4

    move-object v4, v0

    move-object v0, v6

    move-object v6, v9

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v1, v5

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p1, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p1}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p1, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p1

    move-object v5, v1

    move-object v6, v2

    move-object p1, p0

    move-object v1, p1

    move-object v2, v1

    move-object p0, v4

    move-object v4, v0

    move-object v0, v2

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$0:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$1:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$2:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$4:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_3

    return-object v5

    :cond_3
    move-object v9, v8

    move-object v8, p1

    move-object p1, v9

    :goto_2
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    .line 6
    iget p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p1, v3

    iput p1, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p1, v8

    goto :goto_1

    .line 7
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 8
    invoke-static {v1, v6}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    .line 9
    iget p0, v7, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v1, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 11
    invoke-static {v1, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final n0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$8:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$7:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$6:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$5:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$4:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$3:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$2:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$1:Ljava/lang/Object;

    check-cast v8, Lkotlin/jvm/b/l;

    iget-object v9, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$0:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v11, v1

    move-object v1, p1

    move-object p1, v9

    move-object v9, v7

    move-object v7, v2

    move-object v2, v8

    move-object v8, v6

    move-object v6, v11

    move-object v12, v3

    move-object v3, v0

    move-object v0, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v3

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v3, p2, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    new-instance v2, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v2}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v5, 0x0

    iput-boolean v5, v2, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v8, p2

    move-object v7, v2

    move-object v6, v3

    move-object p2, p0

    move-object v2, p1

    move-object v3, v0

    move-object p1, p2

    move-object v0, p1

    move-object p0, v5

    move-object v5, v1

    move-object v1, v0

    :goto_1
    :try_start_2
    iput-object p1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$0:Ljava/lang/Object;

    iput-object v2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$1:Ljava/lang/Object;

    iput-object v8, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$2:Ljava/lang/Object;

    iput-object v7, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$3:Ljava/lang/Object;

    iput-object p2, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$4:Ljava/lang/Object;

    iput-object v0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$5:Ljava/lang/Object;

    iput-object v6, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$6:Ljava/lang/Object;

    iput-object v1, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$7:Ljava/lang/Object;

    iput-object p0, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->L$8:Ljava/lang/Object;

    iput v4, v3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$single$3;->label:I

    invoke-interface {p0, v3}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v9

    if-ne v9, v5, :cond_3

    return-object v5

    :cond_3
    move-object v11, v5

    move-object v5, p2

    move-object p2, v9

    move-object v9, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v11

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 7
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 8
    iget-boolean v10, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v10, :cond_4

    .line 9
    iput-object p2, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 10
    iput-boolean v4, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    goto :goto_3

    .line 11
    :cond_4
    new-instance p0, Ljava/lang/IllegalArgumentException;

    const-string p1, "ReceiveChannel contains more than one matching element."

    invoke-direct {p0, p1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p0

    :cond_5
    :goto_3
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    move-object v8, v9

    goto :goto_1

    .line 12
    :cond_6
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 13
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 14
    iget-boolean p0, v8, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-eqz p0, :cond_7

    .line 15
    iget-object p0, v9, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object p0

    .line 16
    :cond_7
    new-instance p0, Ljava/util/NoSuchElementException;

    const-string p1, "ReceiveChannel contains no element matching the predicate."

    invoke-direct {p0, p1}, Ljava/util/NoSuchElementException;-><init>(Ljava/lang/String;)V

    throw p0

    :catchall_1
    move-exception p0

    goto :goto_4

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 17
    :goto_4
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 18
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final o(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/l;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    move-object v1, p1

    move-object p1, v8

    move-object v8, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    move-object v11, v7

    move-object v7, v2

    move-object v2, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p2

    move-object v5, v1

    move-object v6, v2

    move-object p2, p0

    move-object v1, p2

    move-object v2, p1

    move-object p1, v1

    move-object p0, v4

    move-object v4, v0

    move-object v0, p1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$2:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$5:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$6:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->L$7:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$count$3;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_3

    return-object v5

    :cond_3
    move-object v9, v5

    move-object v5, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    iget p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/2addr p2, v3

    iput p2, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 7
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    iget p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final o0(Lkotlinx/coroutines/channels/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p1

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;

    invoke-direct {v0, p1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$5:Ljava/lang/Object;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v1, Lkotlinx/coroutines/channels/p;

    iget-object v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v0, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto/16 :goto_2

    :catchall_0
    move-exception p0

    move-object v6, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p0

    goto :goto_3

    :cond_3
    invoke-static {p1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object p1

    .line 5
    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    invoke-interface {p1, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    if-ne v2, v1, :cond_4

    return-object v1

    :cond_4
    move-object v6, p0

    move-object v7, v6

    move-object v4, v5

    move-object p0, p1

    move-object p1, v2

    move-object v2, v7

    :goto_1
    :try_start_3
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-nez p1, :cond_5

    .line 6
    invoke-static {v6, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v5

    .line 7
    :cond_5
    :try_start_4
    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p1

    .line 8
    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$0:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$3:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->L$5:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$1;->label:I

    invoke-interface {p0, v0}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    if-ne p0, v1, :cond_6

    return-object v1

    :cond_6
    move-object v1, v4

    move-object v2, v6

    move-object v8, p1

    move-object p1, p0

    move-object p0, v8

    :goto_2
    :try_start_5
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    if-eqz p1, :cond_7

    .line 9
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v5

    :cond_7
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p0

    :catchall_2
    move-exception p1

    move-object v6, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_6
    throw p0
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    :catchall_3
    move-exception p1

    .line 11
    invoke-static {v6, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final p(Lkotlinx/coroutines/channels/p;ILkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 16
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;I",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move/from16 v0, p1

    move-object/from16 v1, p2

    instance-of v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;

    if-eqz v2, :cond_0

    move-object v2, v1

    check-cast v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;

    iget v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    const/high16 v4, -0x80000000

    and-int v5, v3, v4

    if-eqz v5, :cond_0

    sub-int/2addr v3, v4

    iput v3, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;

    invoke-direct {v2, v1}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v1, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v3

    .line 1
    iget v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    const/16 v5, 0x2e

    const-string v6, "ReceiveChannel doesn\'t contain element at index "

    const/4 v7, 0x1

    if-eqz v4, :cond_2

    if-ne v4, v7, :cond_1

    iget v0, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$1:I

    iget-object v4, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$5:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v8, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$3:Ljava/lang/Object;

    check-cast v9, Ljava/lang/Throwable;

    iget-object v10, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    iget v12, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$0:I

    iget-object v13, v2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v1}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v9

    move-object v9, v2

    move-object v2, v10

    move-object v10, v3

    move-object v3, v8

    move-object v8, v4

    move v4, v12

    move-object v12, v15

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v10

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v1}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v1, 0x0

    if-ltz v0, :cond_6

    const/4 v4, 0x0

    .line 4
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move v4, v0

    move-object v12, v1

    move-object v9, v2

    move-object v10, v3

    move-object v11, v8

    const/4 v8, 0x0

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    :try_start_2
    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$0:Ljava/lang/Object;

    iput v4, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$0:I

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$1:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$2:Ljava/lang/Object;

    iput-object v12, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$3:Ljava/lang/Object;

    iput-object v3, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$4:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->L$5:Ljava/lang/Object;

    iput v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->I$1:I

    iput v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAt$1;->label:I

    invoke-interface {v11, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v10, :cond_3

    return-object v10

    :cond_3
    move-object v15, v13

    move-object v13, v0

    move v0, v8

    move-object v8, v11

    move-object v11, v1

    move-object v1, v15

    :goto_2
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_5

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v1
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    add-int/lit8 v14, v0, 0x1

    if-ne v4, v0, :cond_4

    .line 5
    invoke-static {v2, v12}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v1

    :cond_4
    move-object v1, v11

    move-object v0, v13

    move-object v11, v8

    move v8, v14

    goto :goto_1

    .line 6
    :cond_5
    :try_start_3
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Number;->intValue()I

    .line 7
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    goto :goto_4

    .line 8
    :cond_6
    :try_start_4
    invoke-static/range {p1 .. p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Number;->intValue()I

    .line 9
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v5}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {v1, v0}, Ljava/lang/IndexOutOfBoundsException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    .line 10
    :goto_4
    :try_start_5
    throw v1
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    .line 11
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw v3
.end method

.method public static final p0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v5, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$8:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$7:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$6:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$BooleanRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/internal/Ref$ObjectRef;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$1:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/b/l;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v15, v7

    move-object v7, v1

    move-object v1, v9

    move-object v9, v3

    move-object v3, v6

    move-object v6, v12

    move-object v12, v11

    move-object v11, v10

    move-object v10, v15

    move-object/from16 v16, v8

    move-object v8, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$ObjectRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$ObjectRef;-><init>()V

    iput-object v4, v0, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 5
    new-instance v3, Lkotlin/jvm/internal/Ref$BooleanRef;

    invoke-direct {v3}, Lkotlin/jvm/internal/Ref$BooleanRef;-><init>()V

    const/4 v6, 0x0

    iput-boolean v6, v3, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    .line 6
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v12, v0

    move-object v7, v1

    move-object v8, v2

    move-object v11, v3

    move-object v10, v4

    move-object v9, v6

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object/from16 v6, p1

    :goto_1
    :try_start_2
    iput-object v0, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$0:Ljava/lang/Object;

    iput-object v6, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$1:Ljava/lang/Object;

    iput-object v12, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$2:Ljava/lang/Object;

    iput-object v11, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$3:Ljava/lang/Object;

    iput-object v1, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$4:Ljava/lang/Object;

    iput-object v2, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$5:Ljava/lang/Object;

    iput-object v10, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$6:Ljava/lang/Object;

    iput-object v3, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$7:Ljava/lang/Object;

    iput-object v9, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->L$8:Ljava/lang/Object;

    iput v5, v7, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$singleOrNull$3;->label:I

    invoke-interface {v9, v7}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v8, :cond_3

    return-object v8

    :cond_3
    move-object v15, v13

    move-object v13, v0

    move-object v0, v15

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v9}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 7
    invoke-interface {v6, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Ljava/lang/Boolean;

    invoke-virtual {v14}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v14

    if-eqz v14, :cond_5

    .line 8
    iget-boolean v14, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-eqz v14, :cond_4

    const/4 v0, 0x2

    invoke-static {v0}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v2, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v0}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v4

    .line 10
    :cond_4
    :try_start_3
    iput-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    .line 11
    iput-boolean v5, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    :cond_5
    move-object v0, v13

    goto :goto_1

    .line 12
    :cond_6
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 13
    invoke-static {v2, v10}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    .line 14
    iget-boolean v0, v11, Lkotlin/jvm/internal/Ref$BooleanRef;->element:Z

    if-nez v0, :cond_7

    return-object v4

    .line 15
    :cond_7
    iget-object v0, v12, Lkotlin/jvm/internal/Ref$ObjectRef;->element:Ljava/lang/Object;

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 16
    :goto_4
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 17
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final q(Lkotlinx/coroutines/channels/p;ILkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;I",
            "Lkotlin/jvm/b/l<",
            "-",
            "Ljava/lang/Integer;",
            "+TE;>;",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$5:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$1:I

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$4:Ljava/lang/Object;

    check-cast p2, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$3:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$2:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$1:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$0:I

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    move-object v0, p2

    move-object p2, v4

    move-object v4, v9

    move-object v10, v5

    move-object v5, v1

    move-object v1, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    if-gez p1, :cond_3

    .line 4
    :try_start_1
    invoke-static {p1}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p1

    invoke-interface {p2, p1}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    const/4 p2, 0x4

    invoke-static {p2}, Lkotlin/jvm/internal/q;->b(I)V

    .line 5
    invoke-static {p0, p3}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p2}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p1

    :cond_3
    const/4 v2, 0x0

    .line 6
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v6, p3

    move-object v5, v1

    move-object p3, p0

    move-object v1, p2

    move-object p2, p3

    move-object p0, v4

    move-object v4, v0

    move v0, p1

    move-object p1, p2

    :goto_1
    :try_start_3
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$0:Ljava/lang/Object;

    iput v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$0:I

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$2:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$3:Ljava/lang/Object;

    iput-object p3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$4:Ljava/lang/Object;

    iput v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->I$1:I

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->L$5:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrElse$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_4

    return-object v5

    :cond_4
    move-object v9, v7

    move-object v7, p1

    move p1, v2

    move-object v2, v6

    move v6, v0

    move-object v0, p3

    move-object p3, v9

    :goto_2
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    add-int/lit8 v8, p1, 0x1

    if-ne v6, p1, :cond_5

    const/4 p0, 0x3

    .line 7
    invoke-static {p0}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {p2, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p0}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p3

    :cond_5
    move-object p3, v0

    move v0, v6

    move-object p1, v7

    move-object v6, v2

    move v2, v8

    goto :goto_1

    .line 9
    :cond_6
    :try_start_4
    invoke-static {v6}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    invoke-interface {v1, p0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    const/4 p1, 0x2

    invoke-static {p1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 10
    invoke-static {p2, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {p1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 11
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 12
    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final q0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Integer;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Integer;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$5:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$4:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlin/jvm/b/l;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v1

    move-object v1, p1

    move-object p1, v8

    move-object v8, v6

    move-object v6, v10

    move-object v11, v4

    move-object v4, v0

    move-object v0, v11

    move-object v12, v7

    move-object v7, v2

    move-object v2, v12

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance p2, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {p2}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v2, 0x0

    iput v2, p2, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v7, p2

    move-object v5, v1

    move-object v6, v2

    move-object p2, p0

    move-object v1, p2

    move-object v2, p1

    move-object p1, v1

    move-object p0, v4

    move-object v4, v0

    move-object v0, p1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$1:Ljava/lang/Object;

    iput-object v7, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$2:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$3:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$4:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$5:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$6:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->L$7:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumBy$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v5, :cond_3

    return-object v5

    :cond_3
    move-object v10, v5

    move-object v5, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v10

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 6
    iget v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-interface {v2, p2}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    add-int/2addr v9, p2

    iput v9, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 7
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    iget p0, v8, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-static {p0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 10
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final r(Lkotlinx/coroutines/channels/p;ILkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;I",
            "Lkotlin/coroutines/c<",
            "-TE;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v4, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$4:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$1:I

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$3:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$2:Ljava/lang/Object;

    check-cast v5, Ljava/lang/Throwable;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$0:I

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v10, v5

    move-object v5, v0

    move-object v0, v2

    move-object v2, v1

    move v1, v7

    move-object v7, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v6

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    if-gez p1, :cond_3

    .line 4
    invoke-static {p0, v3}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v3

    :cond_3
    const/4 p2, 0x0

    .line 5
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object p2, p0

    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v0, p2

    move v1, p1

    move-object p0, v2

    const/4 v2, 0x0

    move-object p1, v0

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$0:Ljava/lang/Object;

    iput v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$0:I

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$1:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$2:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$3:Ljava/lang/Object;

    iput v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->I$1:I

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->L$4:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$elementAtOrNull$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v8, v6, :cond_4

    return-object v6

    :cond_4
    move-object v10, v8

    move-object v8, p1

    move p1, v2

    move-object v2, v6

    move-object v6, p2

    move-object p2, v10

    :goto_2
    :try_start_3
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    add-int/lit8 v9, p1, 0x1

    if-ne v1, p1, :cond_5

    .line 6
    invoke-static {v6, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object p2

    :cond_5
    move-object p2, v6

    move-object p1, v8

    move-object v6, v2

    move v2, v9

    goto :goto_1

    :cond_6
    invoke-static {v6, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v3

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 7
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 8
    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final r0(Lkotlinx/coroutines/channels/p;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 18
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            ">(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Double;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Ljava/lang/Double;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p2

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$6:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$5:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$4:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$3:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$2:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$DoubleRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$1:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$0:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v6

    move-object v6, v1

    move-object v1, v8

    move-object v8, v3

    move-object v3, v5

    move-object v5, v10

    move-object v10, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v7

    move-object v7, v2

    move-object/from16 v2, v17

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$DoubleRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$DoubleRef;-><init>()V

    const-wide/16 v5, 0x0

    iput-wide v5, v0, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v10, v0

    move-object v6, v1

    move-object v7, v2

    move-object v9, v3

    move-object v8, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object/from16 v5, p1

    :goto_1
    :try_start_2
    iput-object v0, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$0:Ljava/lang/Object;

    iput-object v5, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$1:Ljava/lang/Object;

    iput-object v10, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$2:Ljava/lang/Object;

    iput-object v1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$3:Ljava/lang/Object;

    iput-object v2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$4:Ljava/lang/Object;

    iput-object v9, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$5:Ljava/lang/Object;

    iput-object v3, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$6:Ljava/lang/Object;

    iput-object v8, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->L$7:Ljava/lang/Object;

    iput v4, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$sumByDouble$1;->label:I

    invoke-interface {v8, v6}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v11

    if-ne v11, v7, :cond_3

    return-object v7

    :cond_3
    move-object/from16 v16, v11

    move-object v11, v0

    move-object/from16 v0, v16

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    iget-wide v12, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-interface {v5, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->doubleValue()D

    move-result-wide v14

    add-double/2addr v12, v14

    iput-wide v12, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    move-object v0, v11

    goto :goto_1

    .line 7
    :cond_4
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 8
    invoke-static {v2, v9}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    .line 9
    iget-wide v0, v10, Lkotlin/jvm/internal/Ref$DoubleRef;->element:D

    invoke-static {v0, v1}, Lkotlin/coroutines/jvm/internal/a;->b(D)Ljava/lang/Double;

    move-result-object v0

    return-object v0

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 10
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final s(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    const/4 v4, 0x1

    if-eqz v3, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$8:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$7:Ljava/lang/Object;

    check-cast v6, Ljava/lang/Throwable;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$6:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$5:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$4:Ljava/lang/Object;

    check-cast v9, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$3:Ljava/lang/Object;

    check-cast v10, Lkotlinx/coroutines/channels/p;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$2:Ljava/lang/Object;

    check-cast v11, Lkotlin/jvm/b/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$1:Ljava/lang/Object;

    check-cast v12, Ljava/util/Collection;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$0:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object/from16 v16, v8

    move-object v8, v1

    move-object v1, v10

    move-object v10, v3

    move-object v3, v7

    move-object v7, v11

    move-object v11, v6

    move-object v6, v12

    move-object v12, v9

    move-object v9, v2

    move-object/from16 v2, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v7

    goto/16 :goto_4

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_1
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v5
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v12, v0

    move-object v8, v1

    move-object v9, v2

    move-object v11, v3

    move-object v10, v5

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v5, v3

    :goto_1
    :try_start_2
    iput-object v0, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$0:Ljava/lang/Object;

    iput-object v6, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$1:Ljava/lang/Object;

    iput-object v7, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$2:Ljava/lang/Object;

    iput-object v1, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$3:Ljava/lang/Object;

    iput-object v12, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$4:Ljava/lang/Object;

    iput-object v2, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$5:Ljava/lang/Object;

    iput-object v3, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$6:Ljava/lang/Object;

    iput-object v11, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$7:Ljava/lang/Object;

    iput-object v5, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$8:Ljava/lang/Object;

    iput-object v10, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->L$9:Ljava/lang/Object;

    iput v4, v8, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$1;->label:I

    invoke-interface {v10, v8}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v13

    if-ne v13, v9, :cond_3

    return-object v9

    :cond_3
    move-object/from16 v16, v13

    move-object v13, v0

    move-object/from16 v0, v16

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    new-instance v14, Lkotlin/collections/f0;

    iget v15, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v15, 0x1

    iput v4, v12, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v14, v15, v0}, Lkotlin/collections/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v14}, Lkotlin/collections/f0;->a()I

    move-result v0

    invoke-virtual {v14}, Lkotlin/collections/f0;->b()Ljava/lang/Object;

    move-result-object v4

    .line 7
    invoke-static {v0}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v7, v0, v4}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {v6, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object v0, v13

    const/4 v4, 0x1

    goto :goto_1

    .line 8
    :cond_5
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v3, v11}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_3
    move-object v1, v0

    .line 10
    :goto_4
    :try_start_3
    throw v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final s0(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$7:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v5

    move-object v5, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, p0

    move-object p0, v8

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    move-object v8, p2

    move-object p2, v5

    move-object v5, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p2, v5

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object p1, v0

    move-object p2, p1

    :goto_1
    :try_start_3
    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    invoke-interface {v7, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v6, :cond_4

    return-object v6

    :cond_4
    move-object v9, v5

    move-object v5, p0

    move-object p0, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, p1

    move-object p1, v0

    move-object v0, v9

    :goto_2
    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_6

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v8

    .line 5
    iput-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$0:Ljava/lang/Object;

    iput-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$1:Ljava/lang/Object;

    iput-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$2:Ljava/lang/Object;

    iput-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$3:Ljava/lang/Object;

    iput-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$4:Ljava/lang/Object;

    iput-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$5:Ljava/lang/Object;

    iput-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$6:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$7:Ljava/lang/Object;

    iput-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->L$8:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toChannel$1;->label:I

    invoke-interface {v7, v8, v0}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8

    if-ne v8, v1, :cond_5

    return-object v1

    :cond_5
    move-object v9, v7

    move-object v7, p0

    move-object p0, v5

    move-object v5, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v1

    move-object v1, v9

    goto :goto_1

    .line 6
    :cond_6
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 7
    invoke-static {p2, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v7

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p2, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    .line 9
    invoke-static {p2, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final t(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/p;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 19
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/p<",
            "-",
            "Ljava/lang/Integer;",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$13:Ljava/lang/Object;

    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->I$0:I

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$12:Ljava/lang/Object;

    check-cast v3, Lkotlin/collections/f0;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$11:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$10:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/b/p;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/t;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 v0, 0x2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/internal/Ref$IntRef;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/p;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    check-cast v12, Lkotlin/jvm/b/p;

    iget-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    check-cast v13, Lkotlinx/coroutines/channels/t;

    iget-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    check-cast v14, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object/from16 v16, v13

    move-object v13, v3

    move-object v3, v8

    move-object/from16 v8, v16

    goto/16 :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v3, v8

    goto/16 :goto_6

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    new-instance v0, Lkotlin/jvm/internal/Ref$IntRef;

    invoke-direct {v0}, Lkotlin/jvm/internal/Ref$IntRef;-><init>()V

    const/4 v3, 0x0

    iput v3, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    const/4 v3, 0x0

    .line 5
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v7, p1

    move-object/from16 v8, p2

    move-object v9, v0

    move-object v10, v1

    move-object v11, v2

    move-object v12, v3

    move-object v13, v6

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    move-object v6, v3

    :goto_1
    :try_start_3
    iput-object v0, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v7, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v8, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v9, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v2, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v12, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v6, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v13, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    iput v5, v10, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    invoke-interface {v13, v10}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v14

    if-ne v14, v11, :cond_4

    return-object v11

    :cond_4
    move-object/from16 v16, v14

    move-object v14, v0

    move-object/from16 v0, v16

    move-object/from16 v17, v11

    move-object v11, v1

    move-object v1, v10

    move-object v10, v9

    move-object v9, v2

    move-object/from16 v2, v17

    move-object/from16 v18, v8

    move-object v8, v7

    move-object v7, v12

    move-object/from16 v12, v18

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v13}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 6
    new-instance v15, Lkotlin/collections/f0;

    iget v5, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v4, v5, 0x1

    iput v4, v10, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    invoke-direct {v15, v5, v0}, Lkotlin/collections/f0;-><init>(ILjava/lang/Object;)V

    invoke-virtual {v15}, Lkotlin/collections/f0;->a()I

    move-result v4

    invoke-virtual {v15}, Lkotlin/collections/f0;->b()Ljava/lang/Object;

    move-result-object v5

    move-object/from16 p0, v2

    .line 7
    invoke-static {v4}, Lkotlin/coroutines/jvm/internal/a;->d(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v12, v2, v5}, Lkotlin/jvm/b/p;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_6

    iput-object v14, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$0:Ljava/lang/Object;

    iput-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$1:Ljava/lang/Object;

    iput-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$2:Ljava/lang/Object;

    iput-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$3:Ljava/lang/Object;

    iput-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$4:Ljava/lang/Object;

    iput-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$6:Ljava/lang/Object;

    iput-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$7:Ljava/lang/Object;

    iput-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$8:Ljava/lang/Object;

    iput-object v13, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$9:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$10:Ljava/lang/Object;

    iput-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$11:Ljava/lang/Object;

    iput-object v15, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$12:Ljava/lang/Object;

    iput v4, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->I$0:I

    iput-object v5, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->L$13:Ljava/lang/Object;

    const/4 v0, 0x2

    iput v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterIndexedTo$3;->label:I

    invoke-interface {v8, v5, v1}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2

    move-object/from16 v4, p0

    if-ne v2, v4, :cond_5

    return-object v4

    :cond_5
    move-object v2, v4

    move-object/from16 v16, v8

    move-object v8, v3

    move-object v3, v13

    move-object/from16 v13, v16

    :goto_3
    move-object/from16 v16, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v2

    move-object v2, v9

    move-object/from16 v9, v16

    move-object/from16 v17, v13

    move-object v13, v3

    move-object v3, v8

    move-object v8, v12

    move-object v12, v7

    move-object/from16 v7, v17

    goto :goto_4

    :cond_6
    move-object/from16 v4, p0

    const/4 v0, 0x2

    move-object v2, v9

    move-object v9, v10

    move-object v10, v1

    move-object v1, v11

    move-object v11, v4

    move-object/from16 v16, v12

    move-object v12, v7

    move-object v7, v8

    move-object/from16 v8, v16

    :goto_4
    move-object v0, v14

    const/4 v4, 0x2

    const/4 v5, 0x1

    goto/16 :goto_1

    .line 8
    :cond_7
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    const/4 v1, 0x1

    invoke-static {v1}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v3, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v1}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v8

    :catchall_1
    move-exception v0

    goto :goto_5

    :catchall_2
    move-exception v0

    move-object/from16 v3, p0

    :goto_5
    move-object v1, v0

    .line 10
    :goto_6
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v2, v0

    const/4 v4, 0x1

    invoke-static {v4}, Lkotlin/jvm/internal/q;->b(I)V

    .line 11
    invoke-static {v3, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v4}, Lkotlin/jvm/internal/q;->a(I)V

    throw v2
.end method

.method public static final t0(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toCollection$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v8, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    .line 5
    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 9
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final u(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v8, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v8

    move-object v9, v4

    move-object v4, v0

    move-object v0, v9

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$1;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v8, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v8

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 5
    invoke-interface {v2, p2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 9
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final u0(Lkotlinx/coroutines/channels/p;Ljava/util/Map;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<K:",
            "Ljava/lang/Object;",
            "V:",
            "Ljava/lang/Object;",
            "M::",
            "Ljava/util/Map<",
            "-TK;-TV;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+",
            "Lkotlin/Pair<",
            "+TK;+TV;>;>;TM;",
            "Lkotlin/coroutines/c<",
            "-TM;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Map;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v1

    move-object v1, p1

    move-object p1, v7

    move-object v7, v2

    move-object v2, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, v0

    move-object v0, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object v0, v4

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v6, p2

    move-object v4, v0

    move-object v5, v1

    move-object p2, p0

    move-object v0, p2

    move-object v1, v0

    move-object p0, v2

    move-object v2, p1

    move-object p1, v1

    :goto_1
    :try_start_2
    iput-object p1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$0:Ljava/lang/Object;

    iput-object v2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$1:Ljava/lang/Object;

    iput-object p2, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$2:Ljava/lang/Object;

    iput-object v0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$3:Ljava/lang/Object;

    iput-object v6, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$4:Ljava/lang/Object;

    iput-object v1, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$5:Ljava/lang/Object;

    iput-object p0, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->L$6:Ljava/lang/Object;

    iput v3, v4, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$toMap$2;->label:I

    invoke-interface {p0, v4}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7

    if-ne v7, v5, :cond_3

    return-object v5

    :cond_3
    move-object v9, v5

    move-object v5, p2

    move-object p2, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Lkotlin/Pair;

    .line 5
    invoke-virtual {p2}, Lkotlin/Pair;->getFirst()Ljava/lang/Object;

    move-result-object v8

    invoke-virtual {p2}, Lkotlin/Pair;->getSecond()Ljava/lang/Object;

    move-result-object p2

    invoke-interface {v2, v8, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_4
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 7
    invoke-static {v0, v7}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v2

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v0, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_3
    throw p0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_3

    :catchall_3
    move-exception p1

    .line 9
    invoke-static {v0, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final v(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 12
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p2, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;

    if-eqz v0, :cond_0

    move-object v0, p2

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;

    invoke-direct {v0, p2}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-eqz v2, :cond_3

    if-eq v2, v4, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$8:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$7:Ljava/lang/Object;

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object p2, v5

    move-object v5, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v1

    move-object v1, v7

    move-object v7, p0

    move-object p0, v8

    goto :goto_1

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Throwable;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/p;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/t;

    iget-object v8, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v9, v8

    move-object v8, p0

    move-object p0, v9

    move-object v10, v0

    move-object v0, p1

    move-object p1, v6

    move-object v6, v10

    move-object v11, v7

    move-object v7, v1

    move-object v1, v11

    goto :goto_2

    :catchall_0
    move-exception p0

    goto/16 :goto_3

    :cond_3
    invoke-static {p2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p2, 0x0

    .line 4
    :try_start_2
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object p1, v0

    move-object p2, p1

    :goto_1
    :try_start_3
    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v7, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    iput v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    invoke-interface {v7, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v8
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    if-ne v8, v6, :cond_4

    return-object v6

    :cond_4
    move-object v9, v5

    move-object v5, p2

    move-object p2, v8

    move-object v8, v7

    move-object v7, v6

    move-object v6, v9

    :goto_2
    :try_start_4
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    invoke-interface {v8}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p2

    if-eqz p2, :cond_5

    .line 5
    iput-object p0, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$0:Ljava/lang/Object;

    iput-object v1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$1:Ljava/lang/Object;

    iput-object p1, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$2:Ljava/lang/Object;

    iput-object v5, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$4:Ljava/lang/Object;

    iput-object v0, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$5:Ljava/lang/Object;

    iput-object v8, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$6:Ljava/lang/Object;

    iput-object p2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$7:Ljava/lang/Object;

    iput-object p2, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->L$8:Ljava/lang/Object;

    iput v3, v6, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotNullTo$3;->label:I

    invoke-interface {v1, p2, v6}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p2

    if-ne p2, v7, :cond_5

    return-object v7

    :cond_5
    move-object p2, v5

    move-object v5, v6

    move-object v6, v7

    move-object v7, v8

    goto :goto_1

    .line 6
    :cond_6
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 7
    invoke-static {v5, v2}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    return-object v1

    :catchall_1
    move-exception p0

    move-object v5, p2

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object v5, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_5
    throw p0
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_3

    :catchall_3
    move-exception p1

    .line 9
    invoke-static {v5, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    throw p1
.end method

.method public static final w(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v9, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-nez v8, :cond_4

    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final x(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$9:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$8:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/t;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v12

    move-object v14, v9

    move-object v9, v1

    move-object v1, v14

    move-object v15, v10

    move-object v10, v2

    move-object v2, v8

    move-object v8, v7

    move-object v7, v15

    move-object/from16 v16, v11

    move-object v11, v3

    move-object v3, v6

    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/t;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v9

    move-object v9, v1

    move-object v1, v14

    move-object v15, v10

    move-object v10, v2

    move-object v2, v8

    move-object v8, v7

    move-object v7, v15

    move-object/from16 v16, v11

    move-object v11, v3

    move-object v3, v6

    move-object/from16 v6, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    :try_start_3
    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    iput v5, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    invoke-interface {v11, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v10, :cond_4

    return-object v10

    :cond_4
    move-object v14, v12

    move-object v12, v0

    move-object v0, v14

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {v7, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-nez v13, :cond_5

    iput-object v12, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$6:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$7:Ljava/lang/Object;

    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$8:Ljava/lang/Object;

    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->L$9:Ljava/lang/Object;

    iput v4, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterNotTo$3;->label:I

    invoke-interface {v6, v0, v9}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    move-object v0, v12

    goto :goto_1

    .line 6
    :cond_6
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 8
    :goto_4
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method

.method public static final y(Lkotlinx/coroutines/channels/p;Ljava/util/Collection;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Ljava/util/Collection<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p3, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;

    if-eqz v0, :cond_0

    move-object v0, p3

    check-cast v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;

    iget v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;

    invoke-direct {v0, p3}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p3, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    const/4 v3, 0x1

    if-eqz v2, :cond_2

    if-ne v2, v3, :cond_1

    iget-object p0, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$7:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object p1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$6:Ljava/lang/Object;

    check-cast p1, Lkotlinx/coroutines/channels/p;

    iget-object p2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$5:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Throwable;

    iget-object v2, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$4:Ljava/lang/Object;

    check-cast v2, Lkotlinx/coroutines/channels/p;

    iget-object v4, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$3:Ljava/lang/Object;

    check-cast v4, Lkotlinx/coroutines/channels/p;

    iget-object v5, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$2:Ljava/lang/Object;

    check-cast v5, Lkotlin/jvm/b/l;

    iget-object v6, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$1:Ljava/lang/Object;

    check-cast v6, Ljava/util/Collection;

    iget-object v7, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$0:Ljava/lang/Object;

    check-cast v7, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v9, v0

    move-object v0, p1

    move-object p1, v7

    move-object v7, v1

    move-object v1, v6

    move-object v6, v9

    move-object v10, v4

    move-object v4, p2

    move-object p2, v10

    goto :goto_2

    :catchall_0
    move-exception p0

    move-object p3, v2

    goto/16 :goto_3

    .line 2
    :cond_1
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_2
    invoke-static {p3}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 p3, 0x0

    .line 4
    :try_start_1
    invoke-interface {p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_2

    move-object v4, p3

    move-object v5, v0

    move-object v6, v1

    move-object p3, p0

    move-object v0, p3

    move-object v1, p1

    move-object p1, v0

    move-object p0, v2

    move-object v2, p2

    move-object p2, p1

    :goto_1
    :try_start_2
    iput-object p1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$0:Ljava/lang/Object;

    iput-object v1, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$1:Ljava/lang/Object;

    iput-object v2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$2:Ljava/lang/Object;

    iput-object p2, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$3:Ljava/lang/Object;

    iput-object p3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$4:Ljava/lang/Object;

    iput-object v4, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$5:Ljava/lang/Object;

    iput-object v0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$6:Ljava/lang/Object;

    iput-object p0, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->L$7:Ljava/lang/Object;

    iput v3, v5, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$1;->label:I

    invoke-interface {p0, v5}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    if-ne v7, v6, :cond_3

    return-object v6

    :cond_3
    move-object v9, v2

    move-object v2, p3

    move-object p3, v7

    move-object v7, v6

    move-object v6, v5

    move-object v5, v9

    :goto_2
    :try_start_3
    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p0}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object p3

    .line 5
    invoke-interface {v5, p3}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/Boolean;

    invoke-virtual {v8}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v8

    if-eqz v8, :cond_4

    invoke-interface {v1, p3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    :cond_4
    move-object p3, v2

    move-object v2, v5

    move-object v5, v6

    move-object v6, v7

    goto :goto_1

    .line 6
    :cond_5
    sget-object p0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v4}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v1

    :catchall_1
    move-exception p0

    goto :goto_3

    :catchall_2
    move-exception p1

    move-object p3, p0

    move-object p0, p1

    .line 8
    :goto_3
    :try_start_4
    throw p0
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception p1

    invoke-static {v3}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {p3, p0}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v3}, Lkotlin/jvm/internal/q;->a(I)V

    throw p1
.end method

.method public static final z(Lkotlinx/coroutines/channels/p;Lkotlinx/coroutines/channels/t;Lkotlin/jvm/b/l;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 17
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<E:",
            "Ljava/lang/Object;",
            "C::",
            "Lkotlinx/coroutines/channels/t<",
            "-TE;>;>(",
            "Lkotlinx/coroutines/channels/p<",
            "+TE;>;TC;",
            "Lkotlin/jvm/b/l<",
            "-TE;",
            "Ljava/lang/Boolean;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-TC;>;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-object/from16 v0, p3

    instance-of v1, v0, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;

    if-eqz v1, :cond_0

    move-object v1, v0

    check-cast v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;

    iget v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    const/high16 v3, -0x80000000

    and-int v4, v2, v3

    if-eqz v4, :cond_0

    sub-int/2addr v2, v3

    iput v2, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    goto :goto_0

    :cond_0
    new-instance v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;

    invoke-direct {v1, v0}, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v0, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v2

    .line 1
    iget v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v3, :cond_3

    if-eq v3, v5, :cond_2

    if-ne v3, v4, :cond_1

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$9:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$8:Ljava/lang/Object;

    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/t;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_0
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v0, v12

    move-object v14, v9

    move-object v9, v1

    move-object v1, v14

    move-object v15, v10

    move-object v10, v2

    move-object v2, v8

    move-object v8, v7

    move-object v7, v15

    move-object/from16 v16, v11

    move-object v11, v3

    move-object v3, v6

    move-object/from16 v6, v16

    goto/16 :goto_1

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-object v3, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    check-cast v3, Lkotlinx/coroutines/channels/ChannelIterator;

    iget-object v6, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    check-cast v6, Lkotlinx/coroutines/channels/p;

    iget-object v7, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    check-cast v7, Ljava/lang/Throwable;

    iget-object v8, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    check-cast v8, Lkotlinx/coroutines/channels/p;

    iget-object v9, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    check-cast v9, Lkotlinx/coroutines/channels/p;

    iget-object v10, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    check-cast v10, Lkotlin/jvm/b/l;

    iget-object v11, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    check-cast v11, Lkotlinx/coroutines/channels/t;

    iget-object v12, v1, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    check-cast v12, Lkotlinx/coroutines/channels/p;

    :try_start_1
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v14, v9

    move-object v9, v1

    move-object v1, v14

    move-object v15, v10

    move-object v10, v2

    move-object v2, v8

    move-object v8, v7

    move-object v7, v15

    move-object/from16 v16, v11

    move-object v11, v3

    move-object v3, v6

    move-object/from16 v6, v16

    goto :goto_2

    :catchall_0
    move-exception v0

    move-object v1, v0

    move-object v2, v8

    goto/16 :goto_4

    :cond_3
    invoke-static {v0}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v0, 0x0

    .line 4
    :try_start_2
    invoke-interface/range {p0 .. p0}, Lkotlinx/coroutines/channels/p;->iterator()Lkotlinx/coroutines/channels/ChannelIterator;

    move-result-object v3
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object v8, v0

    move-object v9, v1

    move-object v10, v2

    move-object v11, v3

    move-object/from16 v0, p0

    move-object v1, v0

    move-object v2, v1

    move-object v3, v2

    :goto_1
    :try_start_3
    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    iput v5, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    invoke-interface {v11, v9}, Lkotlinx/coroutines/channels/ChannelIterator;->a(Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v12

    if-ne v12, v10, :cond_4

    return-object v10

    :cond_4
    move-object v14, v12

    move-object v12, v0

    move-object v0, v14

    :goto_2
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v11}, Lkotlinx/coroutines/channels/ChannelIterator;->next()Ljava/lang/Object;

    move-result-object v0

    .line 5
    invoke-interface {v7, v0}, Lkotlin/jvm/b/l;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Ljava/lang/Boolean;

    invoke-virtual {v13}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v13

    if-eqz v13, :cond_5

    iput-object v12, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$0:Ljava/lang/Object;

    iput-object v6, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$1:Ljava/lang/Object;

    iput-object v7, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$2:Ljava/lang/Object;

    iput-object v1, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$3:Ljava/lang/Object;

    iput-object v2, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$4:Ljava/lang/Object;

    iput-object v8, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$5:Ljava/lang/Object;

    iput-object v3, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$6:Ljava/lang/Object;

    iput-object v11, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$7:Ljava/lang/Object;

    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$8:Ljava/lang/Object;

    iput-object v0, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->L$9:Ljava/lang/Object;

    iput v4, v9, Lkotlinx/coroutines/channels/ChannelsKt__Channels_commonKt$filterTo$3;->label:I

    invoke-interface {v6, v0, v9}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v0

    if-ne v0, v10, :cond_5

    return-object v10

    :cond_5
    move-object v0, v12

    goto :goto_1

    .line 6
    :cond_6
    sget-object v0, Lkotlin/v;->a:Lkotlin/v;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 7
    invoke-static {v2, v8}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    return-object v6

    :catchall_1
    move-exception v0

    goto :goto_3

    :catchall_2
    move-exception v0

    move-object/from16 v2, p0

    :goto_3
    move-object v1, v0

    .line 8
    :goto_4
    :try_start_4
    throw v1
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_3

    :catchall_3
    move-exception v0

    move-object v3, v0

    invoke-static {v5}, Lkotlin/jvm/internal/q;->b(I)V

    .line 9
    invoke-static {v2, v1}, Lkotlinx/coroutines/channels/i;->j(Lkotlinx/coroutines/channels/p;Ljava/lang/Throwable;)V

    invoke-static {v5}, Lkotlin/jvm/internal/q;->a(I)V

    throw v3
.end method
