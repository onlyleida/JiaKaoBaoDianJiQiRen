.class public abstract Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field protected factor:F

.field protected hasCheckedParam:Z

.field protected hasFromValue:Z

.field protected hasToValue:Z

.field protected interpolationType:I

.field protected mult:F

.field protected needToCaculate:Z

.field protected normalizedTime:F


# direct methods
.method public constructor <init>()V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    .line 3
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    .line 4
    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->interpolationType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 5
    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->factor:F

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasFromValue:Z

    .line 9
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasToValue:Z

    return-void
.end method

.method static bounce(F)F
    .locals 1

    mul-float p0, p0, p0

    const/high16 v0, 0x41000000    # 8.0f

    mul-float p0, p0, v0

    return p0
.end method


# virtual methods
.method public abstract checkParam()V
.end method

.method public getCurMult()F
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->mult:F

    return v0
.end method

.method public getInterpolatorType()I
    .locals 1

    .line 1
    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->interpolationType:I

    return v0
.end method

.method public needToCaculate()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    if-nez v0, :cond_0

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->checkParam()V

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    if-eqz v0, :cond_1

    const/4 v0, 0x1

    return v0

    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    .line 2
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    .line 3
    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->interpolationType:I

    const/high16 v1, 0x3f800000    # 1.0f

    .line 4
    iput v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->factor:F

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    .line 7
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasFromValue:Z

    .line 8
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasToValue:Z

    return-void
.end method

.method public setInterpolatorType(IF)V
    .locals 0

    .line 1
    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->interpolationType:I

    .line 2
    iput p2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->factor:F

    return-void
.end method

.method public setNormalizedTime(F)V
    .locals 8

    .line 1
    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->normalizedTime:F

    .line 2
    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->interpolationType:I

    const/4 v1, 0x0

    const/high16 v2, 0x40000000    # 2.0f

    const/high16 v3, 0x3f800000    # 1.0f

    packed-switch v0, :pswitch_data_0

    :cond_0
    :goto_0
    const/4 p1, 0x0

    goto/16 :goto_3

    :pswitch_0
    cmpg-float v0, p1, v1

    if-gez v0, :cond_1

    goto :goto_0

    :cond_1
    const/high16 v0, 0x3e800000    # 0.25f

    const/high16 v4, 0x40800000    # 4.0f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_2

    mul-float p1, p1, v4

    goto/16 :goto_3

    :cond_2
    const/high16 v0, 0x3f000000    # 0.5f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_3

    mul-float p1, p1, v4

    sub-float p1, v2, p1

    goto/16 :goto_3

    :cond_3
    const/high16 v0, 0x3f400000    # 0.75f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_4

    mul-float p1, p1, v4

    sub-float/2addr p1, v2

    goto/16 :goto_3

    :cond_4
    cmpg-float v0, p1, v3

    if-gtz v0, :cond_0

    mul-float p1, p1, v4

    sub-float p1, v4, p1

    goto/16 :goto_3

    :pswitch_1
    sub-float/2addr p1, v3

    mul-float v0, p1, p1

    const/high16 v1, 0x40400000    # 3.0f

    mul-float v1, v1, p1

    add-float/2addr v1, v2

    mul-float v0, v0, v1

    add-float p1, v0, v3

    goto/16 :goto_3

    :pswitch_2
    const v0, 0x3f8fb15b    # 1.1226f

    mul-float p1, p1, v0

    const v0, 0x3eb4fdf4    # 0.3535f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_5

    .line 3
    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->bounce(F)F

    move-result p1

    goto :goto_3

    :cond_5
    const v0, 0x3f3da512    # 0.7408f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_6

    const v0, 0x3f0c14a5

    sub-float/2addr p1, v0

    .line 4
    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->bounce(F)F

    move-result p1

    const v0, 0x3f333333    # 0.7f

    :goto_1
    add-float/2addr p1, v0

    goto :goto_3

    :cond_6
    const v0, 0x3f76e2eb    # 0.9644f

    cmpg-float v0, p1, v0

    if-gez v0, :cond_7

    const v0, 0x3f5a43fe    # 0.8526f

    sub-float/2addr p1, v0

    .line 5
    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->bounce(F)F

    move-result p1

    const v0, 0x3f666666    # 0.9f

    goto :goto_1

    :cond_7
    const v0, 0x3f859168    # 1.0435f

    sub-float/2addr p1, v0

    .line 6
    invoke-static {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->bounce(F)F

    move-result p1

    const v0, 0x3f733333    # 0.95f

    goto :goto_1

    :pswitch_3
    add-float/2addr p1, v3

    float-to-double v0, p1

    const-wide v2, 0x400921fb54442d18L    # Math.PI

    mul-double v0, v0, v2

    .line 7
    invoke-static {v0, v1}, Ljava/lang/Math;->cos(D)D

    move-result-wide v0

    const-wide/high16 v2, 0x4000000000000000L    # 2.0

    div-double/2addr v0, v2

    const-wide/high16 v2, 0x3fe0000000000000L    # 0.5

    add-double/2addr v0, v2

    goto :goto_2

    .line 8
    :pswitch_4
    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->factor:F

    cmpl-float v1, v0, v3

    if-nez v1, :cond_8

    sub-float p1, v3, p1

    mul-float p1, p1, p1

    sub-float p1, v3, p1

    goto :goto_3

    :cond_8
    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    sub-float/2addr v3, p1

    float-to-double v6, v3

    mul-float v0, v0, v2

    float-to-double v0, v0

    .line 9
    invoke-static {v6, v7, v0, v1}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    sub-double/2addr v4, v0

    double-to-float p1, v4

    goto :goto_3

    :pswitch_5
    float-to-double v0, p1

    .line 10
    iget p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->factor:F

    mul-float p1, p1, v2

    float-to-double v2, p1

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    :goto_2
    double-to-float p1, v0

    .line 11
    :goto_3
    :pswitch_6
    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->mult:F

    return-void

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method
