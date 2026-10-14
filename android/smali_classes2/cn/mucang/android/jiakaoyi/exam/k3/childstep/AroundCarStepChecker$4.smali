.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/framework/h/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playAroundTone(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/framework/h/b<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

.field final synthetic val$sensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->val$sensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public callback(Ljava/lang/Boolean;)V
    .locals 2

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201108:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->val$sensor:Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playSensorVoice(Lcn/mucang/android/jiakaoyi/signal/center/model/AroundCarSensor;)V

    goto :goto_0

    .line 4
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    invoke-static {p1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->access$602(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Z)Z

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    invoke-static {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->access$102(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;J)J

    :goto_0
    return-void
.end method

.method public bridge synthetic callback(Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$4;->callback(Ljava/lang/Boolean;)V

    return-void
.end method
