.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;
    }
.end annotation


# static fields
.field private static final InValid:I = -0x186a0

.field private static final Time:J = 0x7d0L


# instance fields
.field private final createPos:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;

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

.field private latestTime:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Long;",
            ">;"
        }
    .end annotation
.end field

.field private line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

.field private final maxFactor:F

.field private final maxSpeed:F

.field private final minFactor:F

.field private final minSpeed:F

.field private offset:F

.field private startAngle:F


# direct methods
.method public constructor <init>(FFFFLcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestAngle:Ljava/util/LinkedList;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestPos:Ljava/util/LinkedList;

    .line 4
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->minFactor:F

    .line 6
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->maxFactor:F

    .line 7
    iput p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->minSpeed:F

    .line 8
    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->maxSpeed:F

    .line 9
    iput-object p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->createPos:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->reset()V

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

.method private onDataChange(JFLcn/mucang/android/jiakaoyi/signal/pos/Pos;J)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    invoke-static {p1, p2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    invoke-static {p2}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p2

    invoke-virtual {p1, p2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p1, p4}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 4
    :goto_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Long;

    invoke-virtual {p1}, Ljava/lang/Long;->longValue()J

    move-result-wide p1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    invoke-virtual {p3}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object p3

    check-cast p3, Ljava/lang/Long;

    invoke-virtual {p3}, Ljava/lang/Long;->longValue()J

    move-result-wide p3

    sub-long/2addr p1, p3

    const-wide/16 p3, 0xc8

    add-long/2addr p3, p5

    cmp-long v0, p1, p3

    if-lez v0, :cond_0

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    goto :goto_0

    :cond_0
    return-void
.end method


# virtual methods
.method public getStartAngel()F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->startAngle:F

    return v0
.end method

.method public hasStart()Z
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->startAngle:F

    const v1, -0x383cb000    # -100000.0f

    sub-float/2addr v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    float-to-double v0, v0

    const-wide v2, 0x3f847ae147ae147bL    # 0.01

    cmpl-double v4, v0, v2

    if-lez v4, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public onBefore(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->createPos:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;->from(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v6

    if-nez v6, :cond_0

    return-void

    .line 3
    :cond_0
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    const-wide/16 v7, 0x1f4

    move-object v2, p0

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->onDataChange(JFLcn/mucang/android/jiakaoyi/signal/pos/Pos;J)V

    return-void
.end method

.method public onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;)F
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->createPos:Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;

    invoke-interface {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker$CreatePos;->from(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    move-result-object v1

    if-nez v1, :cond_0

    .line 3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->offset:F

    return p1

    .line 4
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v2, :cond_1

    .line 5
    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget v5, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    const-wide/16 v7, 0x7d0

    move-object v2, p0

    move-object v6, v1

    invoke-direct/range {v2 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->onDataChange(JFLcn/mucang/android/jiakaoyi/signal/pos/Pos;J)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-nez v0, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x6

    if-le v0, v2, :cond_2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getFirst()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestTime:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Long;

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sub-long/2addr v2, v4

    const-wide/16 v4, 0x762

    cmp-long v0, v2, v4

    if-ltz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestPos:Ljava/util/LinkedList;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->calculate(Ljava/util/List;)Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->mean(Ljava/util/List;)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->startAngle:F

    .line 9
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    if-eqz v0, :cond_5

    .line 10
    iget-wide v2, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->x:D

    double-to-float v2, v2

    iget-wide v3, v1, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;->y:D

    double-to-float v1, v3

    invoke-virtual {v0, v2, v1}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->distance(FF)F

    move-result v0

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 12
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->minSpeed:F

    cmpg-float v2, p1, v1

    if-gez v2, :cond_3

    .line 13
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->minFactor:F

    goto :goto_0

    .line 14
    :cond_3
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->maxSpeed:F

    cmpl-float v3, p1, v2

    if-lez v3, :cond_4

    .line 15
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->maxFactor:F

    goto :goto_0

    :cond_4
    sub-float/2addr p1, v1

    sub-float/2addr v2, v1

    div-float/2addr p1, v2

    .line 16
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->maxFactor:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->minFactor:F

    sub-float/2addr v1, v2

    mul-float p1, p1, v1

    add-float/2addr p1, v2

    :goto_0
    mul-float v0, v0, p1

    const p1, 0x3f4ccccd    # 0.8f

    mul-float v0, v0, p1

    .line 17
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->offset:F

    .line 18
    :cond_5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->offset:F

    return p1
.end method

.method public reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestPos:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->latestAngle:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    const v0, -0x383cb000    # -100000.0f

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->startAngle:F

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/ZhiXianChecker;->offset:F

    return-void
.end method
