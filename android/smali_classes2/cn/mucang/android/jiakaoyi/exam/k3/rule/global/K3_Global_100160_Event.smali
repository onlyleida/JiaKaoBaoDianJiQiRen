.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;
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
.field private count:I

.field private firstGearTime:J

.field private lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->count:I

    const/4 p1, 0x0

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-wide/16 p1, -0x1

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->firstGearTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, v0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200125:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    .line 4
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v2, 0x0

    if-lt v0, v1, :cond_2

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt v0, v1, :cond_2

    const/4 v0, 0x1

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    .line 6
    :goto_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->e:Z

    if-eqz p1, :cond_4

    if-eqz v0, :cond_5

    .line 7
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eqz p1, :cond_3

    if-eq p2, p1, :cond_3

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->count:I

    add-int/2addr p1, p3

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->count:I

    .line 9
    :cond_3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 10
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->count:I

    const/4 p2, 0x2

    if-lt p1, p2, :cond_5

    return v2

    .line 11
    :cond_4
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100160_Event;->count:I

    :cond_5
    :goto_1
    return p3
.end method
