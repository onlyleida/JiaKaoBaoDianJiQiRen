.class public final Lcn/mucang/android/core/identity/OaidProviderForInit$a;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcn/mucang/android/core/identity/OaidProviderForInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "a"
.end annotation

.annotation runtime Lkotlin/Metadata;
    d1 = {
        "\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0008\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\u0008\u0086\u0003\u0018\u00002\u00020\u0001B\u0007\u0008\u0002\u00a2\u0006\u0002\u0010\u0002J\u0010\u0010\u0003\u001a\u00020\u00042\u0006\u0010\u0005\u001a\u00020\u0006H\u0007\u00a8\u0006\u0007"
    }
    d2 = {
        "Lcn/mucang/android/core/identity/OaidProviderForInit$Companion;",
        "",
        "()V",
        "launch",
        "",
        "context",
        "Landroid/content/Context;",
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


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/o;)V
    .locals 0

    invoke-direct {p0}, Lcn/mucang/android/core/identity/OaidProviderForInit$a;-><init>()V

    return-void
.end method

.method public static synthetic a(Landroid/content/Context;)V
    .locals 0

    invoke-static {p0}, Lcn/mucang/android/core/identity/OaidProviderForInit$a;->c(Landroid/content/Context;)V

    return-void
.end method

.method private static final c(Landroid/content/Context;)V
    .locals 4

    const-string v0, "_oaid_req_"

    const-string v1, "$context"

    invoke-static {p0, v1}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/identity/l;->a:Lcn/mucang/android/core/identity/l;

    invoke-virtual {v1}, Lcn/mucang/android/core/identity/l;->get()Ljava/lang/String;

    move-result-object v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const-string v2, "core"

    if-nez v1, :cond_3

    :try_start_1
    new-instance v1, Lcn/mucang/android/core/identity/k;

    const-string v3, "MdidSdkHelper.InitSdk"

    invoke-direct {v1, v3}, Lcn/mucang/android/core/identity/k;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1}, Lcn/mucang/android/core/identity/k;->d()Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v1

    if-nez v1, :cond_1

    const-string p0, "oaid"

    .line 3
    invoke-static {p0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    return-void

    :cond_1
    const/4 v1, 0x2

    const/4 v3, 0x0

    .line 4
    invoke-static {v0, v3, v1, v3}, Lcn/mucang/android/core/identity/PrivacyDataManager;->d(Ljava/lang/String;Lcn/mucang/android/core/identity/cache/b;ILjava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    const-string p0, "OAID:\u4e0d\u542f\u52a8\u8fdb\u7a0b-time-limit"

    .line 5
    invoke-static {v2, p0}, Lcn/mucang/android/core/utils/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V

    return-void

    :cond_2
    const-string v1, "oaid init start"

    .line 7
    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->a(Ljava/lang/String;Ljava/lang/String;)I

    .line 8
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "content://"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, ".oaid.no.one.use/init"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 9
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object p0

    new-instance v2, Landroid/content/ContentValues;

    invoke-direct {v2}, Landroid/content/ContentValues;-><init>()V

    invoke-virtual {p0, v1, v2}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 10
    invoke-static {v0}, Lcn/mucang/android/core/identity/PrivacyDataManager;->q(Ljava/lang/String;)V

    goto :goto_1

    :cond_3
    :goto_0
    const-string p0, "OAID:\u4e0d\u542f\u52a8\u8fdb\u7a0b"

    .line 11
    invoke-static {v2, p0}, Lcn/mucang/android/core/utils/l0;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    invoke-static {}, Lcn/mucang/android/core/identity/l;->c()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    return-void

    :catchall_0
    move-exception p0

    .line 13
    invoke-virtual {p0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_1
    return-void
.end method


# virtual methods
.method public final declared-synchronized b(Landroid/content/Context;)V
    .locals 2

    monitor-enter p0

    :try_start_0
    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/r;->e(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->a()V

    .line 2
    new-instance v0, Ljava/lang/Thread;

    .line 3
    new-instance v1, Lcn/mucang/android/core/identity/e;

    invoke-direct {v1, p1}, Lcn/mucang/android/core/identity/e;-><init>(Landroid/content/Context;)V

    .line 4
    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 5
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method
