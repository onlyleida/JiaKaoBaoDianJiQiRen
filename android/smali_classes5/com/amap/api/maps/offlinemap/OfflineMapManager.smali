.class public final Lcom/amap/api/maps/offlinemap/OfflineMapManager;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;,
        Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    }
.end annotation


# instance fields
.field a:Lcom/amap/api/mapcore/util/g0;

.field b:Lcom/amap/api/mapcore/util/c0;

.field private c:Landroid/content/Context;

.field private d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

.field private e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

.field private f:Landroid/os/Handler;

.field private g:Landroid/os/Handler;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 3
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 4
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    .line 5
    new-instance p2, Landroid/os/Handler;

    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p2, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    .line 6
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V

    .line 7
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object p1

    iget-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {p1, p2}, Lcom/amap/api/mapcore/util/i5;->c(Landroid/content/Context;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;Lcom/amap/api/maps/AMap;)V
    .locals 0

    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    .line 10
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p2

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    .line 11
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    .line 12
    new-instance p2, Landroid/os/Handler;

    iget-object p3, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-virtual {p3}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object p3

    invoke-direct {p2, p3}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    .line 13
    :try_start_0
    invoke-direct {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 14
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method static synthetic a(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    return-object p0
.end method

.method private a()V
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 11
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->t0(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    return-void

    .line 12
    :cond_0
    new-instance v0, Lcom/amap/api/maps/AMapException;

    const-string v1, "http\u8fde\u63a5\u5931\u8d25 - ConnectionException"

    invoke-direct {v0, v1}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private a(Landroid/content/Context;)V
    .locals 2

    .line 2
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->c:Landroid/content/Context;

    const/4 v1, 0x0

    .line 3
    sput-boolean v1, Lcom/amap/api/mapcore/util/c0;->o:Z

    .line 4
    invoke-static {v0}, Lcom/amap/api/mapcore/util/c0;->b(Landroid/content/Context;)Lcom/amap/api/mapcore/util/c0;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    .line 5
    new-instance v1, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;

    invoke-direct {v1, p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$1;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)V

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c0;->g(Lcom/amap/api/mapcore/util/c0$d;)V

    .line 6
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c0;->d()V

    .line 7
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c0;->k:Lcom/amap/api/mapcore/util/g0;

    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    .line 8
    invoke-static {p1}, Lcom/amap/api/mapcore/util/p3;->h(Landroid/content/Context;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 9
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 10
    iget-object p2, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {p2, p1}, Lcom/amap/api/mapcore/util/c0;->h(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic b(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Landroid/os/Handler;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    return-object p0
.end method

.method private b()V
    .locals 1

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    return-void
.end method

.method static synthetic c(Lcom/amap/api/maps/offlinemap/OfflineMapManager;)Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

    return-object p0
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c0;->y()V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b()V

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    .line 5
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 6
    :cond_1
    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->f:Landroid/os/Handler;

    .line 7
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    if-eqz v0, :cond_2

    .line 8
    invoke-virtual {v0, v1}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    .line 9
    :cond_2
    iput-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 10
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public downloadByCityCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c0;->A(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public downloadByCityName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c0;->x(Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 2
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method

.method public downloadByProvinceName(Ljava/lang/String;)V
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a()V

    .line 2
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByProvinceName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    .line 4
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 5
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 6
    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$2;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 7
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    move-exception p1

    .line 8
    instance-of v0, p1, Lcom/amap/api/maps/AMapException;

    if-nez v0, :cond_2

    const-string v0, "OfflineMapManager"

    const-string v1, "downloadByProvinceName"

    .line 9
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_1
    return-void

    .line 10
    :cond_2
    check-cast p1, Lcom/amap/api/maps/AMapException;

    throw p1
.end method

.method public getDownloadOfflineMapCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->s()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadOfflineMapProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->t()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->u()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getDownloadingProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->v()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g0;->a(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object p1

    return-object p1
.end method

.method public getItemByCityName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g0;->m(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object p1

    return-object p1
.end method

.method public getItemByProvinceName(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g0;->r(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object p1

    return-object p1
.end method

.method public getOfflineMapCityList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapCity;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->n()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public getOfflineMapProvinceList()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList<",
            "Lcom/amap/api/maps/offlinemap/OfflineMapProvince;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/g0;->b()Ljava/util/ArrayList;

    move-result-object v0

    return-object v0
.end method

.method public pause()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c0;->v()V

    return-void
.end method

.method public remove(Ljava/lang/String;)V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c0;->p(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/c0;->t(Ljava/lang/String;)V

    goto :goto_2

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a:Lcom/amap/api/mapcore/util/g0;

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/g0;->r(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapProvince;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 4
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object v1

    if-nez v1, :cond_1

    goto :goto_1

    .line 5
    :cond_1
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/OfflineMapProvince;->getCityList()Ljava/util/ArrayList;

    move-result-object p1

    .line 6
    invoke-virtual {p1}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v0

    .line 8
    iget-object v1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->g:Landroid/os/Handler;

    new-instance v2, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;

    invoke-direct {v2, p0, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$3;-><init>(Lcom/amap/api/maps/offlinemap/OfflineMapManager;Ljava/lang/String;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 9
    :cond_2
    :goto_1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->d:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    const-string v2, "\u6ca1\u6709\u8be5\u57ce\u5e02"

    .line 10
    invoke-interface {v0, v1, p1, v2}, Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineMapDownloadListener;->onRemove(ZLjava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    return-void

    :catchall_0
    move-exception p1

    .line 11
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_4
    :goto_2
    return-void
.end method

.method public restart()V
    .locals 0

    return-void
.end method

.method public setOnOfflineLoadedListener(Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->e:Lcom/amap/api/maps/offlinemap/OfflineMapManager$OfflineLoadedListener;

    return-void
.end method

.method public stop()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->b:Lcom/amap/api/mapcore/util/c0;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/c0;->r()V

    return-void
.end method

.method public updateOfflineCityByCode(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->getItemByCityCode(Ljava/lang/String;)Lcom/amap/api/maps/offlinemap/OfflineMapCity;

    move-result-object p1

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/amap/api/maps/offlinemap/City;->getCity()Ljava/lang/String;

    move-result-object p1

    const-string v0, "cityname"

    invoke-direct {p0, p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 4
    :cond_0
    new-instance p1, Lcom/amap/api/maps/AMapException;

    const-string v0, "\u65e0\u6548\u7684\u53c2\u6570 - IllegalArgumentException"

    invoke-direct {p1, v0}, Lcom/amap/api/maps/AMapException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public updateOfflineCityByName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    const-string v0, "cityname"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public updateOfflineMapProvinceByName(Ljava/lang/String;)V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/maps/AMapException;
        }
    .end annotation

    const-string v0, "cityname"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/amap/api/maps/offlinemap/OfflineMapManager;->a(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
