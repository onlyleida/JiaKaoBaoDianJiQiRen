.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 4
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-void
.end method

.method private calculateAngle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 4

    .line 1
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v0, v2

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p1

    invoke-static {v0, v1, p1, p2}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide p1

    return-wide p1
.end method

.method private createLine(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/i/c;)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 0

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 1
    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/signal/i/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p1

    .line 2
    invoke-virtual {p3, p2}, Lcn/mucang/android/jiakaoyi/signal/i/c;->d(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p2

    const/4 p3, 0x1

    .line 3
    invoke-direct {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->createLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method private createLine(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Z)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;
    .locals 4

    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    if-eqz p3, :cond_0

    .line 4
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    mul-double v2, v2, v0

    invoke-static {p1, p2, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->q(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    return-object p1

    .line 5
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    mul-double v2, v2, v0

    invoke-static {p1, p2, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->p(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-result-object p1

    return-object p1
.end method

.method private static trimPoints(DDLjava/util/List;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(DD",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-static {p2, p3}, Ljava/lang/Math;->sin(D)D

    move-result-wide v0

    .line 2
    invoke-static {p2, p3}, Ljava/lang/Math;->cos(D)D

    move-result-wide p2

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v2

    .line 4
    invoke-static {p0, p1}, Ljava/lang/Math;->sin(D)D

    move-result-wide p0

    const-wide/high16 v4, 0x402e000000000000L    # 15.0

    mul-double v0, v0, v4

    mul-double v2, v2, v0

    mul-double v0, v0, p0

    .line 5
    invoke-interface {p4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result p1

    if-eqz p1, :cond_0

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 6
    invoke-virtual {p1, v2, v3, v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->translate(DD)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    mul-double v8, p2, v4

    sub-double/2addr v6, v8

    iput-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    goto :goto_0

    :cond_0
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;
    .locals 3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 14
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 15
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_0

    .line 17
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_1

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_1

    .line 20
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 21
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_1
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 7
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 9
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v9}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 10
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v10}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 11
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v11}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 12
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 13
    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    invoke-interface {v2, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    invoke-interface {v2, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 16
    invoke-interface {v2, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 17
    invoke-interface {v2, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 18
    invoke-interface {v2, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 19
    invoke-interface {v2, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 20
    invoke-interface {v2, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 21
    invoke-interface {v2, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 22
    invoke-interface {v2, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 23
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v14, 0x0

    if-eqz v13, :cond_0

    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v15, :cond_0

    .line 24
    invoke-interface {v1, v13}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 25
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v13}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 26
    invoke-interface {v2, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 27
    invoke-interface {v2, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    move-object v13, v14

    .line 28
    :goto_0
    new-instance v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v15, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v15, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 29
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v1, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    move-object/from16 v16, v11

    move-object/from16 v17, v12

    .line 30
    invoke-virtual {v15, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->angleTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v11

    move-object/from16 v19, v13

    move-object/from16 v18, v14

    .line 31
    iget-wide v13, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    move-object/from16 v20, v9

    move-object/from16 v21, v10

    iget-wide v9, v15, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v13, v9

    invoke-virtual {v15, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    invoke-static {v13, v14, v9, v10}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v9

    invoke-static {v9, v10}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v9

    const-wide/high16 v13, 0x401c000000000000L    # 7.0

    const-wide/high16 v22, 0x4014000000000000L    # 5.0

    cmpg-double v1, v9, v22

    if-gez v1, :cond_1

    move-wide/from16 v9, v22

    goto :goto_1

    :cond_1
    cmpl-double v1, v9, v13

    if-lez v1, :cond_2

    move-wide v9, v13

    .line 32
    :cond_2
    :goto_1
    invoke-static {v9, v10}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v9

    invoke-static {v11, v12, v9, v10, v2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->trimPoints(DDLjava/util/List;)V

    .line 33
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;-><init>()V

    .line 34
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->createKey()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 35
    new-instance v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v9, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v9, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 36
    new-instance v9, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v9, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v9, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 37
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v5, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 38
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v6, v20

    move-object/from16 v9, v21

    invoke-direct {v5, v6, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v18, :cond_3

    if-eqz v19, :cond_3

    .line 39
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v13, v19

    invoke-direct {v5, v3, v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 40
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v14, v18

    invoke-direct {v3, v4, v14}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v10, v16

    move-object/from16 v5, v17

    goto :goto_2

    :cond_3
    move-object/from16 v14, v18

    move-object/from16 v13, v19

    .line 41
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v10, v16

    invoke-direct {v5, v3, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 42
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v5, v17

    invoke-direct {v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 43
    :goto_2
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v4, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    new-instance v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v7, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-virtual {v7, v6}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->meanWith(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    invoke-direct {v3, v4, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 44
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v10, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v14, :cond_4

    if-eqz v13, :cond_4

    .line 45
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v14, v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 46
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v14, v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_3

    .line 47
    :cond_4
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v3, v5, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 48
    :goto_3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_5

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v4, :cond_5

    move-object/from16 v4, p1

    .line 49
    invoke-interface {v4, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 50
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 51
    invoke-virtual {v3, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_5

    .line 52
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v5, v3, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 53
    :cond_5
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v3, :cond_6

    .line 54
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 55
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    new-instance v3, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->end:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;->start:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v3, v5, v4}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iget-object v4, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v1, v3, v4, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v3

    iput-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 57
    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    iget-object v3, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    :cond_6
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/i/h;->t:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object/from16 v2, p2

    .line 62
    iput-object v2, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    return-object v1
.end method

.method public createKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;)V
    .locals 3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 13
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 14
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 15
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_0

    .line 16
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    .line 18
    :cond_0
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 20
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_1

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_1

    .line 21
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 22
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_1

    .line 23
    :cond_1
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps11:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 24
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/moto/MotoShangPoSrcData;->gps12:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :goto_1
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->Moto_ShangPoQiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 0

    return-void
.end method
