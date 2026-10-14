.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108108_Event;
.super Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field private isPressLine:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3LuKouZuoZhuanStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p1, 0x0

    .line 2
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108108_Event;->isPressLine:Z

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    invoke-virtual {p3, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    const/4 v0, 0x1

    if-eqz p3, :cond_0

    .line 2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object p3

    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;->PressCenterCircleFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;

    invoke-virtual {p3, p1, p2, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;ZLcn/mucang/android/jiakaoyi/exam/k3/collision/PressLineType;)Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108108_Event;->isPressLine:Z

    .line 3
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/lukouzuozhuan/K3_LuKouZuoZhuan_108108_Event;->isPressLine:Z

    xor-int/2addr p1, v0

    return p1
.end method
