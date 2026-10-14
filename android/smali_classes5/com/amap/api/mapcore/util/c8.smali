.class public Lcom/amap/api/mapcore/util/c8;
.super Lcom/amap/api/mapcore/util/u4;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/c8$a;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/amap/api/mapcore/util/u4<",
        "Ljava/lang/String;",
        "Lcom/amap/api/mapcore/util/c8$a;",
        ">;"
    }
.end annotation


# instance fields
.field private h:Z

.field private i:[I


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1, p2}, Lcom/amap/api/mapcore/util/u4;-><init>(Landroid/content/Context;Ljava/lang/Object;)V

    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c8;->h:Z

    const/16 p2, 0x8

    new-array p2, p2, [I

    .line 3
    fill-array-data p2, :array_0

    iput-object p2, p0, Lcom/amap/api/mapcore/util/c8;->i:[I

    const-string p2, "/feedback"

    .line 4
    iput-object p2, p0, Lcom/amap/api/mapcore/util/u4;->g:Ljava/lang/String;

    const/4 p2, 0x0

    .line 5
    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/r2;->isPostFlag:Z

    .line 6
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/c8;->h:Z

    return-void

    nop

    :array_0
    .array-data 4
        0x2710
        0x0
        0x2722
        0x2723
        0x2724
        0x2725
        0x2726
        0x2727
    .end array-data
.end method


# virtual methods
.method protected synthetic g(Ljava/lang/String;)Ljava/lang/Object;
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation

    .line 1
    invoke-virtual {p0, p1}, Lcom/amap/api/mapcore/util/c8;->l(Ljava/lang/String;)Lcom/amap/api/mapcore/util/c8$a;

    move-result-object p1

    return-object p1
.end method

.method public getIPV6URL()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/c8;->getURL()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->B(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getParams()Ljava/util/Map;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/Hashtable;

    const/16 v1, 0x10

    invoke-direct {v0, v1}, Ljava/util/Hashtable;-><init>(I)V

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/u4;->f:Landroid/content/Context;

    invoke-static {v1}, Lcom/amap/api/mapcore/util/c5;->j(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "key"

    invoke-interface {v0, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c8;->h:Z

    if-eqz v1, :cond_0

    const-string v1, "pname"

    const-string v2, "3dmap"

    .line 4
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    :cond_0
    invoke-static {}, Lcom/amap/api/mapcore/util/f5;->a()Ljava/lang/String;

    move-result-object v1

    .line 6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/u4;->f:Landroid/content/Context;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/n5;->u(Ljava/util/Map;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v1, v3}, Lcom/amap/api/mapcore/util/f5;->d(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v3, "ts"

    .line 7
    invoke-interface {v0, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "scode"

    .line 8
    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-object v0
.end method

.method public getURL()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "http://restapi.amap.com/v4"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/amap/api/mapcore/util/u4;->g:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public isSupportIPV6()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method protected l(Ljava/lang/String;)Lcom/amap/api/mapcore/util/c8$a;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/amap/api/mapcore/util/ft;
        }
    .end annotation

    const-string v0, "errcode"

    .line 1
    :try_start_0
    new-instance v1, Lorg/json/JSONObject;

    invoke-direct {v1, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const/4 p1, -0x1

    .line 2
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;)I

    move-result p1

    const-string v0, "errmsg"

    .line 4
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    const-string v0, "errdetail"

    .line 5
    invoke-virtual {v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    .line 6
    :cond_0
    new-instance v0, Lcom/amap/api/mapcore/util/c8$a;

    invoke-direct {v0}, Lcom/amap/api/mapcore/util/c8$a;-><init>()V

    const/4 v1, 0x0

    .line 7
    iput-boolean v1, v0, Lcom/amap/api/mapcore/util/c8$a;->a:Z

    .line 8
    iget-object v2, p0, Lcom/amap/api/mapcore/util/c8;->i:[I

    array-length v3, v2

    :goto_0
    if-ge v1, v3, :cond_2

    aget v4, v2, v1

    if-ne v4, p1, :cond_1

    const/4 p1, 0x1

    .line 9
    iput-boolean p1, v0, Lcom/amap/api/mapcore/util/c8$a;->a:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    :cond_2
    :goto_1
    return-object v0

    :catchall_0
    move-exception p1

    .line 10
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    const/4 p1, 0x0

    return-object p1
.end method
