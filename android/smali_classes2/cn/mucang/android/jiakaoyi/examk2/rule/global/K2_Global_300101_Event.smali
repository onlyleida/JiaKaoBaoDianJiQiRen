.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private brakeTime:F

.field private lastSpeed:F

.field private startSpeed:F

.field private startTime:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/high16 p1, -0x40800000    # -1.0f

    .line 2
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->startSpeed:F

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->startTime:J

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->lastSpeed:F

    const/high16 p1, 0x447a0000    # 1000.0f

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->brakeTime:F

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->BrakeNotSmooth:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    .line 3
    iget-boolean p3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->g:Z

    if-eqz p3, :cond_2

    .line 4
    iget p3, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    const/high16 v1, 0x3f800000    # 1.0f

    cmpg-float v2, p3, v1

    if-gez v2, :cond_3

    iget v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->lastSpeed:F

    cmpl-float v1, v2, v1

    if-lez v1, :cond_3

    const/high16 v1, 0x447a0000    # 1000.0f

    sub-float p3, v2, p3

    mul-float p3, p3, v1

    .line 5
    iget-wide v3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->startTime:J

    sub-long/2addr v3, v5

    long-to-float p2, v3

    div-float/2addr p3, p2

    float-to-double p2, p3

    float-to-double v1, v2

    invoke-static {v1, v2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v1

    div-double/2addr p2, v1

    .line 6
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->lastSpeed:F

    const-wide v1, 0x3ff7333333333333L    # 1.45

    cmpg-double p1, p2, v1

    if-gtz p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 7
    :cond_2
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->startTime:J

    .line 8
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300101_Event;->lastSpeed:F

    :cond_3
    return v0
.end method
