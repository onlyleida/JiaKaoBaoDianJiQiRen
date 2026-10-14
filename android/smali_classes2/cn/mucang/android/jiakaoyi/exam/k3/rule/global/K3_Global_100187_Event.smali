.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;
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
.field private lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private lastRpm:I

.field private lastSpeed:F

.field private rpmSpeedRateCount:[I

.field private rpmSpeedRateSum:[I


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->rpmSpeedRateSum:[I

    .line 3
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object p1

    array-length p1, p1

    new-array p1, p1, [I

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->rpmSpeedRateCount:[I

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-nez p3, :cond_1

    return v0

    .line 3
    :cond_1
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->YueJiJiaJianDang:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p2

    if-eqz p2, :cond_2

    const/4 p1, 0x0

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return v0

    .line 5
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 6
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p3, :cond_8

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, v1, :cond_8

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, v2, :cond_3

    goto :goto_0

    .line 7
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-nez p1, :cond_4

    return v0

    .line 8
    :cond_4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p1, :cond_5

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p1, :cond_5

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p1, :cond_5

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p2, p1, :cond_5

    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, p1, :cond_7

    .line 9
    :cond_5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-nez p1, :cond_6

    .line 10
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 11
    :cond_6
    iget p1, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v4, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sub-int/2addr p1, v4

    if-le p1, v0, :cond_7

    if-eq v3, p3, :cond_7

    if-eq v3, v1, :cond_7

    if-eq v3, v2, :cond_7

    .line 12
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p1, 0x0

    return p1

    .line 13
    :cond_7
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100187_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_8
    :goto_0
    return v0
.end method
