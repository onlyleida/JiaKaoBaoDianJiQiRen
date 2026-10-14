.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final GPS_PERCENT:F = 0.5f


# instance fields
.field private angles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final calculateCount:I

.field private count:I

.field private factor:F

.field private gpsOffset:F

.field private hasStart:Z

.field private interval:J

.field private isInit:Z

.field private lastAngel:F

.field private lastDistance:F

.field private lastSpeed:F

.field private speedOffset:F

.field private st:J

.field private startAngle:F

.field private startAngleList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private time:J

.field private useInterval:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    const/16 v0, 0x8

    .line 1
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;-><init>(I)V

    return-void
.end method

.method public constructor <init>(FLcn/mucang/android/jiakaoyi/signal/center/model/CarModel;)V
    .locals 2

    const/16 v0, 0x8

    .line 13
    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;-><init>(I)V

    .line 14
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    const/4 v0, 0x1

    .line 15
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->isInit:Z

    const/4 v0, 0x0

    .line 16
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->gpsOffset:F

    .line 17
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    .line 18
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastDistance:F

    .line 19
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->time:J

    .line 20
    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastSpeed:F

    .line 21
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastAngel:F

    const/4 p1, 0x0

    .line 22
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->count:I

    return-void
.end method

.method public constructor <init>(I)V
    .locals 3

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->isInit:Z

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->gpsOffset:F

    .line 5
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->angles:Ljava/util/List;

    const-wide/16 v1, 0x0

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->st:J

    .line 7
    rem-int/lit8 v1, p1, 0x2

    if-nez v1, :cond_0

    goto :goto_0

    :cond_0
    add-int/lit8 p1, p1, 0x1

    :goto_0
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->calculateCount:I

    .line 8
    new-instance p1, Ljava/util/ArrayList;

    invoke-direct {p1}, Ljava/util/ArrayList;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngleList:Ljava/util/List;

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->useInterval:Z

    const-wide/16 v1, 0x1f4

    .line 10
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->interval:J

    const p1, 0x3f666666    # 0.9f

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->factor:F

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->hasStart:Z

    return-void
.end method

.method private mean(Ljava/util/List;)F
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;)F"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const-wide/16 v1, 0x0

    move-wide v3, v1

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Float;

    invoke-virtual {v5}, Ljava/lang/Float;->floatValue()F

    move-result v5

    float-to-double v5, v5

    .line 2
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    add-double/2addr v1, v7

    .line 3
    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v5

    add-double/2addr v3, v5

    goto :goto_0

    .line 4
    :cond_0
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    int-to-double v5, v0

    div-double/2addr v1, v5

    .line 5
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    int-to-double v5, p1

    div-double/2addr v3, v5

    .line 6
    invoke-static {v1, v2, v3, v4}, Ljava/lang/Math;->atan2(DD)D

    move-result-wide v0

    invoke-static {v0, v1}, Ljava/lang/Math;->toDegrees(D)D

    move-result-wide v0

    double-to-float p1, v0

    return p1
.end method

.method private trimDegree(F)F
    .locals 1

    const/high16 v0, 0x42c80000    # 100.0f

    mul-float p1, p1, v0

    float-to-int p1, p1

    int-to-float p1, p1

    div-float/2addr p1, v0

    return p1
.end method


# virtual methods
.method public getFactor()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->factor:F

    return v0
.end method

.method public getGpsOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->gpsOffset:F

    return v0
.end method

.method public getInterval()J
    .locals 2

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->interval:J

    return-wide v0
.end method

.method public getSpeedOffset()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    return v0
.end method

.method public getStartAngel()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    return v0
.end method

.method public getStartAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    return v0
.end method

.method public hasStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->hasStart:Z

    return v0
.end method

.method public init()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->count:I

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->isInit:Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngleList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method

.method public isStart()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->isInit:Z

    return v0
.end method

.method public isUseInterval()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->useInterval:Z

    return v0
.end method

.method public onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;)F
    .locals 1

    .line 36
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-virtual {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;F)F

    move-result p1

    return p1
.end method

.method public onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;F)F
    .locals 16

    move-object/from16 v0, p0

    move/from16 v1, p2

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    .line 2
    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->trimDegree(F)F

    move-result v3

    .line 3
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->isInit:Z

    const-wide/16 v5, 0x0

    const/4 v7, 0x1

    if-nez v4, :cond_2

    .line 4
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->count:I

    add-int/2addr v1, v7

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->count:I

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->hasStart:Z

    .line 6
    iput v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngleList:Ljava/util/List;

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v8

    invoke-interface {v4, v8}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 8
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->count:I

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->calculateCount:I

    const/4 v9, 0x0

    if-lt v4, v8, :cond_1

    .line 9
    iput-boolean v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->isInit:Z

    .line 10
    iput v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->gpsOffset:F

    .line 11
    iput v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    .line 12
    iget v4, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastDistance:F

    .line 13
    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->time:J

    .line 14
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastSpeed:F

    .line 15
    iput v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastAngel:F

    .line 16
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->count:I

    .line 17
    iput-wide v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->st:J

    const/high16 v2, 0x3fc00000    # 1.5f

    .line 18
    iget v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->calculateCount:I

    div-int/lit8 v3, v3, 0x2

    new-array v4, v3, [F

    const/high16 v5, -0x41000000    # -0.5f

    float-to-double v5, v5

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    float-to-double v12, v2

    int-to-double v14, v3

    .line 19
    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v12

    sub-double/2addr v10, v12

    div-double/2addr v5, v10

    double-to-float v5, v5

    aput v5, v4, v1

    :goto_0
    if-ge v7, v3, :cond_0

    add-int/lit8 v1, v7, -0x1

    .line 20
    aget v1, v4, v1

    mul-float v1, v1, v2

    aput v1, v4, v7

    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 21
    :cond_0
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngleList:Ljava/util/List;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->mean(Ljava/util/List;)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startAngleList "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngleList:Ljava/util/List;

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "; startAngle = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 23
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngleList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_1
    return v9

    .line 24
    :cond_2
    iput-boolean v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->hasStart:Z

    .line 25
    iget-wide v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 26
    iget-boolean v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->useInterval:Z

    const/high16 v8, 0x3f000000    # 0.5f

    if-eqz v7, :cond_3

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->interval:J

    cmp-long v7, v9, v5

    if-lez v7, :cond_3

    iget-wide v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->time:J

    sub-long v5, v3, v5

    cmp-long v7, v5, v9

    if-gtz v7, :cond_3

    .line 27
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->gpsOffset:F

    mul-float v1, v1, v8

    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    mul-float v2, v2, v8

    add-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->factor:F

    mul-float v1, v1, v2

    return v1

    .line 28
    :cond_3
    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    mul-float v5, v5, v8

    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastSpeed:F

    mul-float v6, v6, v8

    add-float/2addr v5, v6

    const v6, 0x40666666    # 3.6f

    div-float/2addr v5, v6

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->time:J

    sub-long v6, v3, v6

    long-to-float v6, v6

    mul-float v5, v5, v6

    const v6, 0x3a83126f    # 0.001f

    mul-float v5, v5, v6

    float-to-double v5, v5

    mul-float v7, v1, v8

    .line 29
    iget v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastAngel:F

    mul-float v9, v9, v8

    add-float/2addr v7, v9

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->startAngle:F

    sub-float/2addr v7, v8

    float-to-double v7, v7

    invoke-static {v7, v8}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v7

    invoke-static {v7, v8}, Ljava/lang/Math;->sin(D)D

    move-result-wide v7

    mul-double v5, v5, v7

    double-to-float v5, v5

    .line 30
    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    add-float/2addr v6, v5

    iput v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    .line 31
    iput-wide v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->time:J

    .line 32
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastAngel:F

    .line 33
    iget v1, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->lastSpeed:F

    .line 34
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u76f4\u7ebf\u5224\u65ad\u7684\u504f\u79fb\u91cf \uff0cGPS : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->gpsOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, "  , \u901f\u5ea6\u79ef\u5206 : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v2, " , dis : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "TAG"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 35
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->speedOffset:F

    return v1
.end method

.method public setFactor(F)V
    .locals 1

    const v0, 0x3e99999a    # 0.3f

    .line 1
    invoke-static {p1, v0}, Ljava/lang/Math;->max(FF)F

    move-result p1

    const/high16 v0, 0x40000000    # 2.0f

    invoke-static {v0, p1}, Ljava/lang/Math;->min(FF)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->factor:F

    return-void
.end method

.method public setInterval(J)Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;
    .locals 0

    .line 1
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->interval:J

    return-object p0
.end method

.method public setUseInterval(Z)Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->useInterval:Z

    return-object p0
.end method
