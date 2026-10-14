.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private engineStartTime:J

.field private lastEngineStartState:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->lastEngineStartState:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->engineStartTime:J

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 10

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->a:I

    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200185:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    const/16 v2, 0x1e

    invoke-static {v1, v2}, Ljava/lang/Math;->max(II)I

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-le v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->lastEngineStartState:Z

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 3
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v1

    iget-wide v4, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->engineStartTime:J

    .line 4
    :cond_1
    iget-wide v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->engineStartTime:J

    const-wide/16 v6, 0x0

    cmp-long v1, v4, v6

    if-eqz v1, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->engineStartTime:J

    sub-long/2addr v4, v8

    const-wide/16 v8, 0x7d0

    cmp-long p1, v4, v8

    if-gez p1, :cond_2

    if-nez v0, :cond_2

    .line 5
    iput-wide v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->engineStartTime:J

    .line 6
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->lastEngineStartState:Z

    return v3

    .line 7
    :cond_2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->lastEngineStartState:Z

    return v2
.end method
