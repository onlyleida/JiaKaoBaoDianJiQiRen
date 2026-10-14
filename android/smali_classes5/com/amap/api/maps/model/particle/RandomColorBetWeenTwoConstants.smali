.class public Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;
.super Lcom/amap/api/maps/model/particle/ColorGenerate;
.source "SourceFile"


# instance fields
.field private a:F

.field private a1:F

.field private b:F

.field private b1:F

.field private color:[F

.field private g:F

.field private g1:F

.field private r:F

.field private r1:F

.field private random:Ljava/util/Random;


# direct methods
.method public constructor <init>(FFFFFFFF)V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/amap/api/maps/model/particle/ColorGenerate;-><init>()V

    const/4 v0, 0x4

    new-array v0, v0, [F

    .line 2
    fill-array-data v0, :array_0

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->color:[F

    .line 3
    new-instance v0, Ljava/util/Random;

    invoke-direct {v0}, Ljava/util/Random;-><init>()V

    iput-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->random:Ljava/util/Random;

    const/high16 v0, 0x437f0000    # 255.0f

    div-float/2addr p1, v0

    .line 4
    iput p1, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->r:F

    div-float/2addr p2, v0

    .line 5
    iput p2, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->g:F

    div-float/2addr p3, v0

    .line 6
    iput p3, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->b:F

    div-float/2addr p4, v0

    .line 7
    iput p4, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->a:F

    div-float/2addr p5, v0

    .line 8
    iput p5, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->r1:F

    div-float/2addr p6, v0

    .line 9
    iput p6, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->g1:F

    div-float/2addr p7, v0

    .line 10
    iput p7, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->b1:F

    div-float/2addr p8, v0

    .line 11
    iput p8, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->a1:F

    .line 12
    invoke-virtual {p0}, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->createNativeInstace()V

    const/4 p1, 0x0

    .line 13
    iput p1, p0, Lcom/amap/api/maps/model/particle/ColorGenerate;->type:I

    return-void

    nop

    :array_0
    .array-data 4
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
        0x3f800000    # 1.0f
    .end array-data
.end method


# virtual methods
.method public createNativeInstace()V
    .locals 8

    .line 1
    :try_start_0
    iget v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->r:F

    iget v1, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->g:F

    iget v2, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->b:F

    iget v3, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->a:F

    iget v4, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->r1:F

    iget v5, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->g1:F

    iget v6, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->b1:F

    iget v7, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->a1:F

    invoke-static/range {v0 .. v7}, Lcom/autonavi/base/amap/mapcore/AMapNativeParticleSystem;->nativeCreateRandomColorBetWeenTwoConstants(FFFFFFFF)J

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/amap/mapcore/AbstractNativeInstance;->nativeInstance:J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :catchall_0
    return-void
.end method

.method public getColor()[F
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->color:[F

    iget-object v1, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->r1:F

    iget v3, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->r:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 2
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->color:[F

    iget-object v1, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->g1:F

    iget v3, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->g:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 3
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->color:[F

    iget-object v1, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->b1:F

    iget v3, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->b:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 4
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->color:[F

    iget-object v1, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->random:Ljava/util/Random;

    invoke-virtual {v1}, Ljava/util/Random;->nextFloat()F

    move-result v1

    iget v2, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->a1:F

    iget v3, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->a:F

    sub-float/2addr v2, v3

    mul-float v1, v1, v2

    add-float/2addr v1, v3

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 5
    iget-object v0, p0, Lcom/amap/api/maps/model/particle/RandomColorBetWeenTwoConstants;->color:[F

    return-object v0
.end method
