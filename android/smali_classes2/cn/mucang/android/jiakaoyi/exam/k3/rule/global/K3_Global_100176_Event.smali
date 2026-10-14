.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100176_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private haveUsedTurnLeftLight:Z

.field private haveUsedTurnRightLight:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100176_Event;->haveUsedTurnLeftLight:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100176_Event;->haveUsedTurnRightLight:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 8

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p2

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p2, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object p2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object v1

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->c(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;

    move-result-object v1

    const/4 v3, 0x1

    if-eqz p2, :cond_7

    if-nez v1, :cond_0

    goto :goto_1

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    invoke-virtual {v4, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_1

    return v3

    .line 4
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200191:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    .line 5
    iget-boolean v0, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    const/4 v2, 0x0

    const-wide/16 v4, 0x0

    if-eqz v0, :cond_4

    .line 6
    iget-wide v0, v1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->f:J

    .line 7
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    iget-wide v6, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    cmp-long p3, v0, v6

    if-gez p3, :cond_2

    move-wide v0, v4

    :cond_2
    cmp-long p3, v0, v4

    if-lez p3, :cond_7

    .line 8
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    sub-long/2addr p2, v0

    int-to-long v0, p1

    cmp-long p1, p2, v0

    if-lez p1, :cond_3

    goto :goto_0

    :cond_3
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 9
    :cond_4
    iget-boolean v0, v1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->c:Z

    if-eqz v0, :cond_7

    .line 10
    iget-wide v6, p2, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->f:J

    .line 11
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p2

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->startTime:J

    cmp-long v0, v6, p2

    if-gez v0, :cond_5

    move-wide v6, v4

    :cond_5
    cmp-long p2, v6, v4

    if-lez p2, :cond_7

    .line 12
    iget-wide p2, v1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$c;->a:J

    sub-long/2addr p2, v6

    int-to-long v0, p1

    cmp-long p1, p2, v0

    if-lez p1, :cond_6

    goto :goto_1

    :cond_6
    const/4 v3, 0x0

    :cond_7
    :goto_1
    return v3
.end method
