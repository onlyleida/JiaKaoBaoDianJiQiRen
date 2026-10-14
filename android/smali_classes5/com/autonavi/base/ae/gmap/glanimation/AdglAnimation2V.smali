.class public Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;
.super Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;
.source "SourceFile"


# instance fields
.field private curValue1:D

.field private curValue2:D

.field private v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;


# direct methods
.method public constructor <init>(I)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    .line 3
    invoke-virtual {p0}, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->reset()V

    .line 4
    iput p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    const-wide/16 v0, 0x0

    .line 5
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    .line 6
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    return-void
.end method


# virtual methods
.method public doAnimation(Ljava/lang/Object;)V
    .locals 4

    .line 1
    iget-boolean p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    if-eqz p1, :cond_0

    return-void

    .line 2
    :cond_0
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    .line 3
    iget-wide v2, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->startTime:J

    sub-long/2addr v0, v2

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->offsetTime:J

    long-to-float p1, v0

    .line 4
    iget v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    int-to-float v0, v0

    div-float/2addr p1, v0

    const/4 v0, 0x1

    const/high16 v1, 0x3f800000    # 1.0f

    cmpl-float v2, p1, v1

    if-lez v2, :cond_1

    .line 5
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    const/high16 p1, 0x3f800000    # 1.0f

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    cmpg-float v1, p1, v1

    if-gez v1, :cond_2

    .line 6
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    return-void

    .line 7
    :cond_2
    :goto_0
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz v0, :cond_3

    .line 8
    invoke-virtual {v0, p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam;->setNormalizedTime(F)V

    .line 9
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getCurXValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    .line 10
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getCurYValue()D

    move-result-wide v0

    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    :cond_3
    return-void
.end method

.method public getCurValue(I)D
    .locals 2

    if-nez p1, :cond_0

    .line 1
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    return-wide v0

    .line 2
    :cond_0
    iget-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    return-wide v0
.end method

.method public getEndValue(I)D
    .locals 2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getToXValue()D

    move-result-wide v0

    :cond_0
    return-wide v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getToYValue()D

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public getStartValue(I)D
    .locals 2

    const-wide/16 v0, 0x0

    if-nez p1, :cond_1

    .line 1
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz p1, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getFromXValue()D

    move-result-wide v0

    :cond_0
    return-wide v0

    .line 3
    :cond_1
    iget-object p1, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz p1, :cond_2

    .line 4
    invoke-virtual {p1}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->getFromYValue()D

    move-result-wide v0

    :cond_2
    return-wide v0
.end method

.method public reset()V
    .locals 2

    const/4 v0, 0x0

    .line 1
    iput-boolean v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->isOver:Z

    .line 2
    iput v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimation;->duration:I

    const-wide/16 v0, 0x0

    .line 3
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue1:D

    .line 4
    iput-wide v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->curValue2:D

    .line 5
    iget-object v0, p0, Lcom/autonavi/base/ae/gmap/glanimation/AdglAnimation2V;->v2Param:Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;

    if-eqz v0, :cond_0

    .line 6
    invoke-virtual {v0}, Lcom/autonavi/base/ae/gmap/glanimation/AbstractAdglAnimationParam2V;->reset()V

    :cond_0
    return-void
.end method
