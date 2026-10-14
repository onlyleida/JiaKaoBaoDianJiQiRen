.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;
    }
.end annotation


# instance fields
.field private config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

.field private firstTime:J

.field private hasDeduct:Z

.field private hasInit:Z

.field private lastIsEngineStart:Z

.field private state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->firstTime:J

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;->Step_NONE:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->hasInit:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->lastIsEngineStart:Z

    .line 6
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 7

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    .line 2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->hasInit:Z

    const/4 v2, 0x1

    if-nez v1, :cond_0

    .line 3
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->hasInit:Z

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->lastIsEngineStart:Z

    return v2

    .line 5
    :cond_0
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->lastIsEngineStart:Z

    const-wide/16 v3, -0x1

    const/4 v5, 0x0

    if-nez v1, :cond_1

    if-eqz v0, :cond_1

    .line 6
    iput-boolean v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->hasDeduct:Z

    .line 7
    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->firstTime:J

    .line 8
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;->Step_1:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    :cond_1
    if-nez v0, :cond_2

    .line 9
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;->Step_NONE:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    .line 10
    :cond_2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->lastIsEngineStart:Z

    .line 11
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;->Step_1:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    if-ne v0, v1, :cond_6

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->hasDeduct:Z

    if-nez v0, :cond_6

    .line 12
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->J:Z

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->p:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;->Start:Lcn/mucang/android/jiakaoyi/signal/center/model/KeyState;

    if-ne v0, v1, :cond_3

    goto :goto_0

    .line 13
    :cond_3
    sget-object p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;->Step_NONE:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker$State;

    goto :goto_1

    .line 14
    :cond_4
    :goto_0
    iget-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->firstTime:J

    cmp-long v6, v0, v3

    if-nez v6, :cond_5

    .line 15
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->firstTime:J

    .line 16
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-wide v0, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->firstTime:J

    sub-long/2addr v0, v3

    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200209:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v3, p1

    cmp-long p1, v0, v3

    if-lez p1, :cond_6

    .line 17
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100211Checker;->hasDeduct:Z

    return v5

    :cond_6
    :goto_1
    return v2
.end method
