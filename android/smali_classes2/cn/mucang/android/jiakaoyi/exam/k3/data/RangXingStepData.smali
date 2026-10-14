.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public hasStop:Z

.field private speed0AtTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3RangXingStepConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->hasStop:Z

    const-wide/32 v0, -0x5f5e0ff

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->speed0AtTime:J

    return-void
.end method

.method private checkStop(Lcn/mucang/android/jiakaoyi/signal/c/e;)V
    .locals 6

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->hasStop:Z

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v0, v0, v1

    if-gez v0, :cond_2

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    .line 4
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->speed0AtTime:J

    const-wide/32 v4, -0x5f5e0ff

    cmp-long p1, v2, v4

    if-nez p1, :cond_1

    .line 5
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->speed0AtTime:J

    .line 6
    :cond_1
    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->speed0AtTime:J

    sub-long/2addr v0, v2

    const-wide/16 v2, 0xbb8

    cmp-long p1, v0, v2

    if-lez p1, :cond_2

    const/4 p1, 0x1

    .line 7
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->hasStop:Z

    :cond_2
    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/RangXingStepData;->checkStop(Lcn/mucang/android/jiakaoyi/signal/c/e;)V

    return-void
.end method
