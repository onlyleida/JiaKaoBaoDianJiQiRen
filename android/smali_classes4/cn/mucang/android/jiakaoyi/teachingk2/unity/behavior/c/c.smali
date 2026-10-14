.class public final Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;
.super Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000,\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\u0008\u0003\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0012\u0010\u0007\u001a\u0004\u0018\u00010\u00082\u0006\u0010\t\u001a\u00020\nH\u0016J\u0010\u0010\u000b\u001a\u00020\u000c2\u0006\u0010\r\u001a\u00020\u0006H\u0002J\n\u0010\u000e\u001a\u0004\u0018\u00010\u0008H\u0016R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082\u000e\u00a2\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e\u00a2\u0006\u0002\n\u0000\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/impl/GearBehaviorCheck;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/BaseBehaviorCheck;",
        "()V",
        "errorCount",
        "",
        "lastState",
        "Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;",
        "isTriggered",
        "Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;",
        "signal",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "matchGear",
        "",
        "gear",
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

.field private d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->Behavior10004:Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;)V

    return-void
.end method

.method private final f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearN:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearBack:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-eq p1, v0, :cond_1

    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->GearD:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne p1, v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    :goto_1
    return p1
.end method


# virtual methods
.method public c(Lcn/mucang/android/jiakaoyi/signal/c/e;)Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 4

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
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v2, 0x1

    if-eqz v0, :cond_2

    .line 4
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const-string v3, "signal.car.gear"

    invoke-static {v0, v3}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->f(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 5
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->c:I

    add-int/2addr v0, v2

    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->c:I

    .line 6
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;->getCode()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    const-string v3, "\u7ec3\u8f66\u884c\u4e3a\u52a0\u4e00:"

    invoke-static {v3, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 7
    :cond_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->c:I

    const/4 v0, 0x2

    if-le p1, v0, :cond_3

    .line 9
    invoke-virtual {p0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->e(Z)V

    .line 10
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->a()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;

    move-result-object p1

    return-object p1

    :cond_3
    return-object v1
.end method

.method public d()Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/TrainBehavior;
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->c:I

    const/4 v1, 0x0

    .line 2
    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/c/c;->d:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    invoke-virtual {p0, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/unity/behavior/a;->e(Z)V

    return-object v1
.end method
