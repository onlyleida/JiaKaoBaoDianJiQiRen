.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;
    }
.end annotation


# instance fields
.field private brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

.field private footBrakeDotDisHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;

.field private footerBrakeDistance:F

.field private hasJudgeMethodError:Z

.field public hasValidBrake:Z

.field private isOverSpeed:Z

.field private isPressStopLine:Z

.field private isValidBrakeOn:Z

.field private final judgeMode:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

.field private final judgeSpeed:F

.field private final targetDistance:F


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;FLcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;F)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    .line 2
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isPressStopLine:Z

    const/4 v1, 0x0

    .line 3
    iput v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    .line 4
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasJudgeMethodError:Z

    .line 5
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isOverSpeed:Z

    .line 6
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    .line 7
    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isValidBrakeOn:Z

    .line 8
    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->targetDistance:F

    .line 9
    iput-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeMode:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    .line 10
    iput p4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeSpeed:F

    .line 11
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz p1, :cond_0

    .line 12
    iget-object p2, p1, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->b:Landroid/location/Location;

    invoke-static {p2}, Lcn/mucang/android/jiakaoyi/signal/handle/gps/k;->c(Landroid/location/Location;)Z

    move-result p2

    if-eqz p2, :cond_0

    .line 13
    new-instance p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;

    invoke-direct {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;-><init>(Lcn/mucang/android/jiakaoyi/engine/i/c$b;)V

    iput-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footBrakeDotDisHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;

    :cond_0
    return-void
.end method

.method private distanceJudge(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isValidBrakeOn:Z

    const/4 v1, 0x1

    if-eqz v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeSpeed:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    return v1

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    if-nez v0, :cond_3

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->targetDistance:F

    cmpl-float v0, v0, v2

    if-gez v0, :cond_1

    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 4
    :cond_1
    iget-object v0, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz v0, :cond_2

    .line 5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ddd\u79bb\u8bc4\u5224\u5239\u8f66\u6263\u5206 , stepEvent.stepInfo  "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object v2, v2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v2, " ; isEnd "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 6
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p2

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    const-string p2, ";targetDistance "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->targetDistance:F

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string p2, " ; currentDistance "

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 7
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 8
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_2
    return v1

    :cond_3
    const/4 p1, 0x0

    return p1
.end method

.method private stopLineJudge(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z
    .locals 4

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isPressStopLine:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1, p3, v1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->isPressStopLine(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isPressStopLine:Z

    .line 3
    :cond_0
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isValidBrakeOn:Z

    if-eqz v0, :cond_1

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeSpeed:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_1

    .line 4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->getJudgeBrakeDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    .line 5
    :cond_1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isPressStopLine:Z

    const/4 v2, 0x0

    const/4 v3, 0x0

    if-eqz v0, :cond_4

    .line 6
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    cmpg-float p2, p2, v2

    if-gtz p2, :cond_2

    .line 7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    goto :goto_0

    .line 8
    :cond_2
    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->a:Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/d;->m:Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;

    sget-object p3, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, p3}, Lcn/mucang/android/jiakaoyi/engine/config/route/RouteConfig;->getConfig(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object p2

    check-cast p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    .line 9
    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;->p200187:Lcn/mucang/android/jiakaoyi/engine/config/route/value/IntegerValue;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result p2

    .line 10
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    sub-float/2addr p1, p3

    int-to-float p2, p2

    cmpg-float p1, p1, p2

    if-gtz p1, :cond_3

    const/4 v3, 0x1

    :cond_3
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    :goto_0
    return v1

    .line 11
    :cond_4
    invoke-virtual {p2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_7

    .line 12
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    cmpl-float p1, p1, v2

    if-lez p1, :cond_5

    const/4 v3, 0x1

    :cond_5
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    .line 13
    iget-object p1, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz p1, :cond_6

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p3, "\u8fd8\u672a\u5230\u505c\u6b62\u7ebf\u9879\u76ee\u5c31\u7ed3\u675f , stepEvent.stepInfo  "

    invoke-virtual {p1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ; hasFootBrake "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-boolean p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_6
    return v1

    :cond_7
    return v3
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z
    .locals 5

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isOverSpeed:Z

    const/4 v1, 0x1

    if-nez v0, :cond_0

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeSpeed:F

    cmpl-float v0, v0, v2

    if-ltz v0, :cond_0

    .line 2
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isOverSpeed:Z

    .line 3
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    if-nez v0, :cond_1

    .line 4
    new-instance v0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    sget-object v2, Lcn/mucang/android/jiakaoyi/engine/model/Step;->K3_Global:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p2, v2}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;->r(Lcn/mucang/android/jiakaoyi/engine/model/Step;)Lcn/mucang/android/jiakaoyi/engine/config/BaseStepConfig;

    move-result-object v2

    check-cast v2, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;

    invoke-direct {v0, v2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;-><init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3GlobalStepConfig;)V

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    .line 5
    :cond_1
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    iput-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isValidBrakeOn:Z

    .line 6
    iget-object v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeMode:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->StopLineOrDistance:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    const/4 v4, 0x0

    if-eq v2, v3, :cond_b

    sget-object v3, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->StopLine:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    if-ne v2, v3, :cond_2

    goto/16 :goto_1

    .line 7
    :cond_2
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->Distance:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    if-ne v2, p2, :cond_3

    .line 8
    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->distanceJudge(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    return p1

    .line 9
    :cond_3
    sget-object p2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->BrakePoint:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    if-ne v2, p2, :cond_10

    .line 10
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footBrakeDotDisHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;

    if-eqz p2, :cond_a

    if-eqz v0, :cond_4

    .line 11
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeSpeed:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_4

    .line 12
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->brakeValidChecker:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeValidChecker;->getJudgeBrakeDistance(Lcn/mucang/android/jiakaoyi/signal/c/e;)F

    move-result p2

    iput p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    .line 13
    :cond_4
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p2

    iget p2, p2, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeSpeed:F

    cmpl-float p2, p2, v0

    if-ltz p2, :cond_10

    .line 14
    iget-object p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footBrakeDotDisHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;

    invoke-virtual {p2, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->checkFootBrake(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p2

    const/4 v0, 0x0

    if-eqz p2, :cond_6

    .line 15
    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_5

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->C:F

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    sub-float/2addr p1, p2

    float-to-double p1, p1

    iget-object p3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footBrakeDotDisHelper:Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;

    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/FootBrakeDotDisHelper;->getBrakeDistance()D

    move-result-wide v2

    cmpg-double p3, p1, v2

    if-gtz p3, :cond_5

    const/4 v4, 0x1

    :cond_5
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    return v1

    .line 16
    :cond_6
    invoke-virtual {p3}, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->j()Z

    move-result p1

    if-eqz p1, :cond_10

    .line 17
    iget-object p1, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    if-eqz p1, :cond_8

    .line 18
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "\u8fd8\u672a\u5230\u5239\u8f66\u70b9\u9879\u76ee\u7ed3\u675f , stepEvent.stepInfo  "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-object p2, p2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->d:Lcn/mucang/android/jiakaoyi/engine/model/Step;

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string p2, " ; "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p2, p3, Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;->f:Lcn/mucang/android/jiakaoyi/engine/i/c$b;

    iget-wide p2, p2, Lcn/mucang/android/jiakaoyi/engine/i/c$b;->c:D

    invoke-virtual {p1, p2, p3}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    const-string p2, " ; hasFootBrake "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    cmpl-float p2, p2, v0

    if-lez p2, :cond_7

    const/4 p2, 0x1

    goto :goto_0

    :cond_7
    const/4 p2, 0x0

    :goto_0
    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 19
    :cond_8
    iget p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_9

    const/4 v4, 0x1

    :cond_9
    iput-boolean v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    return v1

    .line 20
    :cond_a
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasJudgeMethodError:Z

    if-nez p1, :cond_10

    .line 21
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasJudgeMethodError:Z

    const-string p1, "\u9009\u62e9\u4f7f\u7528\u5239\u8f66\u70b9\u8bc4\u5224 \u4f46\u662f\u6ca1\u6709\u91c7\u96c6\u5239\u8f66\u70b9"

    .line 22
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 23
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_2

    .line 24
    :cond_b
    :goto_1
    invoke-static {}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->getInstance()Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/collision/K3CollisionManager;->hasHpCollision(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v0

    if-eqz v0, :cond_f

    .line 25
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->judgeMode:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    sget-object v2, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;->StopLine:Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker$JudgeMode;

    if-ne v0, v2, :cond_c

    .line 26
    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->stopLineJudge(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p1

    return p1

    .line 27
    :cond_c
    invoke-direct {p0, p1, p3, p2}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->stopLineJudge(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;Lcn/mucang/android/jiakaoyi/engine/processor/exam/ExamProcessor;)Z

    move-result p2

    if-eqz p2, :cond_d

    return v1

    .line 28
    :cond_d
    invoke-direct {p0, p1, p3}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->distanceJudge(Lcn/mucang/android/jiakaoyi/signal/c/e;Lcn/mucang/android/jiakaoyi/engine/processor/exam/step/b;)Z

    move-result p1

    if-eqz p1, :cond_e

    return v1

    :cond_e
    return v4

    .line 29
    :cond_f
    iget-boolean p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasJudgeMethodError:Z

    if-nez p1, :cond_10

    .line 30
    iput-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasJudgeMethodError:Z

    const-string p1, "\u9009\u62e9\u4e86\u7528\u505c\u6b62\u7ebf\u7ebf\u8bc4\u5224\u5239\u8f66 \u4f46\u662f\u4e0d\u662f\u9ad8\u7cbe\u5ea6"

    .line 31
    invoke-static {p1}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    .line 32
    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :cond_10
    :goto_2
    return v4
.end method

.method public hasValidBrake()Z
    .locals 2

    .line 1
    iget v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->footerBrakeDistance:F

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    :goto_0
    return v0
.end method

.method public judgeDeduct()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->isOverSpeed:Z

    if-eqz v0, :cond_0

    .line 2
    iget-boolean v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/BrakeSlowDownChecker;->hasValidBrake:Z

    return v0

    :cond_0
    const/4 v0, 0x1

    return v0
.end method
