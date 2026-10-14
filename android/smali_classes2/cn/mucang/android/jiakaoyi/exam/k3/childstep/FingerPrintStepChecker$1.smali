.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;
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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 5

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setEnd()V

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;)Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;->dismissFingerPrint:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/FingerPrintStepChecker;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    const-string v3, "\u53d6\u6d88\u6307\u7eb9\u9a8c\u8bc1\u5f39\u7a97"

    const/4 v4, 0x0

    invoke-virtual {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    return-void
.end method
