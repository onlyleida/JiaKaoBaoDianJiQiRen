.class Lcom/amap/api/mapcore/util/c1$e;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->i(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:I

.field final synthetic b:I

.field final synthetic c:I

.field final synthetic d:I

.field final synthetic e:Z

.field final synthetic f:Z

.field final synthetic g:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

.field final synthetic h:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$e;->h:Lcom/amap/api/mapcore/util/c1;

    iput p2, p0, Lcom/amap/api/mapcore/util/c1$e;->a:I

    iput p3, p0, Lcom/amap/api/mapcore/util/c1$e;->b:I

    iput p4, p0, Lcom/amap/api/mapcore/util/c1$e;->c:I

    iput p5, p0, Lcom/amap/api/mapcore/util/c1$e;->d:I

    iput-boolean p6, p0, Lcom/amap/api/mapcore/util/c1$e;->e:Z

    iput-boolean p7, p0, Lcom/amap/api/mapcore/util/c1$e;->f:Z

    iput-object p8, p0, Lcom/amap/api/mapcore/util/c1$e;->g:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$e;->h:Lcom/amap/api/mapcore/util/c1;

    iget-object v1, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    iget v2, p0, Lcom/amap/api/mapcore/util/c1$e;->a:I

    iget v3, p0, Lcom/amap/api/mapcore/util/c1$e;->b:I

    iget v4, p0, Lcom/amap/api/mapcore/util/c1$e;->c:I

    iget v5, p0, Lcom/amap/api/mapcore/util/c1$e;->d:I

    iget-boolean v6, p0, Lcom/amap/api/mapcore/util/c1$e;->e:Z

    iget-boolean v7, p0, Lcom/amap/api/mapcore/util/c1$e;->f:Z

    iget-object v8, p0, Lcom/amap/api/mapcore/util/c1$e;->g:[Lcom/autonavi/base/ae/gmap/style/StyleItem;

    invoke-virtual/range {v1 .. v8}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setMapModeAndStyle(IIIIZZ[Lcom/autonavi/base/ae/gmap/style/StyleItem;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
