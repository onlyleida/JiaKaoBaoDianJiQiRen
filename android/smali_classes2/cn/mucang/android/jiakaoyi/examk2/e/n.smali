.class public Lcn/mucang/android/jiakaoyi/examk2/e/n;
.super Lcn/mucang/android/jiakaoyi/examk2/e/f;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/examk2/e/f<",
        "Lcn/mucang/android/jiakaoyi/hpmap/a/a/g/o;",
        "Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;",
        "Lcn/mucang/android/jiakaoyi/examk2/collision/j;",
        ">;"
    }
.end annotation


# instance fields
.field private final j:Lcn/mucang/android/jiakaoyi/examk2/collision/j;

.field private final k:Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

.field private l:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

.field private m:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;Lcn/mucang/android/jiakaoyi/examk2/collision/j;)V
    .locals 6

    .line 1
    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405101:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v2, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405100:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v3, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405103:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v4, p1, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405102:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    move-object v0, p0

    move-object v5, p2

    invoke-direct/range {v0 .. v5}, Lcn/mucang/android/jiakaoyi/examk2/e/f;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;)V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->m:Z

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->j:Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    .line 4
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->k:Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    return-void
.end method


# virtual methods
.method public handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;
    .locals 3

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/examk2/e/f;->handle(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/f;

    move-result-object p3

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->j:Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->r()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->j:Lcn/mucang/android/jiakaoyi/examk2/collision/j;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/b;->k()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->k:Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/examk2/config/K2ZhiJiaoZhuanWanConfig;->p405109:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->m:Z

    if-nez v0, :cond_1

    .line 5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnLeftLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {v0, v2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->TurnRightLight:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_1

    :cond_0
    const/4 p1, 0x1

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->m:Z

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K2_ZhiJiaoZhuanWan:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    new-array p1, p1, [I

    const v2, 0x4a7d0

    aput v2, p1, v1

    invoke-virtual {p2, v0, p1}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->f(Lcn/mucang/android/jiakaoyi/engine/model/Step;[I)V

    .line 8
    :cond_1
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    if-eqz p1, :cond_2

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;->c()Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    move-result-object p1

    sget-object p2, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;->Outside:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker$BoundaryState;

    if-ne p1, p2, :cond_2

    .line 9
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->m:Z

    .line 10
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/f;->f:Z

    const/4 p1, 0x0

    .line 11
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/examk2/e/n;->l:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/BoundaryChecker;

    :cond_2
    return-object p3
.end method
