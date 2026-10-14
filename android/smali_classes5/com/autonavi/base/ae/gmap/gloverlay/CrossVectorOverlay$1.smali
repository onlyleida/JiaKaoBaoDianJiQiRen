.class Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->setData([B)I
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

.field final synthetic val$mapHeight:I

.field final synthetic val$mapWidth:I


# direct methods
.method constructor <init>(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iput p2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->val$mapWidth:I

    iput p3, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->val$mapHeight:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    iget-object v0, v0, Lcom/autonavi/base/ae/gmap/gloverlay/BaseMapOverlay;->mGLOverlay:Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;

    if-eqz v0, :cond_0

    check-cast v0, Lcom/autonavi/base/ae/gmap/gloverlay/GLCrossVector;

    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/GLOverlay;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/mapcore/util/ia;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/mapcore/util/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ia;->o()Z

    move-result v0

    if-nez v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/mapcore/util/ia;

    move-result-object v0

    iget v1, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->val$mapWidth:I

    iget v2, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->val$mapHeight:I

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/mapcore/util/ia;->e(II)V

    .line 4
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay$1;->this$0:Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;

    invoke-static {v0}, Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;->access$000(Lcom/autonavi/base/ae/gmap/gloverlay/CrossVectorOverlay;)Lcom/amap/api/mapcore/util/ia;

    move-result-object v0

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ia;->d()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    const-string v1, "CrossVectorOverlay"

    const-string v2, "setData"

    .line 5
    invoke-static {v0, v1, v2}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    :goto_0
    return-void
.end method
