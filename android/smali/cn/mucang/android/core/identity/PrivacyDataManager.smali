.class public final Lcn/mucang/android/core/identity/PrivacyDataManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000:\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000b\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u000b\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0010\u0008\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0002\u0008\u0003\u0008\u00c6\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0007J\u001a\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0008\u001a\u00020\tH\u0007J\n\u0010\n\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010\u000b\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010\u000c\u001a\u0004\u0018\u00010\u0007H\u0007J\n\u0010\r\u001a\u0004\u0018\u00010\u0007H\u0007J\u0008\u0010\u000e\u001a\u00020\u0007H\u0007J\n\u0010\u000f\u001a\u0004\u0018\u00010\u0007H\u0007J\u0012\u0010\u0010\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004H\u0007J\u0012\u0010\u0012\u001a\u00020\u00072\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004H\u0007J\n\u0010\u0013\u001a\u0004\u0018\u00010\u0007H\u0007J(\u0010\u0014\u001a\u0004\u0018\u00010\u00152\u0008\u0010\u0016\u001a\u0004\u0018\u00010\u00072\u0008\u0008\u0002\u0010\u0017\u001a\u00020\u00182\u0008\u0008\u0002\u0010\u0011\u001a\u00020\u0004H\u0007J\u0010\u0010\u0019\u001a\u00020\t2\u0006\u0010\u0011\u001a\u00020\u0004H\u0002J\u0010\u0010\u001a\u001a\u00020\u001b2\u0006\u0010\u001c\u001a\u00020\u0004H\u0007J\u0010\u0010\u001d\u001a\u00020\u001b2\u0006\u0010\u0006\u001a\u00020\u0007H\u0007\u00a8\u0006\u001e"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/PrivacyDataManager;",
        "",
        "()V",
        "canAutoFillUserData",
        "",
        "canDoPrivacyRequest",
        "key",
        "",
        "cacheInvalidStrategy",
        "Lcn/mucang/android/core/identity/cache/CacheInvalidStrategy;",
        "getAndroidId",
        "getAppUser",
        "getDeviceId",
        "getIMEI",
        "getIMSI",
        "getMac",
        "getNetworkName",
        "needUpToDate",
        "getNetworkTypeString",
        "getOaid",
        "getPackageInfo",
        "Landroid/content/pm/PackageInfo;",
        "packageName",
        "flags",
        "",
        "getStrategy",
        "markAutoFillUserData",
        "",
        "isFillUserData",
        "markPrivacyRequested",
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
.field public static final a:Lcn/mucang/android/core/identity/PrivacyDataManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/PrivacyDataManager;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/PrivacyDataManager;->a:Lcn/mucang/android/core/identity/PrivacyDataManager;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static final a()Z
    .locals 1

    .line 1
    invoke-static {}, Lf/a/a/a/d;->d()Z

    move-result v0

    return v0
.end method

.method public static final b(Ljava/lang/String;)Z
    .locals 2

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    const/4 v1, 0x2

    invoke-static {p0, v0, v1, v0}, Lcn/mucang/android/core/identity/PrivacyDataManager;->d(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;ILjava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public static final c(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;)Z
    .locals 1

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "cacheInvalidStrategy"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/PrivacyDataManager$canDoPrivacyRequest$1;->INSTANCE:Lcn/mucang/android/core/identity/PrivacyDataManager$canDoPrivacyRequest$1;

    invoke-static {p0, p1, v0}, Lcn/mucang/android/core/identity/cache/a;->b(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;Lkotlin/jvm/b/a;)Ljava/lang/String;

    move-result-object p0

    if-eqz p0, :cond_1

    .line 2
    invoke-static {p0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

    move-result p0

    if-eqz p0, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    return p0
.end method

.method public static synthetic d(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;ILjava/lang/Object;)Z
    .locals 0

    and-int/lit8 p2, p2, 0x2

    if-eqz p2, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/android/core/identity/cache/b;->a:Lcn/mucang/android/core/identity/cache/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/core/identity/cache/b$a;->b()Lcn/mucang/android/core/identity/cache/d;

    move-result-object p1

    .line 2
    :cond_0
    invoke-static {p0, p1}, Lcn/mucang/android/core/identity/PrivacyDataManager;->c(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;)Z

    move-result p0

    return p0
.end method

.method public static final declared-synchronized e()Ljava/lang/String;
    .locals 2

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/identity/internal/a;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized f()Ljava/lang/String;
    .locals 2

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/identity/internal/b;->a:Lcn/mucang/android/core/identity/internal/b;

    invoke-virtual {v1}, Lcn/mucang/android/core/identity/internal/b;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized g()Ljava/lang/String;
    .locals 2

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->k()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized h()Ljava/lang/String;
    .locals 2

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/identity/internal/c;->a:Lcn/mucang/android/core/identity/internal/c;

    invoke-virtual {v1}, Lcn/mucang/android/core/identity/internal/c;->b()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized i()Ljava/lang/String;
    .locals 2

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/identity/internal/d;->a:Lcn/mucang/android/core/identity/internal/d;

    invoke-virtual {v1}, Lcn/mucang/android/core/identity/internal/d;->a()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final declared-synchronized j(Z)Ljava/lang/String;
    .locals 3

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "networkName"

    .line 2
    invoke-static {p0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "getNetworkName"

    .line 4
    sget-object v2, Lcn/mucang/android/core/identity/PrivacyDataManager;->a:Lcn/mucang/android/core/identity/PrivacyDataManager;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/identity/PrivacyDataManager;->p(Z)Lcn/mucang/android/core/identity/cache/b;

    move-result-object p0

    .line 5
    sget-object v2, Lcn/mucang/android/core/identity/PrivacyDataManager$getNetworkName$1;->INSTANCE:Lcn/mucang/android/core/identity/PrivacyDataManager$getNetworkName$1;

    invoke-static {v1, p0, v2}, Lcn/mucang/android/core/identity/cache/a;->b(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;Lkotlin/jvm/b/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    const-string p0, "UNKOWN"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic k(ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/identity/PrivacyDataManager;->j(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized l(Z)Ljava/lang/String;
    .locals 3

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v1

    if-nez v1, :cond_0

    const-string p0, "getNetworkTypeString"

    .line 2
    invoke-static {p0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string p0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit v0

    return-object p0

    :cond_0
    :try_start_1
    const-string v1, "getNetworkTypeString"

    .line 4
    sget-object v2, Lcn/mucang/android/core/identity/PrivacyDataManager;->a:Lcn/mucang/android/core/identity/PrivacyDataManager;

    invoke-direct {v2, p0}, Lcn/mucang/android/core/identity/PrivacyDataManager;->p(Z)Lcn/mucang/android/core/identity/cache/b;

    move-result-object p0

    .line 5
    sget-object v2, Lcn/mucang/android/core/identity/PrivacyDataManager$getNetworkTypeString$1;->INSTANCE:Lcn/mucang/android/core/identity/PrivacyDataManager$getNetworkTypeString$1;

    invoke-static {v1, p0, v2}, Lcn/mucang/android/core/identity/cache/a;->b(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;Lkotlin/jvm/b/a;)Ljava/lang/String;

    move-result-object p0

    if-nez p0, :cond_1

    .line 6
    sget-object p0, Lcn/mucang/android/core/identity/internal/e;->a:Lcn/mucang/android/core/identity/internal/e;

    invoke-virtual {p0}, Lcn/mucang/android/core/identity/internal/e;->a()Ljava/lang/String;

    move-result-object p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 7
    :cond_1
    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0
.end method

.method public static synthetic m(ZILjava/lang/Object;)Ljava/lang/String;
    .locals 0

    and-int/lit8 p1, p1, 0x1

    if-eqz p1, :cond_0

    const/4 p0, 0x0

    .line 1
    :cond_0
    invoke-static {p0}, Lcn/mucang/android/core/identity/PrivacyDataManager;->l(Z)Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method

.method public static final declared-synchronized n()Ljava/lang/String;
    .locals 2

    const-class v0, Lcn/mucang/android/core/identity/PrivacyDataManager;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/identity/l;->a:Lcn/mucang/android/core/identity/l;

    invoke-virtual {v1}, Lcn/mucang/android/core/identity/l;->get()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method public static final o(Ljava/lang/String;IZ)Landroid/content/pm/PackageInfo;
    .locals 3

    if-eqz p0, :cond_1

    .line 1
    invoke-static {p0}, Lkotlin/text/l;->r(Ljava/lang/CharSequence;)Z

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
    const/4 v1, 0x0

    if-eqz v0, :cond_2

    return-object v1

    .line 2
    :cond_2
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    const-string v2, "getPackageInfo"

    if-nez v0, :cond_3

    .line 3
    invoke-static {v2}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    return-object v1

    .line 4
    :cond_3
    sget-object v0, Lcn/mucang/android/core/identity/PrivacyDataManager;->a:Lcn/mucang/android/core/identity/PrivacyDataManager;

    invoke-direct {v0, p2}, Lcn/mucang/android/core/identity/PrivacyDataManager;->p(Z)Lcn/mucang/android/core/identity/cache/b;

    move-result-object p2

    invoke-static {v2, p2}, Lcn/mucang/android/core/identity/PrivacyDataManager;->c(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;)Z

    move-result p2

    if-nez p2, :cond_4

    return-object v1

    .line 5
    :cond_4
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object p2

    if-nez p2, :cond_5

    return-object v1

    .line 6
    :cond_5
    :try_start_0
    sget-object v0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    .line 7
    invoke-virtual {p2}, Landroid/app/Application;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object p2

    invoke-virtual {p2, p0, p1}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;

    move-result-object p0

    .line 8
    invoke-static {v2}, Lcn/mucang/android/core/identity/PrivacyDataManager;->q(Ljava/lang/String;)V

    .line 9
    sget-object p1, Lkotlin/v;->a:Lkotlin/v;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 10
    :try_start_1
    invoke-static {p1}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_3

    :catchall_0
    move-exception p1

    move-object v1, p0

    goto :goto_2

    :catchall_1
    move-exception p1

    :goto_2
    sget-object p0, Lkotlin/Result;->Companion:Lkotlin/Result$a;

    invoke-static {p1}, Lkotlin/k;->a(Ljava/lang/Throwable;)Ljava/lang/Object;

    move-result-object p0

    invoke-static {p0}, Lkotlin/Result;->constructor-impl(Ljava/lang/Object;)Ljava/lang/Object;

    move-object p0, v1

    :goto_3
    return-object p0
.end method

.method private final p(Z)Lcn/mucang/android/core/identity/cache/b;
    .locals 0

    if-eqz p1, :cond_0

    .line 1
    sget-object p1, Lcn/mucang/android/core/identity/cache/b;->a:Lcn/mucang/android/core/identity/cache/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/core/identity/cache/b$a;->a()Lcn/mucang/android/core/identity/cache/c;

    move-result-object p1

    goto :goto_0

    .line 2
    :cond_0
    sget-object p1, Lcn/mucang/android/core/identity/cache/b;->a:Lcn/mucang/android/core/identity/cache/b$a;

    invoke-virtual {p1}, Lcn/mucang/android/core/identity/cache/b$a;->b()Lcn/mucang/android/core/identity/cache/d;

    move-result-object p1

    :goto_0
    return-object p1
.end method

.method public static final q(Ljava/lang/String;)V
    .locals 1

    const-string v0, "key"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "true"

    .line 1
    invoke-static {p0, v0}, Lcn/mucang/android/core/identity/cache/a;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
