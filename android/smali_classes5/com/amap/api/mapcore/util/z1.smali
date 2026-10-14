.class public Lcom/amap/api/mapcore/util/z1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/autonavi/amap/api/mapcore/overlays/IParticleLatyer;
.implements Lcom/autonavi/base/amap/api/mapcore/overlays/IOverlayDelegate;


# instance fields
.field private a:J

.field private b:Lcom/amap/api/mapcore/util/h2;

.field private c:Lcom/amap/api/mapcore/util/r;

.field private d:Z

.field private e:F

.field private f:Ljava/lang/String;

.field private g:Lcom/amap/api/maps/model/BitmapDescriptor;

.field private h:Z

.field private i:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcom/amap/api/mapcore/util/ha;",
            ">;"
        }
    .end annotation
.end field

.field private j:I

.field private k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

.field private l:Z

.field m:F

.field n:I

.field o:I

.field private p:F

.field private q:F

.field private r:[F

.field private s:[F

.field private t:[F


# direct methods
.method public constructor <init>(Lcom/amap/api/mapcore/util/r;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const/4 v0, 0x1

    .line 3
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z1;->d:Z

    const/high16 v0, 0x3f800000    # 1.0f

    .line 4
    iput v0, p0, Lcom/amap/api/mapcore/util/z1;->e:F

    const/4 v1, 0x0

    .line 5
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/z1;->h:Z

    .line 6
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    .line 7
    iput v1, p0, Lcom/amap/api/mapcore/util/z1;->j:I

    .line 8
    new-instance v2, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    iput-object v2, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 9
    iput-boolean v1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 10
    iput v0, p0, Lcom/amap/api/mapcore/util/z1;->m:F

    .line 11
    iput v1, p0, Lcom/amap/api/mapcore/util/z1;->n:I

    .line 12
    iput v1, p0, Lcom/amap/api/mapcore/util/z1;->o:I

    const/high16 v0, -0x40800000    # -1.0f

    .line 13
    iput v0, p0, Lcom/amap/api/mapcore/util/z1;->p:F

    .line 14
    iput v0, p0, Lcom/amap/api/mapcore/util/z1;->q:F

    const/16 v0, 0x10

    new-array v1, v0, [F

    .line 15
    iput-object v1, p0, Lcom/amap/api/mapcore/util/z1;->r:[F

    new-array v1, v0, [F

    .line 16
    iput-object v1, p0, Lcom/amap/api/mapcore/util/z1;->s:[F

    new-array v0, v0, [F

    .line 17
    iput-object v0, p0, Lcom/amap/api/mapcore/util/z1;->t:[F

    .line 18
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    .line 19
    :try_start_0
    invoke-virtual {p0}, Lcom/amap/api/mapcore/util/z1;->getId()Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/amap/api/mapcore/util/z1;->f:Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    const-string v0, "ParticleLayerDelegateImp"

    const-string v1, "create"

    .line 20
    invoke-static {p1, v0, v1}, Lcom/amap/api/mapcore/util/e6;->r(Ljava/lang/Throwable;Ljava/lang/String;Ljava/lang/String;)V

    .line 21
    invoke-virtual {p1}, Landroid/os/RemoteException;->printStackTrace()V

    :goto_0
    return-void
.end method

.method private a()I
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/z1;->h:Z

    if-nez v0, :cond_1

    .line 2
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    const/4 v2, 0x1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    .line 3
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z1;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-direct {p0, v0, v1}, Lcom/amap/api/mapcore/util/z1;->b(ZLcom/amap/api/maps/model/BitmapDescriptor;)I

    move-result v0

    .line 4
    iput-boolean v2, p0, Lcom/amap/api/mapcore/util/z1;->h:Z

    return v0

    .line 5
    :cond_1
    iget v0, p0, Lcom/amap/api/mapcore/util/z1;->j:I

    return v0
.end method

.method private b(ZLcom/amap/api/maps/model/BitmapDescriptor;)I
    .locals 3

    .line 1
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z1;->e()V

    if-eqz p1, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0, p2}, Lcom/amap/api/mapcore/util/r;->a(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/mapcore/util/ha;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/ha;->u()I

    move-result p1

    .line 4
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/z1;->c(Lcom/amap/api/mapcore/util/ha;)V

    return p1

    :cond_0
    const/4 v0, 0x0

    :cond_1
    const/4 v1, 0x0

    if-nez v0, :cond_2

    .line 5
    new-instance v0, Lcom/amap/api/mapcore/util/ha;

    invoke-direct {v0, p2, v1}, Lcom/amap/api/mapcore/util/ha;-><init>(Lcom/amap/api/maps/model/BitmapDescriptor;I)V

    .line 6
    :cond_2
    invoke-virtual {p2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object p2

    if-eqz p2, :cond_4

    .line 7
    invoke-virtual {p2}, Landroid/graphics/Bitmap;->isRecycled()Z

    move-result v2

    if-nez v2, :cond_4

    .line 8
    invoke-direct {p0}, Lcom/amap/api/mapcore/util/z1;->f()I

    move-result v1

    .line 9
    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/ha;->b(I)V

    if-eqz p1, :cond_3

    .line 10
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object p1

    invoke-interface {p1, v0}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->addTextureItem(Lcom/amap/api/mapcore/util/ha;)V

    .line 11
    :cond_3
    invoke-direct {p0, v0}, Lcom/amap/api/mapcore/util/z1;->c(Lcom/amap/api/mapcore/util/ha;)V

    const/4 p1, 0x1

    .line 12
    invoke-static {v1, p2, p1}, Lcom/amap/api/mapcore/util/r3;->c0(ILandroid/graphics/Bitmap;Z)I

    :cond_4
    return v1
.end method

.method private c(Lcom/amap/api/mapcore/util/ha;)V
    .locals 1

    if-eqz p1, :cond_0

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2
    invoke-virtual {p1}, Lcom/amap/api/mapcore/util/ha;->w()V

    :cond_0
    return-void
.end method

.method private e()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    if-eqz v0, :cond_2

    .line 2
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    if-eqz v2, :cond_0

    .line 4
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r;->o(Lcom/amap/api/mapcore/util/ha;)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    :cond_2
    return-void
.end method

.method private f()I
    .locals 3

    const/4 v0, 0x1

    new-array v1, v0, [I

    const/4 v2, 0x0

    aput v2, v1, v2

    .line 1
    invoke-static {v0, v1, v2}, Landroid/opengl/GLES20;->glGenTextures(I[II)V

    .line 2
    aget v0, v1, v2

    return v0
.end method

.method private g()V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_4

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getMaxParticles()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setMaxParticles(I)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getDuration()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/z1;->setDuration(J)V

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isLoop()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setLoop(Z)V

    const/4 v0, 0x1

    .line 5
    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setPreWram(Z)V

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleLifeTime()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/z1;->setParticleLifeTime(J)V

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartSpeed()Lcom/amap/api/maps/model/particle/VelocityGenerate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V

    .line 10
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V

    .line 12
    :cond_1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;

    move-result-object v0

    if-eqz v0, :cond_2

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V

    .line 14
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getStartParticleW()I

    move-result v0

    iget-object v1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getstartParticleH()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/amap/api/mapcore/util/z1;->setStartParticleSize(II)V

    :cond_4
    return-void
.end method


# virtual methods
.method public calMapFPoint()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public checkInBounds()Z
    .locals 1

    const/4 v0, 0x1

    return v0
.end method

.method public d(Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;)V
    .locals 3

    .line 1
    monitor-enter p0

    if-eqz p1, :cond_0

    .line 2
    :try_start_0
    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getIcon()Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/amap/api/mapcore/util/z1;->setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V

    .line 3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getMaxParticles()I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 4
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isLoop()Z

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getDuration()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 6
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleLifeTime()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 7
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleEmissionModule()Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 8
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleShapeModule()Lcom/amap/api/maps/model/particle/ParticleShapeModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 9
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartSpeed()Lcom/amap/api/maps/model/particle/VelocityGenerate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 10
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleStartColor()Lcom/amap/api/maps/model/particle/ColorGenerate;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 11
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getParticleOverLifeModule()Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 12
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getStartParticleW()I

    move-result v1

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getstartParticleH()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 13
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getZIndex()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->zIndex(F)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 14
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->getZIndex()F

    move-result v0

    iput v0, p0, Lcom/amap/api/mapcore/util/z1;->e:F

    .line 15
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isVisibile()Z

    move-result p1

    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setVisible(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 16
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->isVisibile()Z

    move-result p1

    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->d:Z

    const/4 p1, 0x1

    .line 17
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 18
    :cond_0
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public destroy()V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    if-eqz v0, :cond_3

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_3

    const/4 v0, 0x0

    .line 2
    :goto_0
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 3
    iget-object v1, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/amap/api/mapcore/util/ha;

    if-eqz v1, :cond_1

    .line 4
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    if-eqz v2, :cond_0

    .line 5
    invoke-virtual {v2, v1}, Lcom/amap/api/mapcore/util/r;->o(Lcom/amap/api/mapcore/util/ha;)V

    .line 6
    :cond_0
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 7
    iget-object v2, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v2}, Lcom/amap/api/mapcore/util/r;->A()Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;

    move-result-object v2

    invoke-virtual {v1}, Lcom/amap/api/mapcore/util/ha;->z()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v2, v1}, Lcom/autonavi/base/amap/api/mapcore/IAMapDelegate;->removeTextureItem(Ljava/lang/String;)V

    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 8
    :cond_2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->i:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 9
    :cond_3
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    if-eqz v0, :cond_4

    .line 10
    invoke-virtual {v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->getBitmap()Landroid/graphics/Bitmap;

    move-result-object v0

    if-eqz v0, :cond_4

    .line 11
    invoke-static {v0}, Lcom/amap/api/mapcore/util/r3;->g0(Landroid/graphics/Bitmap;)V

    const/4 v0, 0x0

    .line 12
    iput-object v0, p0, Lcom/amap/api/mapcore/util/z1;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 13
    :cond_4
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_5

    .line 14
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeDestroy(J)J

    :cond_5
    return-void
.end method

.method public draw(Lcom/autonavi/base/amap/mapcore/MapConfig;)V
    .locals 24
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    move-object/from16 v1, p0

    .line 1
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->b:Lcom/amap/api/mapcore/util/h2;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/r;->t()Lcom/amap/api/mapcore/util/h2;

    move-result-object v0

    iput-object v0, v1, Lcom/amap/api/mapcore/util/z1;->b:Lcom/amap/api/mapcore/util/h2;

    .line 3
    :cond_0
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->b:Lcom/amap/api/mapcore/util/h2;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    iget-wide v2, v1, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v4, 0x0

    cmp-long v0, v2, v4

    if-nez v0, :cond_2

    .line 5
    invoke-static {}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreate()J

    move-result-wide v2

    iput-wide v2, v1, Lcom/amap/api/mapcore/util/z1;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_2

    .line 6
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->b:Lcom/amap/api/mapcore/util/h2;

    if-eqz v0, :cond_2

    .line 7
    invoke-virtual {v0}, Lcom/amap/api/mapcore/util/h2;->a()J

    move-result-wide v6

    invoke-static {v2, v3, v6, v7}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetGLShaderManager(JJ)V

    .line 8
    :cond_2
    iget-wide v2, v1, Lcom/amap/api/mapcore/util/z1;->a:J

    cmp-long v0, v2, v4

    if-eqz v0, :cond_a

    .line 9
    monitor-enter p0

    .line 10
    :try_start_0
    iget-boolean v0, v1, Lcom/amap/api/mapcore/util/z1;->l:Z

    const/4 v2, 0x0

    if-eqz v0, :cond_3

    .line 11
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/z1;->g()V

    .line 12
    iput-boolean v2, v1, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 13
    :cond_3
    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 14
    invoke-direct/range {p0 .. p0}, Lcom/amap/api/mapcore/util/z1;->a()I

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/z1;->j:I

    if-nez v0, :cond_4

    return-void

    .line 15
    :cond_4
    iget-wide v3, v1, Lcom/amap/api/mapcore/util/z1;->a:J

    invoke-static {v3, v4, v0}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeSetTextureId(JI)V

    .line 16
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    if-eqz v0, :cond_5

    .line 17
    invoke-virtual {v0, v2}, Lcom/amap/api/mapcore/util/r;->q(Z)V

    .line 18
    :cond_5
    iget v0, v1, Lcom/amap/api/mapcore/util/z1;->n:I

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapWidth()I

    move-result v3

    if-ne v0, v3, :cond_6

    iget v0, v1, Lcom/amap/api/mapcore/util/z1;->o:I

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapHeight()I

    move-result v3

    if-eq v0, v3, :cond_9

    .line 19
    :cond_6
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapWidth()I

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/z1;->n:I

    .line 20
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getMapHeight()I

    move-result v0

    iput v0, v1, Lcom/amap/api/mapcore/util/z1;->o:I

    .line 21
    iget v3, v1, Lcom/amap/api/mapcore/util/z1;->n:I

    if-le v3, v0, :cond_7

    int-to-float v4, v3

    int-to-float v5, v0

    goto :goto_0

    :cond_7
    int-to-float v4, v0

    int-to-float v5, v3

    :goto_0
    div-float/2addr v4, v5

    iput v4, v1, Lcom/amap/api/mapcore/util/z1;->m:F

    if-le v3, v0, :cond_8

    neg-float v0, v4

    .line 22
    iput v0, v1, Lcom/amap/api/mapcore/util/z1;->p:F

    const/high16 v0, 0x3f800000    # 1.0f

    .line 23
    iput v0, v1, Lcom/amap/api/mapcore/util/z1;->q:F

    goto :goto_1

    :cond_8
    const/high16 v0, -0x40800000    # -1.0f

    .line 24
    iput v0, v1, Lcom/amap/api/mapcore/util/z1;->p:F

    .line 25
    iput v4, v1, Lcom/amap/api/mapcore/util/z1;->q:F

    .line 26
    :goto_1
    iget-object v5, v1, Lcom/amap/api/mapcore/util/z1;->r:[F

    const/4 v6, 0x0

    iget v7, v1, Lcom/amap/api/mapcore/util/z1;->p:F

    neg-float v8, v7

    iget v10, v1, Lcom/amap/api/mapcore/util/z1;->q:F

    neg-float v9, v10

    const/high16 v11, 0x40400000    # 3.0f

    const/high16 v12, 0x40e00000    # 7.0f

    invoke-static/range {v5 .. v12}, Landroid/opengl/Matrix;->orthoM([FIFFFFFF)V

    .line 27
    iget-object v13, v1, Lcom/amap/api/mapcore/util/z1;->s:[F

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/high16 v17, 0x40400000    # 3.0f

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/high16 v22, 0x3f800000    # 1.0f

    const/16 v23, 0x0

    invoke-static/range {v13 .. v23}, Landroid/opengl/Matrix;->setLookAtM([FIFFFFFFFFF)V

    .line 28
    :cond_9
    iget-object v3, v1, Lcom/amap/api/mapcore/util/z1;->t:[F

    const/4 v4, 0x0

    iget-object v5, v1, Lcom/amap/api/mapcore/util/z1;->r:[F

    const/4 v6, 0x0

    iget-object v7, v1, Lcom/amap/api/mapcore/util/z1;->s:[F

    const/4 v8, 0x0

    invoke-static/range {v3 .. v8}, Landroid/opengl/Matrix;->multiplyMM([FI[FI[FI)V

    .line 29
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->t:[F

    iget v3, v1, Lcom/amap/api/mapcore/util/z1;->p:F

    iget v4, v1, Lcom/amap/api/mapcore/util/z1;->q:F

    const/4 v5, 0x0

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/Matrix;->translateM([FIFFF)V

    .line 30
    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->t:[F

    iget v3, v1, Lcom/amap/api/mapcore/util/z1;->p:F

    const/high16 v4, 0x40000000    # 2.0f

    mul-float v3, v3, v4

    invoke-static {v3}, Ljava/lang/Math;->abs(F)F

    move-result v3

    iget v6, v1, Lcom/amap/api/mapcore/util/z1;->n:I

    int-to-float v6, v6

    div-float/2addr v3, v6

    iget v6, v1, Lcom/amap/api/mapcore/util/z1;->q:F

    mul-float v6, v6, v4

    invoke-static {v6}, Ljava/lang/Math;->abs(F)F

    move-result v4

    iget v6, v1, Lcom/amap/api/mapcore/util/z1;->o:I

    int-to-float v6, v6

    div-float/2addr v4, v6

    invoke-static {v0, v2, v3, v4, v5}, Landroid/opengl/Matrix;->scaleM([FIFFF)V

    .line 31
    iget-wide v6, v1, Lcom/amap/api/mapcore/util/z1;->a:J

    iget-object v0, v1, Lcom/amap/api/mapcore/util/z1;->t:[F

    invoke-virtual {v0}, [F->clone()Ljava/lang/Object;

    move-result-object v0

    move-object v8, v0

    check-cast v8, [F

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getProjectionMatrix()[F

    move-result-object v9

    .line 32
    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSX()D

    move-result-wide v2

    double-to-int v10, v2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSY()D

    move-result-wide v2

    double-to-int v11, v2

    invoke-virtual/range {p1 .. p1}, Lcom/autonavi/base/amap/mapcore/MapConfig;->getSZ()F

    move-result v12

    iget v0, v1, Lcom/amap/api/mapcore/util/z1;->n:I

    int-to-float v13, v0

    iget v0, v1, Lcom/amap/api/mapcore/util/z1;->o:I

    int-to-float v14, v0

    .line 33
    invoke-static/range {v6 .. v14}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeRender(J[F[FIIFFF)V

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 34
    :try_start_1
    monitor-exit p0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0

    :cond_a
    :goto_2
    return-void
.end method

.method public equalsRemote(Lcom/autonavi/amap/mapcore/interfaces/IOverlay;)Z
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 p1, 0x0

    return p1
.end method

.method public getCurrentParticleNum()I
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->getCurrentParticleNum(J)I

    move-result v0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public getId()Ljava/lang/String;
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->f:Ljava/lang/String;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->c:Lcom/amap/api/mapcore/util/r;

    const-string v1, "Particle"

    invoke-virtual {v0, v1}, Lcom/amap/api/mapcore/util/r;->l(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/amap/api/mapcore/util/z1;->f:Ljava/lang/String;

    .line 3
    :cond_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->f:Ljava/lang/String;

    return-object v0
.end method

.method public getZIndex()F
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget v0, p0, Lcom/amap/api/mapcore/util/z1;->e:F

    return v0
.end method

.method public hashCodeRemote()I
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    const/4 v0, 0x0

    return v0
.end method

.method public isAboveMaskLayer()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isDrawFinish()Z
    .locals 1

    const/4 v0, 0x0

    return v0
.end method

.method public isVisible()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iget-boolean v0, p0, Lcom/amap/api/mapcore/util/z1;->d:Z

    return v0
.end method

.method public pause()V
    .locals 0

    return-void
.end method

.method public remove()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    return-void
.end method

.method public setAboveMaskLayer(Z)V
    .locals 0

    return-void
.end method

.method public setCustomTexture(Lcom/amap/api/maps/model/BitmapDescriptor;)V
    .locals 1

    if-nez p1, :cond_0

    return-void

    .line 1
    :cond_0
    monitor-enter p0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    invoke-virtual {p1, v0}, Lcom/amap/api/maps/model/BitmapDescriptor;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 3
    monitor-exit p0

    return-void

    :cond_1
    const/4 v0, 0x0

    .line 4
    iput-boolean v0, p0, Lcom/amap/api/mapcore/util/z1;->h:Z

    .line 5
    iput-object p1, p0, Lcom/amap/api/mapcore/util/z1;->g:Lcom/amap/api/maps/model/BitmapDescriptor;

    .line 6
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1
.end method

.method public setDuration(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setDuration(JJ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setLoop(Z)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setLoop(JZ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setMaxParticles(I)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v0, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setMaxParticles(JI)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setParticleEmission(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;->createNativeInstace()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleEmission(JJ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    .line 8
    monitor-enter p0

    const/4 p1, 0x1

    .line 9
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setParticleLifeTime(J)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleLifeTime(JJ)V

    goto :goto_0

    .line 5
    :cond_1
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_2

    .line 6
    monitor-enter p0

    const/4 p1, 0x1

    .line 7
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 8
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_2
    :goto_0
    return-void
.end method

.method public setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->createNativeInstace()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleOverLifeModule(JJ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    .line 8
    monitor-enter p0

    const/4 p1, 0x1

    .line 9
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleShapeModule(JJ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    .line 8
    monitor-enter p0

    const/4 p1, 0x1

    .line 9
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setParticleStartSpeed(JJ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    .line 8
    monitor-enter p0

    const/4 p1, 0x1

    .line 9
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setPreWram(Z)V
    .locals 5

    .line 1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_0

    .line 2
    invoke-static {v0, v1, p1}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setPreWram(JZ)V

    :cond_0
    return-void
.end method

.method public setStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_2

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v0

    cmp-long v4, v0, v2

    if-nez v4, :cond_1

    .line 5
    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->createNativeInstace()V

    .line 6
    :cond_1
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    invoke-virtual {p1}, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->getNativeInstance()J

    move-result-wide v2

    invoke-static {v0, v1, v2, v3}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setStartColor(JJ)V

    goto :goto_0

    .line 7
    :cond_2
    iget-object p1, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz p1, :cond_3

    .line 8
    monitor-enter p0

    const/4 p1, 0x1

    .line 9
    :try_start_0
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->l:Z

    .line 10
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    :cond_3
    :goto_0
    return-void
.end method

.method public setStartParticleSize(II)V
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/amap/api/mapcore/util/z1;->k:Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 3
    :cond_0
    iget-wide v0, p0, Lcom/amap/api/mapcore/util/z1;->a:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-eqz v4, :cond_1

    int-to-float p1, p1

    int-to-float p2, p2

    .line 4
    invoke-static {v0, v1, p1, p2}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->setStartParticleSize(JFF)V

    :cond_1
    return-void
.end method

.method public setVisible(Z)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput-boolean p1, p0, Lcom/amap/api/mapcore/util/z1;->d:Z

    return-void
.end method

.method public setZIndex(F)V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .line 1
    iput p1, p0, Lcom/amap/api/mapcore/util/z1;->e:F

    return-void
.end method

.method public start()V
    .locals 0

    return-void
.end method

.method public stop()V
    .locals 0

    return-void
.end method
