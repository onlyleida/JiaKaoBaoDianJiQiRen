.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/i;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 6

    const-string v0, "\u5f00\u59cb\u91c7\u96c61\u53f7\u7ebf"

    const-string v1, "\u7ed3\u675f\u91c7\u96c61\u53f7\u7ebf"

    const-string v2, "\u5f00\u59cb\u91c7\u96c62\u53f7\u7ebf"

    const-string v3, "\u7ed3\u675f\u91c7\u96c62\u53f7\u7ebf"

    const-string v4, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v5, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 1
    filled-new-array/range {v0 .. v5}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/i;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->u()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->o()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->v()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 4
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->p()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 5
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 6
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_5
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;)V
    .locals 19

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p4

    .line 1
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 2
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 3
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 6
    sget v7, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v0, v7

    invoke-static {v12, v11, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r1"

    const v3, -0x139001

    move-object v0, v11

    move-object v1, v15

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v7

    .line 7
    invoke-static {v11, v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r2"

    move-object v0, v12

    move-object v1, v15

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 8
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->leftPoints:Ljava/util/List;

    const v1, -0x139001

    const/4 v8, 0x1

    if-eqz v0, :cond_0

    .line 9
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    invoke-interface {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 11
    invoke-interface {v13, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 12
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v15, v4, v1, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    const/4 v2, 0x1

    .line 13
    :cond_1
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 14
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 15
    invoke-interface {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 16
    invoke-interface {v14, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v15, v4, v1, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/2addr v2, v8

    goto :goto_1

    .line 18
    :cond_2
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v7, 0x0

    const/16 v16, 0x1

    move-object v0, v11

    move-object v1, v12

    move-object v2, v15

    move-object/from16 v3, p1

    const/4 v9, 0x1

    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 19
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 20
    :goto_2
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ge v0, v1, :cond_3

    .line 21
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v13, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/4 v6, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v18, v7

    move-object/from16 v7, v16

    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v0, v18

    const/4 v8, 0x0

    goto :goto_2

    .line 22
    :cond_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_4

    const/4 v8, 0x0

    .line 23
    :goto_3
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    if-ge v8, v0, :cond_4

    .line 24
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/16 v16, 0x0

    const/4 v6, -0x1

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v17, v8

    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v8, v17

    goto :goto_3

    .line 25
    :cond_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v8, 0x0

    .line 26
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/16 v16, 0x1

    const-string v7, "\u5165\u53e3"

    move-object v2, v15

    move-object/from16 v3, p1

    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 27
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/x;->q()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 28
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0xb5c0

    const/4 v8, 0x1

    const-string v7, "\u51fa\u53e3"

    move-object v2, v15

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 29
    :cond_5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v11, :cond_6

    if-eqz v12, :cond_6

    .line 30
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 31
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 32
    :cond_6
    invoke-interface {v0, v13}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 33
    invoke-interface {v0, v14}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_12

    .line 35
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, -0x10000000000001L

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v3

    move-wide v7, v5

    move-wide v3, v1

    :goto_4
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_b

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 36
    iget-wide v9, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v12, v5, v9

    if-lez v12, :cond_7

    move-wide v5, v9

    :cond_7
    cmpg-double v12, v1, v9

    if-gez v12, :cond_8

    move-wide v1, v9

    .line 37
    :cond_8
    iget-wide v9, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v11, v7, v9

    if-lez v11, :cond_9

    move-wide v7, v9

    :cond_9
    cmpg-double v11, v3, v9

    if-gez v11, :cond_a

    move-wide v3, v9

    :cond_a
    move-object/from16 v10, p4

    const/4 v9, 0x1

    goto :goto_4

    :cond_b
    add-double v9, v5, v1

    const-wide/high16 v11, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v11

    add-double v16, v7, v3

    mul-double v11, v11, v16

    move-object/from16 v0, p1

    move-wide/from16 p2, v11

    const/4 v11, 0x1

    .line 38
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 39
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v12, v15}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v1, v5

    sub-double/2addr v3, v7

    .line 40
    invoke-static {v1, v2, v3, v4, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const/4 v1, 0x0

    .line 41
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_d

    const/4 v2, 0x0

    .line 42
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    move-object/from16 v3, p4

    .line 43
    iget-boolean v2, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->fromLeft:Z

    if-eqz v2, :cond_c

    const-wide v2, 0x4056800000000000L    # 90.0

    goto :goto_5

    :cond_c
    const-wide v2, -0x3fa9800000000000L    # -90.0

    goto :goto_5

    :cond_d
    move-object/from16 v3, p4

    const/4 v2, 0x0

    .line 44
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v11, :cond_e

    .line 45
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v13, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_e
    if-nez v1, :cond_f

    .line 46
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v11, :cond_f

    .line 47
    invoke-interface {v14, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v14, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 48
    :cond_f
    iget-boolean v2, v3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SQuXianSrcData;->fromLeft:Z

    if-eqz v2, :cond_10

    const-wide/16 v2, 0x0

    goto :goto_5

    :cond_10
    const-wide v2, 0x4066800000000000L    # 180.0

    :goto_5
    if-eqz v1, :cond_11

    .line 49
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    :cond_11
    double-to-float v1, v9

    move-wide/from16 v2, p2

    double-to-float v2, v2

    .line 50
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 51
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_12
    return-void
.end method
