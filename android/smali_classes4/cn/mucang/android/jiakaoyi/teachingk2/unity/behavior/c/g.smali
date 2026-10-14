.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\"\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0006\u001a\u0004\u0018\u00010\u00072\u0006\u0010\u0008\u001a\u00020\tH\u0016J\n\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/impl/SpeedBehaviorCheck;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;",
        "()V",
        "frameCount",
        "",
        "speedCount",
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
.field private c:I

.field private d:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->Behavior10001:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;)V

    return-void
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 2

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
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->c:I

    add-int/lit8 v0, v0, 0x1

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->c:I

    .line 4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    const/high16 v0, 0x40400000    # 3.0f

    cmpl-float p1, p1, v0

    if-lez p1, :cond_2

    .line 5
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->d:I

    add-int/lit8 p1, p1, 0x1

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->d:I

    :cond_2
    return-object v1
.end method

.method public d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->d:I

    int-to-float v0, v0

    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->c:I

    int-to-float v1, v1

    div-float/2addr v0, v1

    const v1, 0x3f19999a    # 0.6f

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    move-result-object v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->c:I

    .line 4
    iput v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/g;->d:I

    .line 5
    invoke-virtual {p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->e(Z)V

    return-object v0
.end method
