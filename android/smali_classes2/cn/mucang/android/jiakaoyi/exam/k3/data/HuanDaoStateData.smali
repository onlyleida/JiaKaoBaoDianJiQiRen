.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public final turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 1

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3HuanDaoStepConfig;->p224116:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuanDaoStateData;->turnLightChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;

    invoke-virtual {v0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/JudgeLineTurnLightChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V

    :cond_0
    return-void
.end method
