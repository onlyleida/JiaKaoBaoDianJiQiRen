.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;",
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

.method private d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            ")V"
        }
    .end annotation

    if-eqz p1, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    sget v2, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->b:F

    invoke-direct {v1, v2, p4}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;-><init>(FI)V

    invoke-virtual {v1, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-direct {v0, p5, p1, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;)V

    invoke-interface {p2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method

.method public static e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;",
            ">;",
            "Ljava/lang/String;",
            "I",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")V"
        }
    .end annotation

    if-eqz p0, :cond_0

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    sget v2, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->b:F

    invoke-direct {v1, v2, p3}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;-><init>(FI)V

    invoke-virtual {v1, p2}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;

    invoke-direct {v0, p4, p0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/m$a;)V

    invoke-interface {p1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_0
    return-void
.end method


# virtual methods
.method public bridge synthetic a(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 28

    const-string v0, "\u91c7\u96c6\u9884\u62a5\u70b91"

    const-string v1, "\u91c7\u96c6\u9884\u62a5\u70b92"

    const-string v2, "\u5f00\u59cb\u91c7\u96c6\u5de6\u8fb9\u5b9e\u7ebf1\u53f7\u70b9"

    const-string v3, "\u7ed3\u675f\u91c7\u96c6\u5de6\u8fb9\u5b9e\u7ebf2\u53f7\u70b9"

    const-string v4, "\u5f00\u59cb\u91c7\u96c6\u53f3\u8fb9\u5b9e\u7ebf3\u53f7\u70b9"

    const-string v5, "\u7ed3\u675f\u91c7\u96c6\u53f3\u8fb9\u5b9e\u7ebf4\u53f7\u70b9"

    const-string v6, "\u5f00\u59cb\u91c7\u96c6\u4e2d\u95f4\u5b9e\u7ebf5\u53f7\u70b9"

    const-string v7, "\u7ed3\u675f\u91c7\u96c6\u4e2d\u95f4\u5b9e\u7ebf6\u53f7\u70b9"

    const-string v8, "\u91c7\u96c61\u53f7\u70b9"

    const-string v9, "\u91c7\u96c62\u53f7\u70b9"

    const-string v10, "\u91c7\u96c63\u53f7\u70b9"

    const-string v11, "\u91c7\u96c64\u53f7\u70b9"

    const-string v12, "\u91c7\u96c65\u53f7\u70b9"

    const-string v13, "\u91c7\u96c66\u53f7\u70b9"

    const-string v14, "\u91c7\u96c67\u53f7\u70b9"

    const-string v15, "\u91c7\u96c68\u53f7\u70b9"

    const-string v16, "\u91c7\u96c69\u53f7\u70b9"

    const-string v17, "\u91c7\u96c610\u53f7\u70b9"

    const-string v18, "\u91c7\u96c60\u7c73\u70b91"

    const-string v19, "\u91c7\u96c60\u7c73\u70b92"

    const-string v20, "\u91c7\u96c650\u7c73\u70b91"

    const-string v21, "\u91c7\u96c650\u7c73\u70b92"

    const-string v22, "\u91c7\u96c6100\u7c73\u70b91"

    const-string v23, "\u91c7\u96c6100\u7c73\u70b92"

    const-string v24, "\u91c7\u96c6150\u7c73\u70b91"

    const-string v25, "\u91c7\u96c6150\u7c73\u70b92"

    const-string v26, "\u91c7\u96c6200\u7c73\u70b91"

    const-string v27, "\u91c7\u96c6200\u7c73\u70b92"

    .line 1
    filled-new-array/range {v0 .. v27}, [Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic c(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/u0;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    .line 1
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public f(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->v(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->w(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->y()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 4
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->j()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 5
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->z()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 6
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->k()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    if-ne p2, p1, :cond_6

    .line 7
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->x()V

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    if-ne p2, p1, :cond_7

    .line 8
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->i()V

    goto :goto_0

    :cond_7
    if-le p2, p1, :cond_8

    const/16 p3, 0x12

    if-ge p2, p3, :cond_8

    sub-int/2addr p2, p1

    .line 9
    invoke-virtual {p4, p2, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->u(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    .line 10
    :cond_8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->b()[Ljava/lang/String;

    move-result-object p1

    aget-object p1, p1, p2

    invoke-virtual {p4, p2, p5, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->s(ILcn/mucang/android/jiakaoyi/signal/pos/Gps;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;)V
    .locals 30

    move-object/from16 v9, p1

    move-object/from16 v10, p2

    move-object/from16 v11, p4

    .line 1
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 2
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 3
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 4
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 5
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 6
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 7
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 8
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 9
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 10
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 11
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 12
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v16, v3

    .line 14
    sget v3, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    move-object/from16 v18, v0

    move-object/from16 v17, v1

    float-to-double v0, v3

    invoke-static {v15, v14, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v19

    const-string v20, "1"

    const v21, -0x139001

    move-object/from16 v1, v18

    move-object v0, v14

    move-object/from16 v22, v17

    move-object v9, v2

    move-object/from16 v2, v20

    move-object/from16 v10, v16

    move-object/from16 v16, v13

    move v13, v3

    move/from16 v3, v21

    move-object/from16 v23, v4

    move-object/from16 v4, p1

    move-object/from16 v17, v12

    move-object v12, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 15
    invoke-static {v14, v15, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "2"

    const v3, -0x139001

    move-object v0, v15

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 16
    invoke-static {v7, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "3"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 17
    invoke-static {v15, v7, v6, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "4"

    move-object v0, v7

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 18
    invoke-static {v7, v6, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "5"

    move-object v0, v6

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 19
    invoke-static {v6, v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "6"

    move-object v0, v12

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    move-object/from16 v4, v22

    move-object/from16 v5, v23

    .line 20
    invoke-static {v12, v5, v4, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->h(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v19

    const-string v2, "7"

    move-object v0, v5

    move-object/from16 v1, v18

    move-object/from16 v20, v8

    move-object v8, v4

    move-object/from16 v4, p1

    move-object/from16 v21, v7

    move-object v7, v5

    move-object/from16 v5, v19

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 21
    invoke-static {v7, v10, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "8"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 22
    invoke-static {v8, v9, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "9"

    move-object v0, v9

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v13

    .line 23
    invoke-static {v9, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "10"

    move-object v0, v8

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 24
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-wide v2, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v19, -0x99138a

    const/16 v22, 0x0

    const/16 v23, 0x1

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    move-wide/from16 v24, v2

    move-object v2, v4

    move-object/from16 v3, p1

    move-object/from16 v26, v4

    move-wide/from16 v4, v24

    move-object/from16 v27, v6

    move/from16 v6, v19

    move-object/from16 v29, v7

    move-object/from16 v28, v21

    move-object/from16 v7, v22

    move/from16 v19, v13

    move-object/from16 v13, v20

    move-object/from16 v20, v9

    move-object v9, v8

    move/from16 v8, v23

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 26
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    const/4 v6, -0x1

    const/4 v8, 0x1

    move-object v0, v14

    move-object v1, v15

    move-object/from16 v2, v26

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 27
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v14, v28

    invoke-static {v13, v14}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v13

    move-object v1, v14

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 28
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v13, v27

    invoke-static {v14, v13}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x0

    move-object v0, v14

    move-object v1, v13

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 29
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v13, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v13

    move-object v1, v12

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 30
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v13, v29

    invoke-static {v12, v13}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v0, v12

    move-object v1, v13

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 31
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v13, v10}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    const/4 v8, 0x1

    move-object v0, v13

    move-object v1, v10

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 32
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    move-object/from16 v0, v20

    invoke-static {v0, v9}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->i(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Ljava/lang/String;

    move-result-object v7

    move-object v1, v9

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v6, v19

    float-to-double v0, v6

    move-object/from16 v10, v16

    move-object/from16 v9, v17

    .line 33
    invoke-static {v10, v9, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r1"

    const v3, -0x139001

    move-object v0, v9

    move-object/from16 v1, v18

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v6

    .line 34
    invoke-static {v9, v10, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r2"

    move-object v0, v10

    move-object/from16 v1, v18

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 35
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_0

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    move-object/from16 v12, p2

    .line 36
    invoke-static {v0, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    goto :goto_0

    :cond_0
    move-object/from16 v12, p2

    .line 37
    :goto_0
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_1

    .line 38
    invoke-static {v0, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 39
    :cond_1
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_2

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_2

    .line 40
    invoke-static {v0, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 41
    :cond_2
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_3

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_3

    .line 42
    invoke-static {v0, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 43
    :cond_3
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_4

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_4

    .line 44
    invoke-static {v0, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    iget-object v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v1, v12}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 45
    :cond_4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 46
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 47
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 48
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    const/4 v8, 0x1

    if-eqz v0, :cond_5

    .line 49
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    const/4 v7, 0x1

    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_6

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 50
    invoke-interface {v12, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 51
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    :cond_5
    const/4 v7, 0x1

    .line 53
    :cond_6
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 54
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_2
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 55
    invoke-interface {v12, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 56
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v7, v7, 0x1

    goto :goto_2

    .line 58
    :cond_7
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_8

    .line 59
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :goto_3
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_8

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 60
    invoke-interface {v12, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 61
    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    move-object/from16 v0, p0

    move-object/from16 v2, v18

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/a/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/2addr v7, v8

    goto :goto_3

    .line 63
    :cond_8
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v7, 0x0

    const/4 v12, 0x1

    move-object v0, v9

    move-object v1, v10

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    const/4 v9, 0x1

    move v8, v12

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 64
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    const/4 v10, 0x0

    if-lez v0, :cond_9

    const/4 v0, 0x0

    .line 65
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ge v0, v1, :cond_9

    .line 66
    invoke-interface {v13, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v12, v0, 0x1

    invoke-interface {v13, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move v0, v12

    goto :goto_4

    .line 67
    :cond_9
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_c

    .line 68
    invoke-interface {v14, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const/4 v12, 0x1

    .line 69
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ge v12, v1, :cond_c

    .line 70
    invoke-interface {v14, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v8, v1

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 71
    invoke-virtual {v0, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4049000000000000L    # 50.0

    cmpl-double v5, v1, v3

    if-gez v5, :cond_a

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ne v12, v1, :cond_b

    .line 72
    :cond_a
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/16 v16, 0x1

    const/4 v6, -0x1

    move-object v1, v8

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    move-object/from16 v17, v8

    move/from16 v8, v16

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move-object/from16 v0, v17

    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto :goto_5

    .line 73
    :cond_c
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_d

    const/4 v0, 0x0

    .line 74
    :goto_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ge v0, v1, :cond_d

    .line 75
    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v12, v0, 0x1

    invoke-interface {v15, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v6, -0x1

    move-object v0, v1

    move-object v1, v2

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move v0, v12

    goto :goto_6

    .line 76
    :cond_d
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_e

    .line 77
    invoke-interface {v13, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0x99138a

    const/4 v8, 0x1

    const-string v7, "\u5165\u53e3"

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 78
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/a/s;->l()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 79
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v9

    invoke-interface {v15, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    invoke-interface {v13, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v6, -0xb5c0

    const/4 v8, 0x1

    const-string v7, "\u51fa\u53e3"

    move-object/from16 v2, v26

    move-object/from16 v3, p1

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 80
    :cond_e
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_1b

    .line 81
    invoke-interface/range {v18 .. v18}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, -0x10000000000001L

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v3

    move-wide v7, v5

    move-wide v3, v1

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_13

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;

    .line 82
    iget-object v12, v12, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v16, v5, v9

    if-lez v16, :cond_f

    move-wide v5, v9

    :cond_f
    cmpg-double v16, v1, v9

    if-gez v16, :cond_10

    move-wide v1, v9

    .line 83
    :cond_10
    iget-wide v9, v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v12, v7, v9

    if-lez v12, :cond_11

    move-wide v7, v9

    :cond_11
    cmpg-double v12, v3, v9

    if-gez v12, :cond_12

    move-wide v3, v9

    :cond_12
    const/4 v9, 0x1

    const/4 v10, 0x0

    goto :goto_7

    :cond_13
    add-double v9, v5, v1

    const-wide/high16 v16, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v16

    add-double v19, v7, v3

    move-object v0, v15

    mul-double v14, v19, v16

    move-object/from16 v12, p1

    move-wide/from16 v16, v14

    .line 84
    iget-object v14, v12, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 85
    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_14

    .line 86
    iget-object v14, v12, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v15, v26

    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 87
    :cond_14
    iget-object v14, v12, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v15, v18

    invoke-virtual {v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v1, v5

    sub-double/2addr v3, v7

    .line 88
    invoke-static {v1, v2, v3, v4, v12}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    invoke-virtual {v12, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const/4 v1, 0x0

    .line 89
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_16

    const/4 v2, 0x0

    .line 90
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    .line 91
    iget-boolean v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    if-eqz v1, :cond_15

    const-wide v1, 0x4056800000000000L    # 90.0

    goto :goto_9

    :cond_15
    const-wide v1, -0x3fa9800000000000L    # -90.0

    goto :goto_9

    .line 92
    :cond_16
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    const/4 v2, 0x0

    if-le v3, v4, :cond_17

    .line 93
    invoke-interface {v13, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v13, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_17
    if-nez v1, :cond_18

    .line 94
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-le v3, v4, :cond_18

    .line 95
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_8

    :cond_18
    move-object v0, v1

    .line 96
    :goto_8
    iget-boolean v1, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    if-eqz v1, :cond_19

    const-wide/16 v1, 0x0

    goto :goto_9

    :cond_19
    const-wide v1, 0x4066800000000000L    # 180.0

    :goto_9
    if-eqz v0, :cond_1a

    .line 97
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    invoke-virtual {v12, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    :cond_1a
    double-to-float v0, v9

    move-wide/from16 v1, v16

    double-to-float v1, v1

    .line 98
    invoke-virtual {v12, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 99
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_1b
    return-void
.end method
