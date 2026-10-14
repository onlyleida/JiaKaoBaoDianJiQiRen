.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;

.field private offsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;


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
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/OffsetVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 2
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;

    if-nez p2, :cond_0

    .line 3
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;

    .line 4
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;

    invoke-direct {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;-><init>()V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;->offsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;

    .line 5
    :cond_0
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;->convertor:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/OffsetHandler;->offsetResult:Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;

    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p4

    check-cast p4, Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;

    invoke-virtual {p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/OffsetConvertor;->convert(Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;Lcn/mucang/android/jiakaoyi/exam/k3/data/K3BaseStepData;)Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;

    move-result-object p2

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;->isValid()Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/teach/convertor/bean/OffsetResult;->offset:D

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;->value:Ljava/lang/Double;

    invoke-virtual {p1}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v0

    cmpl-double p1, p2, v0

    if-lez p1, :cond_1

    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
