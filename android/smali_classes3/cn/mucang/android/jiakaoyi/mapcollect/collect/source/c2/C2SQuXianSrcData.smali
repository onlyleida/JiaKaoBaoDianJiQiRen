.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public fromLeft:Z

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

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 5
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-void
.end method

.method private swap(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 1

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 5
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 6
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method private swap(Ljava/util/List;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    .line 2
    :goto_0
    div-int/lit8 v2, v0, 0x2

    if-ge v1, v2, :cond_0

    .line 3
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    add-int/lit8 v3, v0, -0x1

    sub-int/2addr v3, v1

    invoke-interface {p1, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->swap(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_0
    return-void
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;
    .locals 5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 12
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 14
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 15
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_2

    .line 16
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_2
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;

    invoke-direct {v2}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;-><init>()V

    .line 3
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->createKey()Ljava/lang/String;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 4
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    .line 5
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    .line 6
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 10
    :cond_1
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v3

    .line 11
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    const-wide v6, 0x4041800000000000L    # 35.0

    invoke-static {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    .line 12
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v5

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    .line 13
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    iput-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    .line 14
    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    const/4 v7, 0x0

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v5, 0x1

    const/4 v6, 0x1

    .line 15
    :goto_2
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const-wide/high16 v9, 0x4054000000000000L    # 80.0

    if-ge v6, v8, :cond_3

    .line 16
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    invoke-interface {v11}, Ljava/util/List;->size()I

    move-result v12

    sub-int/2addr v12, v5

    invoke-interface {v11, v12}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v8, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpl-double v8, v11, v9

    if-lez v8, :cond_2

    .line 17
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v9, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-interface {v8, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_2
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 18
    :cond_3
    new-instance v6, Ljava/util/ArrayList;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-direct {v6, v8}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 19
    invoke-static {v6}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v8, 0x0

    .line 20
    :goto_3
    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v11

    if-ge v8, v11, :cond_5

    .line 21
    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v12, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    invoke-interface {v12}, Ljava/util/List;->size()I

    move-result v13

    sub-int/2addr v13, v5

    invoke-interface {v12, v13}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v11, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    cmpl-double v13, v11, v9

    if-lez v13, :cond_4

    .line 22
    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->v:Ljava/util/List;

    invoke-virtual {v6, v8}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    invoke-interface {v11, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_3

    .line 23
    :cond_5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->k()Z

    move-result v6

    if-eqz v6, :cond_7

    .line 24
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 25
    new-instance v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    iput-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 26
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-direct {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>()V

    .line 27
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v12, 0x4034000000000000L    # 20.0

    const/4 v14, 0x5

    move-object v15, v6

    invoke-static/range {v8 .. v15}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v8

    if-nez v8, :cond_6

    .line 28
    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    iget-object v9, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    iget-object v10, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v11, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/high16 v12, 0x4049000000000000L    # 50.0

    const/16 v14, 0xa

    move-object v15, v6

    invoke-static/range {v8 .. v15}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/c;->a(Ljava/util/List;Ljava/util/List;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;DILjava/util/concurrent/atomic/AtomicBoolean;)Z

    move-result v8

    if-nez v8, :cond_6

    const-string v8, "\u66f2\u7ebf\u6570\u636e\u6709\u95ee\u9898"

    .line 29
    invoke-static {v8}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 30
    :cond_6
    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v6

    xor-int/2addr v6, v5

    iput-boolean v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->p:Z

    .line 31
    :cond_7
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "\u66f2\u7ebf\u91cd\u91c7\u6837\u65f6\u95f4 : "

    invoke-virtual {v6, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v8

    sub-long/2addr v8, v3

    long-to-double v3, v8

    const-wide v8, 0x412e848000000000L    # 1000000.0

    div-double/2addr v3, v8

    invoke-virtual {v6, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    const-string v4, "TAG"

    invoke-static {v4, v3}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 32
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_8

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v4, :cond_8

    .line 33
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 34
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 35
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v8

    const-wide/high16 v10, 0x4049000000000000L    # 50.0

    cmpl-double v4, v8, v10

    if-lez v4, :cond_8

    .line 36
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v4, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 37
    :cond_8
    iget-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    .line 38
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    .line 39
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_9

    .line 40
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    add-int/lit8 v9, v1, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v6, v8}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 41
    :cond_9
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v4

    if-eqz v4, :cond_a

    .line 42
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    add-int/lit8 v9, v3, -0x1

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v6, v8}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 43
    :cond_a
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v8, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v6, v8}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 44
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    sub-int/2addr v1, v5

    invoke-interface {v6, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    sub-int/2addr v3, v5

    invoke-interface {v6, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 45
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 46
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v3, :cond_b

    .line 47
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    const/4 v5, 0x2

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v4, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v6, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-interface {v7, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v6, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v2, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v3

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 48
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 49
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 50
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 51
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v1, v3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 52
    :cond_b
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->i:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->j:Ljava/util/List;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/j;->o:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object/from16 v1, p2

    .line 53
    iput-object v1, v2, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    return-object v2
.end method

.method public createKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;)V
    .locals 5

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    .line 12
    :cond_3
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 13
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 15
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    .line 16
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_4

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_4

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_2

    .line 19
    :cond_4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 20
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :goto_2
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SQuXian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->leftPoints:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    .line 4
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->swap(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->rightPoints:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->swap(Ljava/util/List;)V

    .line 6
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2SQuXianSrcData;->fromLeft:Z

    return-void
.end method
