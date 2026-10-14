.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;",
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

.method private f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return-object p1

    .line 1
    :cond_0
    invoke-interface {p2, p1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    return-object p1
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 14

    const-string v0, "\u91c7\u96c61\u53f7\u70b9"

    const-string v1, "\u91c7\u96c62\u53f7\u70b9"

    const-string v2, "\u91c7\u96c63\u53f7\u70b9"

    const-string v3, "\u91c7\u96c64\u53f7\u70b9"

    const-string v4, "\u91c7\u96c65\u53f7\u70b9"

    const-string v5, "\u91c7\u96c66\u53f7\u70b9"

    const-string v6, "\u91c7\u96c67\u53f7\u70b9"

    const-string v7, "\u91c7\u96c68\u53f7\u70b9"

    const-string v8, "\u91c7\u96c69\u53f7\u70b9"

    const-string v9, "\u91c7\u96c610\u53f7\u70b9"

    const-string v10, "\u91c7\u96c611\u53f7\u70b9"

    const-string v11, "\u91c7\u96c612\u53f7\u70b9"

    const-string v12, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v13, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 1
    filled-new-array/range {v0 .. v13}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    const/16 p1, 0xc

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p4, p2, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;->f(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/o;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;)V
    .locals 36

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    .line 1
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 2
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 3
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 4
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 5
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 6
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 7
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 9
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 10
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 11
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 12
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    move-object/from16 p3, v2

    .line 13
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    .line 14
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2ShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/i;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    .line 15
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    const/16 v18, 0x1

    .line 16
    invoke-static/range {v18 .. v18}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v19

    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    move-object/from16 p2, v2

    move-object/from16 v20, v3

    float-to-double v2, v1

    invoke-static {v13, v12, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v21

    const v22, -0x139001

    move v3, v1

    move-object v1, v12

    move-object/from16 v23, p3

    move-object/from16 v2, p2

    move v10, v3

    move-object/from16 v0, v20

    move-object/from16 v3, v19

    move-object v11, v4

    move/from16 v4, v22

    move-object/from16 v24, v5

    move-object/from16 v5, p1

    move-object v0, v6

    move-object/from16 v6, v21

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/16 v19, 0x2

    .line 17
    invoke-static/range {v19 .. v19}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const v4, -0x139001

    move-object v1, v13

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/16 v21, 0x3

    .line 18
    invoke-static/range {v21 .. v21}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v15, v14, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v14

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v6, 0x4

    .line 19
    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v14, v15, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v22

    move-object v1, v15

    move-object/from16 v2, p2

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v1, 0x5

    .line 20
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v8, v9, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v9

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v1, 0x6

    .line 21
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v9, v8, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v8

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v1, 0x7

    .line 22
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v0, v7, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/16 v1, 0x8

    .line 23
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v7, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v0

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/16 v1, 0x9

    .line 24
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    move-object/from16 v6, v24

    invoke-static {v11, v6, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v22

    move-object v1, v6

    move-object/from16 v2, p2

    move-object/from16 p3, v9

    move-object v9, v6

    move-object/from16 v6, v22

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/16 v1, 0xa

    .line 25
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v9, v11, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v11

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    if-eqz v20, :cond_1

    move-object/from16 v6, v23

    if-eqz v6, :cond_0

    const/16 v1, 0xb

    .line 26
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    float-to-double v1, v10

    move-object/from16 v5, v20

    invoke-static {v6, v5, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v20

    move-object v1, v5

    move-object/from16 v2, p2

    move-object/from16 v24, v9

    move-object v9, v5

    move-object/from16 v5, p1

    move-object/from16 v22, v7

    move-object v7, v6

    move-object/from16 v6, v20

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/16 v1, 0xc

    .line 27
    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    float-to-double v1, v10

    invoke-static {v9, v7, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    move-object v1, v7

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_0

    :cond_0
    move-object/from16 v22, v7

    move-object/from16 v24, v9

    move-object/from16 v9, v20

    move-object v7, v6

    goto :goto_0

    :cond_1
    move-object/from16 v22, v7

    move-object/from16 v24, v9

    move-object/from16 v9, v20

    move-object/from16 v7, v23

    .line 28
    :goto_0
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_f

    .line 29
    new-instance v10, Ljava/util/ArrayList;

    invoke-direct {v10}, Ljava/util/ArrayList;-><init>()V

    move-object v5, v11

    move-object/from16 v11, p4

    .line 30
    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v20, -0x99138a

    const/16 v23, 0x1

    const-string v25, "\u5165\u53e3"

    move-object v1, v12

    move-object v2, v13

    move-wide/from16 v26, v3

    move-object v3, v10

    move-object/from16 v4, p1

    move-object/from16 v28, v5

    move-wide/from16 v5, v26

    move-object/from16 v30, v7

    move-object/from16 v29, v22

    move/from16 v7, v20

    move-object/from16 v31, v8

    move-object/from16 v8, v25

    move-object/from16 v20, v12

    move-object/from16 v12, p3

    move-object/from16 p3, v13

    move-object v13, v9

    move/from16 v9, v23

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 31
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0x99138a

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object/from16 v1, v16

    move-object/from16 v2, v17

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 32
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v7, -0xc8c

    move-object v1, v14

    move-object v2, v15

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    if-eqz v12, :cond_4

    move-object/from16 v9, v31

    if-eqz v9, :cond_3

    move-object/from16 v8, v29

    if-eqz v8, :cond_2

    if-eqz v0, :cond_2

    const/4 v1, 0x4

    new-array v1, v1, [Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v2, 0x0

    aput-object v12, v1, v2

    aput-object v9, v1, v18

    aput-object v8, v1, v19

    aput-object v0, v1, v21

    .line 33
    invoke-static {v1}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v1

    const/16 v2, -0xc8c

    move-object/from16 v7, p1

    invoke-static {v1, v10, v7, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->a(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;I)V

    goto :goto_1

    :cond_2
    move-object/from16 v7, p1

    goto :goto_1

    :cond_3
    move-object/from16 v7, p1

    move-object/from16 v8, v29

    goto :goto_1

    :cond_4
    move-object/from16 v7, p1

    move-object/from16 v8, v29

    move-object/from16 v9, v31

    :goto_1
    if-eqz v13, :cond_6

    move-object/from16 v5, v30

    if-eqz v5, :cond_5

    .line 34
    iget-wide v3, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v16, -0xc8c

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    move-wide/from16 v21, v3

    move-object v3, v10

    move-object/from16 v4, p1

    move-object/from16 v23, v5

    move-wide/from16 v5, v21

    move/from16 v7, v16

    move-object/from16 v32, v8

    move-object/from16 v8, v17

    move-object/from16 v16, v0

    move-object v0, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 35
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0xb5c0

    const/4 v9, 0x1

    const-string v8, "\u51fa\u53e3"

    move-object v1, v13

    move-object/from16 v2, v23

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 36
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, p3

    invoke-static {v9, v13}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    const/4 v7, -0x1

    move-object v1, v9

    move-object v2, v13

    move-object/from16 p3, v13

    move-object v13, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 37
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v11, v20

    move-object/from16 v9, v23

    invoke-static {v11, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v11

    move-object v2, v9

    move-object/from16 v33, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move-object/from16 v31, v0

    move-object v0, v11

    move-object/from16 v34, v24

    move-object/from16 v11, v28

    goto :goto_3

    :cond_5
    move-object/from16 v16, v0

    move-object/from16 v33, v5

    move-object/from16 v32, v8

    move-object v0, v9

    move-object/from16 v9, v20

    goto :goto_2

    :cond_6
    move-object/from16 v16, v0

    move-object/from16 v32, v8

    move-object v0, v9

    move-object/from16 v9, v20

    move-object/from16 v33, v30

    :goto_2
    move-object/from16 v35, v13

    move-object/from16 v13, p3

    move-object/from16 p3, v35

    .line 38
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0xb5c0

    const/16 v17, 0x1

    const-string v8, "\u51fa\u53e3"

    move-object/from16 v1, v24

    move-object/from16 v2, v28

    move-object v3, v10

    move-object/from16 v4, p1

    move-object/from16 v31, v0

    move-object v0, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 39
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, v24

    invoke-static {v0, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/16 v17, 0x0

    const/4 v7, -0x1

    move-object v1, v0

    move-object v2, v9

    move-object/from16 v34, v9

    move/from16 v9, v17

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 40
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v11, v28

    invoke-static {v13, v11}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v13

    move-object v2, v11

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 41
    :goto_3
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 42
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 43
    invoke-static {v13, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 44
    invoke-static {v14, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 45
    invoke-static {v15, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 46
    invoke-static {v12, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v2, v31

    .line 47
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v2, v32

    .line 48
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v2, v16

    .line 49
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v2, v34

    .line 50
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 51
    invoke-static {v11, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    if-eqz p3, :cond_7

    move-object/from16 v2, v33

    if-eqz v2, :cond_7

    move-object/from16 v3, p3

    .line 52
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 53
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 54
    :cond_7
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v6, v4

    move-wide v8, v6

    move-wide v4, v2

    :cond_8
    :goto_4
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_c

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 55
    iget-wide v14, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v12, v6, v14

    if-lez v12, :cond_9

    move-wide v6, v14

    :cond_9
    cmpg-double v12, v2, v14

    if-gez v12, :cond_a

    move-wide v2, v14

    .line 56
    :cond_a
    iget-wide v11, v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v14, v8, v11

    if-lez v14, :cond_b

    move-wide v8, v11

    :cond_b
    cmpg-double v14, v4, v11

    if-gez v14, :cond_8

    move-wide v4, v11

    goto :goto_4

    :cond_c
    add-double v11, v6, v2

    const-wide/high16 v14, 0x3fe0000000000000L    # 0.5

    mul-double v11, v11, v14

    add-double v16, v8, v4

    mul-double v14, v14, v16

    move-object/from16 v1, p1

    move-wide/from16 p3, v14

    .line 57
    iget-object v14, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 58
    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_d

    .line 59
    iget-object v14, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v14, v10}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 60
    :cond_d
    iget-object v10, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v14, p2

    invoke-virtual {v10, v14}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v2, v6

    sub-double/2addr v4, v8

    .line 61
    invoke-static {v2, v3, v4, v5, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    if-eqz v0, :cond_e

    if-eqz v13, :cond_e

    .line 62
    invoke-virtual {v0, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const/high16 v0, 0x42b40000    # 90.0f

    .line 63
    invoke-static {v2, v3}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v2

    double-to-float v2, v2

    sub-float/2addr v0, v2

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    :cond_e
    double-to-float v0, v11

    move-wide/from16 v2, p3

    double-to-float v2, v2

    .line 64
    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 65
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_f
    return-void
.end method
