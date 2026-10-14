.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private lastFrameHasStepRunning:Z

.field public lastStepEndDistance:F

.field public lastStepEndTime:J

.field public lastStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

.field private lastSteps:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;",
            ">;"
        }
    .end annotation
.end field

.field private tempLastStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, -0x40800000    # -1.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastStepEndDistance:F

    const-wide/16 v0, -0x1

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastStepEndTime:J

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastFrameHasStepRunning:Z

    .line 5
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastSteps:Ljava/util/List;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 3

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->v()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastFrameHasStepRunning:Z

    xor-int/2addr v1, v0

    if-eqz v1, :cond_1

    if-eqz v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastStepEndDistance:F

    .line 4
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastStepEndTime:J

    .line 5
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->tempLastStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    .line 6
    :cond_1
    :goto_0
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->lastFrameHasStepRunning:Z

    .line 7
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/StepRecordHelper;->tempLastStepHandler:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-void
.end method
