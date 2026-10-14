.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private final checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private isStop:Z

.field private lastStartTime:J

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->isStop:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->startTime:J

    .line 4
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->lastStartTime:J

    .line 5
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 12

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->QiBuDangWei:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p3

    const/4 v1, 0x0

    const-wide/16 v2, 0x0

    if-eqz p3, :cond_1

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->isStop:Z

    .line 4
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->lastStartTime:J

    return v0

    .line 5
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    .line 6
    iget v4, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    float-to-double v5, v4

    const-wide v7, 0x3fc3333333333333L    # 0.15

    const-wide/16 v9, 0x3e8

    cmpg-double v11, v5, v7

    if-gez v11, :cond_3

    .line 7
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->startTime:J

    cmp-long v7, v5, v2

    if-gtz v7, :cond_2

    .line 8
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->startTime:J

    .line 9
    :cond_2
    iget-wide v5, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->startTime:J

    sub-long/2addr v5, v7

    cmp-long v7, v5, v9

    if-ltz v7, :cond_3

    .line 10
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->isStop:Z

    .line 11
    :cond_3
    iget-object v5, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v6, :cond_7

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v5, v6, :cond_7

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k:Z

    if-eqz p3, :cond_4

    goto :goto_0

    :cond_4
    const/high16 p3, 0x40000000    # 2.0f

    cmpl-float p3, v4, p3

    if-ltz p3, :cond_7

    .line 12
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->startTime:J

    .line 13
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->isStop:Z

    if-eqz p3, :cond_7

    .line 14
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->checkGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, p3, :cond_5

    .line 15
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->isStop:Z

    .line 16
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->lastStartTime:J

    goto :goto_0

    .line 17
    :cond_5
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->lastStartTime:J

    cmp-long p1, v4, v2

    if-nez p1, :cond_6

    .line 18
    iget-wide v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->lastStartTime:J

    .line 19
    :cond_6
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->lastStartTime:J

    sub-long/2addr p1, v2

    cmp-long p3, p1, v9

    if-lez p3, :cond_7

    .line 20
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100169_Event;->isStop:Z

    return v1

    :cond_7
    :goto_0
    return v0
.end method
