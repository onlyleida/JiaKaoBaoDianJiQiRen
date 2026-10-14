.class Lcom/amap/api/mapcore/util/c1$d0;
.super Lcom/amap/api/mapcore/util/c1$m0;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/amap/api/mapcore/util/c1;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic i:Lcom/amap/api/mapcore/util/c1;


# direct methods
.method constructor <init>(Lcom/amap/api/mapcore/util/c1;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/amap/api/mapcore/util/c1$d0;->i:Lcom/amap/api/mapcore/util/c1;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lcom/amap/api/mapcore/util/c1$m0;-><init>(Lcom/amap/api/mapcore/util/c1$k;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/amap/api/mapcore/util/c1$m0;->run()V

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/c1$d0;->i:Lcom/amap/api/mapcore/util/c1;

    iget-boolean v1, p0, Lcom/amap/api/mapcore/util/c1$m0;->b:Z

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/c1;->setRoadArrowEnable(Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 3
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :goto_0
    return-void
.end method
