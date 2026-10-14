.class public Lcom/amap/api/mapcore/util/d9;
.super Ljava/lang/Thread;
.source "SourceFile"


# instance fields
.field private a:Landroid/content/Context;

.field b:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    .line 4
    new-instance p1, Ljava/lang/ref/WeakReference;

    invoke-direct {p1, p2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    return-void
.end method

.method static synthetic a(Lcom/amap/api/mapcore/util/d9;)Landroid/content/Context;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    return-object p0
.end method

.method private b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Lcom/amap/api/mapcore/util/d5$a;)V
    .locals 5

    const-string v0, ""

    if-eqz p3, :cond_2

    .line 1
    iget-object p3, p3, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-nez p3, :cond_0

    goto :goto_0

    :cond_0
    :try_start_0
    const-string v1, "16V"

    .line 2
    invoke-virtual {p3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p3

    const-string v1, "di"

    .line 3
    invoke-virtual {p3, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "dis"

    .line 4
    invoke-virtual {p3, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v4, "able"

    .line 5
    invoke-virtual {p3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v4, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v2

    const-string v4, "isFilter"

    .line 6
    invoke-virtual {p3, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p3

    const/4 v0, 0x1

    invoke-static {p3, v0}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p3

    if-eqz v1, :cond_1

    .line 7
    invoke-static {v3}, Lcom/amap/api/mapcore/util/n5;->D(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    return-void

    .line 8
    :cond_1
    invoke-static {p2}, Lcom/amap/api/mapcore/util/n6;->a(Lcom/amap/api/mapcore/util/m5;)Lcom/amap/api/mapcore/util/n6;

    move-result-object p2

    invoke-virtual {p2, p1, v2, p3}, Lcom/amap/api/mapcore/util/n6;->b(Landroid/content/Context;ZZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    :cond_2
    :goto_0
    return-void
.end method

.method private c(Lcom/amap/api/mapcore/util/d5$a;)V
    .locals 6

    const-string v0, "maploc"

    .line 1
    :try_start_0
    iget-object p1, p1, Lcom/amap/api/mapcore/util/d5$a;->w:Lcom/amap/api/mapcore/util/d5$a$a;

    if-eqz p1, :cond_2

    .line 2
    iget-boolean v1, p1, Lcom/amap/api/mapcore/util/d5$a$a;->a:Z

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    const-string v3, "ue"

    .line 4
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    .line 5
    invoke-static {v2, v0, v3, v1}, Lcom/amap/api/mapcore/util/o3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 6
    iget-object p1, p1, Lcom/amap/api/mapcore/util/d5$a$a;->b:Lorg/json/JSONObject;

    const-string v1, "fn"

    const/16 v2, 0x3e8

    .line 7
    invoke-virtual {p1, v1, v2}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v1

    const-string v2, "mpn"

    const/4 v3, 0x0

    .line 8
    invoke-virtual {p1, v2, v3}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    const/16 v4, 0x1f4

    const/16 v5, 0x1e

    if-le v2, v4, :cond_0

    const/16 v2, 0x1f4

    :cond_0
    if-ge v2, v5, :cond_1

    goto :goto_0

    :cond_1
    move v5, v2

    :goto_0
    const-string v2, "igu"

    .line 9
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v3}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p1

    .line 10
    invoke-static {v1, p1}, Lcom/amap/api/mapcore/util/t7;->b(IZ)V

    .line 11
    iget-object p1, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    const-string v1, "opn"

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {p1, v0, v1, v2}, Lcom/amap/api/mapcore/util/o3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    const-string v0, "AuthUtil"

    const-string v1, "loadConfigDataUploadException"

    .line 12
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_1
    return-void
.end method

.method private d(Lorg/json/JSONObject;)V
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-void

    :cond_0
    :try_start_0
    const-string v1, "16G"

    .line 1
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const-string v1, "able"

    .line 2
    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v1

    const-string v3, "removeCache"

    .line 3
    invoke-virtual {p1, v3, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v3

    const-string v4, "uploadInfo"

    .line 4
    invoke-virtual {p1, v4, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1, v2}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result p1

    .line 5
    invoke-static {v1}, Lcom/amap/api/mapcore/util/i3;->a(Z)V

    .line 6
    invoke-static {v3}, Lcom/amap/api/mapcore/util/i3;->d(Z)V

    .line 7
    invoke-static {p1}, Lcom/amap/api/mapcore/util/i3;->f(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method


# virtual methods
.method public interrupt()V
    .locals 0

    .line 1
    invoke-super {p0}, Ljava/lang/Thread;->interrupt()V

    return-void
.end method

.method public run()V
    .locals 14

    const-string v0, "time"

    const-string v1, "si"

    const-string v2, "mc"

    const-string v3, "15C"

    const-string v4, "156"

    const-string v5, "154"

    const-string v6, "14L"

    const-string v7, "14M"

    const-string v8, ";"

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v9

    if-nez v9, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/i5;->a()Lcom/amap/api/mapcore/util/i5;

    move-result-object v9

    iget-object v10, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    invoke-virtual {v9, v10}, Lcom/amap/api/mapcore/util/i5;->c(Landroid/content/Context;)V

    .line 3
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "14S"

    .line 4
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 5
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "11K"

    .line 6
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "001"

    .line 8
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 9
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 10
    invoke-virtual {v9, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 11
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 12
    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 13
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "16V"

    .line 14
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 15
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v10, "14Z"

    .line 16
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 17
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 18
    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 19
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 20
    invoke-virtual {v9, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 21
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 22
    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 23
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v8, "16G"

    .line 24
    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_4

    .line 25
    :try_start_1
    iget-object v8, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_1

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_1

    .line 26
    iget-object v8, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 27
    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/mapcore/util/s8;

    move-result-object v10

    if-eqz v10, :cond_1

    .line 28
    invoke-interface {v8}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/mapcore/util/s8;

    move-result-object v8

    invoke-virtual {v8}, Lcom/amap/api/mapcore/util/s8;->h()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v9, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 29
    :catchall_0
    :cond_1
    :try_start_2
    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    .line 30
    iget-object v9, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v10

    const/4 v11, 0x0

    invoke-static {v9, v10, v8, v11}, Lcom/amap/api/mapcore/util/d5;->a(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Ljava/lang/String;Ljava/util/Map;)Lcom/amap/api/mapcore/util/d5$a;

    move-result-object v10

    .line 31
    sget v8, Lcom/amap/api/mapcore/util/d5;->a:I

    const/4 v9, 0x1

    if-eq v8, v9, :cond_3

    if-eqz v10, :cond_3

    .line 32
    iget-object v8, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v8, :cond_3

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    if-eqz v8, :cond_3

    .line 33
    iget-object v8, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v8}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v8}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v8

    invoke-virtual {v8}, Landroid/os/Handler;->obtainMessage()Landroid/os/Message;

    move-result-object v8

    const/4 v11, 0x2

    .line 34
    iput v11, v8, Landroid/os/Message;->what:I

    .line 35
    iget-object v11, v10, Lcom/amap/api/mapcore/util/d5$a;->a:Ljava/lang/String;

    if-eqz v11, :cond_2

    .line 36
    iput-object v11, v8, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 37
    :cond_2
    iget-object v11, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v11}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v11}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->getMainHandler()Landroid/os/Handler;

    move-result-object v11

    invoke-virtual {v11, v8}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_4

    :cond_3
    const-string v8, "able"

    if-eqz v10, :cond_5

    .line 38
    :try_start_3
    iget-object v11, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v11, :cond_5

    .line 39
    invoke-virtual {v11, v5}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v5

    if-eqz v5, :cond_5

    .line 40
    invoke-virtual {v5, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 41
    invoke-static {v11, v9}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 42
    invoke-virtual {v5, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 43
    invoke-virtual {v5, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 44
    invoke-static {v11}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v12
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_4

    const-string v13, "approval_number"

    if-nez v12, :cond_4

    .line 45
    :try_start_4
    iget-object v12, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    invoke-static {v12, v13, v2, v11}, Lcom/amap/api/mapcore/util/h3;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 46
    :cond_4
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_5

    .line 47
    iget-object v2, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    invoke-static {v2, v13, v1, v5}, Lcom/amap/api/mapcore/util/h3;->c(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    :cond_5
    if-eqz v10, :cond_6

    .line 48
    iget-object v1, v10, Lcom/amap/api/mapcore/util/d5$a;->w:Lcom/amap/api/mapcore/util/d5$a$a;

    if-eqz v1, :cond_6

    .line 49
    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v1

    if-eqz v1, :cond_6

    .line 50
    iget-object v2, v10, Lcom/amap/api/mapcore/util/d5$a;->w:Lcom/amap/api/mapcore/util/d5$a$a;

    iget-boolean v2, v2, Lcom/amap/api/mapcore/util/d5$a$a;->a:Z

    invoke-virtual {v1, v2}, Lcom/amap/api/mapcore/util/m5;->d(Z)V

    :cond_6
    if-eqz v10, :cond_7

    .line 51
    invoke-direct {p0, v10}, Lcom/amap/api/mapcore/util/d9;->c(Lcom/amap/api/mapcore/util/d5$a;)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_4

    :cond_7
    if-eqz v10, :cond_9

    .line 52
    :try_start_5
    iget-object v1, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v1, :cond_9

    .line 53
    invoke-virtual {v1, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-eqz v1, :cond_9

    .line 54
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 55
    invoke-virtual {v1, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 56
    invoke-static {v2, v9}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_9

    const v2, 0x278d00

    .line 57
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 58
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v1

    const/16 v2, 0x3c

    .line 59
    invoke-static {v2, v1}, Ljava/lang/Math;->max(II)I

    move-result v2

    .line 60
    :cond_8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    const-string v5, "Map3DCache"

    const-wide/16 v11, 0x0

    invoke-static {v11, v12}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-static {v1, v5, v0, v7}, Lcom/amap/api/mapcore/util/h3;->a(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Long;)Ljava/lang/Long;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Long;->longValue()J

    move-result-wide v0

    .line 61
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v11

    sub-long/2addr v11, v0

    mul-int/lit16 v2, v2, 0x3e8

    int-to-long v0, v2

    cmp-long v2, v11, v0

    if-lez v2, :cond_9

    .line 62
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_9

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_9

    .line 63
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->clearTileCache()V
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_1

    goto :goto_0

    :catchall_1
    move-exception v0

    .line 64
    :try_start_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_9
    :goto_0
    const/4 v11, 0x0

    if-eqz v10, :cond_b

    .line 65
    iget-object v0, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_4

    if-eqz v0, :cond_b

    .line 66
    :try_start_7
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_b

    .line 67
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_b

    .line 68
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    invoke-static {v0, v11}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v0

    .line 70
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v1, :cond_b

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_b

    .line 71
    iget-object v1, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-nez v0, :cond_a

    goto :goto_1

    :cond_a
    const/4 v9, 0x0

    :goto_1
    invoke-interface {v1, v9}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setHideLogoEnble(Z)V
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_2

    goto :goto_2

    :catchall_2
    move-exception v0

    .line 72
    :try_start_8
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_b
    :goto_2
    if-eqz v10, :cond_c

    .line 73
    iget-object v0, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_c

    .line 74
    invoke-virtual {v0, v4}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_c

    .line 75
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 76
    invoke-static {v0, v11}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v0

    .line 77
    invoke-static {v0}, Lcom/amap/api/mapcore/util/b3;->f(Z)V

    :cond_c
    if-eqz v10, :cond_d

    .line 78
    iget-object v0, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_d

    .line 79
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v1

    invoke-direct {p0, v0, v1, v10}, Lcom/amap/api/mapcore/util/d9;->b(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;Lcom/amap/api/mapcore/util/d5$a;)V

    :cond_d
    if-eqz v10, :cond_e

    .line 80
    iget-object v0, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_e

    .line 81
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_e

    .line 82
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 83
    invoke-static {v1, v11}, Lcom/amap/api/mapcore/util/d5;->x(Ljava/lang/String;Z)Z

    move-result v5

    const-string v1, "logo_day_url"

    .line 84
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string v1, "logo_day_md5"

    .line 85
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    const-string v1, "logo_night_url"

    .line 86
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    const-string v1, "logo_night_md5"

    .line 87
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    const-string v1, "logo_day_ipv6_url"

    .line 88
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    const-string v1, "logo_night_ipv6_url"

    .line 89
    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 90
    invoke-static {}, Lcom/amap/api/mapcore/util/q3;->a()Lcom/amap/api/mapcore/util/q3;

    move-result-object v0

    new-instance v12, Lcom/amap/api/mapcore/util/d9$a;

    move-object v1, v12

    move-object v2, p0

    invoke-direct/range {v1 .. v9}, Lcom/amap/api/mapcore/util/d9$a;-><init>(Lcom/amap/api/mapcore/util/d9;Ljava/lang/String;Ljava/lang/String;ZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v12}, Lcom/amap/api/mapcore/util/q3;->b(Ljava/lang/Runnable;)V
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    :cond_e
    if-eqz v10, :cond_f

    .line 91
    :try_start_9
    iget-object v0, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_f

    .line 92
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_f

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_f

    .line 93
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 94
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/mapcore/util/s8;

    move-result-object v1

    if-eqz v1, :cond_f

    .line 95
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getAMapExtraInterfaceManager()Lcom/amap/api/mapcore/util/s8;

    move-result-object v0

    iget-object v1, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/s8;->g(Lorg/json/JSONObject;)V
    :try_end_9
    .catchall {:try_start_9 .. :try_end_9} :catchall_3

    goto :goto_3

    :catchall_3
    nop

    :cond_f
    :goto_3
    if-eqz v10, :cond_10

    .line 96
    :try_start_a
    iget-object v0, v10, Lcom/amap/api/mapcore/util/d5$a;->v:Lorg/json/JSONObject;

    if-eqz v0, :cond_10

    .line 97
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/d9;->d(Lorg/json/JSONObject;)V

    .line 98
    :cond_10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/e6;->g(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)Lcom/amap/api/mapcore/util/e6;

    .line 99
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d9;->interrupt()V

    .line 100
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    if-eqz v0, :cond_11

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_11

    .line 101
    iget-object v0, p0, Lcom/amap/api/mapcore/util/d9;->b:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0, v11}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_4

    goto :goto_4

    :catchall_4
    move-exception v0

    .line 102
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/d9;->interrupt()V

    const-string v1, "AMapDelegateImpGLSurfaceView"

    const-string v2, "mVerfy"

    .line 103
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 104
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_11
    :goto_4
    return-void
.end method
