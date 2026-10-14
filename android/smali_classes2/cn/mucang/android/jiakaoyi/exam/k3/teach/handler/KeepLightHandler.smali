.class public Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/VariableHandler<",
        "Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;",
        ">;"
    }
.end annotation


# instance fields
.field private lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

.field private startDistance:F

.field private startTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkLight(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->Off:Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    if-ne p3, v0, :cond_0

    .line 2
    invoke-virtual {p0, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->allLightOff(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    .line 3
    :cond_0
    iget-boolean p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->on:Z

    const/4 v0, 0x1

    if-eqz p1, :cond_1

    .line 4
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-eqz p1, :cond_2

    return v0

    .line 5
    :cond_1
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    invoke-virtual {p1, p3}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->j(Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result p1

    if-nez p1, :cond_2

    return v0

    :cond_2
    const/4 p1, 0x0

    return p1
.end method

.method private checkLights(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 5

    .line 1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    array-length v1, v0

    const/4 v2, 0x0

    const/4 v3, 0x0

    :goto_0
    if-ge v3, v1, :cond_1

    aget-object v4, v0, v3

    .line 2
    invoke-direct {p0, p1, p2, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->checkLight(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/signal/center/model/Light;)Z

    move-result v4

    if-eqz v4, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    :cond_1
    return v2
.end method

.method private checkResult(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 9

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-lez v0, :cond_2

    .line 2
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startTime:J

    const-wide/16 v5, 0x0

    cmp-long v0, v3, v5

    if-nez v0, :cond_0

    .line 3
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iput-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startTime:J

    .line 4
    :cond_0
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-wide v3, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    iget-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startTime:J

    sub-long/2addr v3, v5

    iget v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->time:I

    int-to-long v5, v0

    const-wide/16 v7, 0x3e8

    mul-long v5, v5, v7

    cmp-long v0, v3, v5

    if-lez v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    goto :goto_1

    :cond_2
    :goto_0
    const/4 v0, 0x1

    .line 5
    :goto_1
    iget v3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    if-lez v3, :cond_5

    .line 6
    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startDistance:F

    const/4 v4, 0x0

    cmpl-float v3, v3, v4

    if-nez v3, :cond_3

    .line 7
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iput v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startDistance:F

    .line 8
    :cond_3
    invoke-interface {p2}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startDistance:F

    sub-float/2addr p2, v3

    iget p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->distance:I

    int-to-float p1, p1

    cmpl-float p1, p2, p1

    if-lez p1, :cond_4

    goto :goto_2

    :cond_4
    const/4 p1, 0x0

    goto :goto_3

    :cond_5
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-eqz p1, :cond_6

    if-eqz v0, :cond_6

    const/4 v1, 0x1

    :cond_6
    return v1
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
    check-cast p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;

    invoke-virtual {p0, p1, p2, p3, p4}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1
.end method

.method public isTrigger(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 2

    .line 2
    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 p4, 0x0

    if-nez p3, :cond_0

    .line 3
    iget-object p3, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->ids:[I

    array-length p3, p3

    new-array p3, p3, [Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    const/4 p3, 0x0

    .line 4
    :goto_0
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;->ids:[I

    array-length v1, v0

    if-ge p3, v1, :cond_0

    .line 5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->lights:[Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    aget v0, v0, p3

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/Light;->findLightWithId(I)Lcn/mucang/android/jiakaoyi/signal/center/model/Light;

    move-result-object v0

    aput-object v0, v1, p3

    add-int/lit8 p3, p3, 0x1

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->checkLights(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p3

    if-eqz p3, :cond_1

    .line 7
    invoke-direct {p0, p1, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->checkResult(Lcn/mucang/android/jiakaoyi/exam/k3/teach/model/variable/KeepLightVariable;Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    return p1

    :cond_1
    const-wide/16 p1, 0x0

    .line 8
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startTime:J

    const/4 p1, 0x0

    .line 9
    iput p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/teach/handler/KeepLightHandler;->startDistance:F

    return p4
.end method
