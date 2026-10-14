.class Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->startNext()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->startNext()V

    return-void
.end method
