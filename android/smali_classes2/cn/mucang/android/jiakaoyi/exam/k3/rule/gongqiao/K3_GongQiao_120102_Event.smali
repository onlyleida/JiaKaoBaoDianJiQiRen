.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120102_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private noCheckTwoSideLine:J


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120102_Event;->noCheckTwoSideLine:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GongQiaoStepConfig;->p220117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p3, Ljava/lang/Boolean;

    invoke-virtual {p3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_5

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-byte p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne p3, v1, :cond_5

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getTwoSideOffset(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;

    move-result-object p1

    const/4 p3, 0x0

    if-eqz p1, :cond_3

    .line 3
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/result/TwoSideOffsetResult;->rightLine:Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;

    if-nez p1, :cond_0

    goto :goto_2

    .line 4
    :cond_0
    iget p2, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/K3CollisionModel;->a:I

    if-eq p2, v1, :cond_2

    if-ne p2, v0, :cond_1

    check-cast p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/impl/j;->k:Z

    if-nez p1, :cond_1

    goto :goto_0

    :cond_1
    const/4 p1, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 p1, 0x1

    :goto_1
    if-nez p1, :cond_5

    .line 5
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    .line 6
    :cond_3
    :goto_2
    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120102_Event;->noCheckTwoSideLine:J

    const-wide/16 v3, 0x0

    cmp-long p1, v1, v3

    if-nez p1, :cond_4

    .line 7
    iget-wide v1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120102_Event;->noCheckTwoSideLine:J

    .line 8
    :cond_4
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/gongqiao/K3_GongQiao_120102_Event;->noCheckTwoSideLine:J

    sub-long/2addr p1, v1

    const-wide/16 v1, 0x7d0

    cmp-long v3, p1, v1

    if-lez v3, :cond_5

    .line 9
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->setDoNotExecute(Z)V

    return p3

    :cond_5
    return v0
.end method
