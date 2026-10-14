.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/l;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;",
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
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/l;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 12

    const-string v0, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v1, "\u91c7\u96c6\u9884\u62a5\u70b92"

    const-string v2, "\u91c7\u96c6\u5f00\u59cb\u7ebf1\u53f7\u70b9"

    const-string v3, "\u91c7\u96c6\u5f00\u59cb\u7ebf2\u53f7\u70b9"

    const-string v4, "\u91c7\u96c6\u7ed3\u675f\u7ebf3\u53f7\u70b9"

    const-string v5, "\u91c7\u96c6\u7ed3\u675f\u7ebf4\u53f7\u70b9"

    const-string v6, "\u5f00\u59cb\u91c7\u96c6\u5de6\u8fb9\u5b9e\u7ebf5\u53f7\u70b9"

    const-string v7, "\u7ed3\u675f\u91c7\u96c6\u5de6\u8fb9\u5b9e\u7ebf6\u53f7\u70b9"

    const-string v8, "\u5f00\u59cb\u91c7\u96c6\u53f3\u8fb9\u5b9e\u7ebf7\u53f7\u70b9"

    const-string v9, "\u7ed3\u675f\u91c7\u96c6\u53f3\u8fb9\u5b9e\u7ebf8\u53f7\u70b9"

    const-string v10, "\u5f00\u59cb\u91c7\u96c6\u4e2d\u95f4\u5b9e\u7ebf9\u53f7\u70b9"

    const-string v11, "\u7ed3\u675f\u91c7\u96c6\u4e2d\u95f4\u5b9e\u7ebf10\u53f7\u70b9"

    .line 1
    filled-new-array/range {v0 .. v11}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/l;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->u(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p1, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->s(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 4
    invoke-virtual {p4, p1, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->s(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 5
    invoke-virtual {p4, p1, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->s(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 6
    invoke-virtual {p4, p1, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->s(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    if-ne p2, p1, :cond_6

    .line 7
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->w()V

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    if-ne p2, p1, :cond_7

    .line 8
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->j()V

    goto :goto_0

    :cond_7
    const/16 p1, 0x8

    if-ne p2, p1, :cond_8

    .line 9
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->x()V

    goto :goto_0

    :cond_8
    const/16 p1, 0x9

    if-ne p2, p1, :cond_9

    .line 10
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->k()V

    goto :goto_0

    :cond_9
    const/16 p1, 0xa

    if-ne p2, p1, :cond_a

    .line 11
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->v()V

    goto :goto_0

    :cond_a
    const/16 p1, 0xb

    if-ne p2, p1, :cond_b

    .line 12
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;->i()V

    :cond_b
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/a0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;)V
    .locals 25

    move-object/from16 v9, p1

    move-object/from16 v6, p2

    move-object/from16 v10, p4

    .line 1
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 2
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 3
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 4
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 5
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 6
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 7
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 8
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 9
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 10
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 11
    sget v2, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v0, v2

    invoke-static {v12, v11, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    const-string v17, "1"

    const v18, -0x139001

    move-object v0, v11

    move-object v1, v3

    move v9, v2

    move-object/from16 v2, v17

    move-object/from16 p3, v3

    move/from16 v3, v18

    move-object/from16 v19, v4

    move-object/from16 v4, p1

    move-object/from16 v20, v5

    move-object/from16 v5, v16

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v9

    .line 12
    invoke-static {v11, v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "2"

    const v3, -0x139001

    move-object v0, v12

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v9

    .line 13
    invoke-static {v11, v13, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "3"

    move-object v0, v13

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v9

    .line 14
    invoke-static {v13, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "4"

    move-object v0, v14

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v9

    .line 15
    invoke-static {v8, v15, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r1"

    move-object v0, v15

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v9

    .line 16
    invoke-static {v15, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r2"

    move-object v0, v8

    move-object/from16 v1, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 17
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    const v1, -0x139001

    if-eqz v0, :cond_1

    .line 18
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    invoke-interface {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 20
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v4

    move-object/from16 v5, p1

    move-object/from16 v24, v8

    move-object/from16 v8, p3

    move-object/from16 p3, v24

    invoke-static {v3, v8, v4, v1, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v24, v8

    move-object/from16 v8, p3

    move-object/from16 p3, v24

    goto :goto_0

    :cond_0
    move-object/from16 v5, p1

    move-object/from16 v24, v8

    move-object/from16 v8, p3

    move-object/from16 p3, v24

    goto :goto_1

    :cond_1
    move-object/from16 v5, p1

    move-object/from16 v24, v8

    move-object/from16 v8, p3

    move-object/from16 p3, v24

    const/4 v2, 0x1

    .line 22
    :goto_1
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 23
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 24
    invoke-interface {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    move-object/from16 v4, v20

    .line 25
    invoke-interface {v4, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 26
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    invoke-static {v3, v8, v9, v1, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_2
    move-object/from16 v4, v20

    .line 27
    iget-object v0, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 28
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_3
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    invoke-interface {v6, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    move-object/from16 v9, v19

    .line 30
    invoke-interface {v9, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v17, v0

    .line 31
    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v3, v8, v0, v1, v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    const/4 v0, 0x1

    add-int/2addr v2, v0

    move-object/from16 v0, v17

    goto :goto_3

    :cond_3
    move-object/from16 v9, v19

    .line 32
    iget-wide v2, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/16 v17, 0x1

    const-string v18, "\u5165\u53e3"

    move-object v0, v11

    move-object v1, v12

    move-wide/from16 v19, v2

    move-object v2, v8

    move-object/from16 v3, p1

    move-object/from16 p2, v4

    move-wide/from16 v4, v19

    move-object/from16 v19, v7

    move-object/from16 v7, v18

    move-object/from16 v18, p3

    move-object/from16 p3, v8

    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 33
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0xb5c0

    const/4 v8, 0x1

    const-string v7, "\u51fa\u53e3"

    move-object v0, v14

    move-object v1, v13

    move-object/from16 v2, p3

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 34
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v7, 0x0

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 35
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 36
    :goto_4
    invoke-interface/range {v19 .. v19}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x1

    sub-int/2addr v1, v2

    if-ge v0, v1, :cond_4

    move-object/from16 v7, v19

    .line 37
    invoke-interface {v7, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v6, v0, 0x1

    invoke-interface {v7, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/16 v20, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move/from16 v21, v6

    move/from16 v6, v20

    move-object/from16 v22, v7

    move-object/from16 v7, v17

    move/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v0, v21

    move-object/from16 v19, v22

    const/4 v8, 0x0

    goto :goto_4

    :cond_4
    move-object/from16 v22, v19

    .line 38
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v8, 0x0

    .line 39
    :goto_5
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v8, v0, :cond_5

    move-object/from16 v7, p2

    .line 40
    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v17, 0x0

    const/16 v19, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move-object/from16 v23, v7

    move-object/from16 v7, v17

    move/from16 v17, v8

    move/from16 v8, v19

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v8, v17

    move-object/from16 p2, v23

    goto :goto_5

    :cond_5
    move-object/from16 v23, p2

    .line 41
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v8, 0x0

    .line 42
    :goto_6
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x1

    sub-int/2addr v0, v1

    if-ge v8, v0, :cond_6

    .line 43
    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v8, v8, 0x1

    invoke-interface {v9, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/16 v17, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, p3

    move-object/from16 v3, p1

    move/from16 v19, v8

    move/from16 v8, v17

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v8, v19

    goto :goto_6

    .line 44
    :cond_6
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz v15, :cond_7

    move-object/from16 v1, v18

    if-eqz v1, :cond_7

    .line 45
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 46
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    if-eqz v11, :cond_8

    if-eqz v12, :cond_8

    .line 47
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    if-eqz v13, :cond_9

    if-eqz v14, :cond_9

    .line 49
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    move-object/from16 v1, v22

    .line 51
    invoke-interface {v0, v1}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    move-object/from16 v2, v23

    .line 52
    invoke-interface {v0, v2}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 53
    invoke-interface {v0, v9}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    .line 54
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_15

    .line 55
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v6, v4

    move-wide v11, v6

    move-wide v4, v2

    :cond_a
    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 56
    iget-wide v13, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v15, v6, v13

    if-lez v15, :cond_b

    move-wide v6, v13

    :cond_b
    cmpg-double v15, v2, v13

    if-gez v15, :cond_c

    move-wide v2, v13

    .line 57
    :cond_c
    iget-wide v13, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v8, v11, v13

    if-lez v8, :cond_d

    move-wide v11, v13

    :cond_d
    cmpg-double v8, v4, v13

    if-gez v8, :cond_a

    move-wide v4, v13

    goto :goto_7

    :cond_e
    add-double v13, v6, v2

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v13, v13, v17

    add-double v19, v11, v4

    move-wide/from16 v21, v13

    mul-double v13, v19, v17

    move-object/from16 v0, p1

    .line 58
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 59
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v15, p3

    invoke-virtual {v8, v15}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v2, v6

    sub-double/2addr v4, v11

    .line 60
    invoke-static {v2, v3, v4, v5, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v2

    const v3, 0x3f4ccccd    # 0.8f

    mul-float v2, v2, v3

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const/4 v2, 0x0

    .line 61
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_10

    const/4 v3, 0x0

    .line 62
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    .line 63
    iget-boolean v2, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->fromLeft:Z

    if-eqz v2, :cond_f

    const-wide v2, 0x4056800000000000L    # 90.0

    goto :goto_9

    :cond_f
    const-wide v2, -0x3fa9800000000000L    # -90.0

    goto :goto_9

    :cond_10
    const/4 v3, 0x0

    .line 64
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    if-le v4, v5, :cond_11

    .line 65
    invoke-interface {v1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v1, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v2

    :cond_11
    if-nez v2, :cond_12

    .line 66
    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v1

    if-le v1, v5, :cond_12

    .line 67
    invoke-interface {v9, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v9, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    invoke-static {v1, v2}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    goto :goto_8

    :cond_12
    move-object v1, v2

    .line 68
    :goto_8
    iget-boolean v2, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2SuiDaoSrcData;->fromLeft:Z

    if-eqz v2, :cond_13

    const-wide/16 v2, 0x0

    goto :goto_9

    :cond_13
    const-wide v2, 0x4066800000000000L    # 180.0

    :goto_9
    if-eqz v1, :cond_14

    .line 69
    invoke-virtual {v1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v4

    sub-double/2addr v2, v4

    double-to-float v1, v2

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    :cond_14
    move-wide/from16 v1, v21

    double-to-float v1, v1

    double-to-float v2, v13

    .line 70
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 71
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_15
    return-void
.end method
