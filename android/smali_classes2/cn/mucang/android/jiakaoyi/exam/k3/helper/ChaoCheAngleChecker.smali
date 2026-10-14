.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker$ChaoCheBackData;
    }
.end annotation


# static fields
.field private static final InValid:I = -0x186a0

.field private static final MAX:I = 0x7530


# instance fields
.field private final angles:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private backRightDistance:F

.field private final carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

.field public chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

.field private chaocheDaoInitDis:F

.field public couldTurnRight:Z

.field private hasFindChaoCheLine:Z

.field private hasFindPreLine:Z

.field private hasTurnRight:Z

.field private lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

.field private final latestPos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private leftDistance:F

.field private leftJudgeByLine:Z

.field private line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

.field private lineAngle:F

.field private maxChaoCheOffset:D

.field private rightDistance:F

.field private rightJudgeByLine:Z

.field private startAngle:F

.field private final threshold:F

.field public turnRightNotAllow:Z


# direct methods
.method public constructor <init>(F)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const v0, -0x383cb000    # -100000.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->lineAngle:F

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    .line 5
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 6
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    const/4 v0, 0x0

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaocheDaoInitDis:F

    const/high16 v0, 0x40000000    # 2.0f

    .line 8
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->threshold:F

    .line 9
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    const-wide/16 v1, 0x320

    invoke-direct {v0, p1, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;-><init>(FJ)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->reset()V

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
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->mean(Ljava/util/List;)F

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

.method private oldCalChaoChe(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 20

    move-object/from16 v0, p0

    .line 1
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    .line 2
    iget-byte v2, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v3, 0x1

    if-eq v2, v3, :cond_0

    return-void

    .line 3
    :cond_0
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->get(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v2

    .line 4
    iget v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v5, 0x40400000    # 3.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    return-void

    .line 5
    :cond_1
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 6
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x14

    const/4 v7, 0x0

    if-le v4, v6, :cond_2

    .line 8
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 10
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v8, 0xf

    if-le v4, v8, :cond_3

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 12
    :cond_3
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const v8, -0x383cb000    # -100000.0f

    const/high16 v9, 0x3f800000    # 1.0f

    if-ne v4, v6, :cond_4

    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpg-float v4, v4, v9

    if-gez v4, :cond_4

    .line 13
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->mean(Ljava/util/List;)F

    move-result v4

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    .line 14
    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->lineAngle:F

    .line 15
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 16
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v4

    iput-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 17
    :cond_4
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr v4, v8

    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    cmpl-float v4, v4, v9

    if-lez v4, :cond_2d

    .line 18
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->lineAngle:F

    sub-float/2addr v1, v4

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 19
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    move-object/from16 v8, p1

    invoke-virtual {v4, v8}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    move-result-object v4

    .line 20
    sget-object v10, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State:[I

    iget-object v11, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-virtual {v11}, Ljava/lang/Enum;->ordinal()I

    move-result v11

    aget v10, v10, v11

    const v11, 0x3f333333    # 0.7f

    const v12, 0x3e19999a    # 0.15f

    const/high16 v13, -0x40800000    # -1.0f

    const-wide/high16 v14, 0x3ff8000000000000L    # 1.5

    const/high16 v16, 0x43160000    # 150.0f

    const-wide/high16 v17, 0x3fe0000000000000L    # 0.5

    const/high16 v19, 0x42480000    # 50.0f

    packed-switch v10, :pswitch_data_0

    goto/16 :goto_9

    .line 21
    :pswitch_0
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v8

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v8

    invoke-virtual {v5, v6, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v2

    .line 22
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    .line 23
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v5, :cond_5

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 25
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v5, :cond_2d

    .line 26
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    const/high16 v5, 0x435c0000    # 220.0f

    const/high16 v6, 0x430c0000    # 140.0f

    if-eqz v4, :cond_8

    cmpl-float v4, v2, v6

    if-lez v4, :cond_6

    float-to-double v8, v1

    cmpg-double v4, v8, v14

    if-ltz v4, :cond_c

    :cond_6
    float-to-double v8, v1

    cmpg-double v1, v8, v17

    if-lez v1, :cond_c

    cmpl-float v1, v2, v5

    if-lez v1, :cond_7

    goto :goto_0

    :cond_7
    const/4 v3, 0x0

    goto :goto_0

    .line 27
    :cond_8
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    if-eqz v4, :cond_b

    .line 28
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    if-eqz v4, :cond_9

    cmpg-float v2, v2, v19

    if-ltz v2, :cond_c

    float-to-double v1, v1

    cmpg-double v4, v1, v17

    if-gtz v4, :cond_7

    goto :goto_0

    :cond_9
    cmpl-float v4, v2, v6

    if-lez v4, :cond_a

    float-to-double v8, v1

    cmpg-double v4, v8, v14

    if-ltz v4, :cond_c

    :cond_a
    float-to-double v8, v1

    cmpg-double v1, v8, v17

    if-ltz v1, :cond_c

    cmpl-float v1, v2, v5

    if-lez v1, :cond_7

    goto :goto_0

    :cond_b
    cmpg-float v2, v2, v19

    if-ltz v2, :cond_c

    float-to-double v1, v1

    cmpg-double v4, v1, v17

    if-gtz v4, :cond_7

    :cond_c
    :goto_0
    if-eqz v3, :cond_2d

    .line 29
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 30
    :pswitch_1
    iget v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaocheDaoInitDis:F

    const/4 v13, 0x0

    cmpl-float v10, v10, v13

    if-nez v10, :cond_d

    .line 31
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v10

    iget v10, v10, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaocheDaoInitDis:F

    .line 32
    :cond_d
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-double v7, v10

    cmpg-double v10, v7, v14

    if-gez v10, :cond_e

    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v7, v6, v12, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->isStable(Ljava/util/List;IFF)Z

    move-result v6

    if-eqz v6, :cond_e

    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    if-nez v6, :cond_e

    .line 33
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v6}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->mean(Ljava/util/List;)F

    move-result v6

    iput v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->lineAngle:F

    .line 34
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    .line 35
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v6

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 36
    :cond_e
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    if-nez v6, :cond_f

    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    if-nez v6, :cond_f

    float-to-double v6, v13

    .line 37
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->maxChaoCheOffset:D

    invoke-static {v6, v7, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    iput-wide v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->maxChaoCheOffset:D

    .line 38
    :cond_f
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v7, v7

    iget-wide v10, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v10

    invoke-virtual {v6, v7, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v2

    .line 39
    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    const/high16 v7, 0x42a00000    # 80.0f

    const/high16 v8, 0x42c80000    # 100.0f

    if-ne v4, v6, :cond_14

    .line 40
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    if-eqz v1, :cond_11

    cmpl-float v1, v2, v8

    if-lez v1, :cond_10

    goto :goto_1

    :cond_10
    const/4 v3, 0x0

    goto :goto_1

    .line 41
    :cond_11
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    if-eqz v1, :cond_13

    .line 42
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    if-eqz v1, :cond_12

    const/high16 v1, 0x42f00000    # 120.0f

    cmpg-float v1, v2, v1

    if-gez v1, :cond_10

    goto :goto_1

    :cond_12
    cmpl-float v1, v2, v7

    if-lez v1, :cond_10

    goto :goto_1

    :cond_13
    cmpg-float v1, v2, v16

    if-gez v1, :cond_10

    :goto_1
    if-eqz v3, :cond_2d

    .line 43
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 44
    :cond_14
    sget-object v6, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v6, :cond_2d

    .line 45
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    if-eqz v4, :cond_16

    cmpl-float v2, v2, v16

    if-lez v2, :cond_15

    cmpl-float v1, v1, v9

    if-lez v1, :cond_15

    goto :goto_3

    :cond_15
    const/4 v3, 0x0

    goto :goto_3

    .line 46
    :cond_16
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    if-eqz v4, :cond_19

    .line 47
    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    if-eqz v4, :cond_17

    cmpg-float v2, v2, v8

    if-ltz v2, :cond_1d

    cmpl-float v1, v1, v5

    if-lez v1, :cond_15

    goto :goto_3

    :cond_17
    cmpl-float v4, v2, v7

    if-lez v4, :cond_18

    cmpl-float v4, v1, v9

    if-gtz v4, :cond_1d

    :cond_18
    const/high16 v4, 0x432a0000    # 170.0f

    cmpl-float v2, v2, v4

    if-lez v2, :cond_15

    float-to-double v1, v1

    cmpl-double v4, v1, v17

    if-lez v4, :cond_15

    goto :goto_3

    .line 48
    :cond_19
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->threshold:F

    float-to-double v5, v4

    const-wide v7, 0x3fe3333333333333L    # 0.6

    mul-double v5, v5, v7

    const-wide/high16 v7, 0x4059000000000000L    # 100.0

    .line 49
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->maxChaoCheOffset:D

    const-wide v11, 0x407f400000000000L    # 500.0

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1a

    const-wide v7, 0x406f400000000000L    # 250.0

    goto :goto_2

    :cond_1a
    const-wide/high16 v11, 0x4079000000000000L    # 400.0

    cmpl-double v13, v9, v11

    if-lez v13, :cond_1b

    const-wide v7, 0x4062c00000000000L    # 150.0

    :cond_1b
    :goto_2
    float-to-double v9, v2

    cmpg-double v2, v9, v7

    if-gez v2, :cond_1c

    float-to-double v7, v1

    cmpl-double v2, v7, v5

    if-gtz v2, :cond_1d

    :cond_1c
    cmpl-float v1, v1, v4

    if-lez v1, :cond_15

    :cond_1d
    :goto_3
    if-eqz v3, :cond_2d

    .line 50
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaocheDaoInitDis:F

    sub-float/2addr v1, v2

    const/high16 v2, 0x40a00000    # 5.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_2d

    .line 51
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 52
    :pswitch_2
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v1, :cond_1e

    goto :goto_4

    :cond_1e
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v5

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v6

    invoke-virtual {v1, v5, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v13

    .line 53
    :goto_4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_1f

    .line 54
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 55
    :cond_1f
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_2d

    .line 56
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    if-eqz v1, :cond_22

    .line 57
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    if-eqz v1, :cond_21

    cmpl-float v1, v13, v16

    if-lez v1, :cond_20

    goto :goto_5

    :cond_20
    const/4 v3, 0x0

    goto :goto_5

    :cond_21
    cmpg-float v1, v13, v19

    if-gez v1, :cond_20

    goto :goto_5

    :cond_22
    cmpl-float v1, v13, v16

    if-lez v1, :cond_20

    :goto_5
    if-eqz v3, :cond_2d

    .line 58
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 59
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 60
    :pswitch_3
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    cmpg-double v5, v1, v14

    if-gez v5, :cond_23

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v1, v6, v12, v11}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->isStable(Ljava/util/List;IFF)Z

    move-result v1

    if-eqz v1, :cond_23

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    if-nez v1, :cond_23

    .line 61
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->mean(Ljava/util/List;)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->lineAngle:F

    .line 62
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    .line 63
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 64
    :cond_23
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_2d

    .line 65
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 66
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 67
    :pswitch_4
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    .line 68
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v3, :cond_24

    .line 69
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 70
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 71
    :cond_24
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->rightJudgeByLine:Z

    if-eqz v3, :cond_2d

    .line 72
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v3, :cond_25

    goto :goto_6

    :cond_25
    iget-wide v4, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v4

    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v5

    invoke-virtual {v3, v4, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v13

    .line 73
    :goto_6
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    float-to-double v1, v1

    const-wide/high16 v3, 0x4004000000000000L    # 2.5

    cmpg-double v5, v1, v3

    if-gez v5, :cond_2d

    cmpl-float v1, v13, v16

    if-lez v1, :cond_2d

    .line 74
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 75
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 76
    :pswitch_5
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v5, :cond_2a

    .line 77
    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v6

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    .line 78
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v5, :cond_26

    cmpl-float v6, v1, v9

    if-lez v6, :cond_26

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v6

    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v7, v7

    invoke-virtual {v5, v6, v7}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v5

    cmpl-float v5, v5, v19

    if-lez v5, :cond_26

    const/4 v5, 0x1

    goto :goto_7

    :cond_26
    const/4 v5, 0x0

    :goto_7
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->rightJudgeByLine:Z

    .line 79
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v5, :cond_27

    cmpg-float v1, v1, v13

    if-gez v1, :cond_27

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v6

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v6

    invoke-virtual {v5, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v1

    cmpl-float v1, v1, v19

    if-lez v1, :cond_27

    const/4 v7, 0x1

    goto :goto_8

    :cond_27
    const/4 v7, 0x0

    :goto_8
    iput-boolean v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftJudgeByLine:Z

    .line 80
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_29

    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->rightJudgeByLine:Z

    if-eqz v1, :cond_29

    .line 81
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->couldTurnRight:Z

    if-nez v1, :cond_28

    .line 82
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->turnRightNotAllow:Z

    .line 83
    :cond_28
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 84
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_9

    .line 85
    :cond_29
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_2d

    if-eqz v7, :cond_2d

    .line 86
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 87
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_9

    .line 88
    :cond_2a
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_2c

    .line 89
    iget-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->couldTurnRight:Z

    if-nez v1, :cond_2b

    .line 90
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->turnRightNotAllow:Z

    .line 91
    :cond_2b
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 92
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    goto :goto_9

    .line 93
    :cond_2c
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v4, v1, :cond_2d

    .line 94
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 95
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    :cond_2d
    :goto_9
    return-void

    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public getStartAngel()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    return v0
.end method

.method public onBefore(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 2

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 2
    iget-byte v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->angles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 11

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    .line 2
    iget-byte v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x1

    if-eq v0, v1, :cond_0

    return-void

    .line 3
    :cond_0
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v2, 0x40400000    # 3.0f

    cmpg-float v0, v0, v2

    if-gez v0, :cond_1

    return-void

    .line 4
    :cond_1
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->get(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v0

    .line 5
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v3, v0}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 6
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->size()I

    move-result v3

    const/16 v4, 0xf

    if-le v3, v4, :cond_2

    .line 7
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 8
    :cond_2
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    invoke-virtual {v3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    move-result-object v3

    .line 9
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->carTurnByGyro:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;

    invoke-virtual {v5}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro;->getStartAngle()F

    move-result v5

    iput v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    .line 10
    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    .line 11
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    const v6, -0x383cb000    # -100000.0f

    sub-float/2addr v5, v6

    invoke-static {v5}, Ljava/lang/Math;->abs(F)F

    move-result v5

    const/high16 v7, 0x3f800000    # 1.0f

    cmpl-float v5, v5, v7

    if-lez v5, :cond_6

    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq v3, v5, :cond_3

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v8, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v5, v8, :cond_6

    .line 12
    :cond_3
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v5, :cond_4

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->size()I

    move-result v5

    if-ne v5, v4, :cond_4

    .line 13
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 14
    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v5}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 15
    invoke-virtual {v4, v5}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    const-wide/high16 v8, 0x4069000000000000L    # 200.0

    cmpl-double v10, v4, v8

    if-lez v10, :cond_4

    .line 16
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v4

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 17
    :cond_4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v4, v5, :cond_5

    .line 18
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    goto :goto_0

    .line 19
    :cond_5
    sget-object v5, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne v4, v5, :cond_6

    .line 20
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    .line 21
    :cond_6
    :goto_0
    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State:[I

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-virtual {v5}, Ljava/lang/Enum;->ordinal()I

    move-result v5

    aget v4, v4, v5

    const/high16 v5, 0x42c80000    # 100.0f

    const/high16 v8, -0x40800000    # -1.0f

    packed-switch v4, :pswitch_data_0

    goto/16 :goto_5

    .line 22
    :pswitch_0
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v3, p1, :cond_1a

    .line 23
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    .line 24
    :pswitch_1
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v3, p1, :cond_7

    .line 25
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    .line 26
    :cond_7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-lez p1, :cond_1a

    .line 27
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 28
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez p2, :cond_8

    goto :goto_1

    :cond_8
    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v6

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v6

    invoke-virtual {p2, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v8

    .line 29
    :goto_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    const-wide/high16 v6, 0x3fe0000000000000L    # 0.5

    const/4 v0, 0x0

    if-eqz p2, :cond_a

    cmpl-float p2, v8, v5

    if-lez p2, :cond_9

    float-to-double p1, p1

    .line 30
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->threshold:F

    float-to-double v4, v2

    mul-double v4, v4, v6

    cmpl-double v2, p1, v4

    if-lez v2, :cond_9

    goto :goto_2

    :cond_9
    const/4 v1, 0x0

    goto :goto_2

    .line 31
    :cond_a
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    if-eqz v2, :cond_c

    if-eqz p2, :cond_b

    cmpg-float p2, v8, v5

    if-gez p2, :cond_9

    float-to-double p1, p1

    .line 32
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->threshold:F

    float-to-double v4, v2

    mul-double v4, v4, v6

    cmpl-double v2, p1, v4

    if-lez v2, :cond_9

    goto :goto_2

    :cond_b
    cmpl-float p2, v8, v5

    if-lez p2, :cond_9

    float-to-double p1, p1

    .line 33
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->threshold:F

    float-to-double v4, v2

    mul-double v4, v4, v6

    cmpl-double v2, p1, v4

    if-lez v2, :cond_9

    goto :goto_2

    :cond_c
    cmpg-float p2, v8, v5

    if-gez p2, :cond_9

    float-to-double p1, p1

    .line 34
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->threshold:F

    float-to-double v4, v2

    mul-double v4, v4, v6

    cmpl-double v2, p1, v4

    if-lez v2, :cond_9

    :goto_2
    if-eqz v1, :cond_1a

    .line 35
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    .line 36
    :pswitch_2
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftDistance:F

    cmpl-float p2, p2, v8

    if-nez p2, :cond_d

    .line 37
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftDistance:F

    .line 38
    :cond_d
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq v3, p2, :cond_e

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftDistance:F

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1a

    .line 39
    :cond_e
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    .line 40
    :pswitch_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v3, p1, :cond_f

    .line 41
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    .line 42
    :cond_f
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-lez p1, :cond_1a

    .line 43
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 44
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez p2, :cond_10

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_3

    :cond_10
    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v1, v1

    iget-wide v6, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v6

    invoke-virtual {p2, v1, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result p2

    .line 45
    :goto_3
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    if-eqz v0, :cond_11

    cmpl-float p2, p2, v5

    if-lez p2, :cond_1a

    cmpg-float p1, p1, v8

    if-gez p1, :cond_1a

    .line 46
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    :cond_11
    const/high16 v0, 0x42480000    # 50.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1a

    cmpg-float p1, p1, v8

    if-gez p1, :cond_1a

    .line 47
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_5

    .line 48
    :pswitch_4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    .line 49
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftDistance:F

    const/4 v0, 0x0

    cmpl-float p2, p2, v0

    if-nez p2, :cond_12

    .line 50
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftDistance:F

    .line 51
    :cond_12
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->Straight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-eq v3, p2, :cond_13

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftDistance:F

    sub-float/2addr p1, p2

    cmpl-float p1, p1, v2

    if-lez p1, :cond_1a

    .line 52
    :cond_13
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto :goto_5

    .line 53
    :pswitch_5
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v3, p1, :cond_14

    .line 54
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto :goto_5

    .line 55
    :cond_14
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;->TurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    if-ne v3, p1, :cond_16

    .line 56
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->couldTurnRight:Z

    if-nez p1, :cond_15

    .line 57
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->turnRightNotAllow:Z

    .line 58
    :cond_15
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto :goto_5

    .line 59
    :cond_16
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr p1, v6

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    cmpl-float p1, p1, v7

    if-lez p1, :cond_1a

    .line 60
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 61
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez p2, :cond_17

    const/high16 p2, -0x40800000    # -1.0f

    goto :goto_4

    :cond_17
    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v9

    iget-wide v9, v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v0, v9

    invoke-virtual {p2, v2, v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result p2

    :goto_4
    cmpl-float p2, p2, v5

    if-lez p2, :cond_1a

    cmpl-float p2, p1, v7

    if-lez p2, :cond_19

    .line 62
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->couldTurnRight:Z

    if-nez p1, :cond_18

    .line 63
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->turnRightNotAllow:Z

    .line 64
    :cond_18
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto :goto_5

    :cond_19
    cmpg-float p1, p1, v8

    if-gez p1, :cond_1a

    .line 65
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 66
    :cond_1a
    :goto_5
    iput-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->lastCarTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnByGyro$State;

    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->chaoCheState:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->turnRightNotAllow:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->couldTurnRight:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasTurnRight:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const v1, -0x383cb000    # -100000.0f

    .line 6
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->startAngle:F

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 8
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindPreLine:Z

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->hasFindChaoCheLine:Z

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->rightJudgeByLine:Z

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleChecker;->leftJudgeByLine:Z

    return-void
.end method
