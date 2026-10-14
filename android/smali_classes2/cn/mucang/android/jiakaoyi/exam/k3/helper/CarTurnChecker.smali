.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;
    }
.end annotation


# instance fields
.field private changeValue:D

.field public direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

.field private keepTime:J

.field private lastGyroAngel:F

.field private triggerTime:J


# direct methods
.method public constructor <init>(D)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    const v0, -0x39e3c400    # -9999.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->lastGyroAngel:F

    const-wide/16 v0, -0x1

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    const-wide/16 v0, 0x1f4

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->keepTime:J

    .line 6
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->changeValue:D

    return-void
.end method

.method public constructor <init>(JD)V
    .locals 2

    .line 7
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    const v0, -0x39e3c400    # -9999.0f

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->lastGyroAngel:F

    const-wide/16 v0, -0x1

    .line 10
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    .line 11
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->keepTime:J

    .line 12
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->changeValue:D

    return-void
.end method


# virtual methods
.method public onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;FJ)V
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    sub-float/2addr p1, p2

    .line 2
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->a(F)F

    move-result p1

    float-to-double p1, p1

    .line 3
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->changeValue:D

    neg-double v2, v0

    const-wide/16 v4, -0x1

    cmpg-double v6, p1, v2

    if-gtz v6, :cond_1

    .line 4
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_0

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->readyTurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p1, p2, :cond_4

    .line 5
    :cond_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->readyTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    .line 6
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    return-void

    :cond_1
    cmpl-double v2, p1, v0

    if-ltz v2, :cond_3

    .line 7
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->readyTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p1, p2, :cond_4

    .line 8
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->readyTurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    .line 9
    iput-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    goto :goto_0

    .line 10
    :cond_3
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    cmp-long v0, p1, v4

    if-eqz v0, :cond_4

    .line 11
    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    .line 13
    :cond_4
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->readyTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p1, p2, :cond_5

    .line 14
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->keepTime:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_6

    .line 15
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    goto :goto_1

    .line 16
    :cond_5
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->readyTurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-ne p1, p2, :cond_6

    .line 17
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->triggerTime:J

    sub-long/2addr p3, p1

    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->keepTime:J

    cmp-long v0, p3, p1

    if-lez v0, :cond_6

    .line 18
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    :cond_6
    :goto_1
    return-void
.end method
