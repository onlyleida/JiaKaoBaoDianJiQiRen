.class Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->access$002(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;Z)Z

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;->access$102(Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;J)J

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/PlayingLineStepChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepChecker;->childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;->setFinish()V

    return-void
.end method
