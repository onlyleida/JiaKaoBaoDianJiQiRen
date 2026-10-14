.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/SideDistanceConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;-><init>()V

    .line 3
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/TingCheStepData;->distance:D

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;->distance:D

    goto :goto_0

    .line 5
    :cond_1
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;

    if-eqz v0, :cond_2

    .line 6
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/HuiCheStepData;->rightDis:D

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;->distance:D

    goto :goto_0

    .line 7
    :cond_2
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;

    if-eqz v0, :cond_3

    .line 8
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;

    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/LinTingStepData;->distance:D

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;->distance:D

    :cond_3
    :goto_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/SideDistanceConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/KeepSideResult;

    move-result-object p1

    return-object p1
.end method
