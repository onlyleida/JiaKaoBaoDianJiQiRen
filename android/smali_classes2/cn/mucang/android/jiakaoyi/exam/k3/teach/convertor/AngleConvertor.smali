.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;",
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
.method public convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;
    .locals 2

    .line 2
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;

    if-eqz v0, :cond_0

    .line 3
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;

    .line 4
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;->angle:D

    return-object p1

    :cond_0
    const/4 p1, 0x0

    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/AngleConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/AngleResult;

    move-result-object p1

    return-object p1
.end method
