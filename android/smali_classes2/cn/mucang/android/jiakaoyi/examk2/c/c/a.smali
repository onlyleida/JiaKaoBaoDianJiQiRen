.class public Lcn/mucang/android/jiakaoyi/examk2/c/c/a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/engine/processor/exam/g;


# instance fields
.field private a:Lcn/mucang/android/jiakaoyi/engine/g/b;

.field private final b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 6

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/b/l;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_SuiDao:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;

    const/4 v3, 0x1

    if-eqz v2, :cond_5

    .line 3
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v4, v0

    check-cast v4, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->z:Ljava/lang/Boolean;

    if-eqz v4, :cond_5

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/h;->z:Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_5

    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-eq v0, v3, :cond_0

    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412118:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    const/4 v4, 0x2

    if-ne v0, v4, :cond_5

    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412110:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_5

    :cond_0
    iget-object v0, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lez v0, :cond_5

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-nez v0, :cond_1

    .line 5
    new-instance v0, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2SuiDaoConfig;->p412117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v4, v2

    invoke-direct {v0, v4, v5}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 6
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 7
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 v0, 0x0

    .line 9
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/c/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-nez v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_3

    :cond_2
    new-array p1, v3, [I

    const v0, 0x4c326

    aput v0, p1, v2

    .line 11
    invoke-virtual {p2, v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    :cond_3
    return v3

    :cond_4
    return v2

    :cond_5
    return v3
.end method
