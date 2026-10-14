.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;",
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
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/a;->e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 14

    const-string v0, "1\u53f7\u70b9"

    const-string v1, "2\u53f7\u70b9"

    const-string v2, "3\u53f7\u70b9"

    const-string v3, "4\u53f7\u70b9"

    const-string v4, "\u8bc4\u5224\u533a\u57df1\u53f7\u70b9"

    const-string v5, "\u8bc4\u5224\u533a\u57df2\u53f7\u70b9"

    const-string v6, "\u8bc4\u5224\u533a\u57df3\u53f7\u70b9"

    const-string v7, "\u8bc4\u5224\u533a\u57df4\u53f7\u70b9"

    const-string v8, "\u6591\u9a6c\u7ebf1\u53f7\u70b9"

    const-string v9, "\u6591\u9a6c\u7ebf2\u53f7\u70b9"

    const-string v10, "\u6591\u9a6c\u7ebf3\u53f7\u70b9"

    const-string v11, "\u6591\u9a6c\u7ebf4\u53f7\u70b9"

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
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/a;->d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public d(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    const/16 p1, 0xc

    if-ge p2, p1, :cond_0

    add-int/lit8 p1, p2, 0x1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/a;->b()[Ljava/lang/String;

    move-result-object p3

    aget-object p2, p3, p2

    invoke-virtual {p4, p1, p5, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;->f(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/lang/String;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xd

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;)V
    .locals 25

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    .line 1
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 2
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 3
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 4
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 5
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 6
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 7
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 8
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 9
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 10
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 11
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 12
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 13
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v16

    .line 14
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoBanMaXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    .line 15
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 16
    sget v0, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    move-object/from16 p2, v1

    move-object/from16 p3, v2

    float-to-double v1, v0

    invoke-static {v12, v11, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v18

    const-string v2, "1"

    const v19, -0x139001

    move v1, v0

    move-object v0, v11

    move-object/from16 v20, p2

    move/from16 v21, v1

    move-object/from16 v1, v20

    move-object/from16 v9, p3

    move-object v9, v3

    move/from16 v3, v19

    move-object/from16 v22, v4

    move-object/from16 v4, p1

    move-object/from16 v19, v9

    move-object v9, v5

    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move/from16 v5, v21

    float-to-double v0, v5

    .line 17
    invoke-static {v11, v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v18

    const-string v2, "2"

    const v3, -0x139001

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v21, v12

    move v12, v5

    move-object/from16 v5, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 18
    invoke-static {v14, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "3"

    move-object v0, v13

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 19
    invoke-static {v13, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "4"

    move-object v0, v14

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 20
    invoke-static {v7, v6, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u8bc4\u52241"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 21
    invoke-static {v6, v7, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u8bc4\u52242"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 22
    invoke-static {v8, v15, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u8bc4\u52243"

    move-object v0, v15

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 23
    invoke-static {v15, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u8bc4\u52244"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 24
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v18, -0x1

    const-string v23, ""

    const/16 v24, 0x1

    move-object v0, v6

    move-object v1, v7

    move-object/from16 v2, v20

    move-object/from16 v3, p1

    move/from16 v6, v18

    move-object/from16 v7, v23

    move-object/from16 v18, v8

    move/from16 v8, v24

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 25
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v6, -0x1

    const-string v7, ""

    const/4 v8, 0x1

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    float-to-double v0, v12

    move-object/from16 v6, v22

    .line 26
    invoke-static {v6, v9, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u6591\u9a6c\u7ebf1"

    const v3, -0x139001

    move-object v0, v9

    move-object/from16 v1, v20

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    move-object/from16 v7, v19

    .line 27
    invoke-static {v9, v7, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u6591\u9a6c\u7ebf2"

    move-object v0, v6

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    move-object/from16 v8, p3

    .line 28
    invoke-static {v8, v7, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u6591\u9a6c\u7ebf3"

    move-object v0, v7

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v12

    .line 29
    invoke-static {v7, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "\u6591\u9a6c\u7ebf4"

    move-object v0, v8

    move-object/from16 v1, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    if-eqz v9, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    .line 30
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v0, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v0, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 31
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 32
    invoke-virtual {v9, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    .line 33
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;

    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    double-to-float v2, v2

    const/4 v3, -0x1

    invoke-direct {v5, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;-><init>(FI)V

    const/high16 v2, 0x41f00000    # 30.0f

    .line 34
    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->c(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    invoke-virtual {v5, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->d(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    move-object/from16 v9, p1

    invoke-direct {v4, v9, v0, v1, v5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;)V

    move-object/from16 v12, v20

    .line 35
    invoke-interface {v12, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object/from16 v9, p1

    move-object/from16 v12, v20

    .line 36
    :goto_0
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v8, 0x1

    const-string v7, "\u5165\u53e3"

    move-object v0, v11

    move-object/from16 v1, v21

    move-object v2, v12

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 37
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0xb5c0

    const-string v7, "\u51fa\u53e3"

    move-object v0, v13

    move-object v1, v14

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 38
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v7, 0x0

    move-object/from16 v0, v16

    move-object/from16 v1, v17

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 39
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 40
    invoke-static {v11, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, v21

    .line 41
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 42
    invoke-static {v13, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 43
    invoke-static {v14, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 44
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_6

    .line 45
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v6, 0x0

    move-wide v10, v4

    move-wide v13, v6

    move-wide v15, v13

    move-wide v4, v2

    move-wide v6, v10

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p2, v0

    move-object/from16 p3, v1

    .line 46
    iget-wide v0, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v13, v0

    move-wide/from16 v17, v13

    .line 47
    iget-wide v13, v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v15, v13

    cmpl-double v8, v6, v0

    if-lez v8, :cond_1

    move-wide v6, v0

    :cond_1
    cmpg-double v8, v2, v0

    if-gez v8, :cond_2

    move-wide v2, v0

    :cond_2
    cmpl-double v0, v10, v13

    if-lez v0, :cond_3

    move-wide v10, v13

    :cond_3
    cmpg-double v0, v4, v13

    if-gez v0, :cond_4

    move-wide v4, v13

    :cond_4
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-wide/from16 v13, v17

    goto :goto_1

    :cond_5
    move-object/from16 p2, v0

    .line 48
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v13, v0

    .line 49
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double v0, v15, v0

    .line 50
    iget-object v8, v9, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v8}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 51
    iget-object v8, v9, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v8, v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v2, v6

    sub-double/2addr v4, v10

    .line 52
    invoke-static {v2, v3, v4, v5, v9}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v2

    invoke-virtual {v9, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    double-to-float v2, v13

    double-to-float v0, v0

    .line 53
    invoke-virtual {v9, v2, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 54
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_6
    return-void
.end method
