.class public Lcom/amap/api/mapcore/util/c0;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/c0$d;,
        Lcom/amap/api/mapcore/util/c0$e;
    }
.end annotation


# static fields
.field public static n:Ljava/lang/String; = ""

.field public static o:Z = false

.field private static volatile p:Lcom/amap/api/mapcore/util/c0; = null

.field public static q:Ljava/lang/String; = ""


# instance fields
.field private a:Landroid/content/Context;

.field private b:Z

.field c:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/az;",
            ">;"
        }
    .end annotation
.end field

.field private d:Lcom/amap/api/mapcore/util/c0$d;

.field private e:Lcom/amap/api/mapcore/util/l0;

.field private f:Lcom/amap/api/mapcore/util/r0;

.field private g:Ljava/util/concurrent/ExecutorService;

.field private h:Ljava/util/concurrent/ExecutorService;

.field private i:Ljava/util/concurrent/ExecutorService;

.field j:Lcom/amap/api/mapcore/util/c0$e;

.field public k:Lcom/amap/api/mapcore/util/g0;

.field l:Lcom/amap/api/mapcore/util/i0;

.field m:Lcom/amap/api/mapcore/util/f0;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x1

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c0;->b:Z

    .line 3
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    const/4 v0, 0x0

    .line 4
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->g:Ljava/util/concurrent/ExecutorService;

    .line 5
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->h:Ljava/util/concurrent/ExecutorService;

    .line 6
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->i:Ljava/util/concurrent/ExecutorService;

    .line 7
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->j:Lcom/amap/api/mapcore/util/c0$e;

    .line 8
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->m:Lcom/amap/api/mapcore/util/f0;

    .line 9
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    return-void
.end method

.method static synthetic B(Lcom/amap/api/mapcore/util/c0;)Z
    .locals 0

    .line 1
    iget-boolean p0, p0, Lcom/amap/api/mapcore/util/c0;->b:Z

    return p0
.end method

.method public static D()V
    .locals 1

    const/4 v0, 0x0

    .line 1
    sput-object v0, Lcom/amap/api/mapcore/util/c0;->p:Lcom/amap/api/mapcore/util/c0;

    const/4 v0, 0x1

    .line 2
    sput-boolean v0, Lcom/amap/api/mapcore/util/c0;->o:Z

    return-void
.end method

.method private E(Lcom/amap/api/mapcore/util/az;)V
    .locals 11
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c0;->N()V

    if-eqz p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->i:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_0

    .line 3
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    .line 4
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 5
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    int-to-long v4, v0

    new-instance v8, Lcom/amap/api/mapcore/util/e3;

    const-string v0, "AMapOfflineDownload"

    invoke-direct {v8, v0}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v2, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v10, p0, Lcom/amap/api/mapcore/util/c0;->i:Ljava/util/concurrent/ExecutorService;

    .line 6
    :cond_0
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->i:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/c0$c;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/c0$c;-><init>(Lcom/amap/api/mapcore/util/c0;Lcom/amap/api/mapcore/util/az;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "startDownload"

    const-string v1, "downloadExcecRunnable"

    .line 7
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 8
    :cond_1
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public static G(Ljava/lang/String;)V
    .locals 0

    .line 1
    sput-object p0, Lcom/amap/api/mapcore/util/c0;->n:Ljava/lang/String;

    return-void
.end method

.method private H()V
    .locals 3

    :try_start_0
    const-string v0, "000001"

    .line 1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/r0;->a(Ljava/lang/String;)Lcom/amap/api/mapcore/util/m0;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/r0;->m(Ljava/lang/String;)V

    const-string v0, "100000"

    .line 3
    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/p0;->a(Ljava/lang/String;)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r0;->e(Lcom/amap/api/mapcore/util/m0;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "OfflineDownloadManager"

    const-string v2, "changeBadCase"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method private I(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lorg/json/JSONException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/amap/api/mapcore/util/z0;->f(Ljava/lang/String;Landroid/content/Context;)Ljava/util/List;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 2
    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g0;->i(Ljava/util/List;)V

    :cond_1
    :goto_0
    return-void
.end method

.method private J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/az;

    .line 4
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 5
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 6
    :cond_2
    monitor-exit v1

    return-object v3

    .line 7
    :cond_3
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_0
    return-object v0
.end method

.method private K()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-static {v2}, Lcom/amap/api/mapcore/util/r3;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "offlinemapv4.png"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v1

    if-nez v1, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/z0;->d(Landroid/content/Context;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    .line 5
    :cond_1
    invoke-static {v0}, Lcom/amap/api/mapcore/util/z0;->n(Ljava/io/File;)Ljava/lang/String;

    move-result-object v1

    :goto_0
    if-eqz v1, :cond_3

    .line 6
    :try_start_0
    invoke-direct {p0, v1}, Lcom/amap/api/mapcore/util/c0;->I(Ljava/lang/String;)V
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    :catch_0
    move-exception v1

    .line 7
    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 8
    invoke-virtual {v0}, Ljava/io/File;->delete()Z

    :cond_2
    const-string v0, "MapDownloadManager"

    const-string v2, "paseJson io"

    .line 9
    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-virtual {v1}, Lorg/json/JSONException;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method

.method private L(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;
    .locals 5

    const/4 v0, 0x0

    if-eqz p1, :cond_3

    .line 1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/4 v2, 0x1

    if-ge v1, v2, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    monitor-enter v1

    .line 3
    :try_start_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/mapcore/util/az;

    .line 4
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 5
    monitor-exit v1

    return-object v3

    .line 6
    :cond_2
    monitor-exit v1

    return-object v0

    :catchall_0
    move-exception p1

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-object v0
.end method

.method private M()V
    .locals 6

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r0;->c()Ljava/util/ArrayList;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/m0;

    if-eqz v1, :cond_0

    .line 3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->b()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->f()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    const/4 v3, 0x1

    if-ge v2, v3, :cond_1

    goto :goto_0

    .line 5
    :cond_1
    iget v2, v1, Lcom/amap/api/mapcore/util/p0;->l:I

    const/4 v3, 0x4

    const/4 v4, 0x7

    if-eq v2, v3, :cond_2

    if-eq v2, v4, :cond_2

    if-ltz v2, :cond_2

    const/4 v2, 0x3

    .line 6
    iput v2, v1, Lcom/amap/api/mapcore/util/p0;->l:I

    .line 7
    :cond_2
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->b()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Lcom/amap/api/mapcore/util/c0;->J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object v2

    if-nez v2, :cond_3

    goto :goto_0

    .line 8
    :cond_3
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->d()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_4

    .line 9
    sget-object v5, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    invoke-direct {p0, v5, v3}, Lcom/amap/api/mapcore/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 10
    invoke-virtual {v2, v4}, Lcom/amap/api/mapcore/util/az;->q(I)V

    goto :goto_1

    .line 11
    :cond_4
    iget v3, v1, Lcom/amap/api/mapcore/util/p0;->l:I

    invoke-virtual {v2, v3}, Lcom/amap/api/mapcore/util/az;->q(I)V

    .line 12
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->i()I

    move-result v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setCompleteCode(I)V

    .line 13
    :goto_1
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_5

    .line 14
    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->d()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    .line 15
    :cond_5
    iget-object v3, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/p0;->f()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v3, v1}, Lcom/amap/api/mapcore/util/r0;->j(Ljava/lang/String;)Ljava/util/List;

    move-result-object v1

    .line 16
    new-instance v3, Ljava/lang/StringBuffer;

    invoke-direct {v3}, Ljava/lang/StringBuffer;-><init>()V

    .line 17
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 18
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    const-string v4, ";"

    .line 19
    invoke-virtual {v3, v4}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_2

    .line 20
    :cond_6
    invoke-virtual {v3}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/az;->t(Ljava/lang/String;)V

    .line 21
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    if-eqz v1, :cond_0

    .line 22
    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/g0;->c(Lcom/amap/api/mapcore/util/az;)V

    goto/16 :goto_0

    :cond_7
    return-void
.end method

.method private N()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->t0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/c0;Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object p0

    return-object p0
.end method

.method public static b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;
    .locals 2

    .line 1
    sget-object v0, Lcom/amap/api/mapcore/util/c0;->p:Lcom/amap/api/mapcore/util/c0;

    if-nez v0, :cond_1

    .line 2
    const-class v0, Lcom/amap/api/mapcore/util/c0;

    monitor-enter v0

    .line 3
    :try_start_0
    sget-object v1, Lcom/amap/api/mapcore/util/c0;->p:Lcom/amap/api/mapcore/util/c0;

    if-nez v1, :cond_0

    .line 4
    sget-boolean v1, Lcom/amap/api/mapcore/util/c0;->o:Z

    if-nez v1, :cond_0

    .line 5
    new-instance v1, Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {p0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p0

    invoke-direct {v1, p0}, Lcom/amap/api/mapcore/util/c0;-><init>(Landroid/content/Context;)V

    sput-object v1, Lcom/amap/api/mapcore/util/c0;->p:Lcom/amap/api/mapcore/util/c0;

    .line 6
    :cond_0
    monitor-exit v0

    goto :goto_0

    :catchall_0
    move-exception p0

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0

    .line 7
    :cond_1
    :goto_0
    sget-object p0, Lcom/amap/api/mapcore/util/c0;->p:Lcom/amap/api/mapcore/util/c0;

    return-object p0
.end method

.method static synthetic c(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/r0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    return-object p0
.end method

.method private f(Lcom/amap/api/mapcore/util/az;Z)V
    .locals 11

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->l:Lcom/amap/api/mapcore/util/i0;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/mapcore/util/i0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/i0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->l:Lcom/amap/api/mapcore/util/i0;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->h:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_1

    .line 4
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    .line 5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    int-to-long v4, v0

    new-instance v8, Lcom/amap/api/mapcore/util/e3;

    const-string v0, "AMapOfflineRemove"

    invoke-direct {v8, v0}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v2, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v10, p0, Lcom/amap/api/mapcore/util/c0;->h:Ljava/util/concurrent/ExecutorService;

    .line 7
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->h:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/c0$b;

    invoke-direct {v1, p0, p1, p2}, Lcom/amap/api/mapcore/util/c0$b;-><init>(Lcom/amap/api/mapcore/util/c0;Lcom/amap/api/mapcore/util/az;Z)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string p2, "requestDelete"

    const-string v0, "removeExcecRunnable"

    .line 8
    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method static synthetic j(Lcom/amap/api/mapcore/util/c0;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result p0

    return p0
.end method

.method static synthetic k(Lcom/amap/api/mapcore/util/c0;Z)Z
    .locals 0

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c0;->b:Z

    return p1
.end method

.method private l(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4

    const/4 v0, 0x0

    const/4 v1, 0x0

    .line 1
    :goto_0
    :try_start_0
    invoke-virtual {p2}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v1, v2, :cond_2

    .line 2
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3

    if-le v2, v3, :cond_0

    const/4 p1, 0x1

    return p1

    .line 3
    :cond_0
    invoke-virtual {p1, v1}, Ljava/lang/String;->charAt(I)C

    move-result v2

    invoke-virtual {p2, v1}, Ljava/lang/String;->charAt(I)C

    move-result v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-ge v2, v3, :cond_1

    return v0

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :catchall_0
    :cond_2
    return v0
.end method

.method static synthetic o(Lcom/amap/api/mapcore/util/c0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c0;->N()V

    return-void
.end method

.method static synthetic q(Lcom/amap/api/mapcore/util/c0;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    return-object p0
.end method

.method static synthetic u(Lcom/amap/api/mapcore/util/c0;)Lcom/amap/api/mapcore/util/c0$d;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/c0;->d:Lcom/amap/api/mapcore/util/c0$d;

    return-object p0
.end method


# virtual methods
.method public A(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->L(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->E(Lcom/amap/api/mapcore/util/az;)V

    return-void

    .line 3
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public C(Ljava/lang/String;)Ljava/lang/String;
    .locals 1

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object p1

    if-nez p1, :cond_1

    return-object v0

    .line 2
    :cond_1
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object p1

    return-object p1
.end method

.method public F()V
    .locals 1

    .line 1
    monitor-enter p0

    const/4 v0, 0x0

    .line 2
    :try_start_0
    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->d:Lcom/amap/api/mapcore/util/c0$d;

    .line 3
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public d()V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/r0;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->f:Lcom/amap/api/mapcore/util/r0;

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c0;->H()V

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    .line 6
    new-instance v1, Lcom/amap/api/mapcore/util/c0$e;

    invoke-direct {v1, p0, v0}, Lcom/amap/api/mapcore/util/c0$e;-><init>(Lcom/amap/api/mapcore/util/c0;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/c0;->j:Lcom/amap/api/mapcore/util/c0$e;

    .line 7
    new-instance v0, Lcom/amap/api/mapcore/util/g0;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-direct {v0, v2, v1}, Lcom/amap/api/mapcore/util/g0;-><init>(Landroid/content/Context;Landroid/os/Handler;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    const/4 v0, 0x1

    .line 8
    invoke-static {v0}, Lcom/amap/api/mapcore/util/l0;->a(I)Lcom/amap/api/mapcore/util/l0;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->e:Lcom/amap/api/mapcore/util/l0;

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->p0(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->G(Ljava/lang/String;)V

    .line 10
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c0;->K()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 11
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    .line 12
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    monitor-enter v0

    .line 13
    :try_start_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g0;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    .line 14
    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_1
    :goto_1
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    if-eqz v3, :cond_1

    .line 15
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    new-instance v5, Lcom/amap/api/mapcore/util/az;

    iget-object v6, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-direct {v5, v6, v3}, Lcom/amap/api/mapcore/util/az;-><init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapCity;)V

    invoke-interface {v4, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 16
    :cond_2
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 17
    new-instance v0, Lcom/amap/api/mapcore/util/f0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/f0;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/c0;->m:Lcom/amap/api/mapcore/util/f0;

    .line 18
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    return-void

    :catchall_1
    move-exception v1

    .line 19
    :try_start_2
    monitor-exit v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v1
.end method

.method public e(Lcom/amap/api/mapcore/util/az;)V
    .locals 1

    const/4 v0, 0x0

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/c0;->f(Lcom/amap/api/mapcore/util/az;Z)V

    return-void
.end method

.method public g(Lcom/amap/api/mapcore/util/c0$d;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c0;->d:Lcom/amap/api/mapcore/util/c0$d;

    return-void
.end method

.method public h(Ljava/lang/String;)V
    .locals 11

    if-nez p1, :cond_1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c0;->d:Lcom/amap/api/mapcore/util/c0$d;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    .line 2
    invoke-interface {p1, v0}, Lcom/amap/api/mapcore/util/c0$d;->b(Lcom/amap/api/mapcore/util/az;)V

    :cond_0
    return-void

    .line 3
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->g:Ljava/util/concurrent/ExecutorService;

    if-nez v0, :cond_2

    .line 4
    new-instance v7, Ljava/util/concurrent/LinkedBlockingQueue;

    invoke-direct {v7}, Ljava/util/concurrent/LinkedBlockingQueue;-><init>()V

    const/4 v0, 0x1

    .line 5
    sget-object v6, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    .line 6
    new-instance v10, Ljava/util/concurrent/ThreadPoolExecutor;

    const/4 v3, 0x2

    int-to-long v4, v0

    new-instance v8, Lcom/amap/api/mapcore/util/e3;

    const-string v0, "AMapOfflineCheckUpdate"

    invoke-direct {v8, v0}, Lcom/amap/api/mapcore/util/e3;-><init>(Ljava/lang/String;)V

    new-instance v9, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;

    invoke-direct {v9}, Ljava/util/concurrent/ThreadPoolExecutor$AbortPolicy;-><init>()V

    const/4 v2, 0x1

    move-object v1, v10

    invoke-direct/range {v1 .. v9}, Ljava/util/concurrent/ThreadPoolExecutor;-><init>(IIJLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/BlockingQueue;Ljava/util/concurrent/ThreadFactory;Ljava/util/concurrent/RejectedExecutionHandler;)V

    iput-object v10, p0, Lcom/amap/api/mapcore/util/c0;->g:Ljava/util/concurrent/ExecutorService;

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->g:Ljava/util/concurrent/ExecutorService;

    new-instance v1, Lcom/amap/api/mapcore/util/c0$a;

    invoke-direct {v1, p0, p1}, Lcom/amap/api/mapcore/util/c0$a;-><init>(Lcom/amap/api/mapcore/util/c0;Ljava/lang/String;)V

    invoke-interface {v0, v1}, Ljava/util/concurrent/ExecutorService;->execute(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDownloadManager"

    const-string v1, "checkUpdate"

    .line 8
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void
.end method

.method public i(Ljava/util/ArrayList;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/mapcore/util/m0;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/c0;->M()V

    .line 2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c0;->d:Lcom/amap/api/mapcore/util/c0$d;

    if-eqz p1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {p1}, Lcom/amap/api/mapcore/util/c0$d;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDownloadManager"

    const-string v1, "verifyCallBack"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method

.method protected m()V
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/j0;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    const-string v2, ""

    invoke-direct {v0, v1, v2}, Lcom/amap/api/mapcore/util/j0;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/j0;->i(Landroid/content/Context;)V

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/a1;->f()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/List;

    .line 5
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    if-eqz v1, :cond_1

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v1, v0}, Lcom/amap/api/mapcore/util/g0;->i(Ljava/util/List;)V

    .line 7
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    if-eqz v0, :cond_7

    .line 8
    monitor-enter v0

    .line 9
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/g0;->b()Ljava/util/ArrayList;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    .line 10
    invoke-virtual {v2}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    :cond_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 11
    iget-object v4, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_4
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_3

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/amap/api/mapcore/util/az;

    .line 12
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 13
    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    .line 14
    invoke-virtual {v5}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getState()I

    move-result v7

    const/4 v8, 0x4

    if-ne v7, v8, :cond_5

    sget-object v7, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-lez v7, :cond_5

    sget-object v7, Lcom/amap/api/mapcore/util/c0;->q:Ljava/lang/String;

    .line 15
    invoke-direct {p0, v7, v6}, Lcom/amap/api/mapcore/util/c0;->l(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v6

    if-eqz v6, :cond_5

    .line 16
    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/az;->C()V

    .line 17
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    .line 18
    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/az;->G()V

    goto :goto_0

    .line 19
    :cond_5
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setCity(Ljava/lang/String;)V

    .line 20
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getUrl()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setUrl(Ljava/lang/String;)V

    .line 21
    invoke-virtual {v5}, Lcom/amap/api/mapcore/util/az;->G()V

    .line 22
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getAdcode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setAdcode(Ljava/lang/String;)V

    .line 23
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getVersion()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setVersion(Ljava/lang/String;)V

    .line 24
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->getSize()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Lcom/amap/api/maps/offlinemap/OfflineMapCity;->setSize(J)V

    .line 25
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getCode()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setCode(Ljava/lang/String;)V

    .line 26
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getJianpin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setJianpin(Ljava/lang/String;)V

    .line 27
    invoke-virtual {v3}, Lcom/amap/api/maps/offlinemap/City;->getPinyin()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/amap/api/maps/offlinemap/City;->setPinyin(Ljava/lang/String;)V

    goto :goto_0

    .line 28
    :cond_6
    monitor-exit v0

    goto :goto_1

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1

    :cond_7
    :goto_1
    return-void
.end method

.method public n(Lcom/amap/api/mapcore/util/az;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->e:Lcom/amap/api/mapcore/util/l0;

    if-eqz v0, :cond_0

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->a:Landroid/content/Context;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Lcom/amap/api/mapcore/util/l0;->e(Lcom/amap/api/mapcore/util/k0;Landroid/content/Context;Lcom/amap/api/maps/AMap;)V
    :try_end_0
    .catch Lcom/amap/api/mapcore/util/gb; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 3
    invoke-virtual {p1}, Ljava/lang/Exception;->printStackTrace()V

    :cond_0
    :goto_0
    return-void
.end method

.method public p(Ljava/lang/String;)Z
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object p1

    if-nez p1, :cond_0

    const/4 p1, 0x0

    return p1

    :cond_0
    const/4 p1, 0x1

    return p1
.end method

.method public r()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/az;

    .line 3
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v3

    iget-object v4, v2, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 4
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v3

    iget-object v4, v2, Lcom/amap/api/mapcore/util/az;->g:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 5
    :cond_1
    invoke-virtual {p0, v2}, Lcom/amap/api/mapcore/util/c0;->w(Lcom/amap/api/mapcore/util/az;)V

    .line 6
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/az;->z()V

    goto :goto_0

    .line 7
    :cond_2
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public s(Lcom/amap/api/mapcore/util/az;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g0;->c(Lcom/amap/api/mapcore/util/az;)V

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->j:Lcom/amap/api/mapcore/util/c0$e;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v0

    .line 5
    iput-object p1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 6
    iget-object p1, p0, Lcom/amap/api/mapcore/util/c0;->j:Lcom/amap/api/mapcore/util/c0$e;

    invoke-virtual {p1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_1
    return-void
.end method

.method public t(Ljava/lang/String;)V
    .locals 2

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object p1

    if-nez p1, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->d:Lcom/amap/api/mapcore/util/c0$d;

    if-eqz v0, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v0, p1}, Lcom/amap/api/mapcore/util/c0$d;->c(Lcom/amap/api/mapcore/util/az;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    const-string v0, "OfflineDownloadManager"

    const-string v1, "remove"

    .line 4
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void

    .line 5
    :cond_1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c0;->w(Lcom/amap/api/mapcore/util/az;)V

    const/4 v0, 0x1

    .line 6
    invoke-direct {p0, p1, v0}, Lcom/amap/api/mapcore/util/c0;->f(Lcom/amap/api/mapcore/util/az;Z)V

    return-void
.end method

.method public v()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    monitor-enter v0

    .line 2
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/c0;->c:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/amap/api/mapcore/util/az;

    .line 3
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/az;->v()Lcom/amap/api/mapcore/util/f1;

    move-result-object v3

    iget-object v4, v2, Lcom/amap/api/mapcore/util/az;->h:Lcom/amap/api/mapcore/util/f1;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 4
    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/az;->z()V

    .line 5
    :cond_1
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public w(Lcom/amap/api/mapcore/util/az;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->e:Lcom/amap/api/mapcore/util/l0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/l0;->d(Lcom/amap/api/mapcore/util/k0;)V

    :cond_0
    return-void
.end method

.method public x(Ljava/lang/String;)V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c0;->J(Ljava/lang/String;)Lcom/amap/api/mapcore/util/az;

    move-result-object v0

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result p1

    const/4 v1, 0x1

    if-lt p1, v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/c0;->E(Lcom/amap/api/mapcore/util/az;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public y()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->g:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->g:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->i:Ljava/util/concurrent/ExecutorService;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->isShutdown()Z

    move-result v0

    if-nez v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->i:Ljava/util/concurrent/ExecutorService;

    invoke-interface {v0}, Ljava/util/concurrent/ExecutorService;->shutdownNow()Ljava/util/List;

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->m:Lcom/amap/api/mapcore/util/f0;

    const/4 v1, 0x0

    if-eqz v0, :cond_3

    .line 6
    invoke-virtual {v0}, Ljava/lang/Thread;->isAlive()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->m:Lcom/amap/api/mapcore/util/f0;

    invoke-virtual {v0}, Ljava/lang/Thread;->interrupt()V

    .line 8
    :cond_2
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c0;->m:Lcom/amap/api/mapcore/util/f0;

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->j:Lcom/amap/api/mapcore/util/c0$e;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 11
    iput-object v1, p0, Lcom/amap/api/mapcore/util/c0;->j:Lcom/amap/api/mapcore/util/c0$e;

    .line 12
    :cond_4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->e:Lcom/amap/api/mapcore/util/l0;

    if-eqz v0, :cond_5

    .line 13
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/l0;->f()V

    .line 14
    :cond_5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    if-eqz v0, :cond_6

    .line 15
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->w()V

    .line 16
    :cond_6
    invoke-static {}, Lcom/amap/api/mapcore/util/c0;->D()V

    const/4 v0, 0x1

    .line 17
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/c0;->b:Z

    .line 18
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c0;->F()V

    return-void
.end method

.method public z(Lcom/amap/api/mapcore/util/az;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c0;->e:Lcom/amap/api/mapcore/util/l0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/l0;->g(Lcom/amap/api/mapcore/util/k0;)V

    :cond_0
    return-void
.end method
