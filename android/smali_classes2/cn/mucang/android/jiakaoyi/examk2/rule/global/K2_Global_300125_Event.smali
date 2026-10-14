.class public Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;
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
.field private deductTime:J

.field private keyStartingEndTime:J

.field private lastKeyState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 p1, 0x0

    .line 2
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->keyStartingEndTime:J

    return-void
.end method


# virtual methods
.method protected checkConfig()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2GlobalConfig;->p401137:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    return v0
.end method

.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    if-eqz p1, :cond_0

    .line 3
    sget-object p3, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 4
    :cond_0
    iget-wide p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->i:J

    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->deductTime:J

    sub-long v0, p1, v0

    const/4 v2, 0x1

    const-wide/16 v3, 0x1388

    cmp-long v5, v0, v3

    if-gez v5, :cond_1

    .line 5
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->lastKeyState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    return v2

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->lastKeyState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne v0, v1, :cond_2

    if-eq p3, v1, :cond_2

    .line 7
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->keyStartingEndTime:J

    .line 8
    :cond_2
    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->keyStartingEndTime:J

    const-wide/16 v7, 0x0

    cmp-long v0, v5, v7

    if-lez v0, :cond_3

    if-ne p3, v1, :cond_3

    sub-long v0, p1, v5

    cmp-long v5, v0, v3

    if-gez v5, :cond_3

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->lastKeyState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    .line 10
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->deductTime:J

    const/4 p1, 0x0

    return p1

    .line 11
    :cond_3
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/global/K2_Global_300125_Event;->lastKeyState:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    return v2
.end method
