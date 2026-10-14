.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public fromLeft:Z

.field public gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public leftPoints:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Gps;",
            ">;"
        }
    .end annotation
.end field

.field public line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 4
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 5
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;
    .locals 5

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;-><init>()V

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    if-eqz v1, :cond_0

    .line 4
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 7
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 8
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v1, :cond_2

    .line 12
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

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
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 15
    :cond_2
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_3

    .line 18
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_4

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    :cond_4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_5

    .line 22
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_6

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    :cond_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_7

    .line 26
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 27
    :cond_7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_8

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    :cond_8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_9

    .line 30
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 31
    :cond_9
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 32
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 33
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_a

    .line 34
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 35
    :cond_a
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_b

    .line 36
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 37
    :cond_b
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_c

    .line 38
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 39
    :cond_c
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_d

    .line 40
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 41
    :cond_d
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_e

    .line 42
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 43
    :cond_e
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_f

    .line 44
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 45
    :cond_f
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_10

    .line 46
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 47
    :cond_10
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_11

    .line 48
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 49
    :cond_11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_12

    .line 50
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 51
    :cond_12
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_13

    .line 52
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 53
    :cond_13
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 54
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    .line 55
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 56
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 57
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_14

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_14

    .line 58
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 59
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_14
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;
    .locals 16

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;

    invoke-direct {v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;-><init>()V

    .line 7
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->createKey()Ljava/lang/String;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 8
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    .line 9
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    .line 10
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    .line 11
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    const-wide v8, 0x4041800000000000L    # 35.0

    if-eqz v7, :cond_1

    .line 12
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_0
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_0

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    iget-object v11, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v1, v10}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 14
    :cond_0
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    .line 15
    :cond_1
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_3

    .line 16
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_1
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_2

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    iget-object v11, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-interface {v1, v10}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 18
    :cond_2
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->k:Ljava/util/List;

    .line 19
    :cond_3
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 20
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    invoke-interface {v7}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    iget-object v11, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v1, v10}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    invoke-interface {v11, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 22
    :cond_4
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {v7, v8, v9}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/c1/d;->c(Ljava/util/List;D)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    .line 23
    :cond_5
    invoke-static {}, Ljava/lang/System;->nanoTime()J

    move-result-wide v7

    .line 24
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

    .line 25
    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    const/4 v8, 0x0

    const/4 v9, 0x1

    if-eqz v7, :cond_9

    iget-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {v7}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_9

    .line 26
    new-instance v7, Ljava/util/ArrayList;

    invoke-direct {v7}, Ljava/util/ArrayList;-><init>()V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    .line 27
    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v10, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    invoke-interface {v7, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const/4 v7, 0x1

    .line 28
    :goto_3
    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const-wide/high16 v11, 0x4054000000000000L    # 80.0

    if-ge v7, v10, :cond_7

    .line 29
    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v10, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    invoke-interface {v13}, Ljava/util/List;->size()I

    move-result v14

    sub-int/2addr v14, v9

    invoke-interface {v13, v14}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v10, v13}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpl-double v10, v13, v11

    if-lez v10, :cond_6

    .line 30
    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    iget-object v11, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v11, v7}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_6
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 31
    :cond_7
    new-instance v7, Ljava/util/ArrayList;

    iget-object v10, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-direct {v7, v10}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 32
    invoke-static {v7}, Ljava/util/Collections;->reverse(Ljava/util/List;)V

    const/4 v10, 0x0

    .line 33
    :goto_4
    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v13

    if-ge v10, v13, :cond_9

    .line 34
    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    check-cast v13, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v14, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    invoke-interface {v14}, Ljava/util/List;->size()I

    move-result v15

    sub-int/2addr v15, v9

    invoke-interface {v14, v15}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v13, v14}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v13

    cmpl-double v15, v13, v11

    if-lez v15, :cond_8

    .line 35
    iget-object v13, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->H:Ljava/util/List;

    invoke-virtual {v7, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v14

    invoke-interface {v13, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    :cond_8
    add-int/lit8 v10, v10, 0x1

    goto :goto_4

    .line 36
    :cond_9
    new-instance v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v7, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 37
    new-instance v7, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v7, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 38
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v7, v2, v3, v5, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 39
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_a

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_a

    .line 40
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->z:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 41
    :cond_a
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_b

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_b

    .line 42
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->A:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 43
    :cond_b
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_c

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_c

    .line 44
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 45
    :cond_c
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_d

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_d

    .line 46
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->C:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 47
    :cond_d
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_e

    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_e

    .line 48
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    invoke-direct {v3, v2, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->D:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 49
    :cond_e
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v3, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v4, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 50
    new-instance v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v4

    sub-int/2addr v4, v9

    invoke-interface {v3, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v5

    sub-int/2addr v5, v9

    invoke-interface {v4, v5}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->w:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v2, p2

    .line 51
    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    .line 52
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 53
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_f

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v4, :cond_f

    .line 54
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 55
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 56
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v7

    const-wide/high16 v9, 0x4049000000000000L    # 50.0

    cmpl-double v5, v7, v9

    if-lez v5, :cond_f

    .line 57
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v5, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 60
    :cond_f
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_10

    .line 61
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 62
    :cond_10
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_11

    .line 63
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 64
    :cond_11
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_12

    .line 65
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 66
    :cond_12
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_13

    .line 67
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 68
    :cond_13
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_14

    .line 69
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    iput-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 70
    :cond_14
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_15

    .line 71
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 72
    :cond_15
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_16

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->o:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_16

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->p:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v4, :cond_16

    iget-object v5, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v5, :cond_16

    .line 73
    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v7, v1, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v7, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 74
    :cond_16
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->r:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_17

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->n:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_17

    .line 75
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v4, v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->I:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 76
    :cond_17
    iget-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->q:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v1, :cond_18

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->s:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-eqz v3, :cond_18

    .line 77
    new-instance v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v4, v1, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->J:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 78
    :cond_18
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v1

    .line 79
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_19

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v2

    if-eqz v2, :cond_19

    .line 80
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->i:Ljava/util/List;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    iget-object v3, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->j:Ljava/util/List;

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/a;->i(Lcn/mucang/android/jiakaoyi/signal/pos/a;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    .line 81
    :cond_19
    iget-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->x:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v2, :cond_1a

    .line 82
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->v:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v3, v2, v5, v4}, Lcn/mucang/android/jiakaoyi/hpmap/a/b/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v2

    iput-object v2, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 83
    :cond_1a
    iput-object v1, v6, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/d;->E:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    return-object v6
.end method

.method public createKey()Ljava/lang/String;
    .locals 5

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

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
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;)V
    .locals 5

    .line 2
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 6
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->leftPoints:Ljava/util/List;

    .line 7
    :cond_1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    .line 9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 11
    :cond_2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->middlePoints:Ljava/util/List;

    .line 12
    :cond_3
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    if-eqz v0, :cond_4

    .line 13
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

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
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v4, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2

    .line 16
    :cond_4
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->rightPoints:Ljava/util/List;

    .line 17
    :cond_5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_6

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    :cond_6
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_7

    .line 22
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 23
    :cond_7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_8

    .line 24
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    :cond_8
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_9

    .line 26
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 27
    :cond_9
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_a

    .line 28
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 29
    :cond_a
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_b

    .line 30
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 31
    :cond_b
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_c

    .line 32
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 33
    :cond_c
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 34
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 35
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_d

    .line 36
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 37
    :cond_d
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_e

    .line 38
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line0Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 39
    :cond_e
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_f

    .line 40
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 41
    :cond_f
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_10

    .line 42
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line50Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 43
    :cond_10
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_11

    .line 44
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 45
    :cond_11
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_12

    .line 46
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line100Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 47
    :cond_12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_13

    .line 48
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 49
    :cond_13
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_14

    .line 50
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line150Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 51
    :cond_14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_15

    .line 52
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 53
    :cond_15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_16

    .line 54
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->line200Gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 55
    :cond_16
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 56
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 57
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 58
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->fromLeft:Z

    .line 59
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_17

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_17

    .line 60
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 61
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_3

    .line 62
    :cond_17
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 63
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2GaoSuSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_GaoSu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 0

    return-void
.end method
