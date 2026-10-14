.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;
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
.field private firstTime:J

.field private lastEngineStart:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, -0x1

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->firstTime:J

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 7

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-boolean v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    if-eqz v1, :cond_0

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->lastEngineStart:Z

    const-wide/16 v2, -0x1

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_3

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne v0, v1, :cond_3

    .line 6
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->firstTime:J

    cmp-long v6, v0, v2

    if-nez v6, :cond_1

    .line 7
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->firstTime:J

    .line 8
    :cond_1
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->firstTime:J

    sub-long/2addr v0, v2

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    mul-int/lit16 p2, p2, 0x3e8

    int-to-long v2, p2

    cmp-long p2, v0, v2

    if-lez p2, :cond_5

    .line 9
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->c:I

    if-le p1, p2, :cond_2

    goto :goto_0

    :cond_2
    const/4 v4, 0x0

    :goto_0
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->lastEngineStart:Z

    return v5

    .line 10
    :cond_3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget p2, p3, Lcn/mucang/android/jiakaoyi/examk2/b/d;->c:I

    if-le p1, p2, :cond_4

    const/4 v5, 0x1

    :cond_4
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->lastEngineStart:Z

    .line 11
    iput-wide v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300106_Event;->firstTime:J

    :cond_5
    return v4
.end method
