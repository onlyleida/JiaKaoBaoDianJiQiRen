.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$3;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->playingOpenDoorVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->access$402(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;->access$502(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/AroundCarStepChecker;J)J

    return-void
.end method
