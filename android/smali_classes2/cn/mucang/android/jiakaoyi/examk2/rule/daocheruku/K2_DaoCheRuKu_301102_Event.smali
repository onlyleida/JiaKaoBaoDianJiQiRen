.class public Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private is135Deduct:Z

.field private is144Deduct:Z

.field private is145Deduct:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is135Deduct:Z

    .line 3
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is144Deduct:Z

    .line 4
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is145Deduct:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/b/b;

    .line 2
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->e0:Z

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return v1

    .line 3
    :cond_0
    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->p0:Z

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iput-boolean v1, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->p0:Z

    return v1

    .line 5
    :cond_1
    move-object v0, p2

    check-cast v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->f0:Z

    if-nez v0, :cond_2

    return v1

    .line 6
    :cond_2
    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    sget-object v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;->Step7:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/SubStep;

    const/4 v2, 0x1

    if-ne p2, v0, :cond_3

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-nez p2, :cond_3

    return v2

    .line 7
    :cond_3
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402123:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_4

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    if-eqz p2, :cond_4

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->c:Z

    if-nez p2, :cond_4

    return v1

    .line 8
    :cond_4
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is135Deduct:Z

    if-nez p2, :cond_5

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402135:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_5

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->K:Z

    if-eqz p2, :cond_5

    .line 9
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is135Deduct:Z

    return v1

    .line 10
    :cond_5
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is144Deduct:Z

    if-nez p2, :cond_6

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    move-object p3, p2

    check-cast p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p3, p3, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    if-eqz p3, :cond_6

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->L:Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_6

    .line 11
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is144Deduct:Z

    return v1

    .line 12
    :cond_6
    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is145Deduct:Z

    if-nez p2, :cond_7

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/examk2/config/K2DaoCheRuKuConfig;->p402145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_7

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/examk2/b/g;->a:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;

    check-cast p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;

    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/examk2/collision/DaoKuChecker;->g0:Z

    if-eqz p1, :cond_7

    .line 13
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/examk2/rule/daocheruku/K2_DaoCheRuKu_301102_Event;->is145Deduct:Z

    return v1

    :cond_7
    return v2
.end method
