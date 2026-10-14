.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;",
        ">;"
    }
.end annotation


# instance fields
.field light:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public allLightOff(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->values()[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v0

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    invoke-virtual {v5, v4}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v4

    if-eqz v4, :cond_0

    return v2

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    const/4 p1, 0x1

    return p1
.end method

.method public bridge synthetic isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/Variable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 1
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 0

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->light:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-nez p3, :cond_0

    .line 3
    iget p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;->id:I

    invoke-static {p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->findLightWithId(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object p3

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->light:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    .line 4
    :cond_0
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->light:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    sget-object p4, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p3, p4, :cond_1

    .line 5
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->allLightOff(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 6
    :cond_1
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/LightVariable;->on:Z

    const/4 p3, 0x1

    if-eqz p1, :cond_2

    .line 7
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->light:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_3

    return p3

    .line 8
    :cond_2
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/LightHandler;->light:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    invoke-virtual {p1, p2}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_3

    return p3

    :cond_3
    const/4 p1, 0x0

    return p1
.end method
