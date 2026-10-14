.class public Lcom/amap/api/mapcore/util/j2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/amap/api/mapcore/util/j2$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

.field private c:Lcom/amap/api/mapcore/util/i2;

.field private d:Lcom/amap/api/mapcore/util/j2$a;

.field private e:I


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/amap/api/mapcore/util/j2$a;ILjava/lang/String;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput v0, p0, Lcom/amap/api/mapcore/util/j2;->e:I

    .line 3
    iput-object p1, p0, Lcom/amap/api/mapcore/util/j2;->a:Landroid/content/Context;

    .line 4
    iput-object p2, p0, Lcom/amap/api/mapcore/util/j2;->d:Lcom/amap/api/mapcore/util/j2$a;

    .line 5
    iput p3, p0, Lcom/amap/api/mapcore/util/j2;->e:I

    .line 6
    iget-object p2, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    if-nez p2, :cond_1

    .line 7
    new-instance p2, Lcom/amap/api/mapcore/util/i2;

    if-eqz p3, :cond_0

    const/4 v0, 0x1

    :cond_0
    const-string p3, ""

    invoke-direct {p2, p1, p3, v0}, Lcom/amap/api/mapcore/util/i2;-><init>(Landroid/content/Context;Ljava/lang/String;Z)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    .line 8
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    invoke-virtual {p1, p4}, Lcom/amap/api/mapcore/util/i2;->m(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;)V
    .locals 1

    .line 9
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 10
    iput v0, p0, Lcom/amap/api/mapcore/util/j2;->e:I

    .line 11
    iput-object p1, p0, Lcom/amap/api/mapcore/util/j2;->a:Landroid/content/Context;

    .line 12
    iput-object p2, p0, Lcom/amap/api/mapcore/util/j2;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    .line 13
    iget-object p2, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    if-nez p2, :cond_0

    .line 14
    new-instance p2, Lcom/amap/api/mapcore/util/i2;

    const-string v0, ""

    invoke-direct {p2, p1, v0}, Lcom/amap/api/mapcore/util/i2;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object p2, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    :cond_0
    return-void
.end method


# virtual methods
.method public a()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-object v0, p0, Lcom/amap/api/mapcore/util/j2;->a:Landroid/content/Context;

    .line 2
    iget-object v1, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    if-eqz v1, :cond_0

    .line 3
    iput-object v0, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    :cond_0
    return-void
.end method

.method public b(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/mapcore/util/i2;->o(Ljava/lang/String;)V

    :cond_0
    return-void
.end method

.method public c()V
    .locals 1

    .line 1
    invoke-static {}, Lcom/amap/api/mapcore/util/q3;->a()Lcom/amap/api/mapcore/util/q3;

    move-result-object v0

    invoke-virtual {v0, p0}, Lcom/amap/api/mapcore/util/q3;->b(Ljava/lang/Runnable;)V

    return-void
.end method

.method public run()V
    .locals 3

    .line 1
    :try_start_0
    invoke-static {}, Lcom/amap/api/maps/MapsInitializer;->getNetWorkEnable()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j2;->c:Lcom/amap/api/mapcore/util/i2;

    if-eqz v0, :cond_2

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/u4;->i()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/mapcore/util/i2$a;

    if-eqz v0, :cond_2

    .line 4
    iget-object v1, v0, Lcom/amap/api/mapcore/util/i2$a;->a:[B

    if-eqz v1, :cond_2

    .line 5
    iget-object v2, p0, Lcom/amap/api/mapcore/util/j2;->d:Lcom/amap/api/mapcore/util/j2$a;

    if-eqz v2, :cond_1

    .line 6
    iget v0, p0, Lcom/amap/api/mapcore/util/j2;->e:I

    invoke-interface {v2, v1, v0}, Lcom/amap/api/mapcore/util/j2$a;->a([BI)V

    goto :goto_0

    .line 7
    :cond_1
    iget-object v1, p0, Lcom/amap/api/mapcore/util/j2;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v1, :cond_2

    .line 8
    invoke-interface {v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->getMapConfig()Lcom/autonavi/base/amap/mapcore/MapConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/autonavi/base/amap/mapcore/MapConfig;->isCustomStyleEnable()Z

    move-result v2

    iget-object v0, v0, Lcom/amap/api/mapcore/util/i2$a;->a:[B

    invoke-interface {v1, v2, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->setCustomMapStyle(Z[B)V

    .line 9
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j2;->a:Landroid/content/Context;

    invoke-static {}, Lcom/amap/api/mapcore/util/r3;->u0()Lcom/amap/api/mapcore/util/m5;

    move-result-object v1

    invoke-static {v0, v1}, Lcom/amap/api/mapcore/util/e6;->g(Landroid/content/Context;Lcom/amap/api/mapcore/util/m5;)Lcom/amap/api/mapcore/util/e6;

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/j2;->b:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_3

    const/4 v1, 0x0

    .line 11
    invoke-interface {v0, v1}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->setRunLowFrame(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    const-string v1, "CustomStyleTask"

    const-string v2, "download customStyle"

    .line 12
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 13
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_3
    :goto_1
    return-void
.end method
