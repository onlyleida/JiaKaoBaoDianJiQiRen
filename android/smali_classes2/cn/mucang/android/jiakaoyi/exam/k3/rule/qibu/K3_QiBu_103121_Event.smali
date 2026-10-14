.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;
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
.field private final houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

.field private isStoped:Z

.field private final stopFilter:Lcn/mucang/android/jiakaoyi/signal/utils/c;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->isStoped:Z

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/signal/utils/c;

    const/4 p2, 0x3

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/utils/c;-><init>(I)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->stopFilter:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    return-void
.end method

.method private reset()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->stopFilter:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->b()V

    const/4 v0, 0x0

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->isStoped:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const/4 p3, 0x1

    if-eqz p2, :cond_3

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->stopFilter:Lcn/mucang/android/jiakaoyi/signal/utils/c;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Stop:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    const/4 v2, 0x0

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/utils/c;->a(Z)Z

    move-result p2

    if-eqz p2, :cond_1

    .line 3
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->isStoped:Z

    .line 4
    :cond_1
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->isStoped:Z

    if-eqz p2, :cond_2

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide v0

    .line 6
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3QiBuStepConfig;->p203131:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    int-to-double v3, p2

    cmpl-double p2, v0, v3

    if-lez p2, :cond_2

    return v2

    .line 7
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_3

    .line 8
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/qibu/K3_QiBu_103121_Event;->reset()V

    :cond_3
    return p3
.end method
