.class public Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100152_Event;
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
.field private final chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;-><init>(Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;Lcn/mucang/android/jiakaoyi/engine/model/Deduct;)V

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100152_Event$1;

    invoke-direct {p2, p0}, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100152_Event$1;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100152_Event;)V

    invoke-direct {p1, p2}, Lcn/mucang/android/jiakaoyi/engine/i/e/a;-><init>(Lcn/mucang/android/jiakaoyi/engine/i/e/b;)V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100152_Event;->chuangdong:Lcn/mucang/android/jiakaoyi/engine/i/e/a;

    return-void
.end method

.method static synthetic access$000(Lcn/mucang/android/jiakaoyi/exam/k3/rule/global/K3_Global_100152_Event;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;
    .locals 0

    .line 1
    iget-object p0, p0, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/e/d;->config:Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    return-object p0
.end method


# virtual methods
.method protected handleSuccess(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    const/4 p1, 0x1

    return p1
.end method

.method protected sameEventDeductOnce()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method
