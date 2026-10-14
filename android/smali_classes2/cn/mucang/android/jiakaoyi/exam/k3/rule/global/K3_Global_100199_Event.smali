.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100199_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private isPressLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100199_Event;->isPressLine:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    iget-object p3, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->n:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;

    sget-object v0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;->PressFullLine:Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;

    invoke-virtual {p3, v0}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/a;->b(Lcn/mucang/android/jiakaoyi/engine/processor/exam/conflict/ConflictSignal;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100199_Event;->isPressLine:Z

    return v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p3

    iget-byte p3, p3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->M:B

    const/4 v1, 0x3

    if-ne p3, v1, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressCenterCircle:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100199_Event;->isPressLine:Z

    .line 5
    :cond_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100199_Event;->isPressLine:Z

    xor-int/2addr p1, v0

    return p1
.end method
