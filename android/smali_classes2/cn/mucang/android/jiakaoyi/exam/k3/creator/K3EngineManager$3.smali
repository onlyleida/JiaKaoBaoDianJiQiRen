.class Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/i/a;


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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onStepEnd(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;
    .locals 3

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_ShangChe:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_0

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_QiBu:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-eq v0, v1, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$600(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$600(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$600(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$600(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->getRouteConfig()Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    move-result-object v0

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v1}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getStepConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;

    move-result-object v0

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$3;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$600(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;

    move-result-object v1

    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/ExamDataCreator;->stepCreator()Lcn/mucang/android/jiakaoyi/engine/i/c$a;

    move-result-object v1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v0, v2}, Lcn/mucang/android/jiakaoyi/engine/i/c$a;->createStep(Lcn/mucang/android/jiakaoyi/engine/i/c$b;Lcn/mucang/android/jiakaoyi/engine/config/route/StepConfig;Z)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p1

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method
