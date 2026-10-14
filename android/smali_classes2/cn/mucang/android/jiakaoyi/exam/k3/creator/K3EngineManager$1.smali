.class Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/signal/c/f/a;


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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onSignalChanged(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    move-result-object v0

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$100(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Z

    move-result v0

    if-nez v0, :cond_5

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$200(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$202(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$200(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100112Checker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v2, 0x18710

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$300(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    move-result-object v0

    if-nez v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$302(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$300(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v2, 0x18787

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 10
    :cond_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$400(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

    move-result-object v0

    if-nez v0, :cond_4

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    move-result-object v2

    invoke-direct {v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    invoke-static {v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$402(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

    .line 12
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$400(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    if-nez p1, :cond_5

    .line 13
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v1, 0x18773

    invoke-virtual {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    :cond_5
    return-void
.end method
