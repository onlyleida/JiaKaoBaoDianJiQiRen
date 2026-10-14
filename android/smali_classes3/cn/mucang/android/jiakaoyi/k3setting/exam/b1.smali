.class public Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

.field private final b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    .line 3
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    return-void
.end method


# virtual methods
.method public a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/engine/init/a;->getEngine()Lcn/mucang/android/jiakaoyi/engine/c;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200231:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->x:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/h;->a(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v2, 0x18777

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200232:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/utils/f;->c()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq v0, v1, :cond_1

    .line 5
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v2, 0x18778

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 6
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200233:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->f()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v2, 0x18779

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    .line 8
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->b:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200234:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/c/d;->t()Lcn/mucang/android/jiakaoyi/signal/c/e;

    move-result-object v0

    invoke-interface {v0}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-boolean v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j:Z

    if-nez v0, :cond_3

    .line 9
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/k3setting/exam/b1;->a:Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;

    sget-object v1, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    const v2, 0x1877a

    invoke-virtual {v0, v1, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/creator/K3EngineManager;->engineOutDeduct(Lcn/mucang/android/jiakaoyi/engine/model/Step;I)V

    :cond_3
    return-void
.end method
