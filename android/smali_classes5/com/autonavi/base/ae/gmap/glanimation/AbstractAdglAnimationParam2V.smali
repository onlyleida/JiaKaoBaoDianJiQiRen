.class public Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;
.source "SourceFile"


# instance fields
.field public fromXValue:D

.field public fromYValue:D

.field public toXValue:D

.field public toYValue:D


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;-><init>()V

    .line 2
    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->reset()V

    return-void
.end method


# virtual methods
.method public checkParam()V
    .locals 8

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    .line 2
    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasFromValue:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_1

    iget-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasToValue:Z

    if-eqz v0, :cond_1

    .line 3
    iget-wide v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toXValue:D

    iget-wide v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromXValue:D

    sub-double/2addr v2, v4

    .line 4
    iget-wide v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toYValue:D

    iget-wide v6, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromYValue:D

    sub-double/2addr v4, v6

    .line 5
    invoke-static {v2, v3}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    const-wide v6, 0x3f1a36e2eb1c432dL    # 1.0E-4

    cmpl-double v0, v2, v6

    if-gtz v0, :cond_0

    invoke-static {v4, v5}, Ljava/lang/Math;->abs(D)D

    move-result-wide v2

    cmpl-double v0, v2, v6

    if-lez v0, :cond_1

    .line 6
    :cond_0
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->needToCaculate:Z

    .line 7
    :cond_1
    iput-boolean v1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    return-void
.end method

.method public getCurXValue()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromXValue:D

    iget-wide v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toXValue:D

    sub-double/2addr v2, v0

    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->mult:F

    float-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getCurYValue()D
    .locals 6

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromYValue:D

    iget-wide v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toYValue:D

    sub-double/2addr v2, v0

    iget v4, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->mult:F

    float-to-double v4, v4

    mul-double v2, v2, v4

    add-double/2addr v0, v2

    return-wide v0
.end method

.method public getFromXValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromXValue:D

    return-wide v0
.end method

.method public getFromYValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromYValue:D

    return-wide v0
.end method

.method public getToXValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toXValue:D

    return-wide v0
.end method

.method public getToYValue()D
    .locals 2

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toYValue:D

    return-wide v0
.end method

.method public reset()V
    .locals 2

    .line 1
    invoke-super {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->reset()V

    const-wide/16 v0, 0x0

    .line 2
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromXValue:D

    .line 3
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toXValue:D

    .line 4
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromYValue:D

    .line 5
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toYValue:D

    return-void
.end method

.method public setFromValue(DD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromXValue:D

    .line 2
    iput-wide p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->fromYValue:D

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasFromValue:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    return-void
.end method

.method public setToValue(DD)V
    .locals 0

    .line 1
    iput-wide p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toXValue:D

    .line 2
    iput-wide p3, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->toYValue:D

    const/4 p1, 0x1

    .line 3
    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasToValue:Z

    const/4 p1, 0x0

    .line 4
    iput-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->hasCheckedParam:Z

    return-void
.end method
