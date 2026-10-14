.class public Lcom/amap/api/maps/model/particle/ParticleOverlay;
.super Lcom/amap/api/maps/model/BaseOverlay;
.source "SourceFile"


# instance fields
.field private glOverlayLayerRef:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference<",
            "Lcom/amap/api/maps/interfaces/IGlOverlayLayer;",
            ">;"
        }
    .end annotation
.end field

.field private options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

.field private overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;


# direct methods
.method public constructor <init>(Lcom/amap/api/maps/interfaces/IGlOverlayLayer;Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)V
    .locals 1

    .line 3
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 4
    new-instance v0, Ljava/lang/ref/WeakReference;

    invoke-direct {v0, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    .line 5
    iput-object p2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string p1, ""

    .line 6
    iput-object p1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/BaseOverlay;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    return-void
.end method

.method private a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    .line 2
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz v0, :cond_0

    .line 3
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    iget-object v2, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-interface {v0, v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->updateOption(Ljava/lang/String;Ljava/lang/Object;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public destroy()V
    .locals 2

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->destroy()V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v0, :cond_1

    .line 4
    iget-object v1, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->removeOverlay(Ljava/lang/String;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 5
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public getCurrentParticleNum()I
    .locals 3

    const/4 v0, 0x0

    .line 1
    :try_start_0
    iget-object v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v1, :cond_0

    .line 2
    invoke-interface {v1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->getCurrentParticleNum()I

    move-result v0

    return v0

    .line 3
    :cond_0
    iget-object v1, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->glOverlayLayerRef:Ljava/lang/ref/WeakReference;

    invoke-virtual {v1}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/amap/api/maps/model/BaseOverlay;->overlayName:Ljava/lang/String;

    invoke-interface {v1, v2}, Lcom/amap/api/maps/interfaces/IGlOverlayLayer;->getCurrentParticleNum(Ljava/lang/String;)I

    move-result v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_1
    return v0

    :catchall_0
    move-exception v1

    .line 5
    invoke-virtual {v1}, Ljava/lang/Throwable;->printStackTrace()V

    return v0
.end method

.method public setDuration(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setDuration(J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setLoop(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setMaxParticles(I)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setMaxParticles(I)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParticleLifeTime(J)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setParticleLifeTime(J)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setStartParticleSize(II)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setStartParticleSize(II)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method

.method public setVisible(Z)V
    .locals 1

    .line 1
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->overlayDelegate:Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;

    if-eqz v0, :cond_0

    .line 2
    invoke-interface {v0, p1}, Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;->setVisible(Z)V

    goto :goto_0

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/ParticleOverlay;->options:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_1

    .line 4
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setVisible(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ParticleOverlay;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception p1

    .line 6
    invoke-virtual {p1}, Ljava/lang/Throwable;->printStackTrace()V

    :cond_1
    :goto_0
    return-void
.end method
