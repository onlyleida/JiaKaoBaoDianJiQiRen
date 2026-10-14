.class Lcom/amap/api/mapcore/util/c1$s;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->setMyTrafficStyle(Lcom/amap/api/maps/model/MyTrafficStyle;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$s;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 7

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$s;->a:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    const/4 v2, 0x1

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->H0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSmoothColor()I

    move-result v3

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$s;->a:Lcom/amap/api/mapcore/util/c1;

    .line 2
    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->H0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSlowColor()I

    move-result v4

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$s;->a:Lcom/amap/api/mapcore/util/c1;

    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->H0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getCongestedColor()I

    move-result v5

    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$s;->a:Lcom/amap/api/mapcore/util/c1;

    .line 3
    invoke-static {v0}, Lcom/amap/api/mapcore/util/c1;->H0(Lcom/amap/api/mapcore/util/c1;)Lcom/amap/api/maps/model/MyTrafficStyle;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/maps/model/MyTrafficStyle;->getSeriousCongestedColor()I

    move-result v6

    .line 4
    invoke-virtual/range {v1 .. v6}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setTrafficStyle(IIIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
