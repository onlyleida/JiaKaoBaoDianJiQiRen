.class public Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;
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
        "Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;",
        ">;"
    }
.end annotation


# instance fields
.field public cheKuIsLeft:Z

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

.field public gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public poleRadius:F

.field public start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

.field public start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;-><init>()V

    const/high16 v0, 0x3fe00000    # 1.75f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->cheKuIsLeft:Z

    const-wide/high16 v0, 0x402e000000000000L    # 15.0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 5
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->stepId()I

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->stepId:I

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    return-void
.end method

.method private swap(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 2
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    .line 3
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->setGps(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    return-void
.end method

.method private trimWidth(D)D
    .locals 3

    const-wide/high16 v0, 0x4024000000000000L    # 10.0

    cmpg-double v2, p1, v0

    if-gez v2, :cond_0

    return-wide v0

    :cond_0
    const-wide/high16 v0, 0x403e000000000000L    # 30.0

    cmpl-double v2, p1, v0

    if-lez v2, :cond_1

    return-wide v0

    :cond_1
    return-wide p1
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
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;

    move-result-object v0

    return-object v0
.end method

.method public copy()Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;
    .locals 3

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;-><init>()V

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 15
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 19
    iget v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    .line 20
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 21
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 22
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->cheKuIsLeft:Z

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->cheKuIsLeft:Z

    .line 23
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 24
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v2, :cond_0

    .line 25
    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v2, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 26
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :cond_0
    return-object v0
.end method

.method public bridge synthetic createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/b;
    .locals 0

    .line 1
    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;

    move-result-object p1

    return-object p1
.end method

.method public createCollision(Lcn/mucang/android/jiakaoyi/signal/i/a;Ljava/lang/String;)Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;
    .locals 24

    move-object/from16 v0, p0

    move-object/from16 v1, p1

    .line 2
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 3
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 4
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v4}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v4

    .line 5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v6}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    .line 7
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v7}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v7

    .line 8
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v8}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v8

    .line 9
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v9}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v9

    .line 10
    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v10}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v10

    .line 11
    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v11}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v11

    .line 12
    iget-object v12, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v12}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v12

    .line 13
    iget-object v13, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v13}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    .line 14
    iget-object v14, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v14}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    .line 15
    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v15}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    move-object/from16 v16, v15

    .line 16
    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v15}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    move-object/from16 v17, v15

    .line 17
    iget-object v15, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v15}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    .line 18
    new-instance v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;-><init>()V

    move-object/from16 v18, v15

    .line 19
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->createKey()Ljava/lang/String;

    move-result-object v15

    iput-object v15, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a:Ljava/lang/String;

    .line 20
    new-instance v15, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v15, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v15, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 21
    new-instance v15, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v15, v10, v11}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v15, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->j:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 22
    iget v15, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    iput v15, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->J:F

    .line 23
    invoke-static {v7, v3, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v15

    move-object/from16 v19, v14

    .line 24
    invoke-static {v4, v3, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v14

    move-object/from16 v20, v13

    .line 25
    invoke-static {v8, v3, v10}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->n(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v13

    move-object/from16 v21, v12

    .line 26
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v3, v14}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 27
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v14, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->r:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 28
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->o:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 29
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v6, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->n:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 30
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v6, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->p:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 31
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v13, v9}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->s:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 32
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v13, v10}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->t:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 33
    new-instance v12, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v12, v11, v2}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v12, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object v12, v2

    move-object/from16 v22, v3

    .line 34
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v5, v6, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    move-object v3, v5

    move-object/from16 v23, v6

    .line 35
    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    invoke-static {v4, v7, v5, v6}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->s(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;D)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v5

    .line 36
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v2, v5}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 37
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v4, v7}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->k:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 38
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v14, v15}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->l:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    .line 39
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v7, v8}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    .line 40
    new-instance v6, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v6, v15, v13}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->m:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    move-object/from16 v6, v21

    .line 41
    iput-object v6, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->v:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v13, v20

    .line 42
    iput-object v13, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->w:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v14, v19

    .line 43
    iput-object v14, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->x:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v15, v16

    .line 44
    iput-object v15, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->y:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, v17

    .line 45
    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->z:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-object/from16 v0, v18

    .line 46
    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->A:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 47
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-object/from16 v15, v22

    invoke-direct {v0, v12, v15, v10, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->E:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 48
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-object/from16 v14, v23

    invoke-direct {v0, v4, v3, v14, v7}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->F:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 49
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v0, v2, v5, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->G:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 50
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/c;

    invoke-direct {v0, v4, v3, v9, v8}, Lcn/mucang/android/jiakaoyi/signal/pos/c;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->H:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 51
    invoke-virtual {v12, v3}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 52
    invoke-virtual {v12, v11}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->vectorTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 53
    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->cross(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v20

    const-wide/16 v22, 0x0

    cmpl-double v0, v20, v22

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    iput-boolean v0, v1, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->D:Z

    .line 54
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 55
    invoke-interface {v0, v12}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 56
    invoke-interface {v0, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 57
    invoke-interface {v0, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 58
    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 59
    invoke-interface {v0, v14}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 60
    invoke-interface {v0, v7}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 61
    invoke-interface {v0, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 62
    invoke-interface {v0, v9}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 63
    invoke-interface {v0, v10}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 64
    invoke-interface {v0, v11}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 65
    invoke-interface {v0, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 66
    invoke-interface {v0, v13}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v19

    .line 67
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v16

    .line 68
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v17

    .line 69
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, v18

    .line 70
    invoke-interface {v0, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-object/from16 v2, p0

    .line 71
    iget-object v3, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v3, :cond_1

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v4, :cond_1

    move-object v4, v1

    move-object/from16 v1, p1

    .line 72
    invoke-interface {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 73
    iget-object v5, v2, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-interface {v1, v5}, Lcn/mucang/android/jiakaoyi/signal/i/a;->a(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    .line 74
    invoke-virtual {v3, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v5

    const-wide/high16 v7, 0x4049000000000000L    # 50.0

    cmpl-double v9, v5, v7

    if-lez v9, :cond_2

    .line 75
    new-instance v5, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-direct {v5, v3, v1}, Lcn/mucang/android/jiakaoyi/hpmap/model/Line;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    iput-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    goto :goto_1

    :cond_1
    move-object v4, v1

    .line 76
    :cond_2
    :goto_1
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->B:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    if-eqz v1, :cond_4

    .line 77
    iget-boolean v3, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->D:Z

    if-eqz v3, :cond_3

    .line 78
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v4, v3, v5, v1, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    goto :goto_2

    .line 79
    :cond_3
    iget-object v3, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->q:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v5, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->u:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    iget-object v6, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->i:Lcn/mucang/android/jiakaoyi/hpmap/model/Line;

    invoke-virtual {v4, v3, v5, v1, v6}, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->a(Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;Lcn/mucang/android/jiakaoyi/hpmap/model/Line;)Lcn/mucang/android/jiakaoyi/signal/pos/c;

    move-result-object v1

    iput-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    .line 80
    :goto_2
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->a:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 81
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->b:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 82
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->c:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 83
    iget-object v1, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->d:Lcn/mucang/android/jiakaoyi/signal/pos/c;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/c;->d:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 84
    :cond_4
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/hpmap/d/a;->b(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-result-object v0

    iput-object v0, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/f/q;->I:Lcn/mucang/android/jiakaoyi/signal/pos/a;

    move-object/from16 v0, p2

    .line 85
    iput-object v0, v4, Lcn/mucang/android/jiakaoyi/hpmap/a/a/e;->b:Ljava/lang/String;

    return-object v4
.end method

.method public createKey()Ljava/lang/String;
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;->latitude:D

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    return-object v0
.end method

.method public bridge synthetic set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/data/SourceData;)V
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;)V

    return-void
.end method

.method public set(Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;)V
    .locals 2

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 3
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 6
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 10
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps9:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 11
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gps10:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 12
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB3:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 13
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB4:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 14
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB5:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 15
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB6:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 16
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB7:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 17
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->gpsB8:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 18
    iget v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->poleRadius:F

    .line 19
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->name:Ljava/lang/String;

    .line 20
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->time:J

    .line 21
    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->cheKuIsLeft:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->cheKuIsLeft:Z

    .line 22
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/K2SrcData;->lineWidth:D

    .line 23
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v0, :cond_0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    if-eqz v1, :cond_0

    .line 24
    new-instance v1, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v1, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 25
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Gps;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Gps;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 26
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start1:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    .line 27
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/mapcollect/collect/source/b2/B2ZhuangKaoSrcData;->start2:Lcn/mucang/android/jiakaoyi/signal/pos/Gps;

    :goto_0
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
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->B2_ZhuangKao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    return v0
.end method

.method public turnOrientation()V
    .locals 0

    return-void
.end method
