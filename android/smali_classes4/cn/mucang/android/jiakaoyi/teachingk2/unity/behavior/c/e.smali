.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000(\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\t\u001a\u0004\u0018\u00010\n2\u0006\u0010\u000b\u001a\u00020\u000cH\u0016J\n\u0010\r\u001a\u0004\u0018\u00010\nH\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0006\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\u0008X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000e"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/impl/ObserveBehaviorCheck;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;",
        "()V",
        "lastState",
        "",
        "left",
        "right",
        "stopChecker",
        "Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/StopChecker;",
        "isTriggered",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "reset",
        "teachbase_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x5,
        0x1
    }
    xi = 0x30
.end annotation


# instance fields
.field private c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

.field private d:Z

.field private e:Z

.field private f:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->Behavior10010:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;)V

    return-void
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 6

    const-string v0, "signal"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->b()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->k()Z

    move-result v0

    if-nez v0, :cond_1

    return-object v1

    .line 3
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    if-nez v0, :cond_2

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const-wide/16 v2, 0x7d0

    invoke-direct {v0, v2, v3}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;-><init>(J)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    .line 5
    :cond_2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->d:Z

    const/4 v2, 0x1

    if-eqz v0, :cond_4

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    sget-object v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;->Forward:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    if-ne v0, v3, :cond_4

    .line 6
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->e:Z

    if-eqz v0, :cond_3

    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->f:Z

    if-nez v0, :cond_4

    .line 7
    :cond_3
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->e(Z)V

    .line 8
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    move-result-object p1

    return-object p1

    .line 9
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v3

    iget-object v3, v3, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->F:Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v4

    iget-wide v4, v4, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->L:J

    invoke-virtual {v0, v3, v4, v5}, Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;->a(Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel$Direction;J)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->d:Z

    if-eqz v0, :cond_6

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->t()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 11
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->e:Z

    .line 12
    :cond_5
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->a()Lcn/mucang/android/jiakaoyi/signal/ai/a;

    move-result-object p1

    invoke-virtual {p1}, Lcn/mucang/android/jiakaoyi/signal/ai/a;->u()Z

    move-result p1

    if-eqz p1, :cond_6

    .line 13
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->f:Z

    :cond_6
    return-object v1
.end method

.method public d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->c:Lcn/mucang/android/jiakaoyi/hpmap/collision/k2/checker/e;

    const/4 v1, 0x0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->d:Z

    .line 3
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->e:Z

    .line 4
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/e;->f:Z

    .line 5
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->e(Z)V

    return-object v0
.end method
