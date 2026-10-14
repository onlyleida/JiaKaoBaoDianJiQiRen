.class Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/a;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v0, v1, :cond_0

    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Start:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$102(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Z)Z

    :cond_0
    const/4 v0, -0x1

    .line 3
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v1, :cond_1

    .line 4
    iget v0, v1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    .line 5
    :cond_1
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$900(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;

    move-result-object v1

    if-eqz v1, :cond_7

    .line 6
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Ready:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v1, v2, :cond_2

    .line 7
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Ready:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    goto :goto_1

    .line 8
    :cond_2
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Start:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v1, v2, :cond_3

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    goto :goto_1

    .line 10
    :cond_3
    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v1, v2, :cond_5

    .line 11
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-virtual {v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->thisStepInfoHasError(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 12
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Deduct:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    goto :goto_0

    .line 13
    :cond_4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->End:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    :goto_0
    if-lez v0, :cond_6

    .line 14
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$1000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Ljava/util/List;

    move-result-object v2

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 15
    :cond_5
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;->Wait:Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;

    .line 16
    :cond_6
    :goto_1
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$900(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;

    move-result-object v2

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-interface {v2, v0, v3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/UpdateStepCallback;->onStepChanged(ILcn/mucang/android/jiakaoyi/engine/model/Step;Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamStepState;)V

    .line 17
    :cond_7
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->i:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->Start:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v0, v1, :cond_8

    .line 18
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_9

    .line 19
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    iput-object p1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    goto :goto_2

    .line 20
    :cond_8
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;->End:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/ExamStepStatus;

    if-ne v0, v1, :cond_9

    .line 21
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_9

    .line 22
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    iget-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    if-eqz v1, :cond_9

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-ne v1, v2, :cond_9

    const/4 v1, 0x0

    .line 23
    iput-object v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->runningStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 24
    :cond_9
    :goto_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$1100(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/a;

    move-result-object v0

    if-nez v0, :cond_a

    return-void

    .line 25
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$5;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$1100(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/a;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/f/a;->onStep(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/c;)V

    return-void
.end method
