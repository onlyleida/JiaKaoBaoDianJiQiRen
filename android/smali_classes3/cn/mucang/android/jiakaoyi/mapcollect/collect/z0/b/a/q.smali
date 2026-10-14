.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;",
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

    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->a:F

    const/high16 v2, -0x10000

    const/4 v3, -0x1

    invoke-direct {v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;-><init>(FII)V

    return-object v0
.end method

.method private g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z
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
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 18

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

    const-string v10, "\u6807\u67463\u53f7\u70b9"

    const-string v11, "\u6807\u67464\u53f7\u70b9"

    const-string v12, "\u6807\u67465\u53f7\u70b9"

    const-string v13, "\u6807\u67466\u53f7\u70b9"

    const-string v14, "\u6807\u67467\u53f7\u70b9"

    const-string v15, "\u6807\u67468\u53f7\u70b9"

    const-string v16, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v17, "\u91c7\u96c6\u9884\u62a5\u70b92"

    .line 1
    filled-new-array/range {v0 .. v17}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public e(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    const/16 p1, 0x10

    if-ge p2, p1, :cond_0

    add-int/lit8 p2, p2, 0x1

    .line 1
    invoke-virtual {p4, p2, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;->f(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/16 p1, 0x11

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/f0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;)V
    .locals 33

    move-object/from16 v0, p0

    move-object/from16 v10, p1

    move-object/from16 v1, p2

    move-object/from16 v11, p4

    .line 1
    iget v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    iput v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->a:F

    .line 2
    iget-object v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 3
    iget-object v3, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 4
    iget-object v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v5, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    iget-object v6, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v6, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 7
    iget-object v7, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    iget-object v8, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v8, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 9
    iget-object v9, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v9, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 10
    iget-object v12, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v12, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 11
    iget-object v13, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v13, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 12
    iget-object v14, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v14, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 13
    iget-object v15, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v15, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 14
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 15
    iget-object v10, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    move-object/from16 p3, v10

    .line 16
    iget-object v10, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    move-object/from16 v16, v10

    .line 17
    iget-object v10, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    move-object/from16 v17, v10

    .line 18
    iget-object v10, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    move-object/from16 v18, v10

    .line 19
    iget-object v10, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    if-eqz v2, :cond_0

    if-eqz v3, :cond_0

    if-eqz v4, :cond_0

    if-eqz v5, :cond_0

    if-eqz v6, :cond_0

    if-eqz v7, :cond_0

    if-eqz v8, :cond_0

    if-eqz v9, :cond_0

    if-eqz v12, :cond_0

    if-eqz v13, :cond_0

    .line 20
    invoke-static {v7, v3, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    move-object/from16 p2, v10

    .line 21
    invoke-static {v4, v3, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 22
    invoke-static {v8, v3, v12}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 23
    invoke-virtual {v7, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v19

    .line 24
    invoke-virtual {v4, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v21

    add-double v21, v21, v19

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    mul-double v21, v21, v19

    move-object/from16 v23, v0

    mul-double v0, v21, v19

    .line 25
    invoke-static {v3, v13, v2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v19

    .line 26
    invoke-static {v10, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v20

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    neg-double v14, v0

    .line 27
    invoke-static {v5, v3, v10, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 28
    invoke-static {v6, v10, v5, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 29
    invoke-static {v5, v7, v6, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 30
    invoke-static {v4, v6, v7, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 31
    invoke-static {v9, v12, v8, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 32
    invoke-static {v6, v8, v9, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 33
    invoke-static {v13, v8, v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 34
    invoke-static {v2, v12, v13, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    move-object v12, v3

    move-object v14, v5

    move-object v15, v7

    move-object v8, v9

    move-object/from16 v0, v19

    move-object v9, v4

    move-object v7, v6

    move-object v6, v13

    move-object v13, v10

    move-object/from16 v10, v20

    goto :goto_0

    :cond_0
    move-object/from16 v23, v0

    move-object/from16 p2, v10

    move-object/from16 v21, v14

    move-object/from16 v22, v15

    move-object v0, v2

    move-object v10, v3

    move-object v14, v6

    move-object v15, v7

    move-object v7, v12

    move-object v6, v13

    move-object v12, v4

    move-object v13, v5

    move-object/from16 v32, v9

    move-object v9, v8

    move-object/from16 v8, v32

    :goto_0
    const v19, -0x139001

    const/16 v20, -0x1

    .line 35
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 36
    sget v4, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v1, v4

    invoke-static {v10, v0, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v24

    const v25, -0x139001

    const-string v3, "1"

    move-object v1, v0

    move-object v2, v5

    move v11, v4

    move/from16 v4, v25

    move-object/from16 v25, v5

    move-object/from16 v5, p1

    move-object/from16 v26, v6

    move-object/from16 v6, v24

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 37
    invoke-static {v0, v10, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const v4, -0x139001

    const-string v3, "2"

    move-object v1, v10

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 38
    invoke-static {v10, v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "3"

    move-object v1, v12

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 39
    invoke-static {v12, v13, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "4"

    move-object v1, v13

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 40
    invoke-static {v15, v14, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "5"

    move-object v1, v14

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 41
    invoke-static {v14, v15, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "6"

    move-object v1, v15

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 42
    invoke-static {v8, v9, v7, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "7"

    move-object v1, v9

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 43
    invoke-static {v9, v8, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "8"

    move-object v1, v8

    move-object/from16 v2, v25

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    move-object/from16 v6, v26

    .line 44
    invoke-static {v6, v7, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v24

    const-string v3, "9"

    move-object v1, v7

    move-object/from16 v2, v25

    move-object/from16 v26, v9

    move-object v9, v6

    move-object/from16 v6, v24

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v1, v11

    .line 45
    invoke-static {v7, v9, v1, v2}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    const-string v3, "10"

    move-object v1, v9

    move-object/from16 v2, v25

    move/from16 v4, v19

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    const/4 v3, 0x0

    const/4 v5, 0x0

    .line 46
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    move-object/from16 v1, v21

    move-object/from16 v4, p1

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 47
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    move-object/from16 v1, v22

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 48
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    move-object/from16 v1, v23

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 49
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    move-object/from16 v1, p3

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 50
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    move-object/from16 v1, v16

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    .line 51
    invoke-direct/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->d()Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;

    move-result-object v6

    move-object/from16 v1, v17

    invoke-static/range {v1 .. v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/g$a;)V

    move-object/from16 v11, p4

    .line 52
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v19, -0x99138a

    const/16 v24, 0x1

    const-string v27, "\u5165\u53e3"

    move-object v1, v0

    move-object v2, v10

    move-object/from16 v3, v25

    move-object/from16 v28, v7

    move/from16 v7, v19

    move-object/from16 v29, v8

    move-object/from16 v8, v27

    move-object/from16 v19, v15

    move-object/from16 v15, v26

    move-object/from16 v26, v9

    move/from16 v9, v24

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 53
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0xb5c0

    const/4 v9, 0x1

    const-string v8, "\u51fa\u53e3"

    move-object/from16 v1, v28

    move-object/from16 v2, v26

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 54
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0x99138a

    const/4 v8, 0x0

    move-object/from16 v1, v18

    move-object/from16 v2, p2

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 55
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v10, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    const/4 v7, -0x1

    move-object v1, v10

    move-object v2, v12

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 56
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v12

    move-object v2, v13

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 57
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v13

    move-object v2, v14

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 58
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, v29

    invoke-static {v14, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/16 v18, 0x0

    move-object v1, v14

    move-object v2, v9

    move-object/from16 v24, v13

    move-object v13, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 59
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v15, v13}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    const/4 v9, 0x0

    move-object v1, v15

    move-object v2, v13

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 60
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, v28

    invoke-static {v15, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v2, v9

    move-object/from16 v30, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 61
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v9, v26

    invoke-static {v9, v0}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v8

    move-object v1, v9

    move-object v2, v0

    move/from16 v7, v20

    move-object/from16 v31, v9

    move/from16 v9, v18

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 62
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v7, -0xc8c

    const/4 v8, 0x0

    const/4 v9, 0x1

    move-object v1, v12

    move-object/from16 v2, v19

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 63
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v1, v19

    move-object v2, v15

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 64
    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object v1, v14

    move-object/from16 v2, v19

    invoke-static/range {v1 .. v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 65
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 66
    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 67
    invoke-static {v10, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 68
    invoke-static {v12, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v5, v24

    .line 69
    invoke-static {v5, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 70
    invoke-static {v14, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v7, v19

    .line 71
    invoke-static {v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 72
    invoke-static {v15, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 73
    invoke-static {v13, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v6, v30

    .line 74
    invoke-static {v6, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v2, v31

    .line 75
    invoke-static {v2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, v21

    .line 76
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, v22

    .line 77
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, v23

    .line 78
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, p3

    .line 79
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, v16

    .line 80
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    move-object/from16 v3, v17

    .line 81
    invoke-static {v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;)V

    .line 82
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_7

    .line 83
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    const-wide v8, -0x10000000000001L

    const-wide v16, 0x7fefffffffffffffL    # Double.MAX_VALUE

    const-wide/16 v18, 0x0

    move-wide/from16 v20, v16

    move-wide/from16 v22, v18

    move-wide/from16 v26, v22

    move-wide/from16 v16, v8

    move-wide/from16 v18, v20

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_5

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v31, v2

    move-object/from16 p2, v3

    .line 84
    iget-wide v2, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    add-double v22, v22, v2

    move-object/from16 v28, v6

    move-object v11, v7

    .line 85
    iget-wide v6, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    add-double v26, v26, v6

    cmpl-double v4, v18, v2

    if-lez v4, :cond_1

    move-wide/from16 v18, v2

    :cond_1
    cmpg-double v4, v8, v2

    if-gez v4, :cond_2

    move-wide v8, v2

    :cond_2
    cmpl-double v2, v20, v6

    if-lez v2, :cond_3

    move-wide/from16 v20, v6

    :cond_3
    cmpg-double v2, v16, v6

    if-gez v2, :cond_4

    move-wide/from16 v16, v6

    :cond_4
    move-object/from16 v3, p2

    move-object v7, v11

    move-object/from16 v6, v28

    move-object/from16 v2, v31

    goto :goto_1

    :cond_5
    move-object/from16 v31, v2

    move-object/from16 v28, v6

    move-object v11, v7

    .line 86
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v2

    int-to-double v2, v2

    div-double v2, v22, v2

    .line 87
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    int-to-double v6, v1

    div-double v6, v26, v6

    move-object/from16 v1, p1

    .line 88
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 89
    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 p2, v11

    move-object/from16 v11, v25

    invoke-virtual {v4, v11}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double v8, v8, v18

    move-wide/from16 p3, v6

    sub-double v6, v16, v20

    .line 90
    invoke-static {v8, v9, v6, v7, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v4

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const/high16 v4, 0x42b40000    # 90.0f

    move-object/from16 v6, p0

    .line 91
    invoke-direct {v6, v1, v0, v10, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v7

    if-nez v7, :cond_6

    const/4 v7, 0x0

    .line 92
    invoke-direct {v6, v1, v12, v10, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v8

    if-nez v8, :cond_6

    .line 93
    invoke-direct {v6, v1, v12, v5, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v8

    if-nez v8, :cond_6

    .line 94
    invoke-direct {v6, v1, v14, v5, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v5, p2

    .line 95
    invoke-direct {v6, v1, v5, v14, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v8

    if-nez v8, :cond_6

    .line 96
    invoke-direct {v6, v1, v15, v5, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v5

    if-nez v5, :cond_6

    .line 97
    invoke-direct {v6, v1, v13, v15, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v12, v28

    .line 98
    invoke-direct {v6, v1, v13, v12, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v5

    if-nez v5, :cond_6

    move-object/from16 v13, v31

    .line 99
    invoke-direct {v6, v1, v12, v13, v4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v4

    if-nez v4, :cond_6

    .line 100
    invoke-direct {v6, v1, v13, v0, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/q;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;F)Z

    move-result v0

    if-nez v0, :cond_6

    const-string v0, "TAG"

    const-string v4, "\u4e00\u4e2a\u8bbe\u7f6e\u6210\u529f\u7684\u90fd\u6ca1\u6709\uff0c\u60b2\u54c0"

    .line 101
    invoke-static {v0, v4}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :cond_6
    double-to-float v0, v2

    move-wide/from16 v2, p3

    double-to-float v2, v2

    .line 102
    invoke-virtual {v1, v0, v2}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 103
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    goto :goto_2

    :cond_7
    move-object/from16 v6, p0

    :goto_2
    return-void
.end method
