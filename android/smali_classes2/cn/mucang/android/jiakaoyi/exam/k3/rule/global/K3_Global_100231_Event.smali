.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100231_Event;
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
.field private final carIgnitionFailChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

.field private engineStartTime:J

.field private lastEngineStartState:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    const/4 p2, 0x0

    .line 2
    iput-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100231_Event;->lastEngineStartState:Z

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100231_Event;->engineStartTime:J

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100231_Event;->carIgnitionFailChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    return-void
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100231_Event;->carIgnitionFailChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/Judge100231Checker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1
.end method
