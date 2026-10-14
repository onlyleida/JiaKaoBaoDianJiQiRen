.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$2;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201139:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ShangCheStepConfig;->p201137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    invoke-virtual {v1, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setStart(Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;)V

    :cond_0
    return-void
.end method
