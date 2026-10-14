.class public Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field private final config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

.field private currentGearMaxDistance:F

.field private currentGearMaxSpeed:F

.field private currentGearMaxTime:F

.field private final distanceConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private isReachDistance:Z

.field private isReachSpeed:Z

.field private isReachTime:Z

.field private lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

.field private final speedConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final timeConfigs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    sget-object v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 3
    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    .line 4
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212140:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->createValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->speedConfigs:Ljava/util/List;

    .line 5
    iget-object v0, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212141:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/String;

    invoke-direct {p0, v0}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->createValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object v0

    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->timeConfigs:Ljava/util/List;

    .line 6
    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212142:Lcn/mucang/android/jiakaoyi/engine/config/route/value/StringValue;

    iget-object p1, p1, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast p1, Ljava/lang/String;

    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->createValues(Ljava/lang/String;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->distanceConfigs:Ljava/util/List;

    return-void
.end method

.method private checkGearCondition(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 10

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x1

    if-eq v1, v2, :cond_4

    if-eq v1, v0, :cond_4

    .line 3
    iget v1, v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sub-int/2addr v1, v3

    .line 4
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachSpeed:Z

    const-string v4, " \u6ca1\u6709\u8fbe\u5230 "

    const-string v5, "smoothJiaJianDang"

    const-string v6, " ;  "

    const-string v7, " ; Gear "

    const-string v8, "\u6321\u4f4d\u53d1\u751f\u53d8\u5316 lastGear "

    if-nez v2, :cond_0

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " \u6700\u5927\u901f\u5ea6\u4e3a "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxSpeed:F

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->speedConfigs:Ljava/util/List;

    .line 6
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 7
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 8
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, "\u901f\u5ea6\u6ca1\u6709\u8fbe\u5230"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxSpeed:F

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 9
    :cond_0
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachTime:Z

    if-nez v2, :cond_1

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v9, " \u6700\u5927\u65f6\u95f4\u4e3a(ms) "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxTime:F

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    const-string v9, " \u6ca1\u6709\u8fbe\u5230(s) "

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->timeConfigs:Ljava/util/List;

    .line 11
    invoke-interface {v9, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 12
    invoke-static {v2}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 13
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "\u65f6\u95f4\u6ca1\u6709\u8fbe\u5230"

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v9, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxTime:F

    invoke-virtual {v2, v9}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v5, v2}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 14
    :cond_1
    iget-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachDistance:Z

    if-nez v2, :cond_2

    .line 15
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v8, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v6, " \u6700\u5927\u8ddd\u79bb\u4e3a "

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxDistance:F

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->distanceConfigs:Ljava/util/List;

    .line 16
    invoke-interface {v4, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 17
    invoke-static {v1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    .line 18
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "\u8ddd\u79bb\u6ca1\u6709\u8fbe\u5230"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxDistance:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v5, v1}, Lcn/mucang/android/core/utils/t;->h(Ljava/lang/String;Ljava/lang/String;)I

    .line 19
    :cond_2
    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachDistance:Z

    const/4 v2, 0x0

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachSpeed:Z

    if-eqz v1, :cond_3

    iget-boolean v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachTime:Z

    if-eqz v1, :cond_3

    const/4 v1, 0x1

    goto :goto_0

    :cond_3
    const/4 v1, 0x0

    .line 20
    :goto_0
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachSpeed:Z

    .line 21
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachTime:Z

    .line 22
    iput-boolean v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachDistance:Z

    const/4 v2, 0x0

    .line 23
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxSpeed:F

    .line 24
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxTime:F

    .line 25
    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxDistance:F

    goto :goto_1

    :cond_4
    const/4 v1, 0x1

    .line 26
    :goto_1
    iget v2, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    sub-int/2addr v2, v3

    .line 27
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->speedConfigs:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v2, v4, :cond_5

    .line 28
    iget-object v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->speedConfigs:Ljava/util/List;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 29
    iget v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxSpeed:F

    int-to-float v4, v4

    invoke-static {v5, v4}, Ljava/lang/Math;->max(FF)F

    move-result v5

    iput v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxSpeed:F

    .line 30
    iget-boolean v5, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachSpeed:Z

    if-nez v5, :cond_6

    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v5

    iget v5, v5, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    cmpl-float v4, v5, v4

    if-lez v4, :cond_6

    .line 31
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachSpeed:Z

    goto :goto_2

    .line 32
    :cond_5
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachSpeed:Z

    .line 33
    :cond_6
    :goto_2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->b()Lcn/mucang/android/jiakaoyi/signal/center/model/c;

    move-result-object p1

    invoke-virtual {p1, v0}, Lcn/mucang/android/jiakaoyi/signal/center/model/c;->d(Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;)Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;

    move-result-object p1

    .line 34
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->timeConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_7

    if-eqz p1, :cond_8

    .line 35
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->c:J

    long-to-float v0, v4

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxTime:F

    invoke-static {v0, v4}, Ljava/lang/Math;->max(FF)F

    move-result v0

    iput v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxTime:F

    .line 36
    iget-wide v4, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->c:J

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->timeConfigs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    mul-int/lit16 v0, v0, 0x3e8

    int-to-long v6, v0

    cmp-long v0, v4, v6

    if-lez v0, :cond_8

    .line 37
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachTime:Z

    goto :goto_3

    .line 38
    :cond_7
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachTime:Z

    .line 39
    :cond_8
    :goto_3
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->distanceConfigs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-ge v2, v0, :cond_a

    .line 40
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->distanceConfigs:Ljava/util/List;

    invoke-interface {v0, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    if-eqz p1, :cond_9

    .line 41
    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->d:F

    iget v4, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxDistance:F

    invoke-static {v2, v4}, Ljava/lang/Math;->max(FF)F

    move-result v2

    iput v2, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->currentGearMaxDistance:F

    .line 42
    iget v2, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->d:F

    cmpl-float v2, v2, v0

    if-lez v2, :cond_9

    .line 43
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachDistance:Z

    :cond_9
    if-eqz p1, :cond_b

    .line 44
    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/c/g/b$b;->d:F

    cmpl-float p1, p1, v0

    if-lez p1, :cond_b

    .line 45
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachDistance:Z

    goto :goto_4

    .line 46
    :cond_a
    iput-boolean v3, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->isReachDistance:Z

    :cond_b
    :goto_4
    return v1
.end method

.method private checkSpeedSmoothGearChange(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 5

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object p1

    iget p1, p1, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->b:F

    .line 3
    iget-object v1, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v2, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Invalid:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    const/4 v3, 0x1

    const/4 v4, 0x0

    if-eq v1, v2, :cond_10

    .line 4
    sget-object v1, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker$1;->$SwitchMap$cn$mucang$android$jiakaoyi$signal$center$model$Gear:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v1, v0

    if-eq v0, v3, :cond_e

    const/4 v1, 0x2

    if-eq v0, v1, :cond_a

    const/4 v1, 0x3

    if-eq v0, v1, :cond_6

    const/4 v1, 0x4

    if-eq v0, v1, :cond_2

    const/4 v1, 0x5

    if-eq v0, v1, :cond_0

    goto/16 :goto_1

    .line 5
    :cond_0
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_1

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212146:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 6
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear4 -> Gear5 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 7
    :cond_2
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear5:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_4

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_3

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212147:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_4

    .line 8
    :cond_3
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear5 -> Gear3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 9
    :cond_4
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_5

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212145:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 10
    :cond_5
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear3 -> Gear4 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 11
    :cond_6
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear4:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_8

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_7

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212148:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_8

    .line 12
    :cond_7
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear4 -> Gear3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 13
    :cond_8
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_9

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212144:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 14
    :cond_9
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear2 -> Gear3 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto/16 :goto_0

    .line 15
    :cond_a
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear3:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_c

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_b

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212149:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_c

    .line 16
    :cond_b
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear3 -> Gear2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 17
    :cond_c
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear1:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_d

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212143:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 18
    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear1 -> Gear2 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    goto :goto_0

    .line 19
    :cond_e
    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    sget-object v1, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->Gear2:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    if-ne v0, v1, :cond_10

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/RuleConfig;->value:Ljava/lang/Object;

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    int-to-float v0, v0

    cmpg-float v0, p1, v0

    if-ltz v0, :cond_f

    iget-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->config:Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/exam/k3/config/K3JiaJianDangStepConfig;->p212150:Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;

    iget v0, v0, Lcn/mucang/android/jiakaoyi/engine/config/route/value/RangeValue;->value2:I

    int-to-float v0, v0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_10

    .line 20
    :cond_f
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Gear2 -> Gear1 "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcn/mucang/android/jiakaoyi/framework/log/f;->o(Ljava/lang/Object;)V

    :goto_0
    const/4 v3, 0x0

    :cond_10
    :goto_1
    return v3
.end method

.method private createValues(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 2
    invoke-static {p1}, Lcn/mucang/android/core/utils/n0;->g(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    const-string v1, ","

    invoke-virtual {p1, v1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 3
    invoke-virtual {p1, v1}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object p1

    .line 4
    array-length v1, p1

    const/4 v2, 0x0

    :goto_0
    if-ge v2, v1, :cond_1

    aget-object v3, p1, v2

    .line 5
    :try_start_0
    invoke-static {v3}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    :catch_0
    move-exception v3

    .line 6
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    .line 7
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "\u6321\u4f4d\u901f\u5ea6/\u65f6\u95f4/\u91cc\u7a0b\u914d\u7f6e\u9519\u8bef"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Lcn/mucang/android/core/config/MucangConfig;->v()Z

    move-result v5

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, ":"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/Exception;->getLocalizedMessage()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    goto :goto_1

    :cond_0
    const-string v3, ""

    :goto_1
    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcn/mucang/android/core/utils/u;->h(Ljava/lang/String;)V

    :goto_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    :cond_1
    return-object v0
.end method


# virtual methods
.method public check(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z
    .locals 4

    .line 1
    invoke-interface {p1}, Lcn/mucang/android/jiakaoyi/signal/c/e;->d()Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;

    move-result-object v0

    iget-object v0, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/CarModel;->m:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    .line 2
    iget v1, v0, Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;->gear:I

    const/4 v2, 0x1

    if-lt v1, v2, :cond_0

    const/4 v3, 0x5

    if-gt v1, v3, :cond_0

    .line 3
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->checkGearCondition(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result v1

    .line 4
    invoke-direct {p0, p1}, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->checkSpeedSmoothGearChange(Lcn/mucang/android/jiakaoyi/signal/c/e;)Z

    move-result p1

    .line 5
    iput-object v0, p0, Lcn/mucang/android/jiakaoyi/exam/k3/helper/jiajiandang/SmoothJiaJianDangChecker;->lastValidGear:Lcn/mucang/android/jiakaoyi/signal/center/model/Gear;

    goto :goto_0

    :cond_0
    const/4 p1, 0x1

    const/4 v1, 0x1

    :goto_0
    if-eqz v1, :cond_1

    if-eqz p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v2, 0x0

    :goto_1
    return v2
.end method
