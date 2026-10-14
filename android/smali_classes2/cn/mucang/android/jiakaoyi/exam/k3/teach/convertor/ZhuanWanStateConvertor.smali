.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;",
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
.method public convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;
    .locals 4

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;-><init>()V

    .line 3
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;

    const/4 v1, 0x2

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v0, :cond_3

    .line 4
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;

    .line 5
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-ne p2, v0, :cond_1

    .line 6
    iput v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    goto :goto_0

    .line 7
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-ne p2, v0, :cond_2

    .line 8
    iput v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    goto :goto_0

    .line 9
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/ZuoZhuanStateData$State;

    if-ne p2, v0, :cond_6

    .line 10
    iput v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    goto :goto_0

    .line 11
    :cond_3
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    if-eqz v0, :cond_6

    .line 12
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;

    .line 13
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->Start:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne p2, v0, :cond_4

    .line 14
    iput v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    goto :goto_0

    .line 15
    :cond_4
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->Turning:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne p2, v0, :cond_5

    .line 16
    iput v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    goto :goto_0

    .line 17
    :cond_5
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;->TurningEND:Lcn/mucang/android/jiakaoyi/exam/k3/data/YouZhuanStateData$State;

    if-ne p2, v0, :cond_6

    .line 18
    iput v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    :cond_6
    :goto_0
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    move-result-object p1

    return-object p1
.end method
