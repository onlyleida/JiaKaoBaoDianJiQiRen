.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public firstHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public firstHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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

.field public secondHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public secondHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->stepId()I

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;
    .locals 5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 20
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 22
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 24
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->fromLeft:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->fromLeft:Z

    .line 25
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 26
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 27
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_3

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_3

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_3
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;
    .locals 10

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;-><init>()V

    .line 3
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->createKey()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->k:Ljava/util/List;

    .line 6
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    .line 7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    const-wide v2, 0x4041800000000000L    # 35.0

    if-nez v1, :cond_1

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 10
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->k:Ljava/util/List;

    invoke-interface {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 14
    :cond_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->k:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->k:Ljava/util/List;

    .line 15
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v1

    if-nez v1, :cond_5

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-interface {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-interface {v5, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 18
    :cond_4
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    .line 19
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v1

    .line 20
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "\u91cd\u91c7\u6837\u65f6\u95f4 : "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v4

    sub-long/2addr v4, v1

    long-to-double v1, v4

    const-wide v4, 0x412e848000000000L    # 1000000.0

    div-double/2addr v1, v4

    invoke-virtual {v3, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 21
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->w:Ljava/util/List;

    .line 23
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    invoke-interface {v1, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v1, 0x1

    .line 24
    :goto_3
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const-wide/high16 v5, 0x4054000000000000L    # 80.0

    if-ge v1, v4, :cond_7

    .line 25
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->w:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v8

    sub-int/2addr v8, v3

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v4, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v4, v7, v5

    if-lez v4, :cond_6

    .line 26
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->w:Ljava/util/List;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {v5, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v1, v1, 0x1

    goto :goto_3

    .line 27
    :cond_7
    new-instance v1, Ljava/util/ArrayList;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 28
    invoke-static {v1}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v4, 0x0

    .line 29
    :goto_4
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_9

    .line 30
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->w:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v9

    sub-int/2addr v9, v3

    invoke-interface {v8, v9}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    cmpl-double v9, v7, v5

    if-lez v9, :cond_8

    .line 31
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->w:Ljava/util/List;

    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 32
    :cond_9
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-interface {v5, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v4, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 33
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v3

    invoke-interface {v2, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v3

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 34
    iput-object p2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    .line 35
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz p2, :cond_a

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_a

    .line 36
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 37
    :cond_a
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz p2, :cond_b

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_b

    .line 38
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 39
    :cond_b
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz p2, :cond_c

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_c

    .line 40
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 41
    :cond_c
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz p2, :cond_d

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_d

    .line 42
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    invoke-direct {v1, p2, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 43
    :cond_d
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 44
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_e

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_e

    .line 45
    invoke-interface {p1, v1}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 46
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 47
    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    const-wide/high16 v4, 0x4049000000000000L    # 50.0

    cmpl-double v6, v2, v4

    if-lez v6, :cond_e

    .line 48
    invoke-interface {p2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 49
    invoke-interface {p2, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 50
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v2, v1, p1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 51
    :cond_e
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p1

    .line 52
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_f

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    invoke-static {p2}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result p2

    if-nez p2, :cond_f

    .line 53
    iget-object p2, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->i:Ljava/util/List;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p2

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->j:Ljava/util/List;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 54
    :cond_f
    new-instance p2, Ljava/util/ArrayList;

    invoke-direct {p2}, Ljava/util/ArrayList;-><init>()V

    .line 55
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v1, :cond_10

    .line 56
    iget-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v1, v4, v3}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 57
    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_10
    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object p2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/j;->v:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v0
.end method

.method public createKey()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;)V
    .locals 5

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->leftPoints:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->middlePoints:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->rightPoints:Ljava/util/List;

    .line 17
    :cond_5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 20
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonkReport2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 22
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->firstHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 24
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->secondHonk2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 26
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 27
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 28
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->fromLeft:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->fromLeft:Z

    .line 29
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_6

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_6

    .line 30
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 31
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_3

    .line 32
    :cond_6
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 33
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ShanLuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ShanLu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 0

    return-void
.end method
