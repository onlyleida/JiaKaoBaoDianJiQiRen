.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;
.super Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;
.implements Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;",
        "Ljava/io/Serializable;",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData<",
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field private center:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public innerLineType:I

.field public innerPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public isClock:Z

.field public outLineType:I

.field public outPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    const/4 v0, 0x1

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->isClock:Z

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-void
.end method

.method private static circleFit(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x3

    if-ge v1, v2, :cond_0

    const/4 v0, 0x0

    return-object v0

    .line 2
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v2, 0x0

    const-wide/16 v3, 0x0

    move-wide v5, v3

    move-wide v7, v5

    move-wide v9, v7

    move-wide v11, v9

    move-wide v13, v11

    move-wide v15, v13

    move-wide/from16 v17, v15

    move-wide/from16 v19, v17

    :goto_0
    if-ge v2, v1, :cond_1

    .line 3
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v21

    move/from16 v22, v1

    move-object/from16 v1, v21

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-wide/from16 v23, v13

    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    .line 4
    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    mul-double v25, v13, v13

    mul-double v27, v0, v0

    add-double/2addr v5, v13

    add-double/2addr v9, v0

    add-double v3, v3, v25

    add-double v15, v15, v27

    mul-double v29, v25, v13

    add-double v11, v11, v29

    mul-double v29, v27, v0

    add-double v19, v19, v29

    mul-double v29, v13, v0

    add-double v7, v7, v29

    mul-double v13, v13, v27

    add-double v13, v23, v13

    mul-double v25, v25, v0

    add-double v17, v17, v25

    add-int/lit8 v2, v2, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v22

    goto :goto_0

    :cond_1
    move v0, v1

    move-wide/from16 v23, v13

    int-to-double v0, v0

    mul-double v13, v0, v3

    mul-double v21, v5, v5

    sub-double v13, v13, v21

    mul-double v7, v7, v0

    mul-double v21, v5, v9

    sub-double v7, v7, v21

    mul-double v11, v11, v0

    mul-double v21, v0, v23

    add-double v11, v11, v21

    add-double/2addr v3, v15

    mul-double v5, v5, v3

    sub-double/2addr v11, v5

    mul-double v15, v15, v0

    mul-double v5, v9, v9

    sub-double/2addr v15, v5

    mul-double v17, v17, v0

    mul-double v0, v0, v19

    add-double v17, v17, v0

    mul-double v3, v3, v9

    sub-double v17, v17, v3

    mul-double v0, v17, v7

    mul-double v2, v11, v15

    sub-double/2addr v0, v2

    mul-double v15, v15, v13

    mul-double v2, v7, v7

    sub-double v4, v15, v2

    div-double/2addr v0, v4

    mul-double v17, v17, v13

    mul-double v11, v11, v7

    sub-double v17, v17, v11

    sub-double/2addr v2, v15

    div-double v17, v17, v2

    const-wide/high16 v2, -0x4000000000000000L    # -2.0

    div-double/2addr v0, v2

    div-double v2, v17, v2

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v0, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(DD)V

    return-object v4
.end method

.method private static circleFitPos(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 31
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ")D"
        }
    .end annotation

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const-wide/16 v2, 0x0

    const/4 v4, 0x3

    if-ge v1, v4, :cond_0

    return-wide v2

    .line 2
    :cond_0
    invoke-interface/range {p0 .. p0}, Ljava/util/List;->size()I

    move-result v1

    const/4 v4, 0x0

    move-wide v4, v2

    move-wide v6, v4

    move-wide v8, v6

    move-wide v10, v8

    move-wide v14, v10

    move-wide/from16 v16, v14

    move-wide/from16 v18, v16

    move-wide/from16 v20, v18

    const/4 v12, 0x0

    :goto_0
    if-ge v12, v1, :cond_1

    .line 3
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-wide/from16 v22, v6

    iget-wide v6, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 4
    invoke-interface {v0, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move/from16 v24, v1

    iget-wide v0, v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    mul-double v25, v6, v6

    mul-double v27, v0, v0

    add-double/2addr v4, v6

    add-double/2addr v8, v0

    add-double v2, v2, v25

    add-double v14, v14, v27

    mul-double v29, v25, v6

    add-double v10, v10, v29

    mul-double v29, v27, v0

    add-double v18, v18, v29

    mul-double v29, v6, v0

    add-double v22, v22, v29

    mul-double v6, v6, v27

    add-double v20, v20, v6

    mul-double v25, v25, v0

    add-double v16, v16, v25

    add-int/lit8 v12, v12, 0x1

    move-object/from16 v0, p0

    move-wide/from16 v6, v22

    move/from16 v1, v24

    goto :goto_0

    :cond_1
    move v0, v1

    move-wide/from16 v22, v6

    int-to-double v0, v0

    mul-double v6, v0, v2

    mul-double v12, v4, v4

    sub-double/2addr v6, v12

    mul-double v12, v0, v22

    mul-double v22, v4, v8

    sub-double v12, v12, v22

    mul-double v10, v10, v0

    mul-double v20, v20, v0

    add-double v10, v10, v20

    add-double v20, v2, v14

    mul-double v22, v20, v4

    sub-double v10, v10, v22

    mul-double v22, v0, v14

    mul-double v24, v8, v8

    sub-double v22, v22, v24

    mul-double v16, v16, v0

    mul-double v18, v18, v0

    add-double v16, v16, v18

    mul-double v20, v20, v8

    sub-double v16, v16, v20

    mul-double v18, v16, v12

    mul-double v20, v10, v22

    sub-double v18, v18, v20

    mul-double v22, v22, v6

    mul-double v20, v12, v12

    sub-double v24, v22, v20

    div-double v18, v18, v24

    mul-double v16, v16, v6

    mul-double v10, v10, v12

    sub-double v16, v16, v10

    sub-double v20, v20, v22

    div-double v16, v16, v20

    mul-double v4, v4, v18

    mul-double v8, v8, v16

    add-double/2addr v4, v8

    add-double/2addr v4, v2

    add-double/2addr v4, v14

    neg-double v2, v4

    div-double/2addr v2, v0

    const-wide/high16 v0, -0x4000000000000000L    # -2.0

    div-double v4, v18, v0

    div-double v0, v16, v0

    mul-double v18, v18, v18

    mul-double v16, v16, v16

    add-double v18, v18, v16

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v2, v2, v6

    sub-double v18, v18, v2

    .line 5
    invoke-static/range {v18 .. v19}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v2

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v2, v6

    move-object/from16 v6, p1

    .line 6
    invoke-virtual {v6, v4, v5, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    return-wide v2
.end method


# virtual methods
.method public canTurnOrientation()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;
    .locals 1

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;-><init>()V

    .line 3
    invoke-virtual {v0, p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;)V

    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;
    .locals 18

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->createKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->j:Ljava/util/List;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->i:Ljava/util/List;

    .line 6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    const/4 v4, 0x0

    if-eqz v3, :cond_1

    .line 7
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->j:Ljava/util/List;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->j:Ljava/util/List;

    invoke-interface {v5, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->j:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v7

    add-int/lit8 v7, v7, -0x1

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 10
    :cond_1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 11
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->i:Ljava/util/List;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    invoke-interface {v6, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 13
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->i:Ljava/util/List;

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    add-int/lit8 v5, v5, -0x1

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 14
    :cond_3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 15
    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 16
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->j:Ljava/util/List;

    invoke-static {v4, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->circleFitPos(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    .line 17
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->i:Ljava/util/List;

    invoke-static {v4, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->circleFitPos(Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    iput-wide v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->n:D

    .line 18
    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 19
    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 20
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->p:D

    .line 21
    iget v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerLineType:I

    iput v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->q:I

    .line 22
    iget v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outLineType:I

    iput v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->r:I

    .line 23
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iget-wide v6, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    sub-double v10, v6, v8

    sub-double/2addr v10, v3

    iget-wide v12, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v14, v12, v8

    sub-double/2addr v14, v3

    add-double/2addr v6, v8

    add-double v16, v6, v3

    add-double/2addr v12, v8

    add-double/2addr v3, v12

    move-object v6, v5

    move-wide v7, v10

    move-wide v9, v14

    move-wide/from16 v11, v16

    move-wide v13, v3

    invoke-direct/range {v6 .. v14}, Lcn/mucang/android/jiakaoyi/signal/pos/a;-><init>(DDDD)V

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->k:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object/from16 v1, p2

    .line 24
    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    .line 25
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/b;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->l:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->o:D

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->u:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/b;

    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->m:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->n:D

    invoke-direct {v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/b;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)V

    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/m;->v:Lcn/mucang/android/jiakaoyi/signal/pos/b;

    return-object v2
.end method

.method public createKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->longitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->key:Ljava/lang/String;

    return-object v0
.end method

.method public getName()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    return-object v0
.end method

.method public getTime()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-wide v0
.end method

.method public giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-nez v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x2

    if-le v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->circleFit(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->center:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    return-object v0

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;)V
    .locals 5

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outPoints:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    new-instance v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerPoints:Ljava/util/List;

    .line 12
    :cond_3
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 13
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 15
    iget v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerLineType:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->innerLineType:I

    .line 16
    iget v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outLineType:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->outLineType:I

    .line 17
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->isClock:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->isClock:Z

    .line 18
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->key:Ljava/lang/String;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->key:Ljava/lang/String;

    return-void
.end method

.method public setName(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    return-void
.end method

.method public setTime(J)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-void
.end method

.method public stepId()I
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_YuanHuanLianXi:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->isClock:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2YuanHuanSrcData;->isClock:Z

    return-void
.end method
