.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/IConvertor<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;",
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
.method public convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;
    .locals 6

    if-nez p1, :cond_0

    .line 2
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;-><init>()V

    .line 3
    :cond_0
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;

    const/4 v1, 0x4

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    if-nez v0, :cond_7

    instance-of v5, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;

    if-eqz v5, :cond_1

    goto :goto_2

    .line 4
    :cond_1
    instance-of v0, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    if-eqz v0, :cond_d

    .line 5
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;

    .line 6
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->before:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, v0, :cond_6

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->preTurnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v0, :cond_2

    goto :goto_1

    .line 7
    :cond_2
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-eq p2, v0, :cond_5

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnRightToBack:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v0, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/data/ChaoCheStateData$State;

    if-ne p2, v0, :cond_4

    .line 9
    iput v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    .line 10
    :cond_4
    iput v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    .line 11
    :cond_5
    :goto_0
    iput v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    .line 12
    :cond_6
    :goto_1
    iput v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    :cond_7
    :goto_2
    if-eqz v0, :cond_8

    .line 13
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    goto :goto_3

    .line 14
    :cond_8
    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/BianDaoChaoCheStateData;->bianDaoChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;

    .line 15
    :goto_3
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoChecker;->state:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->before:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, v0, :cond_9

    .line 16
    iput v4, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    .line 17
    :cond_9
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnLeft:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, v0, :cond_a

    .line 18
    iput v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    .line 19
    :cond_a
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->turnRight:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, v0, :cond_b

    .line 20
    iput v2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    .line 21
    :cond_b
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;->after:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BianDaoState;

    if-ne p2, v0, :cond_c

    .line 22
    iput v1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    goto :goto_4

    :cond_c
    const/4 p2, 0x0

    .line 23
    iput p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    :cond_d
    :goto_4
    return-object p1
.end method

.method public bridge synthetic convert(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    move-result-object p1

    return-object p1
.end method
