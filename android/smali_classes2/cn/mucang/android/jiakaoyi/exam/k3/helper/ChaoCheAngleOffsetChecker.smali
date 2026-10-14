.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker$ChaoCheBackData;
    }
.end annotation


# static fields
.field private static final InValid:I = -0x186a0

.field private static final MAX:I = 0x7530

.field private static final N:I = 0xf


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

.field private carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

.field private chaoCheLineStartAngle:F

.field private chaocheCount:I

.field private chaocheDaoInitDis:F

.field public couldTurnRight:Z

.field private final finder:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;

.field private hasFindChaoCheLine:Z

.field private hasFindPreLine:Z

.field private hasTurnRight:Z

.field private initStartAngle:F

.field private lastAngle:F

.field private lastPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

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

.field private leftJudgeByLine:Z

.field private line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

.field private maxChaoCheDiffAngle:D

.field private maxChaoCheOffset:D

.field private maxY:D

.field private minY:D

.field private offsetList:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field private preTurnLeftStartAngle:F

.field private rightJudgeByLine:Z

.field private startAngle:F

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

.field private final threshold:F

.field private turnBackY:D

.field private turnLeftY:D

.field public turnRightNotAllow:Z


# direct methods
.method public constructor <init>(F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestAngle:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->finder:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->offsetList:Ljava/util/LinkedList;

    const v0, 0x4cbebc20    # 1.0E8f

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->lastAngle:F

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 8
    new-instance v0, Ljava/util/ArrayList;

    const/16 v1, 0x32

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    const-wide v0, -0x3f3c788000000000L    # -9999.0

    .line 9
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheDiffAngle:D

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheDaoInitDis:F

    const/high16 v0, 0x40200000    # 2.5f

    .line 11
    invoke-static {v0, p1}, Ljava/lang/Math;->max(FF)F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->threshold:F

    .line 12
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->reset()V

    return-void
.end method

.method private static calc(Ljava/util/List;I)F
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Ljava/lang/Float;",
            ">;I)F"
        }
    .end annotation

    const/4 v0, 0x0

    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v2, p1, :cond_0

    .line 1
    invoke-interface {p0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    add-float/2addr v3, v4

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_0
    int-to-float v2, p1

    div-float/2addr v3, v2

    :goto_1
    if-ge v0, p1, :cond_1

    .line 2
    invoke-interface {p0, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Float;

    invoke-virtual {v4}, Ljava/lang/Float;->floatValue()F

    move-result v4

    sub-float/2addr v4, v3

    mul-float v4, v4, v4

    add-float/2addr v1, v4

    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    :cond_1
    div-float/2addr v1, v2

    float-to-double p0, v1

    .line 3
    invoke-static {p0, p1}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p0

    double-to-float p0, p0

    return p0
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
    invoke-static {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->getAreaOfTriangle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)D

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
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->mean(Ljava/util/List;)F

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

.method private onDataChange(FLcn/mucang/android/jiakaoyi/signal/pos/Pos;I)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, p3, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, p3, :cond_1

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_1
    return-void
.end method

.method private resetValues()V
    .locals 2

    const-wide v0, 0x41cdcd6500000000L    # 1.0E9

    .line 1
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->minY:D

    const-wide v0, -0x3e32329b00000000L    # -1.0E9

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxY:D

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->offsetList:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->finder:Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineFinder;->clear()V

    return-void
.end method

.method private trimAngle(Ljava/util/LinkedList;Ljava/util/LinkedList;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;",
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0xe

    if-ge v0, v1, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x3

    .line 2
    :goto_0
    invoke-virtual {p2}, Ljava/util/LinkedList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    invoke-virtual {p2}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    div-int/lit8 v2, v0, 0x2

    invoke-virtual {p2, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-virtual {p2, v0}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-static {v1, v2, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->getCurvatureUsingTriangle(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)I

    move-result v1

    const/16 v2, 0x7530

    if-ge v1, v2, :cond_1

    goto :goto_1

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, -0x1

    :goto_1
    if-lez v0, :cond_3

    .line 4
    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result v1

    sub-int v0, v1, v0

    :cond_3
    :goto_2
    if-lez v0, :cond_4

    .line 5
    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6
    invoke-virtual {p2}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    add-int/lit8 v0, v0, -0x1

    goto :goto_2

    :cond_4
    return-void
.end method


# virtual methods
.method public getStartAngel()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/16 v0, 0xa

    if-le p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    const/4 v0, 0x0

    invoke-interface {p1, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    :cond_2
    return-void
.end method

.method public onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 21

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

    const/high16 v5, 0x3f800000    # 1.0f

    cmpg-float v4, v4, v5

    if-gez v4, :cond_1

    return-void

    .line 5
    :cond_1
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    .line 6
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v6

    invoke-interface {v4, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 7
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    const/16 v6, 0x14

    const/4 v7, 0x0

    if-le v4, v6, :cond_2

    .line 8
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v4, v7}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 9
    :cond_2
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 10
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->size()I

    move-result v4

    const/16 v8, 0xf

    if-le v4, v8, :cond_3

    .line 11
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v4}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 12
    :cond_3
    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    sub-float v4, v1, v4

    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 13
    sget-object v9, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$ChaoCheStateData$State:[I

    iget-object v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    invoke-virtual {v10}, Ljava/lang/Enum;->ordinal()I

    move-result v10

    aget v9, v9, v10

    const v10, 0x3f333333    # 0.7f

    const v11, 0x3e19999a    # 0.15f

    const/high16 v12, 0x43160000    # 150.0f

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v14, -0x40800000    # -1.0f

    const-wide/high16 v15, 0x4004000000000000L    # 2.5

    const-wide/high16 v17, 0x3ff8000000000000L    # 1.5

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    packed-switch v9, :pswitch_data_0

    goto/16 :goto_9

    .line 14
    :pswitch_0
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    const v6, 0x3da3d70a    # 0.08f

    const v9, 0x3e99999a    # 0.3f

    invoke-direct {v0, v5, v8, v6, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->isStable(Ljava/util/List;IFF)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 15
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 16
    :cond_4
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v6, v8

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v8

    invoke-virtual {v5, v6, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v2

    .line 17
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v4

    .line 18
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindChaoCheLine:Z

    const/high16 v6, 0x435c0000    # 220.0f

    const/high16 v8, 0x430c0000    # 140.0f

    if-eqz v5, :cond_7

    cmpl-float v5, v2, v8

    if-lez v5, :cond_5

    float-to-double v8, v4

    cmpg-double v5, v8, v17

    if-ltz v5, :cond_b

    :cond_5
    float-to-double v4, v4

    cmpg-double v8, v4, v19

    if-lez v8, :cond_b

    cmpl-float v2, v2, v6

    if-lez v2, :cond_6

    goto :goto_0

    :cond_6
    const/4 v3, 0x0

    goto :goto_0

    .line 19
    :cond_7
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasTurnRight:Z

    if-eqz v5, :cond_a

    .line 20
    iget-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindPreLine:Z

    if-eqz v5, :cond_8

    cmpg-float v2, v2, v13

    if-ltz v2, :cond_b

    float-to-double v4, v4

    cmpg-double v2, v4, v19

    if-gtz v2, :cond_6

    goto :goto_0

    :cond_8
    cmpl-float v5, v2, v8

    if-lez v5, :cond_9

    float-to-double v8, v4

    cmpg-double v5, v8, v17

    if-ltz v5, :cond_b

    :cond_9
    float-to-double v4, v4

    cmpg-double v8, v4, v19

    if-ltz v8, :cond_b

    cmpl-float v2, v2, v6

    if-lez v2, :cond_6

    goto :goto_0

    :cond_a
    cmpg-float v2, v2, v13

    if-ltz v2, :cond_b

    float-to-double v4, v4

    cmpg-double v2, v4, v19

    if-gtz v2, :cond_6

    :cond_b
    :goto_0
    if-eqz v3, :cond_2c

    .line 21
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 22
    :pswitch_1
    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheDaoInitDis:F

    const/4 v9, 0x0

    cmpl-float v8, v8, v9

    if-nez v8, :cond_c

    .line 23
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v8

    iget v8, v8, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheDaoInitDis:F

    .line 24
    :cond_c
    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheCount:I

    add-int/2addr v8, v3

    iput v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheCount:I

    .line 25
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v8

    float-to-double v8, v8

    cmpg-double v12, v8, v17

    if-gez v12, :cond_d

    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v8, v6, v11, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->isStable(Ljava/util/List;IFF)Z

    move-result v6

    if-eqz v6, :cond_d

    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindChaoCheLine:Z

    if-nez v6, :cond_d

    .line 26
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->mean(Ljava/util/List;)F

    move-result v4

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    .line 27
    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaoCheLineStartAngle:F

    .line 28
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindChaoCheLine:Z

    sub-float v4, v1, v4

    .line 29
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 30
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v6

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 31
    :cond_d
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v8, v8

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v9

    invoke-virtual {v6, v8, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v2

    .line 32
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindChaoCheLine:Z

    if-nez v6, :cond_e

    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasTurnRight:Z

    if-nez v6, :cond_e

    float-to-double v8, v2

    .line 33
    iget-wide v10, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheOffset:D

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheOffset:D

    .line 34
    :cond_e
    iget-wide v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheDiffAngle:D

    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->initStartAngle:F

    sub-float v6, v1, v6

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v6

    float-to-double v10, v6

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    iput-wide v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheDiffAngle:D

    .line 35
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindChaoCheLine:Z

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    const/high16 v12, 0x432a0000    # 170.0f

    const/high16 v13, 0x42a00000    # 80.0f

    if-eqz v6, :cond_11

    cmpl-float v5, v2, v13

    if-lez v5, :cond_f

    float-to-double v5, v4

    cmpl-double v13, v5, v17

    if-gtz v13, :cond_17

    :cond_f
    cmpl-float v2, v2, v12

    if-lez v2, :cond_10

    float-to-double v4, v4

    cmpl-double v2, v4, v19

    if-lez v2, :cond_10

    goto :goto_1

    :cond_10
    const/4 v3, 0x0

    goto :goto_1

    .line 36
    :cond_11
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasTurnRight:Z

    if-eqz v6, :cond_14

    .line 37
    iget-boolean v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindPreLine:Z

    if-eqz v6, :cond_12

    const/high16 v5, 0x42f00000    # 120.0f

    cmpg-float v2, v2, v5

    if-ltz v2, :cond_17

    const/high16 v2, 0x40400000    # 3.0f

    cmpl-float v2, v4, v2

    if-lez v2, :cond_10

    goto :goto_1

    :cond_12
    cmpl-float v6, v2, v13

    if-lez v6, :cond_13

    cmpl-float v5, v4, v5

    if-gtz v5, :cond_17

    :cond_13
    cmpl-float v2, v2, v12

    if-lez v2, :cond_10

    float-to-double v4, v4

    cmpl-double v2, v4, v19

    if-lez v2, :cond_10

    goto :goto_1

    :cond_14
    const-wide/high16 v5, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    .line 38
    iget-wide v14, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheOffset:D

    const-wide/high16 v16, 0x4079000000000000L    # 400.0

    cmpl-double v18, v14, v16

    if-lez v18, :cond_15

    float-to-double v4, v4

    cmpl-double v2, v4, v10

    if-lez v2, :cond_10

    goto :goto_1

    :cond_15
    float-to-double v14, v2

    cmpg-double v2, v14, v12

    if-gez v2, :cond_16

    float-to-double v12, v4

    cmpl-double v2, v12, v5

    if-gtz v2, :cond_17

    .line 39
    :cond_16
    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->threshold:F

    cmpl-float v2, v4, v2

    if-lez v2, :cond_10

    .line 40
    :cond_17
    :goto_1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->threshold:F

    float-to-double v4, v2

    cmpl-double v2, v8, v4

    if-gtz v2, :cond_19

    if-eqz v3, :cond_18

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheDaoInitDis:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x40a00000    # 5.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_18

    goto :goto_2

    .line 41
    :cond_18
    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheDaoInitDis:F

    sub-float/2addr v2, v3

    const/high16 v3, 0x41f00000    # 30.0f

    cmpl-float v2, v2, v3

    if-lez v2, :cond_2c

    iget-wide v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->maxChaoCheDiffAngle:D

    iget v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->threshold:F

    float-to-double v4, v4

    mul-double v4, v4, v19

    invoke-static {v10, v11, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v4

    cmpl-double v6, v2, v4

    if-lez v6, :cond_2c

    .line 42
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 43
    :cond_19
    :goto_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 44
    :pswitch_2
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v6, :cond_1a

    goto :goto_3

    :cond_1a
    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v8, v8

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v9

    invoke-virtual {v6, v8, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v14

    :goto_3
    const/high16 v2, 0x43960000    # 300.0f

    cmpl-float v2, v14, v2

    if-lez v2, :cond_1b

    .line 45
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 46
    :cond_1b
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v8, v2

    cmpg-double v2, v8, v15

    if-gez v2, :cond_2c

    .line 47
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    cmpg-float v2, v2, v5

    if-gez v2, :cond_1c

    goto :goto_4

    .line 48
    :cond_1c
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasTurnRight:Z

    if-eqz v2, :cond_1f

    .line 49
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindPreLine:Z

    if-eqz v2, :cond_1e

    cmpl-float v2, v14, v12

    if-lez v2, :cond_1d

    goto :goto_4

    :cond_1d
    const/4 v3, 0x0

    goto :goto_4

    :cond_1e
    cmpg-float v2, v14, v13

    if-gez v2, :cond_1d

    goto :goto_4

    :cond_1f
    cmpl-float v2, v14, v12

    if-lez v2, :cond_1d

    :goto_4
    if-eqz v3, :cond_2c

    .line 50
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->chaoCheDao:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 51
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 52
    :pswitch_3
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v7, v2

    cmpg-double v2, v7, v17

    if-gez v2, :cond_20

    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v2, v6, v11, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->isStable(Ljava/util/List;IFF)Z

    move-result v2

    if-eqz v2, :cond_20

    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindPreLine:Z

    if-nez v2, :cond_20

    .line 53
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->mean(Ljava/util/List;)F

    move-result v2

    iput v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    .line 54
    iput v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->preTurnLeftStartAngle:F

    .line 55
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindPreLine:Z

    sub-float v2, v1, v2

    .line 56
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 57
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v2

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 58
    :cond_20
    iget v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->threshold:F

    neg-float v2, v2

    cmpg-float v2, v4, v2

    if-gez v2, :cond_2c

    .line 59
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    goto/16 :goto_9

    .line 60
    :pswitch_4
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasTurnRight:Z

    .line 61
    iget-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->rightJudgeByLine:Z

    if-eqz v3, :cond_22

    .line 62
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v3, :cond_21

    goto :goto_5

    :cond_21
    iget-wide v5, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v5

    iget-wide v6, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v6

    invoke-virtual {v3, v5, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v14

    .line 63
    :goto_5
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v4, v2, v15

    if-gez v4, :cond_2c

    cmpl-float v2, v14, v12

    if-lez v2, :cond_2c

    .line 64
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 65
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 66
    :cond_22
    invoke-static {v4}, Ljava/lang/Math;->abs(F)F

    move-result v2

    float-to-double v2, v2

    cmpg-double v4, v2, v15

    if-gez v4, :cond_2c

    .line 67
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 68
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto/16 :goto_9

    .line 69
    :pswitch_5
    iget-object v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v8

    const v9, -0x383cb000    # -100000.0f

    if-ne v8, v6, :cond_23

    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpg-float v6, v6, v5

    if-gez v6, :cond_23

    .line 70
    iget-object v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-direct {v0, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->mean(Ljava/util/List;)F

    move-result v4

    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    .line 71
    iput v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->initStartAngle:F

    sub-float v4, v1, v4

    .line 72
    invoke-static {v4}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v4

    .line 73
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->clear()V

    .line 74
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v6}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v6

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 75
    :cond_23
    iget v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    sub-float/2addr v6, v9

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v6

    cmpl-float v6, v6, v5

    if-lez v6, :cond_2c

    .line 76
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    if-nez v6, :cond_24

    .line 77
    new-instance v6, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->threshold:F

    float-to-double v8, v8

    invoke-direct {v6, v8, v9}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;-><init>(D)V

    iput-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    .line 78
    :cond_24
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget v8, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    invoke-interface/range {p1 .. p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v9

    iget-wide v9, v9, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    move-object/from16 v11, p1

    invoke-virtual {v6, v11, v8, v9, v10}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->onCheck(Lcn/mucang/android/jiakaoyi/signal/c/e;FJ)V

    .line 79
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v6, :cond_25

    goto :goto_6

    :cond_25
    iget-wide v8, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v8, v8

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v9, v9

    invoke-virtual {v6, v8, v9}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    .line 80
    :goto_6
    iget-object v6, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    const/high16 v8, 0x42c80000    # 100.0f

    if-eqz v6, :cond_26

    cmpl-float v5, v4, v5

    if-lez v5, :cond_26

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v5, v9

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v9, v9

    invoke-virtual {v6, v5, v9}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v5

    cmpl-float v5, v5, v8

    if-lez v5, :cond_26

    const/4 v5, 0x1

    goto :goto_7

    :cond_26
    const/4 v5, 0x0

    :goto_7
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->rightJudgeByLine:Z

    .line 81
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v5, :cond_27

    cmpg-float v4, v4, v14

    if-gez v4, :cond_27

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v4, v9

    iget-wide v9, v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v2, v9

    invoke-virtual {v5, v4, v2}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v2

    cmpl-float v2, v2, v8

    if-lez v2, :cond_27

    const/4 v7, 0x1

    :cond_27
    iput-boolean v7, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->leftJudgeByLine:Z

    .line 82
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->carTurnChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker;->direction:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    sget-object v4, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-eq v2, v4, :cond_2a

    iget-boolean v4, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->rightJudgeByLine:Z

    if-eqz v4, :cond_28

    goto :goto_8

    .line 83
    :cond_28
    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarTurnChecker$Direction;

    if-eq v2, v3, :cond_29

    if-eqz v7, :cond_2c

    .line 84
    :cond_29
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 85
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    goto :goto_9

    .line 86
    :cond_2a
    :goto_8
    iget-boolean v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->couldTurnRight:Z

    if-nez v2, :cond_2b

    .line 87
    iput-boolean v3, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->turnRightNotAllow:Z

    .line 88
    :cond_2b
    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    .line 89
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->angles:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->clear()V

    .line 90
    :cond_2c
    :goto_9
    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->lastAngle:F

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

.method public reset()V
    .locals 2

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->turnRightNotAllow:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->couldTurnRight:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasTurnRight:Z

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    .line 6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v1}, Ljava/util/LinkedList;->clear()V

    const v1, -0x383cb000    # -100000.0f

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->startAngle:F

    const/4 v1, 0x0

    .line 8
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 9
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->lastPos:Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindPreLine:Z

    .line 11
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->hasFindChaoCheLine:Z

    .line 12
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->rightJudgeByLine:Z

    .line 13
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->leftJudgeByLine:Z

    .line 14
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ChaoCheAngleOffsetChecker;->chaocheCount:I

    return-void
.end method
