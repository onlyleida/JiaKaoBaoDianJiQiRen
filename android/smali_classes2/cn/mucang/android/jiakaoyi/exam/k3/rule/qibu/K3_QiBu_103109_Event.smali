.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private firstTime:J

.field private isCarOn:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->firstTime:J

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->isCarOn:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/QiBuStepData;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->isCarOn:Z

    if-nez p3, :cond_0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->isCarOn:Z

    .line 4
    :cond_0
    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->isCarOn:Z

    const-wide/16 v1, -0x1

    if-eqz p3, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->firstTime:J

    cmp-long p1, v3, v1

    if-nez p1, :cond_1

    .line 6
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->firstTime:J

    .line 7
    :cond_1
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->firstTime:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x3e8

    cmp-long p3, p1, v1

    if-lez p3, :cond_3

    const/4 p1, 0x0

    .line 8
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->isCarOn:Z

    return p1

    .line 9
    :cond_2
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103109_Event;->firstTime:J

    :cond_3
    return v0
.end method
