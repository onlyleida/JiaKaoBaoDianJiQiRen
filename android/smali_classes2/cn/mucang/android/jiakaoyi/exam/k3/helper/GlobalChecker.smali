.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field private static final InValid:I = -0x186a0

.field private static final MAX:I = 0x7530

.field private static final N:I = 0x14

.field private static final Turn_Curve:I = 0x9c4


# instance fields
.field private beforeTime:J

.field private final config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field public isChangeOneRoad:Z

.field public isChangeTwoRoad:Z

.field private latest:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private latestAngle:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private latestPos:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field private line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

.field private maxCount:I

.field private startAngle:F

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    .line 6
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->reset()V

    return-void
.end method

.method private static getAreaOfTriangle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D
    .locals 8

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double v6, v2, v4

    mul-double v0, v0, v6

    iget-wide v6, p1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    iget-wide p0, p0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    sub-double/2addr v4, p0

    mul-double v6, v6, v4

    add-double/2addr v0, v6

    iget-wide v4, p2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    sub-double/2addr p0, v2

    mul-double v4, v4, p0

    add-double/2addr v0, v4

    const-wide/high16 p0, 0x4000000000000000L    # 2.0

    div-double/2addr v0, p0

    invoke-static {v0, v1}, Ljava/lang/Math;->abs(D)D

    move-result-wide p0

    return-wide p0
.end method

.method private static getCurvatureUsingTriangle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I
    .locals 8

    .line 1
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->getAreaOfTriangle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v0

    const-wide v2, 0x3bc79ca10c924223L    # 1.0E-20

    cmpg-double v4, v0, v2

    if-gez v4, :cond_0

    const/16 p0, 0x7530

    return p0

    .line 2
    :cond_0
    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v2

    .line 3
    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v4

    .line 4
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide p0

    const-wide/high16 v6, 0x4010000000000000L    # 4.0

    mul-double v0, v0, v6

    mul-double v2, v2, v4

    mul-double v2, v2, p0

    div-double/2addr v0, v2

    const-wide/high16 p0, 0x3ff0000000000000L    # 1.0

    div-double/2addr p0, v0

    const-wide v0, 0x40dd4c0000000000L    # 30000.0

    .line 5
    invoke-static {p0, p1, v0, v1}, Ljava/lang/Math;->min(DD)D

    move-result-wide p0

    double-to-int p0, p0

    return p0
.end method

.method private handleException(FI)V
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    sub-float/2addr p1, v0

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 v0, 0x41f00000    # 30.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_0

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    :cond_0
    const/16 p1, 0x9c4

    if-gt p2, p1, :cond_1

    .line 3
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    :cond_1
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

.method private onBefore(JFLcn/mucang/android/jiakaoyi/signal/pos/Pos;)V
    .locals 3

    const v0, -0x383cb000    # -100000.0f

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-static {p3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p3

    invoke-virtual {v0, p3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    const/16 v0, 0x14

    if-le p3, v0, :cond_0

    .line 5
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p3, p4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 7
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->size()I

    move-result p3

    if-le p3, v0, :cond_1

    .line 8
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 9
    :cond_1
    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->beforeTime:J

    const-wide/16 v0, 0x0

    cmp-long v2, p3, v0

    if-gtz v2, :cond_2

    .line 10
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->beforeTime:J

    .line 11
    :cond_2
    iget-wide p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->beforeTime:J

    sub-long/2addr p1, p3

    const-wide/16 p3, 0x3e8

    cmp-long v0, p1, p3

    if-lez v0, :cond_3

    .line 12
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->straight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    :cond_3
    return-void
.end method


# virtual methods
.method public getStartAngel()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    return v0
.end method

.method public onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 16

    move-object/from16 v0, p0

    const/4 v1, 0x0

    .line 1
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->isChangeOneRoad:Z

    .line 2
    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->isChangeTwoRoad:Z

    .line 3
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    .line 4
    iget-byte v3, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v4, 0x1

    if-eq v3, v4, :cond_0

    return-void

    .line 5
    :cond_0
    invoke-static/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GyroPosHolder;->get(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v3

    .line 6
    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v6, 0x3f800000    # 1.0f

    cmpg-float v5, v5, v6

    if-gez v5, :cond_1

    return-void

    .line 7
    :cond_1
    iget v5, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    .line 8
    iget-wide v7, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 9
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    const/4 v9, 0x3

    if-le v2, v9, :cond_11

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-wide v11, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->z:D

    sub-double/2addr v9, v11

    const-wide v11, 0x408f400000000000L    # 1000.0

    cmpl-double v2, v9, v11

    if-lez v2, :cond_11

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {v2, v9}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->distanceTo(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

    move-result-wide v9

    const-wide/high16 v11, 0x4059000000000000L    # 100.0

    cmpl-double v2, v9, v11

    if-lez v2, :cond_11

    .line 11
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->size()I

    move-result v10

    const/4 v11, 0x2

    div-int/2addr v10, v11

    invoke-virtual {v9, v10}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v10}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v2, v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->getCurvatureUsingTriangle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result v2

    .line 12
    iget-object v9, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v9}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 13
    sget-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$GlobalStateData$State:[I

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const-wide/16 v12, 0x0

    const/4 v10, 0x0

    const v14, -0x383cb000    # -100000.0f

    const/16 v15, 0x7530

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_4

    .line 14
    :pswitch_0
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->reset()V

    goto/16 :goto_4

    .line 15
    :pswitch_1
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    .line 16
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v6

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v7

    invoke-virtual {v1, v6, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v1

    .line 17
    invoke-static {v1}, Ljava/lang/Math;->abs(F)F

    move-result v1

    const/16 v3, 0x4e20

    const/high16 v6, 0x44610000    # 900.0f

    if-lt v2, v3, :cond_3

    .line 18
    iget v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    sub-float v3, v5, v3

    invoke-static {v3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    const/high16 v7, 0x40800000    # 4.0f

    cmpg-float v3, v3, v7

    if-gez v3, :cond_3

    const/high16 v3, 0x43160000    # 150.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_2

    const/high16 v3, 0x43c80000    # 400.0f

    cmpg-float v3, v1, v3

    if-gez v3, :cond_2

    .line 19
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 20
    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->isChangeOneRoad:Z

    goto :goto_0

    :cond_2
    const/high16 v3, 0x43fa0000    # 500.0f

    cmpl-float v3, v1, v3

    if-lez v3, :cond_4

    cmpg-float v1, v1, v6

    if-gez v1, :cond_4

    .line 21
    iput-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->isChangeTwoRoad:Z

    .line 22
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto :goto_0

    :cond_3
    if-ne v2, v15, :cond_4

    cmpl-float v1, v1, v6

    if-lez v1, :cond_4

    .line 23
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->reset()V

    .line 24
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 25
    :cond_4
    :goto_0
    invoke-direct {v0, v5, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->handleException(FI)V

    goto/16 :goto_4

    .line 26
    :pswitch_2
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v6, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v6

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v7

    invoke-virtual {v5, v6, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v3

    const/high16 v5, 0x42480000    # 50.0f

    cmpl-float v3, v3, v5

    if-lez v3, :cond_a

    .line 27
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    .line 28
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->maybeTurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    if-ne v1, v3, :cond_7

    .line 29
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_6

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 30
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_5

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_5

    goto :goto_1

    .line 31
    :cond_5
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    goto :goto_3

    :cond_6
    :goto_1
    const-string v1, "\u68c0\u6d4b\u5230\u53f3\u504f\u79fb"

    .line 32
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 33
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto :goto_3

    .line 34
    :cond_7
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-eqz v1, :cond_9

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_8

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v1

    if-eqz v1, :cond_8

    goto :goto_2

    .line 35
    :cond_8
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v4, :cond_a

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v1, v3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    goto :goto_3

    :cond_9
    :goto_2
    const-string v1, "\u68c0\u6d4b\u5230\u5de6\u504f\u79fb"

    .line 36
    invoke-static {v1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 37
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    :cond_a
    :goto_3
    if-ne v2, v15, :cond_11

    .line 38
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    add-int/2addr v1, v4

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    if-le v1, v11, :cond_11

    .line 39
    invoke-virtual/range {p0 .. p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->reset()V

    goto/16 :goto_4

    .line 40
    :pswitch_3
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    const/16 v1, 0x14

    if-ne v2, v15, :cond_c

    .line 41
    iput v14, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    .line 42
    iput-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 43
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    invoke-virtual {v2, v4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 44
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v1, :cond_b

    .line 45
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 46
    :cond_b
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 47
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v2}, Ljava/util/LinkedList;->size()I

    move-result v2

    if-le v2, v1, :cond_11

    .line 48
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto/16 :goto_4

    .line 49
    :cond_c
    iput-wide v12, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->beforeTime:J

    .line 50
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v1, :cond_f

    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    if-ne v4, v1, :cond_f

    .line 51
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v1, :cond_d

    .line 52
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-direct {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->mean(Ljava/util/List;)F

    move-result v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    .line 53
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v1

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 54
    :cond_d
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v7

    iget-wide v7, v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v3, v7

    invoke-virtual {v1, v4, v3}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v1

    const/16 v3, 0x3a98

    if-ge v2, v3, :cond_11

    const/high16 v2, 0x41a00000    # 20.0f

    cmpl-float v1, v1, v2

    if-lez v1, :cond_11

    .line 55
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    sub-float v1, v5, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    const/high16 v2, -0x40800000    # -1.0f

    cmpg-float v1, v1, v2

    if-gez v1, :cond_e

    .line 56
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->maybeTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 57
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 58
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_4

    .line 59
    :cond_e
    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    sub-float/2addr v5, v1

    invoke-static {v5}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    cmpl-float v1, v1, v6

    if-lez v1, :cond_11

    .line 60
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->maybeTurnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    .line 61
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 62
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    goto :goto_4

    .line 63
    :cond_f
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    goto :goto_4

    .line 64
    :pswitch_4
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    .line 65
    iput v14, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    .line 66
    iput-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-ne v2, v15, :cond_10

    .line 67
    invoke-direct {v0, v7, v8, v5, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->onBefore(JFLcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    goto :goto_4

    .line 68
    :cond_10
    iput-wide v12, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->beforeTime:J

    .line 69
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 70
    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    :cond_11
    :goto_4
    return-void

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_2
        :pswitch_1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public reset()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->beforeTime:J

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->latest:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const v0, -0x383cb000    # -100000.0f

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->startAngle:F

    const/4 v0, 0x0

    .line 7
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    const/4 v0, 0x0

    .line 8
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GlobalChecker;->maxCount:I

    return-void
.end method
