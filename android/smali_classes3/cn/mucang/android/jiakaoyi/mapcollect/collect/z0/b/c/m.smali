.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;",
        ">;"
    }
.end annotation


# instance fields
.field private a:F


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;
    .locals 4

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->a:F

    const/high16 v2, -0x10000

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;-><init>(FII)V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 15

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

    const-string v12, "\u91c7\u96c613\u53f7\u70b9"

    const-string v13, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v14, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 1
    filled-new-array/range {v0 .. v14}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    const/16 p1, 0xd

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p4, p2, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;->f(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0xe

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/c/m;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;)V
    .locals 29

    move-object/from16 v9, p1

    move-object/from16 v0, p2

    move-object/from16 v10, p4

    .line 1
    iget v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->poleRadius:F

    move-object/from16 v11, p0

    iput v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->a:F

    .line 2
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 3
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 4
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 5
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 6
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 7
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 9
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 10
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gpsB9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 11
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 12
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 13
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    move-object/from16 p3, v1

    .line 14
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->gps13:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    move-object/from16 v16, v1

    .line 15
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v17

    .line 16
    iget-object v1, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v18

    .line 17
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 18
    sget v0, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    move-object/from16 p2, v1

    move-object/from16 v19, v2

    float-to-double v1, v0

    invoke-static {v13, v12, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v20

    const-string v2, "1"

    const v21, -0x139001

    move v1, v0

    move-object v0, v12

    move-object/from16 v22, p3

    move/from16 v24, v1

    move-object/from16 v23, v16

    move-object/from16 v1, p2

    move-object/from16 v11, v19

    move-object v9, v3

    move/from16 v3, v21

    move-object/from16 p3, v4

    move-object/from16 v4, p1

    move-object/from16 v16, v5

    move-object/from16 v5, v20

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    move/from16 v5, v24

    float-to-double v0, v5

    .line 19
    invoke-static {v12, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v19

    const-string v2, "2"

    const v3, -0x139001

    move-object v0, v13

    move-object/from16 v1, p2

    move-object/from16 v20, v13

    move v13, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 20
    invoke-static {v15, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "3"

    move-object v0, v14

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 21
    invoke-static {v14, v15, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "4"

    move-object v0, v15

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 22
    invoke-static {v11, v9, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "10"

    move-object v0, v9

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 23
    invoke-static {v9, v11, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "11"

    move-object v0, v11

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    move-object/from16 v5, v22

    move-object/from16 v4, v23

    .line 24
    invoke-static {v4, v5, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v19

    const-string v2, "12"

    move-object v0, v5

    move-object/from16 v1, p2

    move-object/from16 v25, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v11

    move-object v11, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    move-object/from16 v13, v25

    .line 25
    invoke-static {v11, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "13"

    move-object v0, v13

    move-object/from16 v1, p2

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 26
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v5

    const/4 v2, 0x0

    const/4 v4, 0x0

    move-object v0, v8

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 27
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v5

    move-object v0, v7

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 28
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v5

    move-object v0, v6

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 29
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v5

    move-object/from16 v0, v16

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 30
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/c/m;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v5

    move-object/from16 v0, p3

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 31
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v19, -0x99138a

    const-string v22, "\u5165\u53e3"

    const/16 v23, 0x1

    move-object v0, v12

    move-object/from16 v1, v20

    move-object/from16 v2, p2

    move-object/from16 v26, v6

    move/from16 v6, v19

    move-object/from16 v27, v7

    move-object/from16 v7, v22

    move-object/from16 v28, v8

    move/from16 v8, v23

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 32
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0xb5c0

    const-string v7, "\u51fa\u53e3"

    const/4 v8, 0x1

    move-object v0, v11

    move-object v1, v13

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 33
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v7, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 34
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v14, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    const/4 v8, 0x0

    move-object v0, v14

    move-object v1, v9

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 35
    iget-wide v4, v10, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v10, v21

    invoke-static {v15, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v15

    move-object v1, v10

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 36
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 37
    invoke-static {v12, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, v20

    .line 38
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 39
    invoke-static {v14, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 40
    invoke-static {v15, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, v28

    .line 41
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, v27

    .line 42
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, v26

    .line 43
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, v16

    .line 44
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v1, p3

    .line 45
    invoke-static {v1, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 46
    invoke-static {v9, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 47
    invoke-static {v10, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 48
    invoke-static {v11, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 49
    invoke-static {v13, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 50
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v1

    if-lez v1, :cond_5

    .line 51
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const-wide v2, -0x10000000000001L

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v6, 0x0

    move-wide v8, v4

    move-wide v10, v6

    move-wide v12, v10

    move-wide v4, v2

    move-wide v6, v8

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v14

    if-eqz v14, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 p3, v0

    move-object/from16 p4, v1

    .line 52
    iget-wide v0, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double/2addr v10, v0

    .line 53
    iget-wide v14, v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double/2addr v12, v14

    cmpl-double v16, v6, v0

    if-lez v16, :cond_0

    move-wide v6, v0

    :cond_0
    cmpg-double v16, v2, v0

    if-gez v16, :cond_1

    move-wide v2, v0

    :cond_1
    cmpl-double v0, v8, v14

    if-lez v0, :cond_2

    move-wide v8, v14

    :cond_2
    cmpg-double v0, v4, v14

    if-gez v0, :cond_3

    move-wide v4, v14

    :cond_3
    move-object/from16 v0, p3

    move-object/from16 v1, p4

    goto :goto_0

    :cond_4
    move-object/from16 p3, v0

    .line 54
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v10, v0

    .line 55
    invoke-interface/range {p3 .. p3}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v0, v0

    div-double/2addr v12, v0

    move-object/from16 v0, p1

    .line 56
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 57
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v14, p2

    invoke-virtual {v1, v14}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v2, v6

    sub-double/2addr v4, v8

    .line 58
    invoke-static {v2, v3, v4, v5, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    double-to-float v1, v10

    double-to-float v2, v12

    .line 59
    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 60
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_5
    return-void
.end method
