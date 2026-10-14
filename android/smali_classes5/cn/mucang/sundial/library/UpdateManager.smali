.class public final Lcn/mucang/sundial/library/UpdateManager;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {
        0x1,
        0x0,
        0x3
    }
    d1 = {
        "\u00006\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0006\n\u0002\u0010\t\n\u0002\u0008\u0003\n\u0002\u0010\u000e\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\t\u0008\u0002\u00a2\u0006\u0004\u0008\u001a\u0010\u0004J\u000f\u0010\u0003\u001a\u00020\u0002H\u0002\u00a2\u0006\u0004\u0008\u0003\u0010\u0004J\u001f\u0010\t\u001a\u00020\u00022\u0006\u0010\u0006\u001a\u00020\u00052\u0006\u0010\u0008\u001a\u00020\u0007H\u0002\u00a2\u0006\u0004\u0008\t\u0010\nJ\r\u0010\u000b\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000b\u0010\u0004J\r\u0010\u000c\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\u000c\u0010\u0004J\r\u0010\r\u001a\u00020\u0002\u00a2\u0006\u0004\u0008\r\u0010\u0004J\u0017\u0010\u0010\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016\u00a2\u0006\u0004\u0008\u0010\u0010\u0011R\u0016\u0010\u0013\u001a\u00020\u00128\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0013\u0010\u0014R\u0016\u0010\u0015\u001a\u00020\u00128\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0015\u0010\u0014R\u0016\u0010\u0016\u001a\u00020\u00128\u0002@\u0002X\u0082T\u00a2\u0006\u0006\n\u0004\u0008\u0016\u0010\u0014R\u0018\u0010\u0018\u001a\u0004\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u0018\u0010\u0019\u00a8\u0006\u001b"
    }
    d2 = {
        "Lcn/mucang/sundial/library/UpdateManager;",
        "Lcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;",
        "Lkotlin/v;",
        "checkUpdate",
        "()V",
        "Lcom/blankj/utilcode/util/a$a;",
        "info",
        "Ljava/io/File;",
        "updateApk",
        "upgradeApk",
        "(Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V",
        "startCheckUpdate",
        "stopCheckUpdate",
        "uploadCurrentVersionIfNeed",
        "",
        "elapsedTime",
        "onTick",
        "(J)V",
        "",
        "KEY_VERSION_CODE",
        "Ljava/lang/String;",
        "KEY_VERSION_NAME",
        "PREF_NAME",
        "Lcn/mucang/sundial/android/timer/SundialTimer;",
        "timer",
        "Lcn/mucang/sundial/android/timer/SundialTimer;",
        "<init>",
        "library_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x1,
        0xf
    }
.end annotation


# static fields
.field public static final INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

.field private static final KEY_VERSION_CODE:Ljava/lang/String; = "version_code"

.field private static final KEY_VERSION_NAME:Ljava/lang/String; = "version_name"

.field private static final PREF_NAME:Ljava/lang/String; = "update_version"

.field private static timer:Lcn/mucang/sundial/android/timer/SundialTimer;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcn/mucang/sundial/library/UpdateManager;

    invoke-direct {v0}, Lcn/mucang/sundial/library/UpdateManager;-><init>()V

    sput-object v0, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final synthetic access$upgradeApk(Lcn/mucang/sundial/library/UpdateManager;Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcn/mucang/sundial/library/UpdateManager;->upgradeApk(Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V

    return-void
.end method

.method private final checkUpdate()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager$checkUpdate$1;

    invoke-static {v0}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    return-void
.end method

.method private final upgradeApk(Lcom/blankj/utilcode/util/a$a;Ljava/io/File;)V
    .locals 3

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\u5f00\u59cb\u66f4\u65b0"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/a$a;->b()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " v"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/a$a;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    const-string v0, "\u9759\u9ed8\u5b89\u88c5"

    .line 2
    invoke-static {v0}, Lcn/mucang/sundial/android/log/SundialLog;->normal(Ljava/lang/Object;)V

    .line 3
    sget-object v0, Lcn/mucang/sundial/library/util/GlobalData;->INSTANCE:Lcn/mucang/sundial/library/util/GlobalData;

    invoke-virtual {v0}, Lcn/mucang/sundial/library/util/GlobalData;->getDevice()Lcn/mucang/sundial/library/device/SundialDevice;

    move-result-object v0

    invoke-static {}, Lcom/blankj/utilcode/util/Utils;->d()Landroid/app/Application;

    move-result-object v1

    const-string v2, "Utils.getApp()"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Lcn/mucang/sundial/library/device/SundialDevice;->deviceHelper(Landroid/content/Context;)Lcn/mucang/sundial/library/device/DeviceHelper;

    move-result-object v0

    invoke-virtual {p1}, Lcom/blankj/utilcode/util/a$a;->c()Ljava/lang/String;

    move-result-object p1

    const-string v1, "info.packageName"

    invoke-static {p1, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v0, p2, p1}, Lcn/mucang/sundial/library/device/DeviceHelper;->silentInstall(Ljava/io/File;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public onTick(J)V
    .locals 0

    .line 1
    :try_start_0
    sget-object p1, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 2
    sget-object p1, Lcn/mucang/sundial/library/util/LoginUtil;->INSTANCE:Lcn/mucang/sundial/library/util/LoginUtil;

    invoke-virtual {p1}, Lcn/mucang/sundial/library/util/LoginUtil;->studentLoginSuccess()Z

    move-result p1

    if-nez p1, :cond_0

    .line 3
    sget-object p1, Lcn/mucang/sundial/library/UpdateManager;->INSTANCE:Lcn/mucang/sundial/library/UpdateManager;

    invoke-direct {p1}, Lcn/mucang/sundial/library/UpdateManager;->checkUpdate()V

    .line 4
    :cond_0
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;

    .line 5
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    sget-object p2, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p1

    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    :goto_0
    return-void
.end method

.method public final startCheckUpdate()V
    .locals 7

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/UpdateManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcn/mucang/sundial/android/timer/SundialTimer;

    const-wide/32 v2, 0x927c0

    const-wide/32 v4, 0x927c0

    move-object v1, v0

    move-object v6, p0

    invoke-direct/range {v1 .. v6}, Lcn/mucang/sundial/android/timer/SundialTimer;-><init>(JJLcn/mucang/sundial/android/timer/SundialTimer$OnTickListener;)V

    .line 3
    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->start()V

    .line 4
    sput-object v0, Lcn/mucang/sundial/library/UpdateManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    :cond_0
    return-void
.end method

.method public final stopCheckUpdate()V
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/sundial/library/UpdateManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcn/mucang/sundial/android/timer/SundialTimer;->stop()V

    const/4 v0, 0x0

    .line 3
    sput-object v0, Lcn/mucang/sundial/library/UpdateManager;->timer:Lcn/mucang/sundial/android/timer/SundialTimer;

    :cond_0
    return-void
.end method

.method public final uploadCurrentVersionIfNeed()V
    .locals 7

    const-string v0, "update_version"

    const-string v1, "version_name"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getString(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "version_code"

    const/4 v3, -0x1

    .line 2
    invoke-static {v0, v2, v3}, Lcn/mucang/sundial/android/tcp/utils/PreferenceUtils;->getInt(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    .line 3
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->u()Ljava/lang/String;

    move-result-object v2

    .line 4
    invoke-static {}, Lcn/mucang/android/core/utils/o0;->t()I

    move-result v3

    const/4 v4, 0x0

    const/4 v5, 0x1

    if-ltz v0, :cond_2

    if-eqz v1, :cond_1

    .line 5
    invoke-interface {v1}, Ljava/lang/CharSequence;->length()I

    move-result v6

    if-nez v6, :cond_0

    goto :goto_0

    :cond_0
    const/4 v6, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v6, 0x1

    :goto_1
    if-eqz v6, :cond_3

    :cond_2
    const/4 v4, 0x1

    .line 6
    :cond_3
    invoke-static {v2, v1}, Lkotlin/jvm/internal/r;->a(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v6

    xor-int/2addr v6, v5

    if-nez v6, :cond_5

    if-eq v3, v0, :cond_4

    goto :goto_2

    :cond_4
    move v5, v4

    :cond_5
    :goto_2
    if-eqz v5, :cond_6

    .line 7
    new-instance v4, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;

    invoke-direct {v4, v1, v0, v2, v3}, Lcn/mucang/sundial/library/UpdateManager$uploadCurrentVersionIfNeed$1;-><init>(Ljava/lang/String;ILjava/lang/String;I)V

    invoke-static {v4}, Lcn/mucang/android/core/config/MucangConfig;->f(Ljava/lang/Runnable;)V

    :cond_6
    return-void
.end method
