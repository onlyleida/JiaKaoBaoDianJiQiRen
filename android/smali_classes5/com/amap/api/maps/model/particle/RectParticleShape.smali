.class public Lcom/amap/api/maps/model/particle/RectParticleShape;
.super Lcom/amap/api/maps/model/particle/ParticleShapeModule;
.source "SourceFile"


# instance fields
.field private final bottom:F

.field private final left:F

.field private final right:F

.field private final top:F


# direct methods
.method public constructor <init>(FFFFZ)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleShapeModule;-><init>()V

    .line 2
    iput p1, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->left:F

    .line 3
    iput p2, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->top:F

    .line 4
    iput p3, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->right:F

    .line 5
    iput p4, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->bottom:F

    .line 6
    iput-boolean p5, p0, Lcom/amap/api/maps/model/particle/ParticleShapeModule;->isUseRatio:Z

    .line 7
    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/RectParticleShape;->createNativeInstace()V

    const/4 p1, 0x1

    .line 8
    iput p1, p0, Lcom/amap/api/maps/model/particle/ParticleShapeModule;->type:I

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 5

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->left:F

    iget v1, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->top:F

    iget v2, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->right:F

    iget v3, p0, Lcom/amap/api/maps/model/particle/RectParticleShape;->bottom:F

    iget-boolean v4, p0, Lcom/amap/api/maps/model/particle/ParticleShapeModule;->isUseRatio:Z

    invoke-static {v0, v1, v2, v3, v4}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateRectParticleShape(FFFFZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getPoint()[F
    .locals 1

    const/4 v0, 0x0

    return-object v0
.end method
