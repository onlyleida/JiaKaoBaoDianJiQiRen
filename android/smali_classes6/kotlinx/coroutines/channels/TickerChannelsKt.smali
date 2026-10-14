.class public final Lkotlinx/coroutines/channels/TickerChannelsKt;
.super Ljava/lang/Object;
.source "SourceFile"


# direct methods
.method static final synthetic a(JJLkotlinx/coroutines/channels/t;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/t<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    instance-of v0, p5, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    if-eqz v0, :cond_0

    move-object v0, p5

    check-cast v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    iget v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/high16 v2, -0x80000000

    and-int v3, v1, v2

    if-eqz v3, :cond_0

    sub-int/2addr v1, v2

    iput v1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;

    invoke-direct {v0, p5}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object p5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v1

    .line 1
    iget v2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    const/4 v3, 0x3

    const/4 v4, 0x2

    const/4 v5, 0x1

    if-eqz v2, :cond_5

    if-eq v2, v5, :cond_4

    if-eq v2, v4, :cond_3

    if-ne v2, v3, :cond_2

    iget-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/t;

    iget-wide p1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    invoke-static {p5}, Lkotlin/k;->b(Ljava/lang/Object;)V

    :cond_1
    move-wide v6, p3

    move-object p4, p0

    move-wide p2, p1

    move-wide p0, v6

    goto :goto_1

    .line 2
    :cond_2
    new-instance p0, Ljava/lang/IllegalStateException;

    const-string p1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {p0, p1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p0

    .line 3
    :cond_3
    iget-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    check-cast p0, Lkotlinx/coroutines/channels/t;

    iget-wide p1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    invoke-static {p5}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_2

    :cond_4
    iget-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    move-object p4, p0

    check-cast p4, Lkotlinx/coroutines/channels/t;

    iget-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iget-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    invoke-static {p5}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto :goto_1

    :cond_5
    invoke-static {p5}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput v5, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p2, p3, v0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_6

    return-object v1

    .line 5
    :cond_6
    :goto_1
    sget-object p5, Lkotlin/v;->a:Lkotlin/v;

    iput-wide p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p2, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput v4, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-interface {p4, p5, v0}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_7

    return-object v1

    :cond_7
    move-wide v6, p0

    move-object p0, p4

    move-wide p1, p2

    move-wide p3, v6

    .line 6
    :goto_2
    iput-wide p3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$0:J

    iput-wide p1, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->J$1:J

    iput-object p0, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->L$0:Ljava/lang/Object;

    iput v3, v0, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedDelayTicker$1;->label:I

    invoke-static {p3, p4, v0}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object p5

    if-ne p5, v1, :cond_1

    return-object v1
.end method

.method static final synthetic b(JJLkotlinx/coroutines/channels/t;Lkotlin/coroutines/c;)Ljava/lang/Object;
    .locals 21
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(JJ",
            "Lkotlinx/coroutines/channels/t<",
            "-",
            "Lkotlin/v;",
            ">;",
            "Lkotlin/coroutines/c<",
            "-",
            "Lkotlin/v;",
            ">;)",
            "Ljava/lang/Object;"
        }
    .end annotation

    move-wide/from16 v0, p2

    move-object/from16 v2, p5

    instance-of v3, v2, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    iget v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/high16 v5, -0x80000000

    and-int v6, v4, v5

    if-eqz v6, :cond_0

    sub-int/2addr v4, v5

    iput v4, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    goto :goto_0

    :cond_0
    new-instance v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;

    invoke-direct {v3, v2}, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;-><init>(Lkotlin/coroutines/c;)V

    :goto_0
    iget-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->result:Ljava/lang/Object;

    invoke-static {}, Lkotlin/coroutines/intrinsics/a;->d()Ljava/lang/Object;

    move-result-object v4

    .line 1
    iget v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    const/4 v9, 0x1

    if-eqz v5, :cond_5

    if-eq v5, v9, :cond_4

    if-eq v5, v8, :cond_3

    if-eq v5, v7, :cond_2

    if-ne v5, v6, :cond_1

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/t;

    iget-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    invoke-static {v2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_6

    .line 2
    :cond_1
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "call to \'resume\' before \'invoke\' with coroutine"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3
    :cond_2
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$6:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/t;

    iget-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    invoke-static {v2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    const/4 v8, 0x3

    goto/16 :goto_6

    :cond_3
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iget-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/t;

    iget-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    invoke-static {v2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    goto/16 :goto_4

    :cond_4
    iget-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iget-object v5, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    check-cast v5, Lkotlinx/coroutines/channels/t;

    iget-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iget-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    invoke-static {v2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    move-object v2, v5

    move-wide/from16 v19, v0

    move-wide v0, v9

    move-wide/from16 v9, v19

    goto :goto_2

    :cond_5
    invoke-static {v2}, Lkotlin/k;->b(Ljava/lang/Object;)V

    .line 4
    invoke-static {}, Lkotlinx/coroutines/u2;->a()Lkotlinx/coroutines/t2;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-interface {v2}, Lkotlinx/coroutines/t2;->nanoTime()J

    move-result-wide v10

    invoke-static {v10, v11}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_6

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v10

    goto :goto_1

    :cond_6
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    :goto_1
    invoke-static/range {p2 .. p3}, Lkotlinx/coroutines/g1;->d(J)J

    move-result-wide v12

    add-long/2addr v10, v12

    move-wide/from16 v12, p0

    .line 5
    iput-wide v12, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    move-object/from16 v2, p4

    iput-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v10, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v0, v1, v3}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_7

    return-object v4

    :cond_7
    move-wide v9, v10

    move-wide v11, v12

    .line 6
    :goto_2
    invoke-static {v11, v12}, Lkotlinx/coroutines/g1;->d(J)J

    move-result-wide v13

    :goto_3
    add-long/2addr v9, v13

    .line 7
    sget-object v5, Lkotlin/v;->a:Lkotlin/v;

    iput-wide v11, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v0, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v2, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v9, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v13, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iput v8, v3, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-interface {v2, v5, v3}, Lkotlinx/coroutines/channels/t;->F(Ljava/lang/Object;Lkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v5

    if-ne v5, v4, :cond_8

    return-object v4

    :cond_8
    move-object v5, v2

    move-wide/from16 v19, v0

    move-wide v0, v13

    move-wide v13, v11

    move-wide/from16 v11, v19

    .line 8
    :goto_4
    invoke-static {}, Lkotlinx/coroutines/u2;->a()Lkotlinx/coroutines/t2;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-interface {v2}, Lkotlinx/coroutines/t2;->nanoTime()J

    move-result-wide v15

    invoke-static/range {v15 .. v16}, Lkotlin/coroutines/jvm/internal/a;->e(J)Ljava/lang/Long;

    move-result-object v2

    if-eqz v2, :cond_9

    invoke-virtual {v2}, Ljava/lang/Long;->longValue()J

    move-result-wide v15

    goto :goto_5

    :cond_9
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v15

    :goto_5
    move-wide v6, v15

    move-object v15, v3

    sub-long v2, v9, v6

    move-wide/from16 p1, v9

    const-wide/16 v8, 0x0

    .line 9
    invoke-static {v2, v3, v8, v9}, Lkotlin/a0/d;->c(JJ)J

    move-result-wide v2

    cmp-long v10, v2, v8

    if-nez v10, :cond_b

    cmp-long v10, v0, v8

    if-eqz v10, :cond_b

    sub-long v8, v6, p1

    .line 10
    rem-long/2addr v8, v0

    sub-long v8, v0, v8

    move-wide/from16 p3, v2

    add-long v2, v6, v8

    move-wide/from16 v17, v6

    .line 11
    invoke-static {v8, v9}, Lkotlinx/coroutines/g1;->c(J)J

    move-result-wide v6

    move-object v10, v15

    iput-wide v13, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v11, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v5, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    iput-wide v2, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v0, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    move-wide/from16 p1, v2

    move-wide/from16 v2, v17

    iput-wide v2, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    move-wide/from16 v2, p3

    iput-wide v2, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    iput-wide v8, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$6:J

    const/4 v8, 0x3

    iput v8, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v6, v7, v10}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v2

    if-ne v2, v4, :cond_a

    return-object v4

    :cond_a
    move-object v3, v10

    move-wide/from16 v9, p1

    :goto_6
    const/4 v2, 0x4

    :goto_7
    move-wide/from16 v19, v11

    move-wide v11, v13

    move-wide v13, v0

    move-wide/from16 v0, v19

    goto :goto_8

    :cond_b
    move-object v10, v15

    move-wide/from16 v19, v2

    move-wide v2, v6

    move-wide/from16 v6, v19

    .line 12
    invoke-static {v6, v7}, Lkotlinx/coroutines/g1;->c(J)J

    move-result-wide v8

    iput-wide v13, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$0:J

    iput-wide v11, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$1:J

    iput-object v5, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->L$0:Ljava/lang/Object;

    move-wide/from16 v17, v11

    move-wide/from16 v11, p1

    iput-wide v11, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$2:J

    iput-wide v0, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$3:J

    iput-wide v2, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$4:J

    iput-wide v6, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->J$5:J

    const/4 v2, 0x4

    iput v2, v10, Lkotlinx/coroutines/channels/TickerChannelsKt$fixedPeriodTicker$1;->label:I

    invoke-static {v8, v9, v10}, Lkotlinx/coroutines/s0;->a(JLkotlin/coroutines/c;)Ljava/lang/Object;

    move-result-object v3

    if-ne v3, v4, :cond_c

    return-object v4

    :cond_c
    move-object v3, v10

    move-wide v9, v11

    move-wide/from16 v11, v17

    goto :goto_7

    :goto_8
    move-object v2, v5

    const/4 v6, 0x4

    const/4 v7, 0x3

    const/4 v8, 0x2

    goto/16 :goto_3
.end method
