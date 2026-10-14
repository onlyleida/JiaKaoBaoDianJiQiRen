.class public final Lcn/mucang/android/core/identity/internal/c;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u000e\n\u0002\u0008\u0002\u0008\u00c1\u0002\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0008\u0010\u0003\u001a\u00020\u0004H\u0003J\n\u0010\u0005\u001a\u0004\u0018\u00010\u0004H\u0007\u00a8\u0006\u0006"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/internal/ImeiUtil;",
        "",
        "()V",
        "doGetIMEI",
        "",
        "getImeiInternal",
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
.field public static final a:Lcn/mucang/android/core/identity/internal/c;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    new-instance v0, Lcn/mucang/android/core/identity/internal/c;

    invoke-direct {v0}, Lcn/mucang/android/core/identity/internal/c;-><init>()V

    sput-object v0, Lcn/mucang/android/core/identity/internal/c;->a:Lcn/mucang/android/core/identity/internal/c;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private final a()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/l;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "77777777777777777777777777777777"

    return-object v0

    :cond_0
    const/4 v0, 0x0

    .line 2
    :try_start_0
    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->getContext()Landroid/app/Application;

    move-result-object v1

    const-string v2, "phone"

    .line 3
    invoke-virtual {v1, v2}, Landroid/app/Application;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 4
    check-cast v1, Landroid/telephony/TelephonyManager;

    .line 5
    invoke-virtual {v1}, Landroid/telephony/TelephonyManager;->getDeviceId()Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 6
    :cond_1
    new-instance v1, Ljava/lang/NullPointerException;

    const-string v2, "null cannot be cast to non-null type android.telephony.TelephonyManager"

    invoke-direct {v1, v2}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :catch_0
    nop

    .line 7
    :goto_0
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->e(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    const-string v0, "123"

    .line 8
    :cond_2
    invoke-static {v0}, Lkotlin/jvm/internal/r;->c(Ljava/lang/Object;)V

    return-object v0
.end method


# virtual methods
.method public final declared-synchronized b()Ljava/lang/String;
    .locals 3

    monitor-enter p0

    .line 1
    :try_start_0
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "imei"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string v0, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3
    monitor-exit p0

    return-object v0

    .line 4
    :cond_0
    :try_start_1
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x1d

    if-lt v0, v1, :cond_1

    const-string v0, "123"
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 5
    monitor-exit p0

    return-object v0

    :cond_1
    :try_start_2
    const-string v0, "android.permission.READ_PHONE_STATE"

    .line 6
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_2

    const-string v0, "123"
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 7
    monitor-exit p0

    return-object v0

    :cond_2
    :try_start_3
    const-string v0, "_system_info_key_"

    const-string v1, "imei"

    const/4 v2, 0x0

    .line 8
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 9
    invoke-static {v0}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    if-eqz v1, :cond_3

    .line 10
    monitor-exit p0

    return-object v0

    .line 11
    :cond_3
    :try_start_4
    invoke-direct {p0}, Lcn/mucang/android/core/identity/internal/c;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "_system_info_key_"

    const-string v2, "imei"

    .line 12
    invoke-static {v1, v2, v0}, Lcn/mucang/android/core/utils/j0;->k(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    .line 13
    monitor-exit p0

    return-object v0

    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0
.end method
