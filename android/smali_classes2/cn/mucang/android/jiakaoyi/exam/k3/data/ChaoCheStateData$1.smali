.class Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;
.super Lcn/mucang/android/jiakaoyi/framework/tts/c;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->checkBackRightPlayingVoice(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

.field final synthetic val$signal:Lcn/mucang/android/jiakaoyi/signal/c/e;


# direct methods
.method constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;->val$signal:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;-><init>()V

    return-void
.end method


# virtual methods
.method public onSpeakEnd()V
    .locals 6

    .line 1
    invoke-super {p0}, Lcn/mucang/android/jiakaoyi/framework/tts/c;->onSpeakEnd()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    iget-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayTime:J

    const-wide/16 v3, 0x0

    cmp-long v5, v1, v3

    if-nez v5, :cond_0

    .line 3
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v1

    iput-wide v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayTime:J

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;->this$0:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    iget v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayDistance:F

    const/4 v2, 0x0

    cmpg-float v1, v1, v2

    if-gtz v1, :cond_1

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$1;->val$signal:Lcn/mucang/android/jiakaoyi/signal/c/e;

    invoke-interface {v1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v1, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->chaochePlayDistance:F

    :cond_1
    return-void
.end method
