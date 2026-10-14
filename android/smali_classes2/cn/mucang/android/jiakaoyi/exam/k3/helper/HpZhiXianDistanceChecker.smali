.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field protected static final DEFAULT_VALUE:I = -0x5f5e0ff


# instance fields
.field public calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

.field private config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

.field public diffAngle:D

.field public hasStart:Z

.field private initSideDis:D

.field private isInit:Z

.field private leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

.field public mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

.field public offsetDistance:D

.field private rightSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

.field public startBearing:F

.field public startHeading:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->isInit:Z

    const-wide/16 v1, 0x0

    .line 3
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->hasStart:Z

    const v0, -0x334143e0    # -1.0E8f

    .line 5
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->startBearing:F

    .line 6
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->startHeading:F

    .line 7
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;->CarBack:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    .line 8
    sget-object v0, Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;->DashFullLine:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    .line 9
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    return-void
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)V
    .locals 9

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object p2

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->g:Landroid/location/Location;

    invoke-virtual {p2}, Landroid/location/Location;->getBearing()F

    move-result p2

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->getCurrentPosition()Lcn/mucang/android/jiakaoyi/signal/center/model/b;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/b;->a:F

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    if-nez v1, :cond_0

    .line 4
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    .line 5
    :cond_0
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->rightSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    if-nez v1, :cond_1

    .line 6
    new-instance v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    invoke-direct {v1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;-><init>()V

    iput-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->rightSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    .line 7
    :cond_1
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->isInit:Z

    const/4 v2, 0x3

    const/4 v3, 0x0

    const/4 v4, 0x1

    if-nez v1, :cond_5

    .line 8
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_2

    .line 9
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, v2, v5, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v1

    .line 10
    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v3, p1, v5, v6, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v5

    .line 11
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v7, p1

    cmpl-double v3, v1, v7

    if-eqz v3, :cond_4

    int-to-double v7, p1

    cmpl-double p1, v5, v7

    if-eqz p1, :cond_4

    sub-double/2addr v5, v1

    .line 12
    iput-wide v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    .line 13
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->isInit:Z

    .line 14
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->hasStart:Z

    goto :goto_0

    .line 15
    :cond_2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_3

    .line 16
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, v2, v5, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v1

    .line 17
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, p1

    cmpl-double p1, v1, v5

    if-eqz p1, :cond_4

    .line 18
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    .line 19
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->isInit:Z

    .line 20
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->hasStart:Z

    goto :goto_0

    .line 21
    :cond_3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->rightSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v1

    .line 22
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, p1

    cmpl-double p1, v1, v5

    if-eqz p1, :cond_4

    .line 23
    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    .line 24
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->isInit:Z

    .line 25
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->hasStart:Z

    .line 26
    :cond_4
    :goto_0
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->startBearing:F

    .line 27
    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->startHeading:F

    goto/16 :goto_3

    .line 28
    :cond_5
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-nez v1, :cond_6

    .line 29
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->rightSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, v2, v5, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v1

    .line 30
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v4, p1, v5, v6, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v3

    .line 31
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v5, p1

    cmpl-double v7, v1, v5

    if-eqz v7, :cond_8

    int-to-double v5, p1

    cmpl-double p1, v3, v5

    if-eqz p1, :cond_8

    const-wide/high16 v5, -0x4020000000000000L    # -0.5

    sub-double/2addr v1, v3

    .line 32
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    sub-double/2addr v1, v3

    mul-double v1, v1, v5

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->offsetDistance:D

    goto :goto_1

    .line 33
    :cond_6
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3ZhiXianStepConfig;->p204117:Lcn/mucang/android/jiakaoyi/engine/config/route/value/OptionsValue;

    iget-object v1, v1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-ne v1, v2, :cond_7

    .line 34
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->leftSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, v2, v4, v3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v1

    .line 35
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v3, p1

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_8

    .line 36
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    sub-double/2addr v1, v3

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->offsetDistance:D

    goto :goto_1

    .line 37
    :cond_7
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->rightSideDistanceCalHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;

    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->mode:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;

    iget-object v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->calLineType:Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;

    invoke-virtual {v1, p1, v2, v3, v4}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/SideDistanceCalHelper;->calSideDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$Mode;Lcn/mucang/android/jiakaoyi/exam/k3/collision/CarToLineDistanceUtils$CalLineType;Z)D

    move-result-wide v1

    .line 38
    sget p1, Lcn/mucang/android/jiakaoyi/k3collect/collision/c/a;->b:I

    int-to-double v3, p1

    cmpl-double p1, v1, v3

    if-eqz p1, :cond_8

    .line 39
    iget-wide v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->initSideDis:D

    sub-double/2addr v1, v3

    neg-double v1, v1

    iput-wide v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->offsetDistance:D

    .line 40
    :cond_8
    :goto_1
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->hasStart:Z

    if-eqz p1, :cond_a

    .line 41
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->startBearing:F

    sub-float/2addr p2, p1

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p1

    .line 42
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->startHeading:F

    sub-float/2addr v0, p2

    invoke-static {v0}, Lcn/mucang/android/jiakaoyi/signal/utils/d;->c(F)F

    move-result p2

    .line 43
    invoke-static {p1}, Ljava/lang/Math;->abs(F)F

    move-result v0

    invoke-static {p2}, Ljava/lang/Math;->abs(F)F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_9

    float-to-double p1, p1

    .line 44
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->diffAngle:D

    goto :goto_2

    :cond_9
    float-to-double p1, p2

    .line 45
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->diffAngle:D

    goto :goto_2

    :cond_a
    const-wide/16 p1, 0x0

    .line 46
    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->diffAngle:D

    .line 47
    :goto_2
    iget-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->offsetDistance:D

    const-wide v0, 0x3f847ae147ae147bL    # 0.01

    mul-double p1, p1, v0

    iput-wide p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/HpZhiXianDistanceChecker;->offsetDistance:D

    :goto_3
    return-void
.end method
