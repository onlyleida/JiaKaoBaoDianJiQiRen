.class public Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_TingChe_Starter;
.super Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;)V
    .locals 11

    .line 1
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216121:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216134:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v9, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216162:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v10, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216163:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v10}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;)V

    return-void
.end method


# virtual methods
.method protected canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->canStart(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p3

    if-nez p4, :cond_1

    .line 2
    iget-object p4, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p4, p4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p4, Ljava/lang/Integer;

    invoke-virtual {p4}, Ljava/lang/Integer;->intValue()I

    move-result p4

    if-lez p4, :cond_1

    if-eqz p3, :cond_0

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->j:F

    sub-float/2addr p1, p2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3TingCheStepConfig;->p216136:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-float p2, p2

    cmpl-float p1, p1, p2

    if-lez p1, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1

    :cond_1
    return p3
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;->isTrigger(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Z

    move-result p1

    return p1
.end method
