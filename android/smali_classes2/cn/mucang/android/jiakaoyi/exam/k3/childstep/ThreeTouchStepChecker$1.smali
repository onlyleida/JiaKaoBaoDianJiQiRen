.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const/4 v1, 0x0

    iput-boolean v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->isPlayStartVoice:Z

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->playingStartVoiceEnd:J

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201151:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201115:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    .line 6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ThreeTouchStepChecker;)V

    :cond_0
    return-void
.end method
