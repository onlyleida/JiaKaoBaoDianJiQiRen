.class public Lcom/amap/api/mapcore/util/b0;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/amap/api/mapcore/util/j2$a;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/b0$a;
    }
.end annotation


# instance fields
.field private a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

.field private c:Z

.field private d:Z

.field private e:Z

.field private f:Z

.field private g:I

.field private h:Landroid/content/Context;

.field private i:[B

.field private j:[B

.field private k:[B

.field private l:[B

.field private m:[B

.field private n:Z

.field private o:Z

.field private p:Z

.field private q:Z

.field private r:Z

.field private s:Lcom/amap/api/mapcore/util/j2;

.field private t:Lcom/amap/api/mapcore/util/j2;

.field private u:[B

.field private v:[B

.field private w:Z

.field private x:Lcom/amap/api/maps/model/MyTrafficStyle;

.field private y:Lcom/amap/api/mapcore/util/b0$a;


# direct methods
.method public constructor <init>(Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;Landroid/content/Context;Z)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->e:Z

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    const/4 v1, 0x1

    .line 6
    iput v1, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    const/4 v1, 0x0

    .line 7
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->i:[B

    .line 8
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->j:[B

    .line 9
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->k:[B

    .line 10
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->l:[B

    .line 11
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->m:[B

    .line 12
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->n:Z

    .line 13
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->o:Z

    .line 14
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->p:Z

    .line 15
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    .line 16
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->r:Z

    .line 17
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->u:[B

    .line 18
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->v:[B

    .line 19
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->w:Z

    .line 20
    new-instance v1, Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-direct {v1}, Lcom/amap/api/maps/model/MyTrafficStyle;-><init>()V

    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 21
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 22
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    .line 23
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->n:Z

    .line 24
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->o:Z

    .line 25
    iput-boolean p3, p0, Lcom/amap/api/mapcore/util/b0;->w:Z

    return-void
.end method

.method private d(Ljava/lang/String;Z)V
    .locals 4

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const/high16 v1, -0x80000000

    if-nez v0, :cond_0

    .line 2
    invoke-static {p1}, Lcom/amap/api/mapcore/util/p2;->b(Ljava/lang/String;)I

    move-result p1

    goto :goto_0

    :cond_0
    const/high16 p1, -0x80000000

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_4

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->k:[B

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "map_assets"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v3, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "bktile.data"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b0;->k:[B

    .line 6
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->k:[B

    if-eqz v0, :cond_4

    const/4 v2, 0x0

    if-nez p2, :cond_3

    const/4 p1, 0x0

    :cond_2
    const/4 p2, 0x0

    goto :goto_1

    :cond_3
    if-ne p1, v1, :cond_2

    const/4 p2, 0x1

    .line 7
    :goto_1
    invoke-virtual {v0}, [B->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [B

    invoke-static {v0, v2, p1, p2}, Lcom/amap/api/mapcore/util/r3;->X([BIIZ)[B

    move-result-object p1

    .line 8
    iget-object p2, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p2}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p2

    iget v0, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    invoke-virtual {p2, v0, p1}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBackgroundTexture(I[B)V

    :cond_4
    return-void
.end method

.method public static e([B)[B
    .locals 6

    const/4 v0, 0x0

    if-eqz p0, :cond_2

    .line 1
    array-length v1, p0

    if-nez v1, :cond_0

    goto :goto_2

    .line 2
    :cond_0
    new-instance v1, Ljava/io/ByteArrayOutputStream;

    invoke-direct {v1}, Ljava/io/ByteArrayOutputStream;-><init>()V

    .line 3
    new-instance v2, Ljava/io/ByteArrayInputStream;

    invoke-direct {v2, p0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 4
    :try_start_0
    new-instance p0, Ljava/util/zip/GZIPInputStream;

    invoke-direct {p0, v2}, Ljava/util/zip/GZIPInputStream;-><init>(Ljava/io/InputStream;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    const/16 v3, 0x100

    :try_start_1
    new-array v3, v3, [B

    .line 5
    :goto_0
    invoke-virtual {p0, v3}, Ljava/util/zip/GZIPInputStream;->read([B)I

    move-result v4

    if-ltz v4, :cond_1

    const/4 v5, 0x0

    .line 6
    invoke-virtual {v1, v3, v5, v4}, Ljava/io/ByteArrayOutputStream;->write([BII)V

    goto :goto_0

    .line 7
    :cond_1
    invoke-virtual {v1}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 8
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 9
    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 10
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_0
    move-exception v3

    goto :goto_1

    :catchall_1
    move-exception v3

    move-object p0, v0

    .line 11
    :goto_1
    :try_start_2
    invoke-static {v3}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    .line 12
    invoke-virtual {v3}, Ljava/lang/Throwable;->printStackTrace()V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_2

    .line 13
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 14
    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 15
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    return-object v0

    :catchall_2
    move-exception v0

    .line 16
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 17
    invoke-static {v2}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 18
    invoke-static {p0}, Lcom/autonavi/base/amap/mapcore/tools/GLFileUtil;->closeQuietly(Ljava/io/Closeable;)V

    .line 19
    throw v0

    :cond_2
    :goto_2
    return-object v0
.end method

.method private g([B)V
    .locals 7

    if-eqz p1, :cond_2

    .line 1
    invoke-static {p1}, Lcom/amap/api/mapcore/util/p2;->c([B)Lcom/amap/api/mapcore/util/n2;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/n2;->a()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 3
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/n2;->a()Ljava/lang/String;

    move-result-object p1

    invoke-direct {v0, p1}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    const-string p1, "bg"

    .line 4
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-eqz p1, :cond_0

    const-string v3, "visible"

    .line 5
    invoke-virtual {p1, v3, v2}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;Z)Z

    move-result v2

    const-string v3, "lineColor"

    .line 6
    invoke-virtual {p1, v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 7
    :cond_0
    invoke-direct {p0, v1, v2}, Lcom/amap/api/mapcore/util/b0;->d(Ljava/lang/String;Z)V

    const-string p1, "traffic"

    .line 8
    invoke-virtual {v0, p1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "multiFillColors"

    .line 9
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    if-eqz p1, :cond_1

    const-string v0, "smooth"

    .line 10
    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/p2;->b(Ljava/lang/String;)I

    move-result v0

    const-string v1, "slow"

    .line 11
    invoke-virtual {p1, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/amap/api/mapcore/util/p2;->b(Ljava/lang/String;)I

    move-result v1

    const-string v2, "congested"

    .line 12
    invoke-virtual {p1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/amap/api/mapcore/util/p2;->b(Ljava/lang/String;)I

    move-result v2

    const-string v3, "seriousCongested"

    .line 13
    invoke-virtual {p1, v3}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/amap/api/mapcore/util/p2;->b(Ljava/lang/String;)I

    move-result p1

    .line 14
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v3, v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSmoothColor(I)V

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSlowColor(I)V

    .line 16
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/MyTrafficStyle;->setCongestedColor(I)V

    .line 17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->setSeriousCongestedColor(I)V

    .line 18
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz p1, :cond_1

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object p1

    if-eqz p1, :cond_1

    .line 19
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {p1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v2

    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 20
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v3

    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v4

    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->x:Lcom/amap/api/maps/model/MyTrafficStyle;

    .line 21
    invoke-virtual {p1}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v5

    const/4 v6, 0x1

    .line 22
    invoke-virtual/range {v0 .. v6}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setTrafficStyle(IIIIIZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return-void

    :catchall_0
    move-exception p1

    const-string v0, "AMapCustomStyleManager"

    const-string v1, "setExtraStyle"

    .line 23
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_2
    return-void
.end method

.method private i([B)Z
    .locals 7

    const/4 v0, 0x1

    if-nez p1, :cond_0

    return v0

    :cond_0
    const/16 v1, 0x7d0

    .line 1
    :try_start_0
    array-length v2, p1

    const/4 v3, 0x0

    const/16 v4, 0x8

    if-ge v2, v4, :cond_1

    return v3

    :cond_1
    const/4 v2, 0x7

    .line 2
    aget-byte v2, p1, v2

    shl-int/lit8 v2, v2, 0x18

    const/high16 v5, -0x1000000

    and-int/2addr v2, v5

    const/4 v5, 0x6

    aget-byte v5, p1, v5

    shl-int/lit8 v5, v5, 0x10

    const/high16 v6, 0xff0000

    and-int/2addr v5, v6

    or-int/2addr v2, v5

    const/4 v5, 0x5

    aget-byte v5, p1, v5

    shl-int/lit8 v4, v5, 0x8

    const v5, 0xff00

    and-int/2addr v4, v5

    or-int/2addr v2, v4

    const/4 v4, 0x4

    aget-byte p1, p1, v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    and-int/lit16 p1, p1, 0xff

    or-int/2addr p1, v2

    if-eq p1, v1, :cond_2

    return v3

    :catchall_0
    move-exception p1

    const-string v1, "AMapCustomStyleManager"

    const-string v2, "checkData"

    .line 3
    invoke-static {p1, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {p1}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :cond_2
    return v0
.end method

.method private l()V
    .locals 8

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->k:[B

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b0;->k:[B

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setBackgroundTexture(I[B)V

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v2, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-virtual/range {v1 .. v7}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setTrafficStyle(IIIIIZ)V

    :cond_1
    const/4 v0, 0x0

    .line 6
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->r:Z

    return-void
.end method

.method private m()V
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->w:Z

    const-string v1, "map_assets"

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->j:[B

    if-nez v0, :cond_1

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "style_1_16_3569740208.data"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b0;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b0;->j:[B

    goto :goto_0

    .line 4
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->j:[B

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v1, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "style_1_16_1562032355.data"

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b0;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b0;->j:[B

    .line 6
    :cond_1
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b0;->j:[B

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->i:[B

    invoke-virtual {v0, v1, v2, v3}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleData(I[B[B)V

    const/4 v0, 0x0

    .line 7
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    return-void
.end method

.method private n()V
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->p:Z

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->l:[B

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "map_assets"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "icons-for_custom_5_14.data"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b0;->l:[B

    :cond_0
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->p:Z

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v0

    iget v1, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b0;->l:[B

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleTexture(I[B)V

    :cond_1
    return-void
.end method

.method private o()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleDataPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTexturePath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 12

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->o:Z

    if-eqz v0, :cond_1

    return-void

    .line 3
    :cond_1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-nez v0, :cond_2

    return-void

    .line 4
    :cond_2
    monitor-enter p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 5
    :try_start_1
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isHideLogoEnable()Z

    move-result v1

    const/4 v2, 0x1

    const/4 v3, 0x0

    if-eqz v1, :cond_5

    .line 6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    if-eqz v1, :cond_5

    .line 7
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->isLogoEnable()Z

    move-result v1

    if-eqz v1, :cond_4

    .line 8
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 9
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    if-eqz v1, :cond_5

    .line 10
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1, v3}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoEnable(Z)V

    goto :goto_0

    .line 11
    :cond_3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoEnable(Z)V

    goto :goto_0

    .line 12
    :cond_4
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    if-nez v1, :cond_5

    .line 13
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getUiSettings()Lcom/autonavi/base/amap/api/mapcore/IUiSettingsDelegate;

    move-result-object v1

    invoke-interface {v1, v2}, Lcom/autonavi/amap/mapcore/interfaces/IUiSettings;->setLogoEnable(Z)V

    .line 14
    :cond_5
    :goto_0
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    if-eqz v1, :cond_a

    .line 15
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v1

    if-eqz v1, :cond_6

    .line 16
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    iget v5, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setNativeMapModeAndStyle(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)Z

    .line 17
    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 18
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    goto :goto_1

    .line 19
    :cond_6
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v4

    iget v5, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v6

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v7

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v8

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-virtual/range {v4 .. v11}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setNativeMapModeAndStyle(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)Z

    .line 20
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    .line 21
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v1

    if-eqz v1, :cond_9

    .line 22
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleMode()I

    move-result v1

    if-nez v1, :cond_7

    .line 23
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleTime()I

    move-result v1

    if-nez v1, :cond_7

    .line 24
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapStyleState()I

    move-result v1

    if-nez v1, :cond_7

    .line 25
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->m()V

    .line 26
    :cond_7
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->n()V

    .line 27
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->r:Z

    if-eqz v1, :cond_8

    .line 28
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->l()V

    .line 29
    :cond_8
    invoke-virtual {v0, v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setCustomStyleEnable(Z)V

    .line 30
    :cond_9
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 31
    monitor-exit p0

    return-void

    .line 32
    :cond_a
    :goto_1
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->e:Z

    if-eqz v1, :cond_e

    .line 33
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v1

    .line 34
    iget-object v4, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v4}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v4

    if-nez v4, :cond_b

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_b

    .line 35
    invoke-static {v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v1

    .line 36
    iget-object v4, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v4, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 37
    :cond_b
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v1

    if-eqz v1, :cond_d

    .line 38
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v1

    if-eqz v1, :cond_c

    .line 39
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b0;->p:Z

    .line 40
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v4, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v5}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleTexture(I[B)V

    .line 41
    invoke-virtual {v0, v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setUseProFunction(Z)V

    goto :goto_2

    .line 42
    :cond_c
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->n()V

    goto :goto_2

    .line 43
    :cond_d
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->n()V

    .line 44
    :goto_2
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->e:Z

    .line 45
    :cond_e
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    if-eqz v0, :cond_16

    .line 46
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v0

    .line 47
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v1

    if-nez v1, :cond_f

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_f

    .line 48
    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    .line 49
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 50
    :cond_f
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v0

    if-nez v0, :cond_11

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->u:[B

    if-eqz v0, :cond_10

    goto :goto_3

    .line 51
    :cond_10
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    if-eqz v0, :cond_15

    .line 52
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 53
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    goto :goto_5

    .line 54
    :cond_11
    :goto_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->m:[B

    if-nez v0, :cond_12

    .line 55
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "map_assets"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    sget-object v4, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "style-for_custom_0_16_1561381751.data"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContentsFromAssets(Landroid/content/Context;Ljava/lang/String;)[B

    move-result-object v0

    invoke-static {v0}, Lcom/amap/api/mapcore/util/b0;->e([B)[B

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b0;->m:[B

    .line 56
    :cond_12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->u:[B

    if-eqz v0, :cond_13

    goto :goto_4

    :cond_13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v0

    .line 57
    :goto_4
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b0;->i([B)Z

    move-result v1

    if-nez v1, :cond_14

    .line 58
    invoke-static {}, Lcom/amap/api/mapcore/util/t2;->a()V

    goto :goto_5

    .line 59
    :cond_14
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getGLMapEngine()Lcom/autonavi/base/ae/gmap/GLMapEngine;

    move-result-object v1

    iget v4, p0, Lcom/amap/api/mapcore/util/b0;->g:I

    iget-object v5, p0, Lcom/amap/api/mapcore/util/b0;->m:[B

    invoke-virtual {v1, v4, v0, v5}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setCustomStyleData(I[B[B)V

    .line 60
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b0;->q:Z

    .line 61
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_15

    .line 62
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->resetRenderTime()V

    .line 63
    :cond_15
    :goto_5
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    .line 64
    :cond_16
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    if-eqz v0, :cond_1b

    .line 65
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v0

    .line 66
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v1

    if-nez v1, :cond_17

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_17

    .line 67
    invoke-static {v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->readFileContents(Ljava/lang/String;)[B

    move-result-object v0

    .line 68
    iget-object v1, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v1, v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 69
    :cond_17
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v0

    if-nez v0, :cond_18

    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->v:[B

    if-eqz v0, :cond_1a

    .line 70
    :cond_18
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->v:[B

    if-eqz v0, :cond_19

    goto :goto_6

    :cond_19
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v0

    :goto_6
    if-eqz v0, :cond_1a

    .line 71
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/b0;->g([B)V

    .line 72
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/b0;->r:Z

    .line 73
    :cond_1a
    iput-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    .line 74
    :cond_1b
    monitor-exit p0

    goto :goto_7

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :catchall_1
    move-exception v0

    const-string v1, "AMapCustomStyleManager"

    const-string v2, "updateStyle"

    .line 75
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 76
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->J(Ljava/lang/Throwable;)V

    :goto_7
    return-void
.end method

.method public a([BI)V
    .locals 4

    .line 77
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_4

    .line 78
    monitor-enter p0

    .line 79
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_3

    .line 80
    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 81
    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    .line 82
    invoke-virtual {v0, v1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->setUseProFunction(Z)V

    if-ne p2, v1, :cond_0

    .line 83
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b0;->u:[B

    .line 84
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    goto :goto_0

    :cond_0
    if-nez p2, :cond_1

    .line 85
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b0;->v:[B

    .line 86
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    goto :goto_0

    :cond_1
    const/4 v0, 0x2

    if-ne p2, v0, :cond_3

    .line 87
    new-instance p2, Ljava/lang/StringBuilder;

    invoke-direct {p2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, "_sdk_700.data"

    invoke-virtual {p2, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    .line 88
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v3}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "_abroad_sdk.json"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    new-array v0, v0, [Ljava/lang/String;

    const/4 v3, 0x0

    aput-object p2, v0, v3

    aput-object v2, v0, v1

    .line 89
    invoke-static {p1, v0}, Lcom/autonavi/base/amap/mapcore/FileUtil;->uncompressToByteWithKeys([B[Ljava/lang/String;)Ljava/util/Map;

    move-result-object p1

    if-eqz p1, :cond_3

    .line 90
    invoke-interface {p1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, [B

    if-eqz p2, :cond_2

    .line 91
    iput-object p2, p0, Lcom/amap/api/mapcore/util/b0;->u:[B

    .line 92
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    .line 93
    :cond_2
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [B

    if-eqz p1, :cond_3

    .line 94
    iget-object p2, p0, Lcom/amap/api/mapcore/util/b0;->y:Lcom/amap/api/mapcore/util/b0$a;

    if-eqz p2, :cond_3

    .line 95
    invoke-interface {p2, p1}, Lcom/amap/api/mapcore/util/b0$a;->a([B)V

    .line 96
    :cond_3
    :goto_0
    monitor-exit p0

    goto :goto_1

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_4
    :goto_1
    return-void
.end method

.method public b(Lcom/amap/api/mapcore/util/b0$a;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/b0;->y:Lcom/amap/api/mapcore/util/b0$a;

    return-void
.end method

.method public c(Lcom/amap/api/maps/model/CustomMapStyleOptions;)V
    .locals 7

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    return-void

    :cond_0
    if-nez p1, :cond_1

    return-void

    .line 2
    :cond_1
    monitor-enter p0

    .line 3
    :try_start_0
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->n:Z

    const/4 v1, 0x1

    if-nez v0, :cond_2

    .line 4
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->n:Z

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 6
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 7
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v2

    if-eq v0, v2, :cond_3

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v2

    invoke-static {v0, v2}, Lcom/amap/api/mapcore/util/p3;->i(Landroid/content/Context;Z)V

    .line 11
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->isEnable()Z

    move-result v0

    const/4 v2, 0x0

    if-eqz v0, :cond_e

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-static {v0, v3}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_7

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleId()Ljava/lang/String;

    move-result-object v0

    .line 15
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_7

    .line 16
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v3, :cond_7

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    if-eqz v3, :cond_7

    .line 17
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v3}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v3

    invoke-virtual {v3}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v3

    if-eqz v3, :cond_7

    .line 18
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->s:Lcom/amap/api/mapcore/util/j2;

    if-nez v3, :cond_5

    .line 19
    iget-boolean v3, p0, Lcom/amap/api/mapcore/util/b0;->w:Z

    if-eqz v3, :cond_4

    .line 20
    new-instance v3, Lcom/amap/api/mapcore/util/j2;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    const/4 v5, 0x2

    const-string v6, "abroad_sdk_json_sdk_700_zip"

    invoke-direct {v3, v4, p0, v5, v6}, Lcom/amap/api/mapcore/util/j2;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/j2$a;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/b0;->s:Lcom/amap/api/mapcore/util/j2;

    goto :goto_0

    .line 21
    :cond_4
    new-instance v3, Lcom/amap/api/mapcore/util/j2;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    const-string v5, "sdk_700"

    invoke-direct {v3, v4, p0, v1, v5}, Lcom/amap/api/mapcore/util/j2;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/j2$a;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/b0;->s:Lcom/amap/api/mapcore/util/j2;

    .line 22
    :cond_5
    :goto_0
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->s:Lcom/amap/api/mapcore/util/j2;

    invoke-virtual {v3, v0}, Lcom/amap/api/mapcore/util/j2;->b(Ljava/lang/String;)V

    .line 23
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->s:Lcom/amap/api/mapcore/util/j2;

    invoke-virtual {v3}, Lcom/amap/api/mapcore/util/j2;->c()V

    .line 24
    iget-object v3, p0, Lcom/amap/api/mapcore/util/b0;->t:Lcom/amap/api/mapcore/util/j2;

    if-nez v3, :cond_6

    .line 25
    new-instance v3, Lcom/amap/api/mapcore/util/j2;

    iget-object v4, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    const/4 v5, 0x0

    invoke-direct {v3, v4, p0, v2, v5}, Lcom/amap/api/mapcore/util/j2;-><init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/j2$a;ILjava/lang/String;)V

    iput-object v3, p0, Lcom/amap/api/mapcore/util/b0;->t:Lcom/amap/api/mapcore/util/j2;

    .line 26
    :cond_6
    iget-object v2, p0, Lcom/amap/api/mapcore/util/b0;->t:Lcom/amap/api/mapcore/util/j2;

    invoke-virtual {v2, v0}, Lcom/amap/api/mapcore/util/j2;->b(Ljava/lang/String;)V

    .line 27
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->t:Lcom/amap/api/mapcore/util/j2;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/j2;->c()V

    .line 28
    :cond_7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_8

    .line 29
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleDataPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleDataPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 30
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    .line 31
    :cond_8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v2

    if-eq v0, v2, :cond_9

    .line 32
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 33
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    .line 34
    :cond_9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_a

    .line 35
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTexturePath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTexturePath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 36
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->e:Z

    .line 37
    :cond_a
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v2

    if-eq v0, v2, :cond_b

    .line 38
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleTextureData()[B

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleTextureData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 39
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->e:Z

    .line 40
    :cond_b
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_c

    .line 41
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraPath(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 42
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    .line 43
    :cond_c
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v0

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object v2

    if-eq v0, v2, :cond_d

    .line 44
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->getStyleExtraData()[B

    move-result-object p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleExtraData([B)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 45
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    .line 46
    :cond_d
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    invoke-static {p1, v1}, Lcom/amap/api/mapcore/util/p3;->g(Landroid/content/Context;Z)V

    goto :goto_1

    .line 47
    :cond_e
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->o()V

    .line 48
    iget-object p1, p0, Lcom/amap/api/mapcore/util/b0;->h:Landroid/content/Context;

    invoke-static {p1, v2}, Lcom/amap/api/mapcore/util/p3;->g(Landroid/content/Context;Z)V

    .line 49
    :goto_1
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public f()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    monitor-enter p0

    .line 3
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->a:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isProFunctionAuthEnable()Z

    move-result v0

    if-nez v0, :cond_1

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setStyleId(Ljava/lang/String;)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 6
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->u:[B

    .line 7
    iput-object v1, p0, Lcom/amap/api/mapcore/util/b0;->v:[B

    :cond_1
    const/4 v0, 0x1

    .line 8
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->e:Z

    .line 9
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->d:Z

    .line 10
    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/b0;->r:Z

    if-eqz v1, :cond_2

    .line 11
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->f:Z

    .line 12
    :cond_2
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 13
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public h()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-nez v0, :cond_0

    .line 2
    new-instance v0, Lcom/amap/api/maps/model/CustomMapStyleOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/CustomMapStyleOptions;-><init>()V

    iput-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    :cond_0
    return-void
.end method

.method public j()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public k()V
    .locals 2

    .line 1
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/b0;->b:Lcom/amap/api/maps/model/CustomMapStyleOptions;

    if-eqz v0, :cond_0

    const/4 v1, 0x0

    .line 3
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/CustomMapStyleOptions;->setEnable(Z)Lcom/amap/api/maps/model/CustomMapStyleOptions;

    .line 4
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/b0;->o()V

    const/4 v0, 0x1

    .line 5
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/b0;->c:Z

    .line 6
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception v0

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method
