.class public interface abstract Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;
.super Ljava/lang/Object;
.source "SourceFile"


# virtual methods
.method public abstract destroy()V
.end method

.method public abstract getCurrentParticleNum()I
.end method

.method public abstract pause()V
.end method

.method public abstract setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
.end method

.method public abstract setDuration(J)V
.end method

.method public abstract setLoop(Z)V
.end method

.method public abstract setMaxParticles(I)V
.end method

.method public abstract setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V
.end method

.method public abstract setParticleLifeTime(J)V
.end method

.method public abstract setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V
.end method

.method public abstract setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V
.end method

.method public abstract setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V
.end method

.method public abstract setPreWram(Z)V
.end method

.method public abstract setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V
.end method

.method public abstract setStartParticleSize(II)V
.end method

.method public abstract setVisible(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract start()V
.end method

.method public abstract stop()V
.end method
