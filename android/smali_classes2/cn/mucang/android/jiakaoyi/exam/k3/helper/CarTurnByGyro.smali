.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;
    }
.end annotation


# static fields
.field private static final InValid:F = -100000.0f


# instance fields
.field private final Count:I

.field private angles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private final keepTime:J

.field private lastGyroAngel:F

.field private lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

.field private smallOffset:F

.field private smallStartDistance:F

.field private startAngle:F

.field private startStraightTime:J

.field private startTime:J

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

.field private final threshold:F


# direct methods
.method public constructor <init>(FJ)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/16 v0, 0x14

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->Count:I

    .line 3
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x28

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    const-wide/16 v1, -0x1

    .line 5
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    .line 6
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startStraightTime:J

    const v1, -0x383cb000    # -100000.0f

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    .line 8
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    const/4 v0, 0x0

    .line 9
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallStartDistance:F

    .line 10
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastGyroAngel:F

    .line 11
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallOffset:F

    .line 12
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->threshold:F

    const-wide/16 v0, 0x3e8

    .line 13
    invoke-static {v0, v1, p2, p3}, Ljava/lang/Math;->min(JJ)J

    move-result-wide p1

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->keepTime:J

    return-void
.end method

.method private isStable(Ljava/util/List;IFF)Z
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;IFF)Z"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    const/4 v1, 0x0

    if-ge v0, p2, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    add-int/lit8 v2, p2, -0x1

    invoke-interface {p1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v0, v2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    cmpl-float p4, v0, p4

    if-lez p4, :cond_1

    return v1

    .line 3
    :cond_1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->mean(Ljava/util/List;)F

    move-result p4

    const/4 v0, 0x0

    .line 4
    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_3

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    sub-float/2addr v2, p4

    .line 5
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v2

    .line 6
    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v3

    float-to-double v3, v3

    const-wide v5, 0x3fe3c6a7ef9db22dL    # 0.618

    cmpl-double v7, v3, v5

    if-lez v7, :cond_2

    return v1

    :cond_2
    add-float/2addr v0, v2

    goto :goto_0

    :cond_3
    int-to-float p1, p2

    div-float/2addr v0, p1

    cmpg-float p1, v0, p3

    if-gtz p1, :cond_4

    const/4 v1, 0x1

    :cond_4
    return v1
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


# virtual methods
.method public getStartAngle()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    return v0
.end method

.method public isStraight()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;
    .locals 12

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 3
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq v3, v4, :cond_0

    .line 4
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/16 v5, 0x19

    if-le v3, v5, :cond_0

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    const/4 v5, 0x0

    invoke-interface {v3, v5}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    const/16 v5, 0x14

    const v6, 0x3ecccccd    # 0.4f

    iget v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->threshold:F

    invoke-direct {p0, v3, v5, v6, v7}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->isStable(Ljava/util/List;IFF)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->reset()V

    .line 9
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    .line 11
    :cond_0
    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    const v5, -0x383cb000    # -100000.0f

    sub-float/2addr v3, v5

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/4 v6, 0x0

    cmpl-float v3, v3, v6

    if-lez v3, :cond_b

    .line 12
    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    sub-float v3, v0, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->a(F)F

    move-result v3

    .line 13
    iget v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->threshold:F

    neg-float v8, v7

    const/high16 v9, 0x42200000    # 40.0f

    const-wide/16 v10, -0x1

    cmpg-float v8, v3, v8

    if-gtz v8, :cond_3

    .line 14
    iput-wide v10, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startStraightTime:J

    .line 15
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    cmp-long p1, v4, v10

    if-nez p1, :cond_1

    .line 16
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 18
    :cond_1
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v9

    if-gez p1, :cond_2

    .line 19
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq p1, v3, :cond_b

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->keepTime:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_b

    .line 20
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    goto/16 :goto_0

    .line 21
    :cond_2
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    goto/16 :goto_0

    :cond_3
    cmpl-float v7, v3, v7

    if-ltz v7, :cond_6

    .line 22
    iput-wide v10, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startStraightTime:J

    .line 23
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    cmp-long p1, v4, v10

    if-nez p1, :cond_4

    .line 24
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    .line 25
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->clear()V

    .line 26
    :cond_4
    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpg-float p1, p1, v9

    if-gez p1, :cond_5

    .line 27
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq p1, v3, :cond_b

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    sub-long/2addr v1, v3

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->keepTime:J

    cmp-long p1, v1, v3

    if-lez p1, :cond_b

    .line 28
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    goto/16 :goto_0

    .line 29
    :cond_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    goto/16 :goto_0

    .line 30
    :cond_6
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    cmp-long v3, v1, v10

    if-eqz v3, :cond_7

    .line 31
    iput-wide v10, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    .line 32
    :cond_7
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallStartDistance:F

    cmpl-float v1, v1, v6

    if-nez v1, :cond_8

    .line 33
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallStartDistance:F

    .line 34
    iput v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallOffset:F

    .line 35
    :cond_8
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastGyroAngel:F

    sub-float/2addr v1, v5

    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_b

    .line 36
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallStartDistance:F

    sub-float/2addr v1, v2

    float-to-double v1, v1

    .line 37
    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastGyroAngel:F

    sub-float v3, v0, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->a(F)F

    move-result v3

    float-to-double v5, v3

    invoke-static {v5, v6}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v5

    invoke-static {v5, v6}, Ljava/lang/Math;->sin(D)D

    move-result-wide v5

    mul-double v1, v1, v5

    double-to-float v1, v1

    .line 38
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallOffset:F

    add-float/2addr v2, v1

    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallOffset:F

    const/high16 v1, 0x43160000    # 150.0f

    cmpl-float v1, v2, v1

    if-lez v1, :cond_9

    .line 39
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->reset()V

    .line 40
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    goto :goto_0

    :cond_9
    const/high16 v1, -0x3cea0000    # -150.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_a

    .line 41
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->reset()V

    .line 42
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    goto :goto_0

    .line 43
    :cond_a
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallStartDistance:F

    sub-float/2addr p1, v1

    const/high16 v1, 0x41a00000    # 20.0f

    cmpl-float p1, p1, v1

    if-lez p1, :cond_b

    .line 44
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->reset()V

    .line 45
    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    .line 46
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    .line 47
    :cond_b
    :goto_0
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastGyroAngel:F

    .line 48
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    return-object p1
.end method

.method public reset()V
    .locals 3

    const-wide/16 v0, -0x1

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startTime:J

    const/4 v2, 0x0

    .line 2
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->smallStartDistance:F

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startStraightTime:J

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->None:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    const v0, -0x383cb000    # -100000.0f

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->startAngle:F

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->angles:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    return-void
.end method
