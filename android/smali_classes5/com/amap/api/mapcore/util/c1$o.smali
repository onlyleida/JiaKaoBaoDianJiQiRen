.class Lcom/amap/api/mapcore/util/c1$o;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/amap/api/mapcore/util/c1;->setLoadOfflineData(Z)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic a:Z

.field final synthetic b:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;Z)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$o;->b:Lcom/amap/api/mapcore/util/c1;

    iput-boolean p2, p0, Lcom/amap/api/mapcore/util/c1$o;->a:Z

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$o;->b:Lcom/amap/api/mapcore/util/c1;

    iget-object v0, v0, Lcom/amap/api/mapcore/util/c1;->E0:Lcom/autonavi/base/ae/gmap/GLMapEngine;

    if-eqz v0, :cond_0

    const/4 v1, 0x1

    .line 2
    iget-boolean v2, p0, Lcom/amap/api/mapcore/util/c1$o;->a:Z

    invoke-virtual {v0, v1, v2}, Lcom/autonavi/base/ae/gmap/GLMapEngine;->setOfflineDataEnable(IZ)V

    :cond_0
    return-void
.end method
