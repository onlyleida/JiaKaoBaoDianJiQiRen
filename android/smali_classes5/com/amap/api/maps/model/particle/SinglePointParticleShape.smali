.class public Lcom/amap/api/maps/model/particle/SinglePointParticleShape;
.super Lcom/amap/api/maps/model/particle/ParticleShapeModule;
.source "SourceFile"


# instance fields
.field private point_3:[F


# direct methods
.method public constructor <init>(FFF)V
    .locals 1

    const/4 v0, 0x0

    .line 6
    invoke-direct {p0, p1, p2, p3, v0}, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;-><init>(FFFZ)V

    return-void
.end method

.method public constructor <init>(FFFZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleShapeModule;-><init>()V

    const/4 v0, 0x3

    new-array v0, v0, [F

    .line 2
    iput-object v0, p0, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;->point_3:[F

    const/4 v1, 0x0

    aput p1, v0, v1

    const/4 p1, 0x1

    aput p2, v0, p1

    const/4 p1, 0x2

    aput p3, v0, p1

    .line 3
    iput-boolean p4, p0, Lcom/amap/api/maps/model/particle/ParticleShapeModule;->isUseRatio:Z

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;->createNativeInstace()V

    .line 5
    iput v1, p0, Lcom/amap/api/maps/model/particle/ParticleShapeModule;->type:I

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 4

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;->point_3:[F

    const/4 v1, 0x0

    aget v1, v0, v1

    const/4 v2, 0x1

    aget v2, v0, v2

    const/4 v3, 0x2

    aget v0, v0, v3

    iget-boolean v3, p0, Lcom/amap/api/maps/model/particle/ParticleShapeModule;->isUseRatio:Z

    invoke-static {v1, v2, v0, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateSinglePointParticleShape(FFFZ)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getPoint()[F
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;->point_3:[F

    return-object v0
.end method
