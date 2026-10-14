.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhiXianDataConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;",
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
.method public convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;
    .locals 2

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;-><init>()V

    .line 3
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;

    if-eqz v0, :cond_1

    .line 4
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;

    .line 5
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->offsetDistance:D

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;->offset:D

    .line 6
    iget-wide v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZhiXianStateData;->diffAngle:D

    iput-wide v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;->angle:D

    :cond_1
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhiXianDataConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhiXianData;

    move-result-object p1

    return-object p1
.end method
