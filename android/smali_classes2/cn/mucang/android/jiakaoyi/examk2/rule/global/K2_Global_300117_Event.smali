.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;
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
.field private final houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

.field private isStoped:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    const/4 p1, 0x0

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->isStoped:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->HouLiu:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->s:Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;

    iget-boolean p3, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/h/b;->a:Z

    if-eqz p3, :cond_1

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->isStoped:Z

    .line 4
    :cond_1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401124:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    if-eqz p3, :cond_2

    const/4 p2, 0x1

    goto :goto_0

    .line 5
    :cond_2
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->v()Z

    move-result p2

    :goto_0
    const/4 p3, 0x0

    if-eqz p2, :cond_4

    .line 6
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->isStoped:Z

    if-eqz p2, :cond_3

    .line 7
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->a(Lcn/mucang/android/jiakaoyi/signal/c/e;)D

    move-result-wide v1

    const-wide/high16 v3, 0x4024000000000000L    # 10.0

    cmpl-double p2, v1, v3

    if-ltz p2, :cond_3

    const-wide/high16 v3, 0x403e000000000000L    # 30.0

    cmpg-double p2, v1, v3

    if-gtz p2, :cond_3

    .line 8
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u540e\u6e9c\u5c0f\u4e8e30\u5398\u7c73\uff1a"

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    return p3

    .line 9
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p2

    if-eqz p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->isForward()Z

    move-result p1

    if-eqz p1, :cond_5

    .line 10
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->isStoped:Z

    goto :goto_1

    .line 11
    :cond_4
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->houLiuChecker:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/d;->b()V

    .line 12
    iput-boolean p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300117_Event;->isStoped:Z

    :cond_5
    :goto_1
    return v0
.end method

.method protected initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/a;->initArgs(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    return-void
.end method
