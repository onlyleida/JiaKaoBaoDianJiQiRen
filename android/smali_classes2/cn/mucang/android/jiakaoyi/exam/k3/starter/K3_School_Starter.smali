.class public Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3_School_Starter;
.super Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;)V
    .locals 9

    .line 1
    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v5, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v6, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v7, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214113:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v8, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v8}, Lcn/mucang/android/jiakaoyi/exam/k3/starter/K3BaseStarter;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;Landroid/location/Location;Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;)V

    return-void
.end method


# virtual methods
.method public getStartVoiceTips(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;
    .locals 2

    if-nez p3, :cond_0

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214122:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/a/c;->b()Lcn/mucang/android/jiakaoyi/exam/a/c;

    move-result-object v0

    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/a/c;->e(Lcn/mucang/android/jiakaoyi/engine/i/c$b;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/SchoolStateData;

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/SchoolStateData;->isCheckStopCar:Z

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->ruleId:I

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/framework/tts/voice/l;->d(I)Ljava/lang/String;

    move-result-object p2

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;->p214123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p1, p3, p2, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;-><init>(ILjava/lang/String;Ljava/lang/String;)V

    return-object p1

    .line 5
    :cond_0
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b;->getStartVoiceTips(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/b$b;

    move-result-object p1

    return-object p1
.end method
