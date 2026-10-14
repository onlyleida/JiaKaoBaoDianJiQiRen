.class public Lcn/mucang/android/core/identity/internal/DeviceIdUtil;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;
    }
.end annotation


# static fields
.field private static final a:Ljava/lang/String;

.field private static final b:Ljava/lang/String;

.field private static final c:Ljava/lang/String;

.field private static final d:Ljava/lang/String;

.field private static final e:[Ljava/lang/String;

.field private static final f:Ljava/util/concurrent/ExecutorService;

.field private static volatile g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

.field private static volatile h:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "system/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "mucangData"

    invoke-static {v1}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->a:Ljava/lang/String;

    .line 2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "storage/"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    sput-object v2, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->b:Ljava/lang/String;

    .line 3
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "tmp/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    sput-object v3, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->c:Ljava/lang/String;

    .line 4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "backups/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {v1}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    sput-object v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->d:Ljava/lang/String;

    const/4 v4, 0x4

    new-array v4, v4, [Ljava/lang/String;

    const/4 v5, 0x0

    aput-object v2, v4, v5

    const/4 v2, 0x1

    aput-object v0, v4, v2

    const/4 v0, 0x2

    aput-object v3, v4, v0

    const/4 v0, 0x3

    aput-object v1, v4, v0

    .line 5
    sput-object v4, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->e:[Ljava/lang/String;

    .line 6
    new-instance v0, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;

    const-string v1, "deviceId"

    invoke-direct {v0, v1}, Lcn/mucang/android/ui/framework/fetcher/ThreadPool$a;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Ljava/util/concurrent/Executors;->newSingleThreadExecutor(Ljava/util/concurrent/ThreadFactory;)Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    sput-object v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->f:Ljava/util/concurrent/ExecutorService;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic a()[Ljava/lang/String;
    .locals 1

    .line 1
    sget-object v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->e:[Ljava/lang/String;

    return-object v0
.end method

.method static synthetic b(Ljava/io/File;)Ljava/io/File;
    .locals 0

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->f(Ljava/io/File;)Ljava/io/File;

    move-result-object p0

    return-object p0
.end method

.method static synthetic c(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;Ljava/io/File;)Z
    .locals 0

    .line 1
    invoke-static {p0, p1}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->p(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;Ljava/io/File;)Z

    move-result p0

    return p0
.end method

.method static synthetic d()Z
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->l()Z

    move-result v0

    return v0
.end method

.method private static e(Ljava/io/File;)Ljava/io/File;
    .locals 2

    .line 1
    :try_start_0
    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception v0

    const-string v1, "DeviceIdManager"

    .line 2
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object p0
.end method

.method private static f(Ljava/io/File;)Ljava/io/File;
    .locals 4

    const-string v0, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    const/4 v1, 0x0

    if-nez v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->r()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/identity/i;->a()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcn/mucang/android/core/encode/Digests;->md5(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    new-instance v2, Ljava/io/File;

    invoke-static {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->e(Ljava/io/File;)Ljava/io/File;

    invoke-direct {v2, p0, v0}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 4
    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object p0

    invoke-virtual {p0}, Ljava/io/File;->mkdirs()Z

    .line 5
    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 6
    new-instance p0, Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->getParentFile()Ljava/io/File;

    move-result-object v0

    const-string v3, ".nomedia"

    invoke-direct {p0, v0, v3}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 7
    invoke-virtual {p0}, Ljava/io/File;->createNewFile()Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object v2

    :catch_0
    move-exception p0

    const-string v0, "DeviceIdManager"

    .line 8
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    return-object v1
.end method

.method private static g()Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;
    .locals 8

    .line 1
    :try_start_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    sget-object v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    if-eqz v1, :cond_0

    .line 3
    sget-object v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 4
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->m()Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5
    new-instance v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    invoke-direct {v1}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;-><init>()V

    .line 6
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    iput-wide v2, v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    .line 7
    invoke-static {}, Lcn/mucang/android/core/identity/i;->a()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->deviceId:Ljava/lang/String;

    .line 8
    :cond_1
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    const-string v2, "android.permission.READ_EXTERNAL_STORAGE"

    const-string v3, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 9
    filled-new-array {v2, v3}, [Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/utils/z;->b([Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 10
    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v2

    .line 11
    sget-object v3, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->e:[Ljava/lang/String;

    array-length v4, v3

    const/4 v5, 0x0

    :goto_0
    if-ge v5, v4, :cond_3

    aget-object v6, v3, v5

    .line 12
    new-instance v7, Ljava/io/File;

    invoke-direct {v7, v2, v6}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    invoke-static {v7}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->e(Ljava/io/File;)Ljava/io/File;

    invoke-static {v7}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->o(Ljava/io/File;)Ljava/util/List;

    move-result-object v6

    .line 13
    invoke-static {v6}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 14
    invoke-interface {v0, v6}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :cond_2
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 15
    :cond_3
    invoke-static {v0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h(Ljava/util/List;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-eqz v0, :cond_4

    move-object v1, v0

    :cond_4
    return-object v1

    :catch_0
    move-exception v0

    const-string v1, "DeviceIdManager"

    .line 16
    invoke-static {v1, v0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    const/4 v0, 0x0

    return-object v0
.end method

.method private static h(Ljava/util/List;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;",
            ">;)",
            "Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;"
        }
    .end annotation

    .line 1
    invoke-static {p0}, Lcn/mucang/android/core/utils/g;->b(Ljava/util/Collection;)Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_0

    return-object v1

    .line 2
    :cond_0
    invoke-interface {p0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p0

    :cond_1
    :goto_0
    invoke-interface {p0}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {p0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    if-eqz v1, :cond_2

    if-eqz v0, :cond_1

    .line 3
    iget-wide v2, v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    const-wide/16 v4, 0x0

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    iget-wide v4, v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    cmp-long v6, v2, v4

    if-gez v6, :cond_1

    :cond_2
    move-object v1, v0

    goto :goto_0

    :cond_3
    return-object v1
.end method

.method private static i()Ljava/lang/String;
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->l()Z

    move-result v0

    .line 2
    sget-object v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    if-eqz v1, :cond_0

    if-eqz v0, :cond_5

    sget-boolean v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h:Z

    if-nez v1, :cond_5

    .line 3
    :cond_0
    const-class v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;

    monitor-enter v1

    .line 4
    :try_start_0
    sget-object v2, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    if-eqz v2, :cond_1

    if-eqz v0, :cond_4

    sget-boolean v2, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h:Z

    if-nez v2, :cond_4

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g()Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object v2

    invoke-static {v2}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->s(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)Z

    if-nez v0, :cond_3

    .line 6
    sget-boolean v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h:Z

    if-eqz v0, :cond_2

    goto :goto_0

    :cond_2
    const/4 v0, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v0, 0x1

    :goto_1
    sput-boolean v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h:Z

    .line 7
    :cond_4
    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 8
    :cond_5
    sget-object v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    iget-object v0, v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->deviceId:Ljava/lang/String;

    return-object v0

    :catchall_0
    move-exception v0

    .line 9
    :try_start_1
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static j()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdProvider;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static k()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Lf/a/a/a/s/e;->d()Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "deviceId"

    .line 2
    invoke-static {v0}, Lf/a/a/a/s/e;->c(Ljava/lang/String;)V

    const-string v0, ""

    return-object v0

    .line 3
    :cond_0
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 4
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->i()Ljava/lang/String;

    move-result-object v0

    return-object v0

    .line 5
    :cond_1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->j()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static l()Z
    .locals 1

    const-string v0, "android.permission.READ_EXTERNAL_STORAGE"

    .line 1
    invoke-static {v0}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method private static m()Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;
    .locals 3

    const-string v0, "mcUniqueId.db"

    const-string v1, "mcUniqueId"

    const/4 v2, 0x0

    .line 1
    invoke-static {v0, v1, v2}, Lcn/mucang/android/core/utils/j0;->f(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->parse(Ljava/lang/String;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object v0

    return-object v0
.end method

.method private static n(Ljava/io/File;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;
    .locals 6

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->l()Z

    move-result v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    if-eqz p0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->length()J

    move-result-wide v2

    const-wide/16 v4, 0x800

    cmp-long v0, v2, v4

    if-ltz v0, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    :try_start_0
    new-instance v0, Ljava/lang/String;

    invoke-static {p0}, Lcn/mucang/android/core/utils/j;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/encode/a;->b(Ljava/lang/String;)[B

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-direct {v0, p0, v2}, Ljava/lang/String;-><init>([BLjava/lang/String;)V

    .line 3
    invoke-static {v0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->parse(Ljava/lang/String;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object p0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    return-object p0

    :catch_0
    move-exception p0

    const-string v0, "DeviceIdManager"

    .line 4
    invoke-static {v0, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_1
    :goto_0
    return-object v1
.end method

.method private static o(Ljava/io/File;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/io/File;",
            ")",
            "Ljava/util/List<",
            "Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;",
            ">;"
        }
    .end annotation

    .line 1
    invoke-static {}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->l()Z

    move-result v0

    if-eqz v0, :cond_2

    if-eqz p0, :cond_2

    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object p0

    if-nez p0, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 3
    array-length v1, p0

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p0, v2

    .line 4
    invoke-static {v3}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->n(Ljava/io/File;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0

    .line 5
    :cond_2
    :goto_1
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object p0

    return-object p0
.end method

.method private static p(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;Ljava/io/File;)Z
    .locals 7

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    const-string v1, "android.permission.WRITE_EXTERNAL_STORAGE"

    .line 1
    invoke-static {v1}, Lcn/mucang/android/core/utils/z;->a(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    :try_start_0
    const-class v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;

    monitor-enter v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {p1}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->n(Ljava/io/File;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 4
    iget-wide v2, v2, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    iget-wide v4, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    cmp-long v6, v2, v4

    if-lez v6, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    monitor-exit v1

    goto :goto_1

    .line 6
    :cond_2
    :goto_0
    invoke-virtual {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->toString()Ljava/lang/String;

    move-result-object p0

    const-string v2, "UTF-8"

    invoke-virtual {p0, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B

    move-result-object p0

    invoke-static {p0}, Lcn/mucang/android/core/encode/a;->d([B)Ljava/lang/String;

    move-result-object p0

    invoke-static {p0, p1}, Lcn/mucang/android/core/utils/j;->s(Ljava/lang/String;Ljava/io/File;)V

    const/4 p0, 0x1

    .line 7
    monitor-exit v1

    return p0

    :catchall_0
    move-exception p0

    .line 8
    monitor-exit v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "DeviceIdManager"

    .line 9
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :cond_3
    :goto_1
    return v0
.end method

.method static q(Ljava/lang/String;Z)V
    .locals 1

    .line 1
    :try_start_0
    invoke-static {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->parse(Ljava/lang/String;)Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    move-result-object p0

    .line 2
    const-class v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;

    monitor-enter v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 3
    :try_start_1
    invoke-static {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->s(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)Z

    move-result p0

    if-eqz p0, :cond_2

    .line 4
    sget-boolean p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h:Z

    if-nez p0, :cond_1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 p0, 0x1

    :goto_1
    sput-boolean p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->h:Z

    .line 5
    :cond_2
    monitor-exit v0

    goto :goto_2

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw p0
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    :catch_0
    move-exception p0

    const-string p1, "DeviceIdManager"

    .line 6
    invoke-static {p1, p0}, Lcn/mucang/android/core/utils/t;->c(Ljava/lang/String;Ljava/lang/Throwable;)I

    :goto_2
    return-void
.end method

.method private static r(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)V
    .locals 3

    .line 1
    invoke-static {}, Lcn/mucang/android/core/utils/a0;->e()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-virtual {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->toString()Ljava/lang/String;

    move-result-object v0

    .line 3
    sget-object v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->f:Ljava/util/concurrent/ExecutorService;

    new-instance v2, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;

    invoke-direct {v2, v0, p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$a;-><init>(Ljava/lang/String;Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)V

    invoke-interface {v1, v2}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private static declared-synchronized s(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)Z
    .locals 6

    const-class v0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;

    monitor-enter v0

    if-eqz p0, :cond_1

    .line 1
    :try_start_0
    sget-object v1, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    if-eqz v1, :cond_0

    iget-wide v1, p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    sget-object v3, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    iget-wide v3, v3, Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;->time:J

    cmp-long v5, v1, v3

    if-gez v5, :cond_1

    .line 2
    :cond_0
    sput-object p0, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->g:Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;

    .line 3
    invoke-static {p0}, Lcn/mucang/android/core/identity/internal/DeviceIdUtil;->r(Lcn/mucang/android/core/identity/internal/DeviceIdUtil$DeviceIdData;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    const/4 p0, 0x1

    .line 4
    monitor-exit v0

    return p0

    :catchall_0
    move-exception p0

    monitor-exit v0

    throw p0

    :cond_1
    const/4 p0, 0x0

    .line 5
    monitor-exit v0

    return p0
.end method
