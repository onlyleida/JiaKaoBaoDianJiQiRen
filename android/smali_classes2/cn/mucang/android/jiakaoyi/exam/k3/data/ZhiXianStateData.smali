.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private angles:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/Float;",
            ">;"
        }
    .end annotation
.end field

.field public currentDistance:D

.field public diffAngle:D

.field public hasStart:Z

.field private hpZhiXianDistanceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;

.field private initSideDis:D

.field private isInit:Z

.field public lastAngle:D

.field public lastCalDistance:D

.field private final offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

.field public offsetDistance:D

.field public startZhiXianAngel:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hasStart:Z

    .line 3
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    const/16 v2, 0xa

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;-><init>(I)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->isInit:Z

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->initSideDis:D

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    .line 7
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;

    invoke-direct {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hpZhiXianDistanceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;

    return-void
.end method

.method private newZhiXianDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 8

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->h()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hpZhiXianDistanceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;

    invoke-virtual {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    .line 4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hpZhiXianDistanceChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;

    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->hasStart:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hasStart:Z

    .line 5
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->offsetDistance:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    .line 6
    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->diffAngle:D

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    .line 7
    iget p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startAngel:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->startZhiXianAngel:F

    .line 8
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->postResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    goto/16 :goto_1

    .line 9
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->D:F

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->E:F

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v0

    .line 13
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    invoke-virtual {v1, p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->onSignalFrame(Lcn/mucang/android/jiakaoyi/signal/c/e;F)F

    move-result p1

    .line 14
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->hasStart()Z

    move-result v1

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hasStart:Z

    if-eqz v1, :cond_7

    .line 15
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->isInit:Z

    if-nez v1, :cond_3

    const/4 p1, 0x1

    .line 16
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->isInit:Z

    .line 17
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offset:Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/OffsetCalculator;->getStartAngel()F

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->startZhiXianAngel:F

    sub-float p1, v0, p1

    .line 18
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result p1

    const/high16 p2, 0x3f800000    # 1.0f

    cmpl-float p1, p1, p2

    if-lez p1, :cond_2

    .line 19
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->startZhiXianAngel:F

    :cond_2
    return-void

    .line 20
    :cond_3
    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->startZhiXianAngel:F

    sub-float v1, v0, v1

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result v1

    float-to-double v1, v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    float-to-double v3, p1

    .line 21
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->lastCalDistance:D

    sub-double/2addr v3, v5

    const-wide v5, -0x4036666666666666L    # -0.2

    cmpg-double v7, v1, v5

    if-gez v7, :cond_5

    float-to-double v1, v0

    .line 22
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->lastAngle:D

    cmpl-double v7, v1, v5

    if-lez v7, :cond_4

    goto :goto_0

    .line 23
    :cond_4
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    goto :goto_0

    :cond_5
    const-wide v5, 0x3fc999999999999aL    # 0.2

    cmpl-double v7, v1, v5

    if-lez v7, :cond_8

    float-to-double v1, v0

    .line 24
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->lastAngle:D

    cmpg-double v7, v1, v5

    if-gez v7, :cond_6

    goto :goto_0

    .line 25
    :cond_6
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    add-double/2addr v1, v3

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    goto :goto_0

    :cond_7
    const-wide/16 v1, 0x0

    .line 26
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    :cond_8
    :goto_0
    float-to-double v1, p1

    .line 27
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->lastCalDistance:D

    float-to-double v0, v0

    .line 28
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->lastAngle:D

    .line 29
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->postResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    :cond_9
    :goto_1
    return-void
.end method

.method private postResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 7

    .line 1
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    double-to-float v0, v0

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->trim(F)F

    move-result v0

    float-to-double v0, v0

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    .line 2
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->l()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-nez p1, :cond_0

    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->hasStart:Z

    if-eqz p1, :cond_0

    .line 3
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "\u504f\u79fb\u8ddd\u79bb\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    const-wide/high16 v2, 0x4059000000000000L    # 100.0

    mul-double v0, v0, v2

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "cm\uff0c\u504f\u79fb\u89d2\u5ea6\uff1a"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->n(D)F

    move-result v0

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v0, "\u00b0"

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineOffsetDistance;

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->currentDistance:D

    move-object v0, p1

    invoke-direct/range {v0 .. v6}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/LineOffsetDistance;-><init>(DDD)V

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/bus/LiveBus;->c(Ljava/lang/Object;)V

    goto :goto_0

    :cond_0
    const-string p1, ""

    .line 5
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/engine/trace/w;->g(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private trim(F)F
    .locals 4

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    invoke-static {p1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    const/4 v0, 0x7

    if-ge p1, v0, :cond_1

    const/4 p1, 0x0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    add-float/2addr p1, v1

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    int-to-float v0, v0

    div-float/2addr p1, v0

    return p1

    .line 5
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->size()I

    move-result p1

    if-le p1, v0, :cond_2

    .line 6
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    invoke-virtual {p1}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    :cond_2
    const/high16 p1, 0x42000000    # 32.0f

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Float;

    invoke-virtual {v0}, Ljava/lang/Float;->floatValue()F

    move-result v0

    mul-float v0, v0, p1

    const/high16 p1, 0x41700000    # 15.0f

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v1, 0x2

    invoke-virtual {p1, v1}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float p1, p1, v1

    add-float/2addr v0, p1

    const/high16 p1, 0x40800000    # 4.0f

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v3, 0x3

    .line 8
    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    const/high16 p1, 0x40c00000    # 6.0f

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v3, 0x4

    invoke-virtual {v2, v3}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Float;

    invoke-virtual {v2}, Ljava/lang/Float;->floatValue()F

    move-result v2

    mul-float v2, v2, p1

    sub-float/2addr v0, v2

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v2, 0x5

    invoke-virtual {p1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Ljava/lang/Float;

    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    move-result p1

    mul-float p1, p1, v1

    sub-float/2addr v0, p1

    const/high16 p1, 0x40a00000    # 5.0f

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->angles:Ljava/util/LinkedList;

    const/4 v2, 0x6

    invoke-virtual {v1, v2}, Ljava/util/LinkedList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Float;

    invoke-virtual {v1}, Ljava/lang/Float;->floatValue()F

    move-result v1

    mul-float v1, v1, p1

    add-float/2addr v0, v1

    const/high16 p1, 0x42280000    # 42.0f

    div-float/2addr v0, p1

    return v0
.end method


# virtual methods
.method public beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->beforeStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method

.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 2

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    int-to-float p3, p3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startEstimateDistance:F

    sub-float/2addr v0, v1

    add-float/2addr p3, v0

    float-to-double v0, p3

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->currentDistance:D

    .line 3
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->newZhiXianDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
