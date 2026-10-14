.class Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->speakingQiBuExam()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 3

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    invoke-static {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->access$002(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;J)J

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->access$100(Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;)V

    return-void
.end method
