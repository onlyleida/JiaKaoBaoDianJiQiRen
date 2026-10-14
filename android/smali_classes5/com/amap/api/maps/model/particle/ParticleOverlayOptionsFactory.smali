.class public Lcom/amap/api/maps/model/particle/ParticleOverlayOptionsFactory;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final PARTICLE_TYPE_HAZE:I = 0x3

.field public static final PARTICLE_TYPE_RAIN:I = 0x1

.field public static final PARTICLE_TYPE_SNOWY:I = 0x2

.field public static final PARTICLE_TYPE_SUNNY:I


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static a()Ljava/util/List;
    .locals 22
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    const/4 v2, 0x0

    .line 3
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const/4 v2, 0x1

    .line 4
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-wide/16 v3, 0x2710

    .line 5
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 6
    new-instance v5, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    long-to-int v6, v3

    invoke-direct {v5, v2, v6}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 7
    new-instance v5, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;

    const/high16 v6, 0x3f000000    # 0.5f

    const/4 v7, 0x0

    invoke-direct {v5, v6, v6, v7, v2}, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;-><init>(FFFZ)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 8
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 9
    new-instance v5, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;

    const/high16 v9, -0x3ee00000    # -10.0f

    const/high16 v10, -0x80000000

    const/high16 v11, -0x80000000

    const/high16 v12, -0x3e600000    # -20.0f

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;-><init>(FFFFFF)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string v5, "map_custom/particle/fog.png"

    .line 10
    invoke-static {v5}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 11
    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 12
    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v6

    mul-int/lit8 v6, v6, 0x5

    invoke-virtual {v5}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v5

    mul-int/lit8 v5, v5, 0x5

    invoke-virtual {v1, v6, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 13
    :cond_0
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 14
    new-instance v1, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    const/16 v5, 0x3e8

    .line 15
    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 16
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 17
    new-instance v5, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    const/16 v6, 0x1e

    const-wide/16 v7, 0x9c4

    long-to-int v8, v7

    invoke-direct {v5, v6, v8}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 18
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 19
    new-instance v2, Lcom/amap/api/maps/model/particle/RectParticleShape;

    const/high16 v10, 0x3f000000    # 0.5f

    const/high16 v11, 0x3f000000    # 0.5f

    const/high16 v12, 0x3f800000    # 1.0f

    const/high16 v13, 0x3f800000    # 1.0f

    const/4 v14, 0x1

    move-object v9, v2

    invoke-direct/range {v9 .. v14}, Lcom/amap/api/maps/model/particle/RectParticleShape;-><init>(FFFFZ)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 20
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 21
    new-instance v2, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;

    const/high16 v16, -0x3d380000    # -100.0f

    const/high16 v17, -0x3d380000    # -100.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/high16 v19, -0x3cb80000    # -200.0f

    const/high16 v20, 0x42c80000    # 100.0f

    const/high16 v21, 0x3f800000    # 1.0f

    move-object v15, v2

    invoke-direct/range {v15 .. v21}, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;-><init>(FFFFFF)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string v2, "map_custom/particle/haze.png"

    .line 22
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 23
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 24
    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v3

    invoke-virtual {v2}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v2

    invoke-virtual {v1, v3, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 25
    :cond_1
    new-instance v2, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;

    const/high16 v5, 0x437f0000    # 255.0f

    const/high16 v6, 0x437f0000    # 255.0f

    const/high16 v7, 0x437f0000    # 255.0f

    const/high16 v8, 0x42cc0000    # 102.0f

    const/high16 v9, 0x437f0000    # 255.0f

    const/high16 v10, 0x437f0000    # 255.0f

    const/high16 v11, 0x437f0000    # 255.0f

    const/high16 v12, 0x437f0000    # 255.0f

    move-object v4, v2

    invoke-direct/range {v4 .. v12}, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;-><init>(FFFFFFFF)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartColor(Lcom/amap/api/maps/model/particle/ColorGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 26
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method private static b()Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 10

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    const/16 v1, 0x3e8

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-wide/16 v2, 0x1388

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 4
    new-instance v2, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    const/16 v3, 0x14

    invoke-direct {v2, v3, v1}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;-><init>(II)V

    invoke-virtual {v0, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 6
    new-instance v1, Lcom/amap/api/maps/model/particle/RectParticleShape;

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const v6, 0x3dcccccd    # 0.1f

    const/4 v7, 0x1

    move-object v2, v1

    invoke-direct/range {v2 .. v7}, Lcom/amap/api/maps/model/particle/RectParticleShape;-><init>(FFFFZ)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-wide/16 v1, 0x2710

    .line 7
    invoke-virtual {v0, v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 8
    new-instance v1, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;

    const/high16 v4, -0x3db80000    # -50.0f

    const/high16 v5, 0x42c80000    # 100.0f

    const/4 v6, 0x0

    const/high16 v7, 0x42480000    # 50.0f

    const/high16 v8, 0x43480000    # 200.0f

    const/4 v9, 0x0

    move-object v3, v1

    invoke-direct/range {v3 .. v9}, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;-><init>(FFFFFF)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string v1, "map_custom/particle/snow.png"

    .line 9
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 11
    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v2

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    return-object v0
.end method

.method private static c()Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;
    .locals 17

    .line 1
    new-instance v0, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v0}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    const/16 v1, 0x3e8

    .line 2
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-wide/16 v2, 0x1388

    .line 3
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 4
    new-instance v4, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    const/16 v5, 0x64

    invoke-direct {v4, v5, v1}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;-><init>(II)V

    invoke-virtual {v0, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const/4 v1, 0x1

    .line 5
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 6
    invoke-virtual {v0, v2, v3}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 7
    new-instance v1, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;

    const/high16 v5, 0x41200000    # 10.0f

    const/high16 v6, 0x447a0000    # 1000.0f

    const/4 v7, 0x0

    const/high16 v8, 0x42c80000    # 100.0f

    const/high16 v9, 0x447a0000    # 1000.0f

    const/4 v10, 0x0

    move-object v4, v1

    invoke-direct/range {v4 .. v10}, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;-><init>(FFFFFF)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 8
    new-instance v1, Lcom/amap/api/maps/model/particle/RectParticleShape;

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/high16 v14, 0x3f800000    # 1.0f

    const v15, 0x3dcccccd    # 0.1f

    const/16 v16, 0x1

    move-object v11, v1

    invoke-direct/range {v11 .. v16}, Lcom/amap/api/maps/model/particle/RectParticleShape;-><init>(FFFFZ)V

    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string v1, "map_custom/particle/rain.png"

    .line 9
    invoke-static {v1}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 10
    invoke-virtual {v0, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 11
    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getWidth()I

    move-result v2

    mul-int/lit8 v2, v2, 0x2

    invoke-virtual {v1}, Lcom/amap/api/maps/model/BitmapDescriptor;->getHeight()I

    move-result v1

    mul-int/lit8 v1, v1, 0x2

    invoke-virtual {v0, v2, v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    :cond_0
    return-object v0
.end method

.method private static d()Ljava/util/List;
    .locals 15
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    new-instance v1, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    const/4 v2, 0x1

    .line 3
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-wide/16 v3, 0x2710

    .line 4
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 5
    new-instance v5, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    const-wide/16 v6, 0x9c4

    long-to-int v7, v6

    invoke-direct {v5, v2, v7}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;-><init>(II)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 6
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 7
    new-instance v5, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;

    const/4 v6, 0x0

    invoke-direct {v5, v6, v6, v6}, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;-><init>(FFF)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 8
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 9
    new-instance v5, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object v8, v5

    invoke-direct/range {v8 .. v14}, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;-><init>(FFFFFF)V

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 10
    new-instance v5, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    invoke-direct {v5}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;-><init>()V

    .line 11
    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string v5, "map_custom/particle/sun_0.png"

    .line 12
    invoke-static {v5}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v5

    invoke-virtual {v1, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const/16 v5, 0x3e8

    .line 13
    invoke-virtual {v1, v5, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 14
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 15
    new-instance v1, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    invoke-direct {v1}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;-><init>()V

    .line 16
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setMaxParticles(I)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 17
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setDuration(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 18
    new-instance v8, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;

    invoke-direct {v8, v2, v7}, Lcom/amap/api/maps/model/particle/ParticleEmissionModule;-><init>(II)V

    invoke-virtual {v1, v8}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleEmissionModule(Lcom/amap/api/maps/model/particle/ParticleEmissionModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 19
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setLoop(Z)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 20
    new-instance v2, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;

    invoke-direct {v2, v6, v6, v6}, Lcom/amap/api/maps/model/particle/SinglePointParticleShape;-><init>(FFF)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleShapeModule(Lcom/amap/api/maps/model/particle/ParticleShapeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 21
    invoke-virtual {v1, v3, v4}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleLifeTime(J)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 22
    new-instance v2, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;

    const/4 v8, 0x0

    move-object v7, v2

    invoke-direct/range {v7 .. v13}, Lcom/amap/api/maps/model/particle/RandomVelocityBetweenTwoConstants;-><init>(FFFFFF)V

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleStartSpeed(Lcom/amap/api/maps/model/particle/VelocityGenerate;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 23
    new-instance v2, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;

    invoke-direct {v2}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;-><init>()V

    .line 24
    new-instance v3, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;

    const/high16 v4, 0x42340000    # 45.0f

    invoke-direct {v3, v4}, Lcom/amap/api/maps/model/particle/ConstantRotationOverLife;-><init>(F)V

    invoke-virtual {v2, v3}, Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;->setRotateOverLife(Lcom/amap/api/maps/model/particle/RotationOverLife;)V

    .line 25
    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setParticleOverLifeModule(Lcom/amap/api/maps/model/particle/ParticleOverLifeModule;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    const-string v2, "map_custom/particle/sun_1.png"

    .line 26
    invoke-static {v2}, Lcom/amap/api/maps/model/BitmapDescriptorFactory;->fromAsset(Ljava/lang/String;)Lcom/amap/api/maps/model/BitmapDescriptor;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->icon(Lcom/amap/api/maps/model/BitmapDescriptor;)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 27
    invoke-virtual {v1, v5, v5}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;->setStartParticleSize(II)Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    .line 28
    invoke-interface {v0, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    return-object v0
.end method

.method public static defaultOptions(I)Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    if-eqz p0, :cond_3

    const/4 v1, 0x1

    if-eq p0, v1, :cond_2

    const/4 v1, 0x2

    if-eq p0, v1, :cond_1

    const/4 v1, 0x3

    if-eq p0, v1, :cond_0

    goto :goto_0

    .line 2
    :cond_0
    invoke-static {}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptionsFactory;->a()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    goto :goto_0

    .line 3
    :cond_1
    invoke-static {}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptionsFactory;->b()Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 4
    :cond_2
    invoke-static {}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptionsFactory;->c()Lcom/amap/api/maps/model/particle/ParticleOverlayOptions;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 5
    :cond_3
    invoke-static {}, Lcom/amap/api/maps/model/particle/ParticleOverlayOptionsFactory;->d()Ljava/util/List;

    move-result-object p0

    invoke-interface {v0, p0}, Ljava/util/List;->addAll(Ljava/util/Collection;)Z

    :goto_0
    return-object v0
.end method
