.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/DiaoTouHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;


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
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/DiaoTouHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/DiaoTouVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 2
    invoke-virtual {p4}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f()Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/d;

    move-result-object p1

    .line 3
    instance-of p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;

    if-eqz p2, :cond_1

    .line 4
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;

    .line 5
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/DiaoTouHandler;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->diaotou:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne p2, p3, :cond_0

    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    sget-object p3, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;->after:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    if-ne p2, p3, :cond_0

    .line 6
    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/DiaoTouHandler;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    const/4 p1, 0x1

    return p1

    .line 7
    :cond_0
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData;->state:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/DiaoTouHandler;->lastState:Lcn/mucang/android/jiakaoyi/exam/k3/data/DiaoTouStateData$State;

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
