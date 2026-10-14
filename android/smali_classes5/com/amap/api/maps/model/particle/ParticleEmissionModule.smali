.class public Lcom/amap/api/maps/model/particle/ParticleEmissionModule;
.super Lcom/autonavi/amap/mapcore/AbstractNativeInstance;
.source "SourceFile"


# instance fields
.field private final rate:I

.field private final rateTime:I


# direct methods
.method public constructor <init>(II)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;-><init>()V

    .line 2
    iput p1, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rate:I

    .line 3
    iput p2, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rateTime:I

    .line 4
    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->createNativeInstace()V

    return-void
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 2

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rate:I

    iget v1, p0, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->rateTime:I

    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateParticleEmissionModule(II)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method protected finalize()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .line 1
    invoke-super {p0}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->finalize()V

    .line 2
    iget-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 3
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeReleaseParticleEmissonModule(J)V

    .line 4
    iput-wide v2, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J

    :cond_0
    return-void
.end method
