.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final DEFAULT_DURATION:I = 0x7d0


# instance fields
.field private duration:I

.field private minSpeed:F

.field private timeAtSpeed0:Ljava/lang/Long;


# direct methods
.method public constructor <init>()V
    .locals 2

    const/4 v0, 0x0

    const/16 v1, 0x7d0

    .line 1
    invoke-direct {p0, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;-><init>(FI)V

    return-void
.end method

.method public constructor <init>(FI)V
    .locals 1

    .line 2
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 3
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 4
    sget v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->minSpeed:F

    .line 5
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->duration:I

    return-void
.end method


# virtual methods
.method public getCheckTime()J
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->duration:I

    int-to-long v0, v0

    return-wide v0
.end method

.method public onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 2
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 3
    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v4

    invoke-virtual {v4, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-eqz p1, :cond_2

    .line 5
    iget-object p1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne p1, v0, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    if-nez p1, :cond_0

    .line 7
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 8
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->duration:I

    int-to-long v0, p1

    cmp-long p1, v2, v0

    if-lez p1, :cond_5

    return v4

    .line 9
    :cond_1
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    goto :goto_0

    .line 10
    :cond_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->minSpeed:F

    cmpg-float p1, v1, p1

    if-gtz p1, :cond_4

    .line 11
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    if-nez p1, :cond_3

    .line 12
    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    .line 13
    :cond_3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    sub-long/2addr v2, v0

    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->duration:I

    int-to-long v0, p1

    cmp-long p1, v2, v0

    if-ltz p1, :cond_5

    return v4

    .line 14
    :cond_4
    iput-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    :cond_5
    :goto_0
    const/4 p1, 0x0

    return p1
.end method

.method public reset()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;->timeAtSpeed0:Ljava/lang/Long;

    return-void
.end method
