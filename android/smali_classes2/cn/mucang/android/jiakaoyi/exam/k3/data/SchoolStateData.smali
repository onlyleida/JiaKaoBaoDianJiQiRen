.class public Lcn/mucang/android/jiakaoyi/exam/k3/data/SchoolStateData;
.super Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;",
        ">;"
    }
.end annotation


# instance fields
.field public isCheckStopCar:Z


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3SchoolStepConfig;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3BaseStepConfig;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V
    .locals 0

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;->onChange(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)V

    return-void
.end method
