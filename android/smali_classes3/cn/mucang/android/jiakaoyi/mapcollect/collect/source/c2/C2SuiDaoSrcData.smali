.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public centerPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public distance:D

.field public fromLeft:Z

.field public gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public leftPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public rightPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;-><init>()V

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-void
.end method


# virtual methods
.method public canTurnOrientation()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public bridge synthetic copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;
    .locals 5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 11
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 16
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 19
    :cond_2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->distance:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->distance:D

    .line 20
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 21
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->fromLeft:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->fromLeft:Z

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 23
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 24
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_3

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_3
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;-><init>()V

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->createKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    .line 11
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v7

    const-wide v8, 0x4041800000000000L    # 35.0

    const/4 v10, 0x0

    const/4 v11, 0x1

    if-nez v7, :cond_1

    .line 12
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    .line 15
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v7, v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 16
    :cond_1
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 17
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    invoke-interface {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 19
    :cond_2
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    .line 20
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->j:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v12, v7, v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 21
    :cond_3
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v7

    if-nez v7, :cond_5

    .line 22
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    iget-object v13, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    invoke-interface {v13, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 24
    :cond_4
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    .line 25
    new-instance v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v11

    invoke-interface {v9, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v7, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->y:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 26
    :cond_5
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_a

    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_a

    .line 27
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->s:Ljava/util/List;

    .line 28
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 29
    :goto_3
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-wide/high16 v12, 0x4054000000000000L    # 80.0

    if-ge v7, v8, :cond_7

    .line 30
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->s:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v11

    invoke-interface {v9, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    cmpl-double v14, v8, v12

    if-lez v14, :cond_6

    .line 31
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->s:Ljava/util/List;

    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v9, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 32
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-direct {v7, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 33
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v8, 0x0

    .line 34
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v9

    if-ge v8, v9, :cond_9

    .line 35
    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->s:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v11

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v9, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v14

    cmpl-double v9, v14, v12

    if-lez v9, :cond_8

    .line 36
    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->s:Ljava/util/List;

    invoke-virtual {v7, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v9, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 37
    :cond_9
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v7, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-interface {v8, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v4, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->t:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 38
    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v11

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    .line 39
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v11

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 40
    invoke-static {v5, v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->u:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 41
    :cond_a
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 42
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "\u91cd\u91c7\u6837\u65f6\u95f4 : "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v10

    sub-long/2addr v10, v7

    long-to-double v7, v10

    const-wide v10, 0x412e848000000000L    # 1000000.0

    div-double/2addr v7, v10

    invoke-virtual {v9, v7, v8}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    const-string v8, "TAG"

    invoke-static {v8, v7}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 43
    invoke-static {v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v7

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->p:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 44
    new-instance v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v7, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 45
    new-instance v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v7, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v7, p2

    .line 46
    iput-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    .line 47
    iget-wide v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->distance:D

    iput-wide v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->r:D

    .line 48
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    .line 49
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v7, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v7, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-interface {v7, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_b

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v4, :cond_b

    .line 54
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 55
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 56
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4049000000000000L    # 50.0

    cmpl-double v6, v4, v8

    if-lez v6, :cond_b

    .line 57
    invoke-interface {v7, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v4, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 60
    :cond_b
    invoke-static {v7}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    .line 61
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_c

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 62
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->i:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->k:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 63
    :cond_c
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v3, :cond_d

    .line 64
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v4, v3, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 65
    :cond_d
    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/l;->q:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v2
.end method

.method public createKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;)V
    .locals 5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 7
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    .line 8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->leftPoints:Ljava/util/List;

    .line 11
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 12
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    .line 13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->centerPoints:Ljava/util/List;

    .line 16
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 17
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    .line 18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 20
    :cond_4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->rightPoints:Ljava/util/List;

    .line 21
    :cond_5
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 22
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->distance:D

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->distance:D

    .line 23
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 24
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 25
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->fromLeft:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->fromLeft:Z

    .line 26
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_6

    .line 27
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 28
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_3

    .line 29
    :cond_6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 30
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SuiDaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :goto_3
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 0

    return-void
.end method
