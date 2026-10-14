.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;
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

.field private lastJudgeGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastJudgeGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return-void
.end method

.method private isJudgeGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z
    .locals 2

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v0, v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le v0, v1, :cond_1

    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_2

    :cond_1
    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->b()Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v0, 0x40000000    # 2.0f

    cmpg-float p2, p2, v0

    if-gez p2, :cond_1

    .line 4
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 5
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastJudgeGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    return p3

    .line 6
    :cond_1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 7
    sget-object p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, p2, :cond_4

    .line 8
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->isJudgeGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    move-result p2

    if-eqz p2, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p2, v0, :cond_2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastJudgeGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, p2, :cond_2

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 p1, 0x0

    return p1

    .line 10
    :cond_2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->isJudgeGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    move-result p2

    if-eqz p2, :cond_3

    .line 11
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastJudgeGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 12
    :cond_3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100229_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_4
    return p3
.end method
