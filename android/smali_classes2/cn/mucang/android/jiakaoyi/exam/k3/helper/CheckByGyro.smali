.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;
    }
.end annotation


# static fields
.field private static final InValid:F = -100000.0f


# instance fields
.field private count:I

.field private final delayTime:J

.field private lastDegree:F

.field private leftCount:I

.field private rightCount:I

.field private st:J

.field private startDegree:F

.field private state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;


# direct methods
.method public constructor <init>(J)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x383cb000    # -100000.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->lastDegree:F

    .line 3
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    const/4 v1, 0x0

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->count:I

    .line 5
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->leftCount:I

    .line 6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->rightCount:I

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->startDegree:F

    const-wide/16 v0, 0x0

    .line 8
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->st:J

    .line 9
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->delayTime:J

    return-void
.end method


# virtual methods
.method public currentState()Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    return-object v0
.end method

.method public isStraight()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTurnLeft()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public isTurnRight()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public put(F)V
    .locals 7

    .line 1
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    .line 2
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->st:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-nez v6, :cond_0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->st:J

    .line 4
    :cond_0
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->st:J

    sub-long/2addr v0, v2

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->delayTime:J

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    return-void

    .line 5
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->lastDegree:F

    const v1, -0x383cb000    # -100000.0f

    cmpl-float v1, v0, v1

    if-nez v1, :cond_2

    .line 6
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->lastDegree:F

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->startDegree:F

    return-void

    :cond_2
    sub-float v0, p1, v0

    .line 8
    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v4, v0, v2

    if-gez v4, :cond_3

    return-void

    .line 9
    :cond_3
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->startDegree:F

    sub-float v0, p1, v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x40a00000    # 5.0f

    const/4 v2, 0x0

    cmpg-float v0, v0, v1

    if-gez v0, :cond_4

    .line 10
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->count:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->count:I

    const/16 v1, 0xa

    if-le v0, v1, :cond_6

    .line 11
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    .line 12
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->leftCount:I

    .line 13
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->rightCount:I

    goto :goto_0

    .line 14
    :cond_4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->startDegree:F

    const/4 v1, 0x5

    cmpl-float v0, p1, v0

    if-lez v0, :cond_5

    .line 15
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->rightCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->rightCount:I

    if-le v0, v1, :cond_6

    .line 16
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    .line 17
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->leftCount:I

    .line 18
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->count:I

    goto :goto_0

    .line 19
    :cond_5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->leftCount:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->leftCount:I

    if-le v0, v1, :cond_6

    .line 20
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro$State;

    .line 21
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->rightCount:I

    .line 22
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->count:I

    .line 23
    :cond_6
    :goto_0
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CheckByGyro;->lastDegree:F

    return-void
.end method
