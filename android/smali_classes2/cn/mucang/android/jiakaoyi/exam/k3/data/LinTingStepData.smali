.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public distance:D

.field public hasDetectSide:Z

.field private hasSpeaking:Z

.field private sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

.field public state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    .line 2
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;->Stopping:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->hasSpeaking:Z

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-nez p3, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v0, 0x40800000    # 4.0f

    cmpg-float p3, p3, v0

    if-gez p3, :cond_0

    .line 3
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->c()Z

    move-result p3

    if-nez p3, :cond_0

    .line 4
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->k()V

    const-string p3, "\u5f00\u59cb\u6444\u50cf\u5934\u8fb9\u7ebf\u68c0\u6d4b"

    .line 5
    invoke-static {p3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 6
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;->p222128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_1

    .line 7
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->Max:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    goto :goto_0

    .line 8
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;->p222128:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_2

    .line 9
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->FrontWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    goto :goto_0

    .line 10
    :cond_2
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->BackWheel:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    .line 11
    :goto_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    if-nez v1, :cond_3

    .line 12
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    .line 13
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->sideDistanceHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->FullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, p3, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TingCheSideDistanceHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;)D

    move-result-wide v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->distance:D

    .line 14
    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$1;->$SwitchMap$cn$mucang$android$jiakaoyi$exam$k3$data$LinTingStepData$State:[I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    invoke-virtual {v1}, Ljava/lang/Enum;->ordinal()I

    move-result v1

    aget p3, p3, v1

    if-eq p3, v0, :cond_6

    const/4 v1, 0x2

    if-eq p3, v1, :cond_4

    goto :goto_1

    .line 15
    :cond_4
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LinTingStepConfig;->p222111:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Integer;

    invoke-virtual {p3}, Ljava/lang/Integer;->intValue()I

    move-result p3

    if-ne p3, v0, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f:Z

    if-nez p3, :cond_5

    iget-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->hasSpeaking:Z

    if-nez p3, :cond_5

    .line 16
    sget p3, Lcn/mucang/android/jiakaoyi/exam/R$string;->exam_qibu_complete_exam:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p3

    sget-object v1, Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;->ExamTip:Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;

    invoke-static {p3, v1}, Lcn/mucang/android/jiakaoyi/framework/tts/g;->r(Ljava/lang/String;Lcn/mucang/android/jiakaoyi/framework/tts/TtsGrade;)V

    .line 17
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->hasSpeaking:Z

    .line 18
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 19
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    goto :goto_1

    .line 20
    :cond_6
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->carStop:Z

    if-eqz p1, :cond_7

    .line 21
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;->Stopped:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData$State;

    .line 22
    :cond_7
    :goto_1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_8

    .line 23
    invoke-static {}, Lcn/mucang/android/jky/usbcamera/detectside/t;->a()V

    :cond_8
    return-void
.end method
