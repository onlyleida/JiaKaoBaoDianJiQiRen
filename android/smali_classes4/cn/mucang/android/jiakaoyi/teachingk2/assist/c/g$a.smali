.class final Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u001a\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0005\n\u0002\u0010\u0002\n\u0000\u0008\u0002\u0018\u00002\u00020\u0001B\u0005\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\t\u001a\u00020\nH\u0016R\u001a\u0010\u0003\u001a\u00020\u0004X\u0086\u000e\u00a2\u0006\u000e\n\u0000\u001a\u0004\u0008\u0005\u0010\u0006\"\u0004\u0008\u0007\u0010\u0008\u00a8\u0006\u000b"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/assist/intercept/HardwareErrorHandler$DelayRunnable;",
        "Ljava/lang/Runnable;",
        "()V",
        "errType",
        "",
        "getErrType",
        "()I",
        "setErrType",
        "(I)V",
        "run",
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
.field private a:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, -0x1

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;->a:I

    return-void
.end method


# virtual methods
.method public final a(I)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;->a:I

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_abnormal:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;->a:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_3

    .line 3
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object v1

    const/4 v2, 0x0

    if-nez v1, :cond_0

    move-object v1, v2

    goto :goto_0

    :cond_0
    invoke-virtual {v1}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v1

    :goto_0
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 4
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/m;->a()Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;

    move-result-object v0

    if-nez v0, :cond_1

    goto :goto_1

    :cond_1
    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/CheckModuleStatus;->getTitle()Ljava/lang/String;

    move-result-object v2

    :goto_1
    invoke-static {v2}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    move-object v0, v2

    goto :goto_2

    :cond_2
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_error_p0:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_3
    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    .line 5
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->None:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v1, :cond_4

    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->a()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getTitle()Ljava/lang/String;

    move-result-object v0

    goto :goto_2

    :cond_4
    sget v0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_not_obstacle_stop:I

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object v0

    .line 6
    :cond_5
    :goto_2
    sget-object v1, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->b:Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g$a;->a:I

    invoke-static {v1, v2, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;->e(Lcn/mucang/android/jiakaoyi/teachingk2/assist/c/g;ILjava/lang/String;)V

    return-void
.end method
