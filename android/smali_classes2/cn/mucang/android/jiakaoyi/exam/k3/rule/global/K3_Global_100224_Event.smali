.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100224_Event;
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
.field private startTime:J

.field private turnLightCloseChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;

.field private turnState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const-wide/16 v0, -0x1

    .line 2
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100224_Event;->startTime:J

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200250:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/Integer;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result p1

    mul-int/lit16 p1, p1, 0x3e8

    int-to-long v0, p1

    invoke-direct {p2, v0, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;-><init>(J)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100224_Event;->turnLightCloseChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 1
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100224_Event;->turnLightCloseChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData;->realState:Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;

    invoke-virtual {v1, p1, p2, p3, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/TurnLightCloseChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/exam/k3/data/GlobalStateData$State;)Z

    move-result p1

    return p1
.end method
