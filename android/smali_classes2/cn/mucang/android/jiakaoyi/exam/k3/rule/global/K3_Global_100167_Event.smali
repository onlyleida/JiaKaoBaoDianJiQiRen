.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;
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
.field private distanceLimit:I

.field private reachGear:Z

.field private startDistance:F

.field private targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private valueValid:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 3

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200190:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    const-string p2, "*"

    .line 3
    invoke-virtual {p1, p2}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result p2

    if-eqz p2, :cond_4

    const-string p2, "\\*"

    .line 4
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 5
    array-length p2, p1

    const/4 v0, 0x2

    const/4 v1, 0x0

    if-ne p2, v0, :cond_3

    aget-object p2, p1, v1

    invoke-static {p2}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result p2

    if-eqz p2, :cond_3

    const/4 p2, 0x1

    aget-object v0, p1, p2

    invoke-static {v0}, Lcn/mucang/android/core/utils/y;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    goto :goto_1

    .line 6
    :cond_0
    aget-object v0, p1, p2

    invoke-static {v0}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result v0

    .line 7
    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-lt v0, v2, :cond_2

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget v2, v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    if-le v0, v2, :cond_1

    goto :goto_0

    .line 8
    :cond_1
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->parse(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 9
    aget-object p1, p1, v1

    invoke-static {p1}, Lcn/mucang/android/core/utils/y;->g(Ljava/lang/String;)I

    move-result p1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->distanceLimit:I

    .line 10
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->valueValid:Z

    goto :goto_2

    .line 11
    :cond_2
    :goto_0
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->valueValid:Z

    return-void

    .line 12
    :cond_3
    :goto_1
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->valueValid:Z

    :cond_4
    :goto_2
    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->valueValid:Z

    if-nez v0, :cond_1

    .line 4
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1

    .line 5
    :cond_1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->startDistance:F

    const/4 v2, 0x0

    cmpg-float v0, v0, v2

    if-gtz v0, :cond_2

    .line 6
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->startDistance:F

    .line 7
    :cond_2
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    .line 8
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->targetGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->rpmRate:I

    invoke-static {v0, v2, p3}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/e;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;I)Z

    move-result p3

    if-eqz p3, :cond_3

    goto :goto_0

    .line 9
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->startDistance:F

    sub-float/2addr p1, p3

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100167_Event;->distanceLimit:I

    int-to-float p3, p3

    cmpl-float p1, p1, p3

    if-lez p1, :cond_4

    .line 10
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->w()Z

    move-result p1

    xor-int/2addr p1, v1

    return p1

    .line 12
    :cond_5
    :goto_0
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return v1
.end method
