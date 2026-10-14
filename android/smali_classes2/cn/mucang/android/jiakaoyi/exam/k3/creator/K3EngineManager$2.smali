.class Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;


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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/util/List;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachResult;",
            ">;)V"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager$2;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->access$500(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;->handleResult(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Ljava/util/List;)V

    return-void
.end method
