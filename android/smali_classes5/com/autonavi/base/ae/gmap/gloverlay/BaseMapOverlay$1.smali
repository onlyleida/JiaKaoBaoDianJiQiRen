.class Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->releaseInstance()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 2
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    iget-object v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    if-eqz v0, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/autonavi/amap/mapcore/interfaces/IAMap;->isMaploaded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    iget-object v1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mMapView:Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    invoke-interface {v1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeEngineGLOverlay(Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;)V

    .line 5
    :cond_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->getGLOverlay()Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    move-result-object v0

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->releaseInstance()V

    .line 6
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;

    const/4 v1, 0x0

    iput-object v1, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    :cond_1
    return-void
.end method
