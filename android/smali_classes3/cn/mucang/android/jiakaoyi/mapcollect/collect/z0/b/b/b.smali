.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;",
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

.method private f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z
    .locals 2

    if-eqz p2, :cond_0

    if-eqz p3, :cond_0

    .line 1
    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p2

    invoke-static {p2, p3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide p2

    float-to-double v0, p4

    sub-double/2addr v0, p2

    double-to-float p2, v0

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 11

    const-string v0, "\u91c7\u96c61\u53f7\u70b9"

    const-string v1, "\u91c7\u96c62\u53f7\u70b9"

    const-string v2, "\u91c7\u96c63\u53f7\u70b9"

    const-string v3, "\u91c7\u96c64\u53f7\u70b9"

    const-string v4, "\u91c7\u96c65\u53f7\u70b9"

    const-string v5, "\u91c7\u96c66\u53f7\u70b9"

    const-string v6, "\u91c7\u96c67\u53f7\u70b9"

    const-string v7, "\u91c7\u96c68\u53f7\u70b9"

    const-string v8, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v9, "\u91c7\u96c6\u9884\u62a5\u70b92"

    const-string v10, "\u8865\u5168\u5269\u4f59\u70b9"

    .line 1
    filled-new-array/range {v0 .. v10}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    const/16 p1, 0x8

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p4, p2, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;->g(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x9

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_2
    const/16 p1, 0xa

    if-ne p2, p1, :cond_3

    .line 4
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;->f()V

    :cond_3
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/h;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;)V
    .locals 28

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    .line 1
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 2
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 3
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 4
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 5
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 6
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 7
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 9
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    .line 10
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2DaoKuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    .line 11
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 12
    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v1, v4

    invoke-static {v13, v12, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v18

    const-string v3, "1"

    const v19, -0x139001

    move-object v1, v12

    move-object v2, v5

    move v0, v4

    move/from16 v4, v19

    move-object/from16 p2, v5

    move-object/from16 v5, p1

    move-object v10, v6

    move-object/from16 v6, v18

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v0

    .line 13
    invoke-static {v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "2"

    const v4, -0x139001

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v0

    .line 14
    invoke-static {v13, v14, v15, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "3"

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v0

    .line 15
    invoke-static {v14, v15, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "4"

    move-object v1, v15

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v0

    .line 16
    invoke-static {v8, v9, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "5"

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v0

    .line 17
    invoke-static {v7, v8, v9, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "6"

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v0

    .line 18
    invoke-static {v10, v7, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "7"

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v0

    .line 19
    invoke-static {v7, v10, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "8"

    move-object v1, v10

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 20
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 21
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v18, -0x99138a

    const-string v19, "\u5165\u53e3"

    const/16 v20, 0x1

    move-object v1, v12

    move-object v2, v13

    move-object v3, v0

    move-object/from16 v4, p1

    move-object/from16 p3, v7

    move/from16 v7, v18

    move-object/from16 v21, v8

    move-object/from16 v8, v19

    move-object/from16 v18, v12

    move-object v12, v9

    move/from16 v9, v20

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 22
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0xb5c0

    const-string v8, "\u51fa\u53e3"

    const/4 v9, 0x1

    move-object/from16 v1, p3

    move-object v2, v10

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 23
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0x99138a

    const/4 v8, 0x0

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 24
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/4 v7, -0x1

    const/4 v9, 0x0

    move-object v1, v13

    move-object v2, v14

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 25
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v14

    move-object v2, v15

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 26
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v15, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v15

    move-object v2, v12

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 27
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, v21

    invoke-static {v12, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/16 v16, 0x0

    move-object v1, v12

    move-object v2, v9

    move-object/from16 v17, v12

    move-object v12, v9

    move/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 28
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, p3

    invoke-static {v12, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v12

    move-object v2, v9

    move-object/from16 v22, v9

    move/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 29
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, v18

    invoke-static {v10, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v10

    move-object v2, v9

    move-object/from16 v18, v10

    move-object v10, v9

    move/from16 v9, v16

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 30
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v7, -0xc8c

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, v14

    move-object v2, v12

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 31
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 32
    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 33
    invoke-static {v13, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 34
    invoke-static {v14, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 35
    invoke-static {v15, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v2, v17

    .line 36
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 37
    invoke-static {v12, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, v22

    .line 38
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v4, v18

    .line 39
    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 40
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v5

    if-lez v5, :cond_7

    .line 41
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    const-wide v6, -0x10000000000001L

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v16, 0x0

    move-wide/from16 v18, v8

    move-wide/from16 v20, v16

    move-wide/from16 v22, v20

    move-wide v8, v6

    move-wide/from16 v16, v18

    :goto_0
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p3, v4

    move-object/from16 p4, v5

    .line 42
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v20, v20, v4

    move-object/from16 v24, v12

    .line 43
    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v22, v22, v11

    cmpl-double v25, v16, v4

    if-lez v25, :cond_0

    move-wide/from16 v16, v4

    :cond_0
    cmpg-double v25, v6, v4

    if-gez v25, :cond_1

    move-wide v6, v4

    :cond_1
    cmpl-double v4, v18, v11

    if-lez v4, :cond_2

    move-wide/from16 v18, v11

    :cond_2
    cmpg-double v4, v8, v11

    if-gez v4, :cond_3

    move-wide v8, v11

    :cond_3
    move-object/from16 v4, p3

    move-object/from16 v5, p4

    move-object/from16 v12, v24

    goto :goto_0

    :cond_4
    move-object/from16 p3, v4

    move-object/from16 v24, v12

    .line 44
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v4

    int-to-double v4, v4

    div-double v4, v20, v4

    .line 45
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v11, v1

    div-double v11, v22, v11

    move-object/from16 v1, p1

    move-wide/from16 v26, v11

    move-object/from16 v11, p3

    move-wide/from16 p3, v26

    .line 46
    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 47
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v12

    if-lez v12, :cond_5

    .line 48
    iget-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v12, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 49
    :cond_5
    iget-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v12, p2

    invoke-virtual {v0, v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double v6, v6, v16

    sub-double v8, v8, v18

    .line 50
    invoke-static {v6, v7, v8, v9, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v0

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const/high16 v0, 0x42b40000    # 90.0f

    move-object/from16 v6, p0

    .line 51
    invoke-direct {v6, v1, v10, v13, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    .line 52
    invoke-direct {v6, v1, v14, v13, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v8

    if-nez v8, :cond_6

    .line 53
    invoke-direct {v6, v1, v14, v15, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v8

    if-nez v8, :cond_6

    .line 54
    invoke-direct {v6, v1, v2, v15, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v8

    if-nez v8, :cond_6

    move-object/from16 v8, v24

    .line 55
    invoke-direct {v6, v1, v8, v2, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 56
    invoke-direct {v6, v1, v3, v8, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v2

    if-nez v2, :cond_6

    .line 57
    invoke-direct {v6, v1, v11, v3, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v0

    if-nez v0, :cond_6

    .line 58
    invoke-direct {v6, v1, v11, v10, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/b;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TAG"

    const-string v2, "\u4e00\u4e2a\u8bbe\u7f6e\u6210\u529f\u7684\u90fd\u6ca1\u6709\uff0c\u60b2\u54c0"

    .line 59
    invoke-static {v0, v2}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    double-to-float v0, v4

    move-wide/from16 v2, p3

    double-to-float v2, v2

    .line 60
    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 61
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    goto :goto_1

    :cond_7
    move-object/from16 v6, p0

    :goto_1
    return-void
.end method
