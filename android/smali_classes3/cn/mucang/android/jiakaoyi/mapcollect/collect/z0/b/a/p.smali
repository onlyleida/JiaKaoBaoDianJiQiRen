.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/p;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;",
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
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/p;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 8

    const-string v0, "\u91c7\u96c61\u53f7\u70b9"

    const-string v1, "\u91c7\u96c62\u53f7\u70b9"

    const-string v2, "\u91c7\u96c63\u53f7\u70b9"

    const-string v3, "\u91c7\u96c64\u53f7\u70b9"

    const-string v4, "\u91c7\u96c65\u53f7\u70b9"

    const-string v5, "\u91c7\u96c66\u53f7\u70b9"

    const-string v6, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v7, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 1
    filled-new-array/range {v0 .. v7}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/p;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    const/4 p1, 0x6

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p4, p2, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;->f(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x7

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/e0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;)V
    .locals 22

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    .line 1
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 2
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 3
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 4
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 5
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 6
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 7
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    .line 8
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhiJiaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    const/4 v0, 0x1

    .line 10
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    sget v6, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v0, v6

    invoke-static {v12, v11, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const v3, -0x139001

    move-object v0, v11

    move-object v1, v7

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v0, 0x2

    .line 11
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    float-to-double v0, v6

    invoke-static {v11, v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    move-object v0, v12

    move-object v1, v7

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v0, 0x3

    .line 12
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    float-to-double v0, v6

    invoke-static {v12, v13, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    move-object v0, v13

    move-object v1, v7

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v0, 0x4

    .line 13
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    float-to-double v0, v6

    invoke-static {v15, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    move-object v0, v14

    move-object v1, v7

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v0, 0x5

    .line 14
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    float-to-double v0, v6

    invoke-static {v14, v15, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    move-object v0, v15

    move-object v1, v7

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v0, 0x6

    .line 15
    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    neg-float v0, v6

    float-to-double v0, v0

    invoke-static {v15, v8, v11, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    move-object v0, v8

    move-object v1, v7

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 16
    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_8

    .line 17
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/16 v18, 0x1

    const-string v19, "\u5165\u53e3"

    move-object v0, v11

    move-object v1, v12

    move-object v2, v7

    move-object/from16 v3, p1

    move-object/from16 p2, v7

    move-object/from16 v7, v19

    move-object v9, v8

    move/from16 v8, v18

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 18
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0xb5c0

    const/4 v8, 0x1

    const-string v7, "\u51fa\u53e3"

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 19
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 20
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v6, -0x1

    invoke-static {v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v12

    move-object v1, v13

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 21
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v13

    move-object v1, v14

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 22
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v15, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v15

    move-object v1, v9

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 23
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v9, v11}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v9

    move-object v1, v11

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 24
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 25
    invoke-static {v11, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 26
    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 27
    invoke-static {v13, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 28
    invoke-static {v14, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 29
    invoke-static {v15, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 30
    invoke-static {v9, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 31
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v8, v4

    move-wide v14, v8

    const-wide/16 v16, 0x0

    const-wide/16 v18, 0x0

    move-wide v4, v2

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 32
    iget-wide v6, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v16, v16, v6

    move-object/from16 v20, v12

    move-object/from16 v21, v13

    .line 33
    iget-wide v12, v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v18, v18, v12

    cmpl-double v10, v8, v6

    if-lez v10, :cond_0

    move-wide v8, v6

    :cond_0
    cmpg-double v10, v2, v6

    if-gez v10, :cond_1

    move-wide v2, v6

    :cond_1
    cmpl-double v6, v14, v12

    if-lez v6, :cond_2

    move-wide v14, v12

    :cond_2
    cmpg-double v6, v4, v12

    if-gez v6, :cond_3

    move-wide v4, v12

    :cond_3
    move-object/from16 v12, v20

    move-object/from16 v13, v21

    goto :goto_0

    :cond_4
    move-object/from16 v20, v12

    move-object/from16 v21, v13

    .line 34
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v6, v1

    div-double v6, v16, v6

    .line 35
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v18, v0

    move-object/from16 v10, p1

    .line 36
    iget-object v12, v10, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 37
    iget-object v12, v10, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v13, p2

    invoke-virtual {v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v2, v8

    sub-double/2addr v4, v14

    .line 38
    invoke-static {v2, v3, v4, v5, v10}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v2

    const v3, 0x3f733333    # 0.95f

    mul-float v2, v2, v3

    invoke-virtual {v10, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    if-eqz v11, :cond_7

    if-eqz v20, :cond_7

    const/high16 v2, 0x42b40000    # 90.0f

    if-eqz v21, :cond_6

    move-object/from16 v3, v20

    .line 39
    invoke-virtual {v3, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    move-object/from16 v5, v21

    .line 40
    invoke-virtual {v3, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 41
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/16 v8, 0x0

    cmpl-double v12, v4, v8

    if-lez v12, :cond_5

    .line 42
    invoke-virtual {v11, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 43
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v10, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    goto :goto_1

    .line 44
    :cond_5
    invoke-virtual {v11, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const/high16 v4, -0x3ccc0000    # -180.0f

    .line 45
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v4, v2

    invoke-virtual {v10, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    goto :goto_1

    :cond_6
    move-object/from16 v3, v20

    .line 46
    invoke-virtual {v11, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v3

    .line 47
    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    double-to-float v3, v3

    sub-float/2addr v2, v3

    invoke-virtual {v10, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    :cond_7
    :goto_1
    double-to-float v2, v6

    double-to-float v0, v0

    .line 48
    invoke-virtual {v10, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 49
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_8
    return-void
.end method
