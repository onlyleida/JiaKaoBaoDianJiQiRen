.class public final Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u00004\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0005\n\u0002\u0008\u0004\n\u0002\u0010\u000b\n\u0000\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\"\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008H\u0007J\u0018\u0010\t\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\u000b2\u0006\u0010\u000c\u001a\u00020\rH\u0007J\u0010\u0010\u000e\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007J\u0010\u0010\u000f\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\rH\u0007J\"\u0010\u0010\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u00062\u0010\u0008\u0002\u0010\u0007\u001a\n\u0012\u0004\u0012\u00020\u0004\u0018\u00010\u0008H\u0007J\u0008\u0010\u0011\u001a\u00020\u0012H\u0002\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandAdapter;",
        "",
        "()V",
        "bigFlameOut",
        "",
        "reason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;",
        "onSuccess",
        "Lkotlin/Function0;",
        "brake",
        "appReason",
        "Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;",
        "hardwareReason",
        "",
        "littleFlameOut",
        "removeBrake",
        "removeFlameOut",
        "usingV2Safe",
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


# static fields
.field public static final a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;-><init>()V

    sput-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5317\u6597\u4e0d\u652f\u6301\u5927\u7184\u706b\uff0c"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->i()Z

    move-result v0

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->h(BLcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->i(BLkotlin/jvm/b/a;)V

    :goto_0
    return-void
.end method

.method public static final b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V
    .locals 3

    const-string v0, "appReason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/u;->b()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;

    invoke-direct {v0, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/i;-><init>(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->c(Ljava/lang/Runnable;)V

    return-void

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    const/16 v1, 0x2c

    if-eqz v0, :cond_1

    .line 4
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5317\u6597\u4e0d\u652f\u6301app\u5239\u8f66\uff0c\u7406\u7531:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void

    .line 5
    :cond_1
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    sget-object v2, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->TeachBrake:Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    if-eq v0, v2, :cond_2

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/x;->a(Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u5df2\u7ecf\u4e0b\u53d1\u4e86app\u5239\u8f66\u7406\u7531:"

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object p0

    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;->getZhTitle()Ljava/lang/String;

    move-result-object p0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string p0, ", \u8fd8\u6ca1\u6709\u89e3\u5239\uff0c\u4e0d\u9700\u8981\u91cd\u590d\u4e0b\u53d1\u5239\u8f66"

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void

    .line 7
    :cond_2
    invoke-static {}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/manager/u;->a()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 8
    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/monitor/k;->r(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;)V

    .line 9
    invoke-virtual {p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->getReason()Lcn/mucang/android/jiakaoyi/teachingk2/safe/BrakeReason;

    move-result-object v0

    const-string v1, "\u4e0b\u53d1\u5239\u8f66\uff0c\u7406\u7531:"

    invoke-static {v1, v0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 10
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->i()Z

    move-result v0

    if-eqz v0, :cond_3

    const/16 v0, 0x64

    .line 11
    invoke-static {p0, p1, v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BB)V

    goto :goto_0

    .line 12
    :cond_3
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    goto :goto_0

    .line 13
    :cond_4
    invoke-static {p1}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const-string p1, "\u5b89\u5168\u6a21\u5757\u5df2\u5173\u95ed\uff0c\u4e0d\u4e0b\u53d1\u5239\u8f66\u6307\u4ee4:"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    .line 14
    sget p0, Lcn/mucang/android/jiakaoyi/teachbase/R$string;->teachbase_no_setting_brake:I

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/utils/k0;->a(I)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method private static final c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V
    .locals 1

    const-string v0, "$appReason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->b(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method

.method public static synthetic d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V
    .locals 0

    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->c(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    return-void
.end method

.method public static final e(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;)V
    .locals 3

    const-string v0, "reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "\u5317\u6597\u4e0d\u652f\u6301\u5c0f\u7184\u706b\uff0c"

    .line 2
    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->i()Z

    move-result v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    const/4 v0, 0x4

    .line 4
    invoke-static {v1, p0, v2, v0, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->j(BLcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;ILjava/lang/Object;)V

    goto :goto_0

    :cond_1
    const/4 p0, 0x1

    .line 5
    invoke-static {p0, v2, v1, v2}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->k(BLkotlin/jvm/b/a;ILjava/lang/Object;)V

    :goto_0
    return-void
.end method

.method public static final f(B)V
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    invoke-static {p0}, Ljava/lang/Byte;->valueOf(B)Ljava/lang/Byte;

    move-result-object p0

    const-string v0, "\u5317\u6597\u4e0d\u652f\u6301\u89e3\u9664\u5239\u8f66\uff0c"

    invoke-static {v0, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->i()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    const/4 v1, 0x0

    invoke-static {v0, p0, v1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->d(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;BB)V

    goto :goto_0

    .line 5
    :cond_1
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;->Companion:Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;

    invoke-virtual {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel$a;->c()Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;

    move-result-object v0

    invoke-static {v0, p0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->n(Lcn/mucang/android/jiakaoyi/teachingk2/safe/unbrake/BrakeModel;B)V

    :goto_0
    return-void
.end method

.method public static final g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;",
            "Lkotlin/jvm/b/a<",
            "Lkotlin/v;",
            ">;)V"
        }
    .end annotation

    const-string v0, "reason"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->c()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string p1, "\u5317\u6597\u4e0d\u652f\u6301\u89e3\u9664\u7184\u706b\uff0c"

    .line 2
    invoke-static {p1, p0}, Lkotlin/jvm/internal/r;->m(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/jiakaoyi/framework/log/f;->d(Ljava/lang/Object;)V

    return-void

    .line 3
    :cond_0
    sget-object v0, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->a:Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;

    invoke-direct {v0}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->i()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {v1, p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->h(BLcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v1, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/SafeCommandManager;->i(BLkotlin/jvm/b/a;)V

    :goto_0
    return-void
.end method

.method public static synthetic h(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;ILjava/lang/Object;)V
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    const/4 p1, 0x0

    .line 1
    :cond_0
    invoke-static {p0, p1}, Lcn/mucang/android/jiakaoyi/teachingk2/safe/a0;->g(Lcn/mucang/android/jiakaoyi/teachingk2/safe/FlameOutReason;Lkotlin/jvm/b/a;)V

    return-void
.end method

.method private final i()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/signal/com/p;->b()Z

    move-result v0

    if-nez v0, :cond_1

    invoke-static {}, Lcn/mucang/android/jiakaoyi/framework/utils/m;->b()Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    return v0
.end method
