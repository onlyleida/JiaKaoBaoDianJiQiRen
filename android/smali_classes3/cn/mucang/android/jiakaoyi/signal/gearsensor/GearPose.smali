.class public Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final MAX:F = 1000000.0f


# instance fields
.field public a:F

.field public transient canCalculate:Z

.field public endRoll:F

.field public transient factor:F

.field public gear:I

.field public transient hasCrossMustLine:Z

.field public height:F

.field public line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

.field public maxPitch:F

.field public maxRoll:F

.field public maxYaw:F

.field public minPitch:F

.field public minRoll:F

.field public minYaw:F

.field public offset:F

.field public pitch:F

.field public points:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Lcn/mucang/android/jiakaoyi/signal/pos/Pos;",
            ">;"
        }
    .end annotation
.end field

.field public roll:F

.field public transient src:Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;

.field public startRoll:F

.field public width:F

.field public yaw:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/high16 v0, 0x43b40000    # 360.0f

    .line 2
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    const/high16 v1, -0x3c4c0000    # -360.0f

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 3
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 4
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    iput v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    const/4 v0, 0x0

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    .line 7
    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    return-void
.end method


# virtual methods
.method public area()F
    .locals 3

    .line 19
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->factor:F

    mul-float v0, v0, v1

    invoke-static {v0}, Ljava/lang/Math;->abs(F)F

    move-result v0

    const/high16 v1, 0x447a0000    # 1000.0f

    cmpl-float v2, v0, v1

    if-lez v2, :cond_0

    return v1

    :cond_0
    return v0
.end method

.method public area(DDDDDD)V
    .locals 17

    move-object/from16 v0, p0

    move-wide/from16 v1, p1

    .line 1
    iget-object v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    const v4, 0x49742400    # 1000000.0f

    const/4 v5, 0x0

    if-nez v3, :cond_0

    .line 2
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 3
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->canCalculate:Z

    return-void

    .line 4
    :cond_0
    iget v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->startRoll:F

    float-to-double v6, v3

    sub-double v6, v1, v6

    iget v8, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    sub-float v8, v3, v8

    float-to-double v8, v8

    mul-double v6, v6, v8

    const-wide/16 v8, 0x0

    cmpl-double v10, v6, v8

    if-ltz v10, :cond_1

    .line 5
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 6
    iput-boolean v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->canCalculate:Z

    return-void

    .line 7
    :cond_1
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    add-float v7, v3, v6

    const/high16 v10, 0x3f000000    # 0.5f

    mul-float v7, v7, v10

    float-to-double v10, v7

    sub-double v10, v1, v10

    float-to-double v12, v3

    sub-double v12, v1, v12

    mul-double v10, v10, v12

    const/4 v3, 0x1

    cmpl-double v7, v10, v8

    if-gtz v7, :cond_3

    float-to-double v6, v6

    sub-double/2addr v6, v1

    .line 8
    invoke-static {v6, v7}, Ljava/lang/Math;->abs(D)D

    move-result-wide v6

    const-wide/high16 v10, 0x4010000000000000L    # 4.0

    cmpg-double v12, v6, v10

    if-gez v12, :cond_2

    goto :goto_0

    :cond_2
    const/4 v6, 0x0

    goto :goto_1

    :cond_3
    :goto_0
    const/4 v6, 0x1

    :goto_1
    iput-boolean v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->canCalculate:Z

    .line 9
    iget v6, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->endRoll:F

    iget v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->startRoll:F

    sub-float v10, v6, v7

    float-to-double v10, v10

    sub-double v12, v1, p5

    mul-double v10, v10, v12

    cmpl-double v12, v10, v8

    if-lez v12, :cond_4

    const/4 v10, 0x1

    goto :goto_2

    :cond_4
    const/4 v10, -0x1

    :goto_2
    float-to-double v11, v7

    float-to-double v6, v6

    sub-double v13, v1, v11

    sub-double v6, v11, v6

    mul-double v6, v6, v13

    cmpl-double v15, v6, v8

    if-lez v15, :cond_5

    const/4 v5, 0x1

    :cond_5
    sub-double v6, v11, p5

    mul-double v13, v13, v6

    cmpl-double v3, v13, v8

    if-lez v3, :cond_7

    const v3, 0x3a83126f    # 0.001f

    .line 10
    iput v3, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    if-eqz v5, :cond_6

    .line 11
    iput v4, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    return-void

    :cond_6
    sub-double v3, v11, v1

    sub-double v5, p7, p3

    mul-double v5, v5, v3

    div-double/2addr v5, v3

    add-double v3, v5, p3

    goto :goto_3

    :cond_7
    move-wide/from16 v11, p5

    move-wide/from16 v3, p7

    .line 12
    :goto_3
    iget-object v5, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    double-to-float v6, v1

    invoke-virtual {v5, v6}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v5

    float-to-double v5, v5

    sub-double v5, p3, v5

    .line 13
    iget-object v7, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->line:Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;

    double-to-float v13, v11

    invoke-virtual {v7, v13}, Lcn/mucang/android/jiakaoyi/signal/handle/gear/LineAB;->getY(F)F

    move-result v7

    float-to-double v13, v7

    sub-double/2addr v3, v13

    .line 14
    invoke-static {v5, v6}, Ljava/lang/Math;->abs(D)D

    move-result-wide v13

    invoke-static {v3, v4}, Ljava/lang/Math;->abs(D)D

    move-result-wide v15

    add-double/2addr v13, v15

    const-wide v15, 0x3f50624dd2f1a9fcL    # 0.001

    cmpg-double v7, v13, v15

    if-gez v7, :cond_8

    .line 15
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    const/4 v2, 0x0

    add-float/2addr v1, v2

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    goto :goto_5

    :cond_8
    sub-double/2addr v1, v11

    .line 16
    invoke-static {v1, v2}, Ljava/lang/Math;->abs(D)D

    move-result-wide v1

    mul-double v11, v5, v3

    const-wide/high16 v15, 0x3fe0000000000000L    # 0.5

    cmpl-double v7, v11, v8

    if-ltz v7, :cond_9

    mul-double v13, v13, v1

    mul-double v13, v13, v15

    goto :goto_4

    :cond_9
    mul-double v5, v5, v5

    mul-double v3, v3, v3

    add-double/2addr v5, v3

    div-double/2addr v5, v13

    mul-double v5, v5, v1

    mul-double v13, v5, v15

    .line 17
    :goto_4
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    float-to-double v1, v1

    int-to-double v3, v10

    mul-double v3, v3, v13

    add-double/2addr v1, v3

    double-to-float v1, v1

    iput v1, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "gear="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v2, ",thisArea="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v13, v14}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string v2, ",area="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->a:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "GearPose"

    invoke-static {v2, v1}, Lcn/mucang/android/core/utils/t;->d(Ljava/lang/String;Ljava/lang/String;)I

    :goto_5
    return-void
.end method

.method public copyFrom(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 3

    .line 1
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 2
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 3
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 4
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 5
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    .line 6
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    .line 7
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 8
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 9
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    .line 10
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->width:F

    .line 11
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->height:F

    .line 12
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->offset:F

    .line 13
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    iput v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->gear:I

    .line 14
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-static {v0}, Lcn/mucang/android/core/utils/g;->d(Ljava/util/Collection;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 15
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    .line 16
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    invoke-interface {p1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    .line 17
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    new-instance v2, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;

    invoke-direct {v2, v0}, Lcn/mucang/android/jiakaoyi/signal/pos/Pos;-><init>(Lcn/mucang/android/jiakaoyi/signal/pos/Pos;)V

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 18
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->points:Ljava/util/List;

    :cond_1
    return-object p0
.end method

.method public distance(FF)F
    .locals 1

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v0, p1

    .line 2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr p1, p2

    mul-float v0, v0, v0

    mul-float p1, p1, p1

    add-float/2addr v0, p1

    const/4 p1, 0x0

    add-float/2addr v0, p1

    float-to-double p1, v0

    .line 3
    invoke-static {p1, p2}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide p1

    double-to-float p1, p1

    return p1
.end method

.method public distance(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F
    .locals 1

    .line 4
    iget v0, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    invoke-virtual {p0, v0, p1}, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->distance(FF)F

    move-result p1

    return p1
.end method

.method public distanceSqure(Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;)F
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    iget v1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    sub-float/2addr v0, v1

    .line 2
    iget v1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    sub-float/2addr v1, p1

    mul-float v0, v0, v0

    mul-float v1, v1, v1

    add-float/2addr v0, v1

    return v0
.end method

.method public set(FFF)Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;
    .locals 1

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 3
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    .line 4
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 5
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxRoll:F

    .line 6
    :cond_0
    iget v0, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    cmpg-float v0, p1, v0

    if-gez v0, :cond_1

    .line 7
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minRoll:F

    .line 8
    :cond_1
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    cmpl-float p1, p2, p1

    if-lez p1, :cond_2

    .line 9
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxPitch:F

    .line 10
    :cond_2
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    cmpg-float p1, p2, p1

    if-gez p1, :cond_3

    .line 11
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minPitch:F

    .line 12
    :cond_3
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    cmpl-float p1, p3, p1

    if-lez p1, :cond_4

    .line 13
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->maxYaw:F

    .line 14
    :cond_4
    iget p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    cmpg-float p1, p3, p1

    if-gez p1, :cond_5

    .line 15
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->minYaw:F

    :cond_5
    return-object p0
.end method

.method public setValue(FFF)V
    .locals 0

    .line 1
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->roll:F

    .line 2
    iput p2, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->pitch:F

    .line 3
    iput p3, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->yaw:F

    const/high16 p1, 0x3f800000    # 1.0f

    .line 4
    iput p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->factor:F

    const/4 p1, 0x0

    .line 5
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->hasCrossMustLine:Z

    .line 6
    iput-boolean p1, p0, Lcn/mucang/android/jiakaoyi/signal/gearsensor/GearPose;->canCalculate:Z

    return-void
.end method
