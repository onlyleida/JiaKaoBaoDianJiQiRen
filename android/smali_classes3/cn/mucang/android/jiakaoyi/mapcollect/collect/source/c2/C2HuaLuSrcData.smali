.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;",
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

.field public middlePoints:Ljava/util/List;
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 4
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

    invoke-direct {p0, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->swap(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;
    .locals 5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 16
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 18
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_3

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_3
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;
    .locals 12

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->createKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 9
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    const-wide v2, 0x4041800000000000L    # 35.0

    if-eqz v1, :cond_2

    .line 10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-interface {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 12
    :cond_1
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    .line 13
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_3
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    .line 16
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    .line 17
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    const/4 v6, 0x0

    const/4 v7, 0x1

    if-eqz v1, :cond_4

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v8, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v8, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 19
    :cond_4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 20
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    .line 21
    new-instance v8, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v1, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->j:Ljava/util/List;

    invoke-interface {v9}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-interface {v9, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v8, v1, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 22
    :cond_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    .line 23
    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v7

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 25
    :cond_6
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 26
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->q:Ljava/util/List;

    .line 27
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 28
    :goto_3
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v2

    const-wide/high16 v8, 0x4054000000000000L    # 80.0

    if-ge v1, v2, :cond_8

    .line 29
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v2, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->q:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v10

    sub-int/2addr v10, v7

    invoke-interface {v3, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    cmpl-double v10, v2, v8

    if-lez v10, :cond_7

    .line 30
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->q:Ljava/util/List;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_7
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 31
    :cond_8
    new-instance v1, Ljava/util/ArrayList;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v2, 0x0

    .line 33
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v2, v3, :cond_a

    .line 34
    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->q:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v11

    sub-int/2addr v11, v7

    invoke-interface {v10, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v3, v10}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v10

    cmpl-double v3, v10, v8

    if-lez v3, :cond_9

    .line 35
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->q:Ljava/util/List;

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v3, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_9
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 36
    :cond_a
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u66f2\u7ebf\u91cd\u91c7\u6837\u65f6\u95f4 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v2

    sub-long/2addr v2, v4

    long-to-double v2, v2

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->r:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 38
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v2, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 39
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    sub-int/2addr v3, v7

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v7

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 40
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    .line 41
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 42
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_b

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_b

    .line 43
    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 44
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 45
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v7, v2, v4

    if-lez v7, :cond_b

    .line 46
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 47
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 48
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 49
    :cond_b
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz p1, :cond_c

    .line 50
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    const/4 v2, 0x2

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {p1, v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {v3, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v3, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v0, p1, v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object p1

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 51
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 52
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 53
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 54
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    :cond_c
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->i:Ljava/util/List;

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->k:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    invoke-virtual {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 56
    invoke-interface {p2}, Ljava/util/List;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_d

    .line 57
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 58
    :cond_d
    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/f;->r:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public createKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->giveOnePointToCalZero()Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x3

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;)V
    .locals 5

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->middlePoints:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 15
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    .line 17
    :cond_5
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 18
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 20
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    .line 21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_6

    .line 22
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_3

    .line 24
    :cond_6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->leftPoints:Ljava/util/List;

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    .line 4
    invoke-direct {p0, v1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->swap(Ljava/util/List;)V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->rightPoints:Ljava/util/List;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->swap(Ljava/util/List;)V

    .line 6
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    xor-int/lit8 v0, v0, 0x1

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/c2/C2HuaLuSrcData;->fromLeft:Z

    return-void
.end method
