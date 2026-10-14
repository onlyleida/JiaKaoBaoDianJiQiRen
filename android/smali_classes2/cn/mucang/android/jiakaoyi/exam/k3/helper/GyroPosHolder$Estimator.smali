.class Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Estimator"
.end annotation


# instance fields
.field private last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

.field private lastAngel:F

.field private lastSpeed:F

.field private lastTime:J


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$1;)V
    .locals 0

    .line 2
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;-><init>()V

    return-void
.end method

.method static synthetic access$200(Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->getCurrentPos(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object p0

    return-object p0
.end method

.method private getCurrentPos(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;
    .locals 13

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 4
    new-instance v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>()V

    .line 5
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    if-nez v5, :cond_0

    .line 6
    new-instance v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    const-wide/16 v7, 0x0

    const-wide/16 v9, 0x0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v11, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    long-to-double v11, v11

    move-object v6, v5

    invoke-direct/range {v6 .. v12}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(DDD)V

    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 7
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    goto :goto_0

    .line 8
    :cond_0
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->lastSpeed:F

    add-float/2addr p1, v0

    float-to-double v5, p1

    const-wide/high16 v7, 0x3fe0000000000000L    # 0.5

    mul-double v5, v5, v7

    const-wide v9, 0x400ccccccccccccdL    # 3.6

    div-double/2addr v5, v9

    iget-wide v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->lastTime:J

    sub-long v9, v1, v9

    long-to-double v9, v9

    mul-double v5, v5, v9

    const-wide v9, 0x3f50624dd2f1a9fcL    # 0.001

    mul-double v5, v5, v9

    double-to-float p1, v5

    const/high16 v5, 0x42c80000    # 100.0f

    mul-float p1, p1, v5

    .line 9
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->lastAngel:F

    add-float/2addr v5, v3

    float-to-double v5, v5

    mul-double v5, v5, v7

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    .line 10
    iget-object v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, v7, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    float-to-double v9, p1

    invoke-static {v5, v6}, Ljava/lang/Math;->cos(D)D

    move-result-wide v11

    mul-double v11, v11, v9

    add-double/2addr v7, v11

    iput-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v9, v9, v5

    add-double/2addr v7, v9

    iput-wide v7, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    long-to-double v5, v1

    .line 12
    iput-wide v5, v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->last:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p1, v4}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->setPos(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    :goto_0
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->lastTime:J

    .line 15
    iput v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->lastAngel:F

    .line 16
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder$Estimator;->lastSpeed:F

    return-object v4
.end method
