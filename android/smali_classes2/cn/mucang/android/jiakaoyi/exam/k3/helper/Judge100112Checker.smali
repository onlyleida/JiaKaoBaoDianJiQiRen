.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private engineStartTime:J

.field private isCheckFirst:Z

.field private isDoNotExecute:Z

.field private isKongGearFire:Z

.field private isLastShutdown:Z

.field private final last5Gears:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
            ">;"
        }
    .end annotation
.end field

.field private final timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isLastShutdown:Z

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->last5Gears:Ljava/util/LinkedList;

    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isDoNotExecute:Z

    .line 7
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 8
    new-instance v0, Lcn/mucang/android/jiakaoyi/signal/utils/i;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200154:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v1, p1

    invoke-direct {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/signal/utils/i;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 10

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isDoNotExecute:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    return v1

    .line 2
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isDoNotExecute:Z

    return v1

    .line 4
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200119:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isDoNotExecute:Z

    return v1

    .line 6
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 7
    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-nez v0, :cond_3

    .line 8
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    return p1

    .line 9
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->last5Gears:Ljava/util/LinkedList;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v0, v2}, Ljava/util/LinkedList;->addFirst(Ljava/lang/Object;)V

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->last5Gears:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/4 v2, 0x5

    if-le v0, v2, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->last5Gears:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeLast()Ljava/lang/Object;

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;

    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200153:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    const/16 v4, 0xa

    invoke-static {v3, v4}, Ljava/lang/Math;->max(II)I

    move-result v3

    const/4 v4, 0x0

    if-ge v2, v3, :cond_5

    const/4 v2, 0x1

    goto :goto_0

    :cond_5
    const/4 v2, 0x0

    :goto_0
    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v2, v5, v6}, Lcn/mucang/android/jiakaoyi/signal/utils/i;->b(ZJ)Z

    move-result v0

    .line 13
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200235:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Boolean;

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-eqz v2, :cond_7

    iget-boolean v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    if-nez v0, :cond_6

    const/4 v0, 0x1

    goto :goto_1

    :cond_6
    const/4 v0, 0x0

    .line 14
    :cond_7
    :goto_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isCheckFirst:Z

    if-nez v2, :cond_8

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isCheckFirst:Z

    .line 16
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isLastShutdown:Z

    .line 17
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    return p1

    .line 18
    :cond_8
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isLastShutdown:Z

    if-eqz v2, :cond_9

    if-nez v0, :cond_9

    .line 19
    iget-wide v2, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    .line 20
    :cond_9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isLastShutdown:Z

    .line 21
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    const-wide/16 v5, 0x0

    cmp-long v7, v2, v5

    if-lez v7, :cond_13

    .line 22
    iget-wide v7, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    sub-long/2addr v7, v2

    const-wide/16 v2, 0x3e8

    cmp-long v9, v7, v2

    if-gez v9, :cond_12

    if-eqz v0, :cond_a

    .line 23
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    .line 24
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->last5Gears:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_2
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_e

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 25
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v7, v8, :cond_d

    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v7, v8, :cond_b

    goto :goto_3

    .line 26
    :cond_b
    sget-object v8, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v7, v8, :cond_c

    goto :goto_2

    :cond_c
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    :cond_d
    :goto_3
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    :cond_e
    if-lez v2, :cond_f

    if-nez v3, :cond_f

    .line 27
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    .line 28
    :cond_f
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v2, :cond_10

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearP:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v2, :cond_10

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    if-eqz p1, :cond_11

    .line 29
    :cond_10
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    .line 30
    :cond_11
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    goto :goto_4

    .line 31
    :cond_12
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    .line 32
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    .line 33
    :cond_13
    :goto_4
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    if-nez p1, :cond_14

    .line 34
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->reset()V

    return v4

    :cond_14
    return v1
.end method

.method public reset()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->last5Gears:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->clear()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->timeFilter:Lcn/mucang/android/jiakaoyi/signal/utils/i;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/i;->a()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isCheckFirst:Z

    const-wide/16 v0, 0x0

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->engineStartTime:J

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isLastShutdown:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->isKongGearFire:Z

    return-void
.end method
