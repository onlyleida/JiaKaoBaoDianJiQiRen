.class public final Lcom/amap/api/mapcore/util/n9;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/n9$a;,
        Lcom/amap/api/mapcore/util/n9$b;
    }
.end annotation


# static fields
.field private static l:I = 0xc8

.field private static m:Z = true


# instance fields
.field a:Landroid/content/Context;

.field b:Lcom/amap/api/mapcore/util/h9;

.field c:Lcom/amap/api/mapcore/util/o9;

.field d:Lcom/amap/api/mapcore/util/n9$b;

.field e:Landroid/os/Handler;

.field f:Landroid/os/Handler;

.field g:Z

.field h:Z

.field i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

.field private j:Lorg/json/JSONArray;

.field k:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->c:Lcom/amap/api/mapcore/util/o9;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->e:Landroid/os/Handler;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->f:Landroid/os/Handler;

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->h:Z

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->k:Ljava/lang/Object;

    if-eqz p1, :cond_0

    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/amap/api/mapcore/util/n9;->f:Landroid/os/Handler;

    new-instance p1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object p1, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->h()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->g()V

    return-void

    :catchall_0
    move-exception p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Context\u53c2\u6570\u4e0d\u80fd\u4e3anull"

    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :goto_0
    const-string p2, "LocationService"

    const-string v0, "<init>"

    invoke-static {p1, p2, v0}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private b(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    .locals 4

    :try_start_0
    sget-boolean v0, Lcom/amap/api/mapcore/util/n9;->m:Z

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    :cond_1
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getErrorCode()I

    move-result v0

    if-nez v0, :cond_4

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLocationType()I

    move-result v0

    const/4 v1, 0x1

    if-eq v0, v1, :cond_2

    goto :goto_0

    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    if-nez v0, :cond_3

    new-instance v0, Lorg/json/JSONArray;

    invoke-direct {v0}, Lorg/json/JSONArray;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    :cond_3
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "lon"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLongitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string v1, "lat"

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_location;->getLatitude()D

    move-result-wide v2

    invoke-virtual {v0, v1, v2, v3}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    const-string p1, "type"

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;I)Lorg/json/JSONObject;

    const-string p1, "timestamp"

    invoke-static {}, Lcom/amap/api/mapcore/util/g9;->f()J

    move-result-wide v1

    invoke-virtual {v0, p1, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;J)Lorg/json/JSONObject;

    iget-object p1, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    invoke-virtual {p1, v0}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    invoke-virtual {p1}, Lorg/json/JSONArray;->length()I

    move-result p1

    sget v0, Lcom/amap/api/mapcore/util/n9;->l:I

    if-lt p1, v0, :cond_4

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->j()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    :goto_0
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "LocationService"

    const-string v1, "recordOfflineLocLog"

    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private g()V
    .locals 2

    new-instance v0, Lcom/amap/api/mapcore/util/n9$b;

    const-string v1, "locServiceAction"

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/n9$b;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Landroid/os/HandlerThread;->setPriority(I)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    new-instance v0, Lcom/amap/api/mapcore/util/n9$a;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    invoke-virtual {v1}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/amap/api/mapcore/util/n9$a;-><init>(Lcom/amap/api/mapcore/util/n9;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->e:Landroid/os/Handler;

    return-void
.end method

.method private h()V
    .locals 3

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez v0, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/n9;->h:Z

    if-eqz v0, :cond_1

    return-void

    :cond_1
    new-instance v0, Lcom/amap/api/mapcore/util/h9;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/h9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    new-instance v0, Lcom/amap/api/mapcore/util/o9;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/amap/api/mapcore/util/o9;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->c:Lcom/amap/api/mapcore/util/o9;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/o9;->e(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->i()V

    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n9;->h:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "init"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private i()V
    .locals 3

    const-string v0, "maploc"

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    const-string v2, "ue"

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/f9;->h(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/amap/api/mapcore/util/n9;->m:Z

    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    const-string v2, "opn"

    invoke-static {v1, v0, v2}, Lcom/amap/api/mapcore/util/f9;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    sput v0, Lcom/amap/api/mapcore/util/n9;->l:I

    const/16 v1, 0x1f4

    if-le v0, v1, :cond_0

    sput v1, Lcom/amap/api/mapcore/util/n9;->l:I

    :cond_0
    sget v0, Lcom/amap/api/mapcore/util/n9;->l:I

    const/16 v1, 0x1e

    if-ge v0, v1, :cond_1

    sput v1, Lcom/amap/api/mapcore/util/n9;->l:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "getSPConfig"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method private declared-synchronized j()V
    .locals 4

    monitor-enter p0

    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lorg/json/JSONArray;->length()I

    move-result v0

    if-lez v0, :cond_0

    invoke-static {}, Lcom/amap/api/mapcore/util/b9;->e()Lcom/amap/api/mapcore/util/m5;

    move-result-object v0

    new-instance v1, Lcom/amap/api/mapcore/util/s7;

    iget-object v2, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    iget-object v3, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;

    invoke-virtual {v3}, Lorg/json/JSONArray;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v1, v2, v0, v3}, Lcom/amap/api/mapcore/util/s7;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;)V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->a:Landroid/content/Context;

    invoke-static {v1, v0}, Lcom/amap/api/mapcore/util/t7;->d(Lcom/amap/api/mapcore/util/s7;Landroid/content/Context;)V

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->j:Lorg/json/JSONArray;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    :try_start_1
    const-string v1, "LocationService"

    const-string v2, "writeOfflineLog"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    monitor-exit p0

    return-void

    :catchall_1
    move-exception v0

    monitor-exit p0

    throw v0
.end method

.method private k()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->e:Landroid/os/Handler;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeCallbacksAndMessages(Ljava/lang/Object;)V

    :cond_0
    iput-object v2, p0, Lcom/amap/api/mapcore/util/n9;->e:Landroid/os/Handler;

    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method private l()V
    .locals 3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->k:Ljava/lang/Object;

    monitor-enter v0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->e:Landroid/os/Handler;

    if-eqz v1, :cond_0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/os/Handler;->removeMessages(I)V

    :cond_0
    monitor-exit v0

    return-void

    :catchall_0
    move-exception v1

    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method


# virtual methods
.method public final a()V
    .locals 3

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->h()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v0

    sget-object v1, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Battery_Saving:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v0, v1}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v0

    const/4 v1, 0x1

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    if-nez v0, :cond_0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h9;->a()V

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->e:Landroid/os/Handler;

    if-eqz v0, :cond_1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendEmptyMessage(I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "getLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final c(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V
    .locals 1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    if-nez p1, :cond_0

    new-instance v0, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-direct {v0}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->c:Lcom/amap/api/mapcore/util/o9;

    if-eqz v0, :cond_1

    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/o9;->e(Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;)V

    :cond_1
    return-void
.end method

.method final d()V
    .locals 3

    const/4 v0, 0x0

    :try_start_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Battery_Saving:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/h9;->b()V

    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    :cond_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/h9;->c()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h9;->d()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v0

    goto :goto_0

    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->i:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;

    invoke-virtual {v1}, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption;->getLocationMode()Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    move-result-object v1

    sget-object v2, Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;->Device_Sensors:Lcom/autonavi/amap/mapcore/Inner_3dMap_locationOption$Inner_3dMap_Enum_LocationMode;

    invoke-virtual {v1, v2}, Ljava/lang/Enum;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->c:Lcom/amap/api/mapcore/util/o9;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/o9;->c()Lcom/autonavi/amap/mapcore/Inner_3dMap_location;

    move-result-object v0

    :cond_2
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/n9;->f:Landroid/os/Handler;

    if-eqz v1, :cond_3

    if-eqz v0, :cond_3

    invoke-static {}, Landroid/os/Message;->obtain()Landroid/os/Message;

    move-result-object v1

    iput-object v0, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    const/4 v2, 0x1

    iput v2, v1, Landroid/os/Message;->what:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/n9;->f:Landroid/os/Handler;

    invoke-virtual {v2, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/n9;->b(Lcom/autonavi/amap/mapcore/Inner_3dMap_location;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "doGetLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final e()V
    .locals 3

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    :try_start_0
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->l()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->b:Lcom/amap/api/mapcore/util/h9;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h9;->b()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    return-void

    :catchall_0
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "stopLocation"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public final f()V
    .locals 5

    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/n9;->e()V

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->k()V

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    sget v2, Landroid/os/Build$VERSION;->SDK_INT:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x12

    if-lt v2, v3, :cond_0

    :try_start_1
    const-class v2, Landroid/os/HandlerThread;

    const-string v3, "quitSafely"

    new-array v4, v1, [Ljava/lang/Object;

    invoke-static {v0, v2, v3, v4}, Lcom/amap/api/mapcore/util/e9;->b(Ljava/lang/Object;Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    :catchall_0
    :try_start_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    :cond_0
    invoke-virtual {v0}, Landroid/os/HandlerThread;->quit()Z

    :cond_1
    :goto_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/n9;->d:Lcom/amap/api/mapcore/util/n9$b;

    iget-object v0, p0, Lcom/amap/api/mapcore/util/n9;->c:Lcom/amap/api/mapcore/util/o9;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/o9;->g()V

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->g:Z

    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/n9;->h:Z

    invoke-direct {p0}, Lcom/amap/api/mapcore/util/n9;->j()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    return-void

    :catchall_1
    move-exception v0

    const-string v1, "LocationService"

    const-string v2, "destroy"

    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/b9;->b(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method
