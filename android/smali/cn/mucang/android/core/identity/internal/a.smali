.class public final Lcn/mucang/android/core/identity/internal/a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0002J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/internal/AndroidIdUtil;",
        "",
        "()V",
        "getAndroidIdFromSystem",
        "",
        "getAndroidIdInternal",
        "core-lib_release"
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
.field public static final a:Lcn/mucang/android/core/identity/internal/a;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/identity/internal/a;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/internal/a;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/internal/a;->a:Lcn/mucang/android/core/identity/internal/a;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 2

    .line 1
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Application;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "android_id"

    invoke-static {v0, v1}, Landroid/provider/Settings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "getString(MucangConfig.g\u2026ttings.Secure.ANDROID_ID)"

    invoke-static {v0, v1}, Lkotlin/jvm/internal/r;->d(Ljava/lang/Object;Ljava/lang/String;)V

    return-object v0
.end method

.method public static final declared-synchronized b()Ljava/lang/String;
    .locals 4

    const-class v0, Lcn/mucang/android/core/identity/internal/a;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "androidId"

    .line 2
    invoke-static {v1}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string v1, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object v1

    :cond_0
    :try_start_1
    const-string v1, "_system_info_key_"

    const-string v2, "androidId"

    const/4 v3, 0x0

    .line 4
    invoke-static {v1, v2, v3}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 5
    invoke-static {v1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v2
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    if-eqz v2, :cond_1

    .line 6
    monitor-exit v0

    return-object v1

    .line 7
    :cond_1
    :try_start_2
    sget-object v1, Lcn/mucang/android/core/identity/internal/a;->a:Lcn/mucang/android/core/identity/internal/a;

    invoke-direct {v1}, Lcn/mucang/android/core/identity/internal/a;->a()Ljava/lang/String;

    move-result-object v1

    const-string v2, "_system_info_key_"

    const-string v3, "androidId"

    .line 8
    invoke-static {v2, v3, v1}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 9
    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
