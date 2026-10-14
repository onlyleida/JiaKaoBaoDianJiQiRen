.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;",
        ">",
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d<",
        "TT;>;"
    }
.end annotation


# instance fields
.field public carStop:Z

.field public engineType:I

.field private hasInit:Z

.field public isEnd:Z

.field public lastCarStop:Z

.field private messageHandler:Landroid/os/Handler;

.field private final stoppedChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;

.field public teachDataList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/TeachData;",
            ">;"
        }
    .end annotation
.end field

.field public teachResultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

.field public teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->lastCarStop:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->hasInit:Z

    .line 5
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;

    sget v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->Y:F

    const/high16 v1, 0x40000000    # 2.0f

    mul-float v0, v0, v1

    const/16 v1, 0x3e8

    invoke-direct {p1, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;-><init>(FI)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->stoppedChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/CarStoppedChecker;

    return-void
.end method

.method private isNeedTeach(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachDataList:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachResultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    if-eqz v0, :cond_0

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    const/4 v0, 0x2

    if-ne p1, v0, :cond_0

    const/4 p1, 0x1

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    :goto_0
    return p1
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 4

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->p:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->engineType:I

    .line 3
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    .line 4
    iget-object v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->e:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    if-ne v1, v2, :cond_4

    .line 5
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->hasInit:Z

    if-eqz v1, :cond_0

    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->lastCarStop:Z

    if-nez v2, :cond_1

    :cond_0
    if-eqz v0, :cond_1

    const-string v0, "\u8f66\u505c\u4e86"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    :cond_1
    if-eqz v1, :cond_2

    .line 7
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->lastCarStop:Z

    if-eqz v1, :cond_3

    :cond_2
    if-nez v0, :cond_3

    const-string v0, "\u8f66\u52a8\u4e86"

    .line 8
    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_3
    :goto_0
    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->hasInit:Z

    .line 10
    :cond_4
    iget-object v0, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->n:Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/config/param/ExamParam;->isPlayTeachVoice()Z

    move-result v0

    .line 11
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->lastCarStop:Z

    .line 12
    invoke-direct {p0, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->isNeedTeach(Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 13
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->messageHandler:Landroid/os/Handler;

    if-nez v1, :cond_5

    .line 14
    new-instance v1, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->messageHandler:Landroid/os/Handler;

    .line 15
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    if-nez v1, :cond_6

    .line 16
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachResultEventCallback:Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachDataList:Ljava/util/List;

    invoke-direct {v1, v2, v3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/teach/callback/TeachResultEventCallback;Ljava/util/List;Z)V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    .line 17
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->execute(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    :cond_7
    return-void
.end method

.method public onCheckEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->teachingProcessor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/TeachingProcessor;->onCheckEnd(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    :cond_0
    return-void
.end method

.method public startNext()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->messageHandler:Landroid/os/Handler;

    if-eqz v0, :cond_0

    .line 2
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData$1;

    invoke-direct {v1, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_0
    return-void
.end method
