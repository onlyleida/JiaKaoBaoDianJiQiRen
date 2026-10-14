.class Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->callEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

.field final synthetic val$childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

.field final synthetic val$eventType:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

.field final synthetic val$isPauseEngine:Z

.field final synthetic val$message:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$eventType:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iput-object p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$message:Ljava/lang/String;

    iput-boolean p5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$isPauseEngine:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;->access$000(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;

    move-result-object v0

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$eventType:Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$childStepData:Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$message:Ljava/lang/String;

    iget-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$1;->val$isPauseEngine:Z

    invoke-interface {v0, v1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$ShangCheEventCallBack;->onEvent(Lcn/mucang/android/jiakaoyi/exam/k3/data/ShangCheStepData$EventType;Lcn/mucang/android/jiakaoyi/exam/k3/childstep/ChildStepData;Ljava/lang/String;Z)V

    :cond_0
    return-void
.end method
