.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;
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
.field private changeCount:I

.field private gearChangeTime:J

.field private lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-wide/16 p1, 0x0

    .line 4
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->gearChangeTime:J

    const/4 p1, 0x0

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->changeCount:I

    return-void
.end method

.method private updateLastGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_0
    return-void
.end method

.method private updateLastValidGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-eq v0, v1, :cond_0

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    :cond_0
    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 9

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p2

    const/4 p3, 0x1

    if-nez p2, :cond_0

    .line 2
    invoke-virtual {p0, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 4
    iget v0, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v0, v1, :cond_5

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-gt v0, v2, :cond_5

    .line 5
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v0, v2, :cond_4

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-ne v0, v1, :cond_4

    .line 7
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->changeCount:I

    const-wide/16 v1, 0x0

    if-nez v0, :cond_1

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->gearChangeTime:J

    cmp-long v0, v3, v1

    if-nez v0, :cond_1

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->gearChangeTime:J

    .line 9
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->changeCount:I

    add-int/2addr v0, p3

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->changeCount:I

    const/4 v3, 0x2

    if-lt v0, v3, :cond_3

    .line 10
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    iget v3, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v4, 0x0

    if-ne v0, v3, :cond_2

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v5, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v7, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->gearChangeTime:J

    sub-long/2addr v5, v7

    const-wide/16 v7, 0xbb8

    cmp-long p1, v5, v7

    if-gez p1, :cond_2

    const/4 p1, 0x1

    goto :goto_0

    :cond_2
    const/4 p1, 0x0

    .line 12
    :goto_0
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->gearChangeTime:J

    .line 13
    iput v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->changeCount:I

    .line 14
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->updateLastGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 15
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->updateLastValidGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    xor-int/2addr p1, p3

    return p1

    .line 16
    :cond_3
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->updateLastValidGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    .line 17
    :cond_4
    invoke-direct {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100126_Event;->updateLastGear(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)V

    :cond_5
    return p3
.end method
