.class Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/f/b;


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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V
    .locals 6

    .line 1
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->c:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$800(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/engine/model/a;->a:Lcn/mucang/android/jiakaoyi/engine/model/Deduct;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/model/Deduct;->step:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    .line 4
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$800(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Ljava/util/HashSet;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    const/4 v2, 0x0

    .line 5
    :cond_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 6
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    .line 7
    iget-object v4, v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    iget v4, v4, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    iget v5, v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->type:I

    if-ne v4, v5, :cond_1

    iget v3, v3, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->i:I

    const/4 v4, -0x1

    if-ne v3, v4, :cond_1

    const/4 v2, 0x1

    :cond_2
    if-nez v2, :cond_3

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$800(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Ljava/util/HashSet;

    move-result-object v1

    new-instance v2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    const/4 v3, 0x0

    invoke-direct {v2, v0, v3}, Lcn/mucang/android/jiakaoyi/engine/i/c$b;-><init>(Lcn/mucang/android/jiakaoyi/engine/model/Step;Landroid/location/Location;)V

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 9
    :cond_3
    :goto_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$700(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/b;

    move-result-object v0

    if-nez v0, :cond_4

    return-void

    .line 10
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$700(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onOneError(Lcn/mucang/android/jiakaoyi/engine/model/a;)V

    return-void
.end method

.method public onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$700(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/b;

    move-result-object v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$4;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$700(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/engine/f/b;

    move-result-object v0

    invoke-interface {v0, p1}, Lcn/mucang/android/jiakaoyi/engine/f/b;->onResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/f;)V

    return-void
.end method
