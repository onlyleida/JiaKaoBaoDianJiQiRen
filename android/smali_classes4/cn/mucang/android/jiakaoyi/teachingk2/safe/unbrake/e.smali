.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;
.super Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000&\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\u0018\u00002\u00020\u0001B\r\u0012\u0006\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0002\u0010\u0004J\u0008\u0010\u0007\u001a\u00020\u0003H\u0016J\u0010\u0010\u0008\u001a\u00020\t2\u0006\u0010\n\u001a\u00020\u000bH\u0016J\u0008\u0010\u000c\u001a\u00020\u0003H\u0016J\u0008\u0010\r\u001a\u00020\u000eH\u0016R\u0011\u0010\u0002\u001a\u00020\u0003\u00a2\u0006\u0008\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\u00a8\u0006\u000f"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/WheelChecker;",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/UnBrakeChecker;",
        "wheel",
        "",
        "(I)V",
        "getWheel",
        "()I",
        "getIconRes",
        "getStatus",
        "",
        "getter",
        "Lcn/mucang/android/jiakaoyi/signal/center/SignalGetter;",
        "getTextRes",
        "getWarningText",
        "",
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
.field private final b:I


# direct methods
.method public constructor <init>(I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/d;-><init>()V

    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;->b:I

    return-void
.end method


# virtual methods
.method public a()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$drawable;->selector_brake_handbrake:I

    return v0
.end method

.method public b(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 3

    const-string v0, "getter"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;->b:I

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-gez v0, :cond_0

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;->b:I

    if-gt p1, v0, :cond_1

    goto :goto_0

    .line 3
    :cond_0
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->r:I

    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;->b:I

    if-lt p1, v0, :cond_1

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    :goto_0
    return v1
.end method

.method public c()I
    .locals 1

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_turn_wheel:I

    return v0
.end method

.method public d()Ljava/lang/String;
    .locals 5

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;->b:I

    if-gez v0, :cond_0

    const-string v0, "\u5de6"

    goto :goto_0

    :cond_0
    const-string v0, "\u53f3"

    .line 2
    :goto_0
    sget-object v1, Lkotlin/jvm/internal/y;->a:Lkotlin/jvm/internal/y;

    sget v1, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_turn_wheel_action:I

    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v1

    const-string v2, "getString(R.string.teachbase_turn_wheel_action)"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v2, 0x2

    new-array v3, v2, [Ljava/lang/Object;

    const/4 v4, 0x0

    aput-object v0, v3, v4

    const/4 v0, 0x1

    iget v4, p0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/e;->b:I

    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v3, v0

    invoke-static {v3, v2}, Ljava/util/Arrays;->copyOf([Ljava/lang/Object;I)[Ljava/lang/Object;

    move-result-object v0

    invoke-static {v1, v0}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "java.lang.String.format(format, *args)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method
