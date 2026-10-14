.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100180_Event;
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
.field private final distanceLimitChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iget-object v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200107:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    .line 3
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    int-to-float v1, v1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200173:Lcn/mucang/android/jiakaoyi/engine/config/route/value/BooleanValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p1

    invoke-direct {p2, v0, v1, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;-><init>(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;FZ)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100180_Event;->distanceLimitChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 1

    .line 1
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->x()Z

    move-result p3

    const/4 v0, 0x1

    if-nez p3, :cond_0

    return v0

    .line 2
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100180_Event;->distanceLimitChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;

    invoke-virtual {p3, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/GearDistanceLimitChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    xor-int/2addr p1, v0

    return p1
.end method
