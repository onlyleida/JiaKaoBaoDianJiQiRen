.class public Lcn/mucang/android/jiakaoyi/examk2/c/b/a;
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
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    return-void
.end method


# virtual methods
.method public a(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 7

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->b:Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/b/e;

    .line 2
    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ShiHuaLuMian:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;

    const/4 v3, 0x1

    if-eqz v2, :cond_8

    .line 3
    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-ne v4, v3, :cond_8

    iget-object v4, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v4, v4, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    if-lez v4, :cond_8

    .line 4
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    if-nez v4, :cond_0

    .line 5
    new-instance v4, Lcn/mucang/android/jiakaoyi/engine/g/b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/examk2/config/K2ShiHuaLuMianConfig;->p411120:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v5, v2

    invoke-direct {v4, v5, v6}, Lcn/mucang/android/jiakaoyi/engine/g/b;-><init>(J)V

    iput-object v4, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 6
    invoke-virtual {v4}, Lcn/mucang/android/jiakaoyi/engine/g/b;->g()V

    .line 7
    :cond_0
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->d()Z

    move-result v2

    const/4 v4, 0x0

    if-eqz v2, :cond_7

    .line 8
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    invoke-virtual {v2}, Lcn/mucang/android/jiakaoyi/engine/g/b;->b()V

    const/4 v2, 0x0

    .line 9
    iput-object v2, p0, Lcn/mucang/android/jiakaoyi/examk2/c/b/a;->a:Lcn/mucang/android/jiakaoyi/engine/g/b;

    .line 10
    iget-object v2, v0, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v2, Lcn/mucang/android/jiakaoyi/examk2/collision/d;

    iget-boolean v2, v2, Lcn/mucang/android/jiakaoyi/examk2/collision/d;->F:Z

    if-eqz v2, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FarLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v2

    if-nez v2, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v2

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->NearLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v2, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_1
    const/4 v2, 0x1

    goto :goto_0

    :cond_2
    const/4 v2, 0x0

    :goto_0
    if-nez v2, :cond_3

    .line 11
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v5, Lcn/mucang/android/jiakaoyi/examk2/collision/d;

    iget-boolean v5, v5, Lcn/mucang/android/jiakaoyi/examk2/collision/d;->D:Z

    if-eqz v5, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    sget-object v6, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->WarningLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v5

    if-eqz v5, :cond_3

    const/4 v2, 0x1

    :cond_3
    if-nez v2, :cond_5

    .line 12
    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/d;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/d;->E:Z

    if-eqz v0, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v5, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->FrontFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v5}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-nez v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->RearFogLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_5

    :cond_4
    const/4 v2, 0x1

    :cond_5
    if-eqz v2, :cond_6

    new-array p1, v3, [I

    const v0, 0x4bf40

    aput v0, p1, v4

    .line 13
    invoke-virtual {p2, v1, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    :cond_6
    return v3

    :cond_7
    return v4

    :cond_8
    return v3
.end method
