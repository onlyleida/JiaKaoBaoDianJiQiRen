.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;

.field private lastState:I

.field private result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public bridge synthetic isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/ZhuanWanVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 2
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;

    if-nez p1, :cond_0

    .line 3
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;

    .line 4
    new-instance p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    invoke-direct {p1}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;-><init>()V

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    .line 5
    :cond_0
    iget-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/ZhuanWanHandler;->result:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p3

    check-cast p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p1, p2, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/ZhuanWanStateConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;

    move-result-object p1

    const/4 p2, 0x1

    if-eqz p1, :cond_1

    .line 6
    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/ZhuanWanState;->state:I

    if-ne p1, p2, :cond_1

    goto :goto_0

    :cond_1
    const/4 p2, 0x0

    :goto_0
    return p2
.end method
