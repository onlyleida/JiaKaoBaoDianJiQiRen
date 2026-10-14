.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/a<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;",
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

.method private d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/p/k;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;",
            "DI",
            "Ljava/lang/String;",
            "Z)V"
        }
    .end annotation

    if-eqz p1, :cond_2

    if-eqz p2, :cond_2

    const v0, 0x3f99999a    # 1.2f

    if-eqz p8, :cond_0

    const-string v1, "\u5165\u53e3"

    .line 1
    invoke-virtual {p8, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2
    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    goto :goto_0

    .line 3
    :cond_0
    sget v1, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    mul-float v1, v1, v0

    float-to-double v0, v1

    invoke-static {p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object v0

    :goto_0
    if-eqz p9, :cond_1

    .line 4
    new-instance p9, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    double-to-float p5, p5

    invoke-direct {v1, p5, p7}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;-><init>(FI)V

    .line 5
    invoke-virtual {v1, p8}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->e(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    const/high16 p5, 0x41a00000    # 20.0f

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->c(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    const/high16 p5, 0x42200000    # 40.0f

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->d(F)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    iget-object p5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p6, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;

    invoke-direct {p9, p4, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/e;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/e$a;)V

    .line 6
    invoke-interface {p3, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 7
    :cond_1
    new-instance p9, Lcn/mucang/android/jiakaoyi/hpmap/view/p/i;

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    double-to-float p5, p5

    invoke-direct {v1, p5, p7}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;-><init>(FI)V

    .line 8
    invoke-virtual {v1, p8}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->a(Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    iget-object p5, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object p6, v0, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p5, p6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p5

    invoke-virtual {v1, p5}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;->b(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;

    invoke-direct {p9, p4, p1, p2, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/p/i;-><init>(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/hpmap/view/p/b$a;)V

    .line 9
    invoke-interface {p3, p9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    :goto_1
    return-void
.end method

.method private e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V
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

.method public static f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
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
    check-cast p3, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;

    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->h(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;)V

    return-void
.end method

.method public b()[Ljava/lang/String;
    .locals 8

    const-string v0, "\u5f00\u59cb\u91c7\u96c6\u5de6\u8fb9\u7ebf"

    const-string v1, "\u7ed3\u675f\u91c7\u96c6\u5de6\u8fb9\u7ebf"

    const-string v2, "\u5f00\u59cb\u91c7\u96c6\u53f3\u8fb9\u7ebf"

    const-string v3, "\u7ed3\u675f\u91c7\u96c6\u53f3\u8fb9\u7ebf"

    const-string v4, "\u5f00\u59cb\u91c7\u96c6\u4e2d\u95f4\u7ebf"

    const-string v5, "\u7ed3\u675f\u91c7\u96c6\u4e2d\u95f4\u7ebf"

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
    check-cast p4, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;

    invoke-virtual/range {p0 .. p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method public g(Lcn/mucang/android/jiakaoyi/mapcollect/collect/v0;ILcn/mucang/android/jiakaoyi/mapcollect/collect/PosCollectActivity;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 0

    if-nez p2, :cond_0

    .line 1
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->w()V

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    if-ne p2, p1, :cond_1

    .line 2
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->j()V

    goto :goto_0

    :cond_1
    const/4 p1, 0x2

    if-ne p2, p1, :cond_2

    .line 3
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->x()V

    goto :goto_0

    :cond_2
    const/4 p1, 0x3

    if-ne p2, p1, :cond_3

    .line 4
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->k()V

    goto :goto_0

    :cond_3
    const/4 p1, 0x4

    if-ne p2, p1, :cond_4

    .line 5
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->v()V

    goto :goto_0

    :cond_4
    const/4 p1, 0x5

    if-ne p2, p1, :cond_5

    .line 6
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->i()V

    goto :goto_0

    :cond_5
    const/4 p1, 0x6

    if-ne p2, p1, :cond_6

    .line 7
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->t(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    goto :goto_0

    :cond_6
    const/4 p1, 0x7

    if-ne p2, p1, :cond_7

    .line 8
    invoke-virtual {p4, p5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->u(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    :cond_7
    :goto_0
    return-void
.end method

.method public h(Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/i/a;Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;)V
    .locals 21

    move-object/from16 v10, p1

    move-object/from16 v6, p2

    move-object/from16 v11, p4

    .line 1
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 2
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-static {v0, v6}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->j(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/a;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 3
    new-instance v12, Ljava/util/ArrayList;

    invoke-direct {v12}, Ljava/util/ArrayList;-><init>()V

    .line 4
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 5
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 6
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    .line 7
    sget v9, Lcn/mucang/android/jiakaoyi/hpmap/b/a;->a:F

    float-to-double v0, v9

    invoke-static {v8, v7, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r1"

    const v3, -0x139001

    move-object v0, v7

    move-object v1, v15

    move-object/from16 v4, p1

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    float-to-double v0, v9

    .line 8
    invoke-static {v7, v8, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->g(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    const-string v2, "r2"

    move-object v0, v8

    move-object v1, v15

    invoke-static/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->f(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 9
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    const/4 v9, 0x1

    if-eqz v0, :cond_0

    .line 10
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    const/16 v17, 0x1

    :goto_0
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    invoke-interface {v6, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 12
    invoke-interface {v12, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 13
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_0

    :cond_0
    const/16 v17, 0x1

    .line 14
    :cond_1
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 15
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_1
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    invoke-interface {v6, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 17
    invoke-interface {v13, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_1

    .line 19
    :cond_2
    iget-object v0, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_3

    .line 20
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    :goto_2
    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    invoke-interface {v6, v0}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 22
    invoke-interface {v14, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    invoke-static/range {v17 .. v17}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    const v4, -0x139001

    move-object/from16 v0, p0

    move-object v2, v15

    move-object/from16 v5, p1

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->e(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Ljava/lang/String;ILcn/mucang/android/jiakaoyi/hpmap/view/MapView;)V

    add-int/lit8 v17, v17, 0x1

    goto :goto_2

    .line 24
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 25
    iget-wide v4, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v16, -0x99138a

    const/16 v17, 0x0

    const/16 v18, 0x1

    move-object v0, v7

    move-object v1, v8

    move-object v2, v6

    move-object/from16 v3, p1

    move-object v8, v6

    move/from16 v6, v16

    move-object/from16 v7, v17

    move-object/from16 p2, v8

    move/from16 v8, v18

    invoke-static/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/hpmap/c/b;->c(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 26
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    const/4 v8, 0x0

    if-lez v0, :cond_4

    const/4 v0, 0x0

    .line 27
    :goto_3
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v1

    sub-int/2addr v1, v9

    if-ge v0, v1, :cond_4

    .line 28
    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v7, v0, 0x1

    invoke-interface {v12, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, -0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v19, v7

    move/from16 v7, v18

    move-object/from16 v8, v16

    const/4 v10, 0x1

    move/from16 v9, v17

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move-object/from16 v10, p1

    move/from16 v0, v19

    const/4 v8, 0x0

    const/4 v9, 0x1

    goto :goto_3

    :cond_4
    const/4 v10, 0x1

    .line 29
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_5

    const/4 v8, 0x0

    .line 30
    :goto_4
    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    if-ge v8, v0, :cond_5

    .line 31
    invoke-interface {v13, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v9, v8, 0x1

    invoke-interface {v13, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v8, 0x0

    const/16 v16, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    move/from16 v17, v9

    move/from16 v9, v16

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move/from16 v8, v17

    goto :goto_4

    .line 32
    :cond_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_6

    const/4 v8, 0x0

    .line 33
    :goto_5
    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    if-ge v8, v0, :cond_6

    .line 34
    invoke-interface {v14, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    add-int/lit8 v13, v8, 0x1

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v7, -0x1

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    move v8, v13

    goto :goto_5

    .line 35
    :cond_6
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_7

    const/4 v13, 0x0

    .line 36
    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v14, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0x99138a

    const/4 v9, 0x1

    const-string v8, "\u5165\u53e3"

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    .line 37
    invoke-virtual/range {p3 .. p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/x0/b/j;->l()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 38
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v12, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v1, v0

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v0

    sub-int/2addr v0, v10

    invoke-interface {v14, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    move-object v2, v0

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v5, v11, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const v7, -0xb5c0

    const/4 v9, 0x1

    const-string v8, "\u51fa\u53e3"

    move-object/from16 v0, p0

    move-object/from16 v3, p2

    move-object/from16 v4, p1

    invoke-direct/range {v0 .. v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/z0/b/b/d;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Ljava/util/List;Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;DILjava/lang/String;Z)V

    goto :goto_6

    :cond_7
    const/4 v13, 0x0

    .line 39
    :cond_8
    :goto_6
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_15

    .line 40
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide v1, -0x10000000000001L

    const-wide v3, 0x7fefffffffffffffL    # Double.MAX_VALUE

    move-wide v5, v3

    move-wide v7, v5

    move-wide v3, v1

    :goto_7
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_d

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;

    .line 41
    iget-object v9, v9, Lcn/mucang/android/jiakaoyi/hpmap/view/p/m;->i:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v10, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    cmpl-double v17, v5, v10

    if-lez v17, :cond_9

    move-wide v5, v10

    :cond_9
    cmpg-double v17, v1, v10

    if-gez v17, :cond_a

    move-wide v1, v10

    .line 42
    :cond_a
    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    cmpl-double v11, v7, v9

    if-lez v11, :cond_b

    move-wide v7, v9

    :cond_b
    cmpg-double v11, v3, v9

    if-gez v11, :cond_c

    move-wide v3, v9

    :cond_c
    move-object/from16 v11, p4

    const/4 v10, 0x1

    goto :goto_7

    :cond_d
    add-double v9, v5, v1

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    mul-double v9, v9, v17

    add-double v19, v7, v3

    move-object v0, v14

    mul-double v13, v19, v17

    move-object/from16 v11, p1

    move-wide/from16 v16, v13

    const/4 v13, 0x1

    .line 43
    iget-object v14, v11, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v14}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->j()V

    .line 44
    invoke-interface/range {p2 .. p2}, Ljava/util/List;->size()I

    move-result v14

    if-lez v14, :cond_e

    .line 45
    iget-object v14, v11, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    move-object/from16 v13, p2

    invoke-virtual {v14, v13}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    .line 46
    :cond_e
    iget-object v13, v11, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->u:Lcn/mucang/android/jiakaoyi/hpmap/view/m;

    invoke-virtual {v13, v15}, Lcn/mucang/android/jiakaoyi/hpmap/view/m;->h(Ljava/util/List;)V

    sub-double/2addr v1, v5

    sub-double/2addr v3, v7

    .line 47
    invoke-static {v1, v2, v3, v4, v11}, Lcn/mucang/android/jiakaoyi/hpmap/view/r/a;->a(DDLcn/mucang/android/jiakaoyi/hpmap/view/MapView;)F

    move-result v1

    const v2, 0x3f4ccccd    # 0.8f

    mul-float v1, v1, v2

    invoke-virtual {v11, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentZoom(F)V

    const/4 v1, 0x0

    .line 48
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v2

    if-lez v2, :cond_10

    const/4 v2, 0x0

    .line 49
    invoke-interface {v12, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    move-object/from16 v2, p4

    .line 50
    iget-boolean v1, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    if-eqz v1, :cond_f

    const-wide v1, 0x4056800000000000L    # 90.0

    goto :goto_9

    :cond_f
    const-wide v1, -0x3fa9800000000000L    # -90.0

    goto :goto_9

    :cond_10
    move-object/from16 v2, p4

    .line 51
    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v4

    const/4 v5, 0x1

    const/4 v3, 0x0

    if-le v4, v5, :cond_11

    .line 52
    invoke-interface {v12, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v12, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v6

    invoke-static {v6, v7}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v1

    :cond_11
    if-nez v1, :cond_12

    .line 53
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v4

    if-le v4, v5, :cond_12

    .line 54
    invoke-interface {v0, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v0

    goto :goto_8

    :cond_12
    move-object v0, v1

    .line 55
    :goto_8
    iget-boolean v1, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    if-eqz v1, :cond_13

    const-wide/16 v1, 0x0

    goto :goto_9

    :cond_13
    const-wide v1, 0x4066800000000000L    # 180.0

    :goto_9
    if-eqz v0, :cond_14

    .line 56
    invoke-virtual {v0}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v3

    invoke-static {v3, v4}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v3

    sub-double/2addr v1, v3

    double-to-float v0, v1

    invoke-virtual {v11, v0}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->setCurrentRotateDegrees(F)V

    :cond_14
    double-to-float v0, v9

    move-wide/from16 v1, v16

    double-to-float v1, v1

    .line 57
    invoke-virtual {v11, v0, v1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->i(FF)V

    .line 58
    invoke-virtual/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/hpmap/view/MapView;->r()V

    :cond_15
    return-void
.end method
