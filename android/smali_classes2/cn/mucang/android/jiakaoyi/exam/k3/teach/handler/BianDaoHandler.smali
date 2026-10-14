.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;",
        ">;"
    }
.end annotation


# instance fields
.field public bianDaoConvertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;

.field public carTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

.field public lastState:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    return-void
.end method


# virtual methods
.method public bridge synthetic isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->bianDaoConvertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->bianDaoConvertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->carTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    .line 5
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->bianDaoConvertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->carTurnState:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/TurnStateConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;

    move-result-object p2

    .line 6
    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/BianDaoVariable;->turn:I

    const/4 p3, 0x4

    const/4 p4, 0x2

    const/4 v0, 0x1

    if-nez p1, :cond_1

    iget v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    if-ne v1, p4, :cond_1

    iget v1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    if-ne v1, p3, :cond_1

    .line 7
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    return v0

    :cond_1
    const/4 v1, 0x3

    if-ne p1, v0, :cond_2

    .line 8
    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    if-ne v2, v1, :cond_2

    iget v2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    if-ne v2, p3, :cond_2

    .line 9
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    return v0

    :cond_2
    if-ne p1, p4, :cond_4

    .line 10
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    if-eq p1, v1, :cond_3

    if-ne p1, p4, :cond_4

    :cond_3
    iget p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    if-ne p1, p3, :cond_4

    .line 11
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    return v0

    .line 12
    :cond_4
    iget p1, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/CarTurnState;->state:I

    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/BianDaoHandler;->lastState:I

    const/4 p1, 0x0

    return p1
.end method
