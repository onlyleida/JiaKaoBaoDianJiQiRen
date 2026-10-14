.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;",
        ">;"
    }
.end annotation


# instance fields
.field public isInit:Z

.field public lastHasSpeed:Z

.field public startDistance:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->isInit:Z

    .line 3
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->lastHasSpeed:Z

    return-void
.end method


# virtual methods
.method public bridge synthetic isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/QiBuVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 2
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->isInit:Z

    const/4 p3, 0x0

    const/4 p4, 0x1

    if-nez p1, :cond_0

    .line 3
    iput-boolean p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->isInit:Z

    .line 4
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->lastHasSpeed:Z

    return p3

    .line 5
    :cond_0
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->lastHasSpeed:Z

    if-nez p1, :cond_1

    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    if-eqz p1, :cond_1

    .line 6
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->lastHasSpeed:Z

    return p4

    .line 7
    :cond_1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->c()Z

    move-result p1

    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/QibuHandler;->lastHasSpeed:Z

    return p3
.end method
